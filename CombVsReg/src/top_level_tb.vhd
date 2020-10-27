library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use std.env.all;
use work.converters.all;

entity top_level_tb is

end entity top_level_tb;

architecture rtl of top_level_tb is
    constant freq   : integer := 50e6;
    constant period : time    := 1000 ms / freq;

    signal CLOCK_50 : std_logic;

    signal c_in_comb_tb  : std_logic;
    signal a_comb_tb     : std_logic;
    signal b_comb_tb     : std_logic;
    signal s_comb_tb     : std_logic;
    signal c_out_comb_tb : std_logic;

    signal c_in_reg_tb  : std_logic;
    signal a_reg_tb     : std_logic;
    signal b_reg_tb     : std_logic;
    signal s_reg_tb     : std_logic;
    signal c_out_reg_tb : std_logic;

begin
    u0 : entity work.top_level
        port map(
            CLOCK_50 => CLOCK_50;

            c_in_comb  => c_in_comb_tb,
            a_comb     => a_comb_tb,
            b_comb     => b_comb_tb,
            s_comb     => s_comb_tb,
            c_out_comb => c_out_comb_tb,

            c_in_reg  := > c_in_reg_tb,
            a_reg     := > a_reg_tb,
            b_reg     := > b_reg_tb,
            s_reg     := > s_reg_tb,
            c_out_reg := > c_out_reg_tb
        );

    CLOCK_50_tb <= not CLOCK_50_tb after period /2;

    sim : process
    begin
        wait for 2 * period;
        for i in 0 to 2 ** 3 - 1 loop
            (c_in_comb, a_comb, b_comb) <= to_slv(i, 3);
            (c_in_reg, a_reg, b_reg) <= to_slv(i, 3);
            wait for 2 * period;
        end loop;

        report "Test: OK" severity warning;

        finish;
    end process sim;

end architecture rtl;