library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.tools.all;

entity sum_top is
    port (
        CLOCK_50 : in std_logic;
        KEY      : in std_logic_vector(0 downto 0);
        SW       : in std_logic_vector(2 downto 0);

        LEDG : buffer std_logic_vector(1 downto 0);
		  
		   digits : out bcd_array_t(0 to 1)
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
            c_out : out std_logic;
				
				digits : out bcd_array_t(0 to 1)
        );
    end component sum;
begin
    sum1 : sum
    port map(
        clk   => CLOCK_50,
        rst_n => KEY(0),

        a    => SW(2),
        b    => SW(1),
        c_in => SW(0),

        s     => LEDG(1),
        c_out => LEDG(0),
		  
		  digits => digits
    );

end architecture rtl;
