library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use std.env.all;

entity rtc_tb is
end entity rtc_tb;

architecture rtl of rtc_tb is
    constant clk_freq   : integer := 1e3;
    constant clk_period : time    := 1000 ms / clk_freq;

    signal tb_clk     : std_logic := '0';
    signal tb_rst     : std_logic := '0';
    signal tb_seconds : natural   := 0;
    signal tb_minutes : natural   := 0;
    signal tb_hours   : natural   := 0;

begin
    rtc1 : entity work.rtc
        generic map(
            clk_freq => clk_freq
        )
        port map(
            clk                 => tb_clk,
            rst                 => tb_rst,
            to_integer(seconds) => tb_seconds,
            to_integer(minutes) => tb_minutes,
            to_integer(hours)   => tb_hours
        );

    tb_clk <= not tb_clk after clk_period / 2;

    sim : process
        constant ref_time    : time := 100 sec;
        variable curent_time : time;
    begin
        tb_rst <= '0';
        wait for 2 * clk_period;
        tb_rst <= '1';
        wait for ref_time;

        curent_time := ((tb_hours * 60 + tb_minutes) * 60 + tb_seconds) * 1 sec;

        if curent_time /= ref_time then
            report "RTC Time = " & to_string(curent_time, ms) &
                "; REF Time = " & to_string(ref_time, ms)
                severity error;
        else
            report "Test Complete" severity warning;
        end if;
        finish;
    end process sim;
end architecture rtl;
