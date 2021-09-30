library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use std.env.all;

entity calc_tb is
end entity calc_tb;

architecture tb of calc_tb is
    constant clk_freq   : integer := 50e6;
    constant clk_period : time    := 1000 ms / clk_freq;

    signal tb_clock_50 : std_logic                     := '0';
    signal tb_key      : std_logic_vector (2 downto 0) := (others => '0');
    signal tb_sw       : std_logic_vector (1 downto 0) := (others => '0');
    signal tb_ledg     : std_logic_vector (8 downto 7) := (others => '0');
    signal tb_hex2     : std_logic_vector (6 downto 0) := (others => '0');
    signal tb_hex3     : std_logic_vector (6 downto 0) := (others => '0');
    signal tb_hex4     : std_logic_vector (6 downto 0) := (others => '0');
    signal tb_hex5     : std_logic_vector (6 downto 0) := (others => '0');
    signal tb_hex6     : std_logic_vector (6 downto 0) := (others => '0');
    signal tb_hex7     : std_logic_vector (6 downto 0) := (others => '0');

begin
    rtc1 : entity work.calc
        port map(
            clock_50 => tb_clock_50,
            key      => tb_key,
            sw       => tb_sw,
            ledg     => tb_ledg,
            hex2     => tb_hex2,
            hex3     => tb_hex3,
            hex4     => tb_hex4,
            hex5     => tb_hex5,
            hex6     => tb_hex6,
            hex7     => tb_hex7
        );

    tb_clock_50 <= not tb_clock_50 after clk_period / 2;

    sim : process
    begin
        tb_key(0) <= '0';
        wait for 2 * clk_period;
        tb_key(0) <= '1';

        for i in 0 to 10 loop
            wait for 5 * clk_period;
            tb_key(1) <= '0';
            wait for 5 * clk_period;
            tb_key(1) <= '1';
        end loop;
        tb_key(1) <= '0';

        wait for 5 * clk_period;

        for i in 0 to 10 loop
            wait for 5 * clk_period;
            tb_key(2) <= '0';
            wait for 5 * clk_period;
            tb_key(2) <= '1';
        end loop;
        tb_key(2) <= '0';

        finish;
    end process sim;
end architecture tb;