library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use std.env.all;

entity sum_tb is
end entity sum_tb;

architecture tb of sum_tb is
    constant clk_freq   : integer := 50e6;
    constant clk_period : time    := 1000 ms / clk_freq;

    signal tb_clk   : std_logic := '0';
    signal tb_rst_n : std_logic := '0';

    signal tb_a    : std_logic := '0';
    signal tb_b    : std_logic := '0';
    signal tb_c_in : std_logic := '0';

    signal tb_s     : std_logic;
    signal tb_c_out : std_logic;

    type test_vec_t is array (natural range <>) of std_logic_vector(4 downto 0);
    constant test_vec : test_vec_t := (
        -- a b cin s cout
        b"000_00",
        b"001_10",
        b"010_10",
        b"011_01",
        b"100_10",
        b"101_01",
        b"110_01",
        b"111_11"
    );

begin
    tb_clk <= not tb_clk after clk_period / 2;

    sum1 : entity work.sum
        port map(
            clk   => tb_clk,
            rst_n => tb_rst_n,
            a     => tb_a,
            b     => tb_b,
            c_in  => tb_c_in,
            s     => tb_s,
            c_out => tb_c_out
        );

    sim : process
    begin
        report "Test Start";
        tb_rst_n <= '0';
        wait for 2 * clk_period;
        tb_rst_n <= '1';
        wait for 2 * clk_period;

        -- for cnt in 0 to 7 loop
        --     (tb_a, tb_b, tb_c_in) <= std_logic_vector(to_unsigned(cnt, 3));
        --     wait for 100ns;
        -- end loop;

        for cnt in 0 to 7 loop
            (tb_a, tb_b, tb_c_in) <= test_vec(cnt)(4 downto 2);
            wait for 100ns;
            assert (tb_s, tb_c_out) = test_vec(cnt)(1 downto 0)
            report "test_vec = " & to_string(test_vec(cnt)(4 downto 2)) &
                "out = " & to_string(tb_s & tb_c_out);
            wait for 100ns;
        end loop;

        finish;
    end process;
end architecture tb;
