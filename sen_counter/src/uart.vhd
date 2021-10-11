--------------------------------------------------------------------------------
--
--   FileName:         uart.vhd
--   Dependencies:     none
--   Design Software:  Quartus II 64-bit Version 13.1.0 Build 162 SJ Web Edition
--
--   HDL CODE IS PROVIDED "AS IS."  DIGI-KEY EXPRESSLY DISCLAIMS ANY
--   WARRANTY OF ANY KIND, WHETHER EXPRESS OR IMPLIED, INCLUDING BUT NOT
--   LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY, FITNESS FOR A
--   PARTICULAR PURPOSE, OR NON-INFRINGEMENT. IN NO EVENT SHALL DIGI-KEY
--   BE LIABLE FOR ANY INCIDENTAL, SPECIAL, INDIRECT OR CONSEQUENTIAL
--   DAMAGES, LOST PROFITS OR LOST DATA, HARM TO YOUR EQUIPMENT, COST OF
--   PROCUREMENT OF SUBSTITUTE GOODS, TECHNOLOGY OR SERVICES, ANY CLAIMS
--   BY THIRD PARTIES (INCLUDING BUT NOT LIMITED TO ANY DEFENSE THEREOF),
--   ANY CLAIMS FOR INDEMNITY OR CONTRIBUTION, OR OTHER SIMILAR COSTS.
--
--   Version History
--   Version 1.0 5/26/2017 Scott Larson
--   Version 1.1 6/10/2020 Artem Kichigin
--     Initial Public Release
--
--------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use work.converters.all;
use ieee.std_logic_misc.all;

entity uart is
    generic (
        clk_freq  : integer := 50e6;   --frequency of system clock in Hertz
        baud_rate : integer := 115200; --data link baud rate in bits/second
        os_rate   : integer := 16;     --oversampling rate to find center of receive bits (in samples per baud period)
        d_width   : integer := 8;      --data bus width

        parity    : integer range 0 to 1 := 1;  --0 for no parity, 1 for parity
        parity_eo : std_logic            := '0' --'0' for even, '1' for odd parity
    );
    port (
        clk      : in std_logic;                               --system clock
        reset_n  : in std_logic;                               --ascynchronous reset

        tx_ena   : in std_logic;                               --initiate transmission
        tx_data  : in std_logic_vector(d_width - 1 downto 0);  --data to transmit
        tx_busy  : out std_logic;                              --transmission in progress
        tx       : out std_logic;                               --transmit pin
        
        rx       : in std_logic;                               --receive pin
        rx_busy  : out std_logic;                              --data reception in progress
        rx_error : out std_logic;                              --start, parity, or stop bit error detected
        rx_data  : out std_logic_vector(d_width - 1 downto 0) --data received
    );
end uart;

architecture logic of uart is
    type rx_state_t is(idle, receive);  --receive state machine data type   
    type tx_state_t is(idle, transmit); --tranmit state machine data type

    signal tx_state     : tx_state_t;                                                --transmit state machine
    signal os_pulse     : std_logic := '0';                                          --periodic pulse that occurs at the oversampling rate
    signal parity_error : std_logic;                                                 --receive parity error flag
    signal rx_buffer    : std_logic_vector(d_width - 1 downto 0) := (others => '0'); --values received

    signal rx_state   : rx_state_t;                                                --receive state machine
    signal baud_pulse : std_logic := '0';                                          --periodic pulse that occurs at the baud rate
    signal tx_parity  : std_logic;                                                 --calculation of transmit parity
    signal tx_buffer  : std_logic_vector(d_width - 1 downto 0) := (others => '1'); --values to be transmitted
