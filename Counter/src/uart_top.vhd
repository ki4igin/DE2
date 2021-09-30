library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity uart_top is
    port (
        CLOCK_50 : in std_logic;

        HEX6 : out std_logic_vector(6 downto 0);
        HEX7 : out std_logic_vector(6 downto 0);

        UART_TXD : out std_logic;
        UART_RXD : in std_logic
    );
end entity uart_top;

architecture rtl of uart_top is
    component uart is
        generic (
            clk_freq  : integer := 50e6;   --frequency of system clock in Hertz
            baud_rate : integer := 115200; --data link baud rate in bits/second
            os_rate   : integer := 16;     --oversampling rate to find center of receive bits (in samples per baud period)
            d_width   : integer := 8;      --data bus width

            parity    : integer range 0 to 1 := 1;  --0 for no parity, 1 for parity
            parity_eo : std_logic            := '0' --'0' for even, '1' for odd parity
        );
        port (
            clk     : in std_logic; --system clock
            reset_n : in std_logic; --ascynchronous reset

            tx_ena  : in std_logic;                              --initiate transmission
            tx_data : in std_logic_vector(d_width - 1 downto 0); --data to transmit
            tx_busy : out std_logic;                             --transmission in progress
            tx      : out std_logic;                             --transmit pin

            rx       : in std_logic;                              --receive pin
            rx_busy  : out std_logic;                             --data reception in progress
            rx_error : out std_logic;                             --start, parity, or stop bit error detected
            rx_data  : out std_logic_vector(d_width - 1 downto 0) --data received
        );
    end component;

    component seg7 is
        port (
            dig : in unsigned(3 downto 0);
            seg : out std_logic_vector(6 downto 0)
        );
    end component;


    signal tx_ena  : std_logic := '0';

    signal tx_data : std_logic_vector(7 downto 0) := (others => '0');
    signal rx_data : std_logic_vector(7 downto 0) := (others => '0');

begin

    uart1 : uart
    port map(
        clk     => CLOCK_50,
        reset_n => '1',

        tx_ena  => tx_ena,
        tx_data => tx_data,
        tx => UART_TXD,

        rx => UART_RXD,
        rx_data => rx_data
    );

    seg_high : seg7
    port map (
        dig => unsigned(rx_data(7 downto 4)),
        seg => HEX7
    );

    seg_low : seg7
    port map (
        dig => unsigned(rx_data(3 downto 0)),
        seg => HEX6
    );

    proc_tx: process(CLOCK_50)
        variable cnt : integer := 0;
    begin                    
        if rising_edge(CLOCK_50) then
            cnt := cnt + 1;
            tx_ena <= '0';
            if cnt = 50e6  then
                cnt := 0;
                tx_data <= rx_data;
                tx_ena <= '1';                
            end if;
            
        end if;
    end process proc_tx;


end architecture rtl;
