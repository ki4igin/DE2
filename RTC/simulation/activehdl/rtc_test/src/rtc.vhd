library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.tools.all;

entity rtc is
    generic (
        clk_freq : natural --system clock frequency in Hz
    );
    port (
        clk     : in std_logic;
        rst     : in std_logic;
        seconds : out unsigned(7 downto 0);
        minutes : out unsigned(7 downto 0);
        hours   : out unsigned(7 downto 0)
    );
end entity rtc;

architecture rtl of rtc is
    subtype digit_t is natural range 0 to 9;

    signal ticks     : natural;
    signal seconds_l : digit_t;--range 0 to 9;
    signal seconds_h : digit_t;--range 0 to 5;
    signal minutes_l : digit_t;--range 0 to 9;
    signal minutes_h : digit_t;--range 0 to 5;
    signal hours_l   : digit_t;--range 0 to 9;
    signal hours_h   : digit_t;--range 0 to 2;
begin
    process (clk, rst)
        variable wrap : boolean;
    begin
        if rst = '0' then
            seconds_l <= 0;
            seconds_h <= 0;
            minutes_l <= 0;
            minutes_h <= 0;
            hours_l   <= 0;
            hours_h   <= 0;
            ticks     <= 0;
        elsif rising_edge(clk) then
            Inc(ticks, clk_freq, true, wrap);
            Inc(seconds_l, 10, wrap, wrap);
            Inc(seconds_h, 6, wrap, wrap);
            Inc(minutes_l, 10, wrap, wrap);
            Inc(minutes_h, 6, wrap, wrap);
            Inc(hours_l, 10, wrap, wrap);
            Inc(hours_h, 3, wrap, wrap);
        end if;
    end process;

    seconds <= to_unsigned(seconds_h, 4) & to_unsigned(seconds_l, 4);
    minutes <= to_unsigned(minutes_h, 4) & to_unsigned(minutes_l, 4);
    hours   <= to_unsigned(hours_h, 4) & to_unsigned(hours_l, 4);

end architecture rtl;