begin

    --generate clock enable pulses at the baud rate and the oversampling rate
    process (reset_n, clk)
        variable count_baud : integer range 0 to clk_freq / baud_rate - 1           := 0; --counter to determine baud rate period
        variable count_os   : integer range 0 to clk_freq / baud_rate / os_rate - 1 := 0; --counter to determine oversampling period
    begin
        if (not reset_n) then --asynchronous reset asserted
            baud_pulse <= '0';    --reset baud rate pulse
            os_pulse   <= '0';    --reset oversampling rate pulse
            count_baud := 0;      --reset baud period counter
            count_os   := 0;      --reset oversampling period counter
        elsif rising_edge(clk) then
            --create baud enable pulse
            if (count_baud < clk_freq / baud_rate - 1) then --baud period not reached
                count_baud := count_baud + 1;                   --increment baud period counter
                baud_pulse <= '0';                              --deassert baud rate pulse
            else                                            --baud period reached
                count_baud := 0;                                --reset baud period counter
                baud_pulse <= '1';                              --assert baud rate pulse
                count_os := 0;                                  --reset oversampling period counter to avoid cumulative error
            end if;
            --create oversampling enable pulse
            if (count_os < clk_freq / baud_rate / os_rate - 1) then --oversampling period not reached
                count_os := count_os + 1;                               --increment oversampling period counter
                os_pulse <= '0';                                        --deassert oversampling rate pulse
            else                                                    --oversampling period reached
                count_os := 0;                                          --reset oversampling period counter
                os_pulse <= '1';                                        --assert oversampling pulse
            end if;
        end if;
    end process;

    --receive state machine
    process (reset_n, clk)
        variable rx_count : integer range 0 to d_width + parity + 1 := 0; --count the bits received
        variable os_count : integer range 0 to os_rate - 1          := 0; --count the oversampling rate pulses     

        subtype T is std_logic_vector(1 downto 0);
    begin
        if (not reset_n) then                            --asynchronous reset asserted
            os_count := 0;                                   --clear oversampling pulse counter
            rx_count := 0;                                   --clear receive bit counter
            rx_busy  <= '0';                                 --clear receive busy signal
            rx_error <= '0';                                 --clear receive errors
            rx_data  <= (others => '0');                     --clear received data output
            rx_state <= idle;                                --put in idle state
            parity_error <= '0';
        elsif (rising_edge(clk) and os_pulse = '1') then --enable clock at oversampling rate
            case rx_state is
                when idle =>    --idle state
                    rx_busy <= '0'; --clear receive busy flag
                    case ? T'(rx & to_sl(os_count < os_rate / 2)) is
                        when "01" =>
                            os_count := os_count + 1; --increment oversampling pulse counter
                            rx_state <= idle;         --remain in idle state
                        when "00" =>
                            os_count := 0;       --clear oversampling pulse counter
                            rx_count := 0;       --clear the bits received counter
                            rx_busy  <= '1';     --assert busy flag
                            rx_state <= receive; --advance to receive state
                        when "1-" =>
                            os_count := 0;    --clear oversampling pulse counter
                            rx_state <= idle; --remain in idle state
                        when others =>
                            report "eee" severity error;
                    end case ?;

                when receive =>                                    --receive state
                    if (os_count < os_rate - 1) then                   --not center of bit
                        os_count := os_count + 1;                          --increment oversampling pulse counter
                        rx_state <= receive;                               --remain in receive state
                    elsif (rx_count < d_width) then                --center of bit and not all bits received
                        os_count := 0;                                     --reset oversampling pulse counter
                        rx_count := rx_count + 1;                          --increment number of bits received counter
                        rx_buffer <= rx & rx_buffer(d_width - 1 downto 1); --shift new received bit into receive buffer
                        rx_state  <= receive;                              --remain in receive state
                    elsif (rx_count < parity + d_width) then
                        os_count := 0;
                        rx_count := rx_count + 1;
                        parity_error <= xor_reduce(rx_buffer) xor parity_eo xor rx;
                        rx_state     <= receive;
                    else --center of stop bit
                        parity_error <= '0';
                        rx_data      <= rx_buffer;              --output data received to user logic
                        rx_error     <= parity_error or not rx; --output start, parity, and stop bit error flag
                        rx_busy      <= '0';                    --deassert received busy flag
                        rx_state     <= idle;                   --return to idle state
                    end if;
            end case;
        end if;
    end process;

    --transmit state machine
    process (reset_n, clk)
        variable tx_count : integer range 0 to parity + d_width + 3 := 0; --count bits transmitted        
    begin
        if (reset_n = '0') then --asynchronous reset asserted
            tx_count := 0;          --clear transmit bit counter
            tx       <= '1';        --set tx pin to idle value of high
            tx_busy  <= '1';        --set transmit busy signal to indicate unavailable
            tx_state <= idle;       --set tx state machine to ready state
        elsif rising_edge(clk) then
            case tx_state is
                when idle =>                                      --idle state
                    if (tx_ena = '1') then                            --new transaction latched in
                        tx_buffer <= tx_data;                             --latch in data for transmission and start/stop bits
                        tx_parity <= xor_reduce(tx_buffer) xor parity_eo; -- save parity bit
                        tx_busy   <= '1';                                 --assert transmit busy flag
                        tx_count := 0;                                    --clear transmit bit count
                        tx_state <= transmit;                             --proceed to transmit state
                    else                                              --no new transaction initiated
                        tx_busy  <= '0';                                  --clear transmit busy flag
                        tx_state <= idle;                                 --remain in idle state
                    end if;
                when transmit =>           --transmit state
                    if (baud_pulse = '1') then --beginning of bit                        
                        if (tx_count < 1) then
                            tx <= '0';
                        elsif (tx_count <= d_width) then
                            tx        <= tx_buffer(0);
                            tx_buffer <= '1' & tx_buffer(d_width - 1 downto 1);
                        elsif (tx_count < d_width + parity) then
                            tx <= tx_parity;
                        elsif (tx_count < d_width + parity + 1) then
                            tx       <= '1';
                            tx_state <= idle;
                        end if;
                        tx_count := tx_count + 1; --increment transmit bit counter
                    end if;
            end case;
        end if;
    end process;
end logic;
