library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity sum_top is
    port (
        clock_50 : in std_logic;
        key      : in std_logic_vector(0 downto 0);
        sw       : in std_logic_vector(2 downto 0);

        ledr : out std_logic_vector(1 downto 0)
    );
end entity sum_top;

architecture rtl of sum_top is
    component sum is
        port (
            clk   : in std_logic;
            rst_n : in std_logic;

            a    : in std_logic;
            b    : in std_logic;
            c_in : in std_logic;

            s     : out std_logic;
            c_out : out std_logic
        );
    end component sum;
begin
    sum1 : sum
    port map(
        clk   => clock_50,
        rst_n => key(0),        
   

       a    => sw(2),
       b    => sw(1),
       c_in => sw(0),

        s     => ledr(1),
        c_out => ledr(0)
    );
end architecture rtl;
