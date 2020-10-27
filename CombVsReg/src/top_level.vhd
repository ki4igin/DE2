library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity top_level is
    port (
        CLOCK_50 : in std_logic;

        c_in_comb  : in std_logic;
        a_comb     : in std_logic;
        b_comb     : in std_logic;
        s_comb     : out std_logic;
        c_out_comb : out std_logic;

        c_in_reg  : in std_logic;
        a_reg     : in std_logic;
        b_reg     : in std_logic;
        s_reg     : out std_logic;
        c_out_reg : out std_logic

        -- SW : in std_logic_vector(17 downto 0);

        -- LEDG : out std_logic_vector(8 downto 0)

    );
end entity top_level;

architecture rtl of top_level is

begin

    a1 : entity work.adder_comb
        port map(
            c_in  => c_in_comb,
            a     => a_comb,
            b     => b_comb,
            s     => s_comb,
            c_out => c_out_comb
        );

    a2 : entity work.adder_reg
        port map(
            clk   => CLOCK_50,
            c_in  => c_in_reg,
            a     => a_reg,
            b     => b_reg,
            s     => s_reg,
            c_out => c_out_reg
        );

end architecture rtl;