library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.tools.all;

entity sum is
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
end entity sum;

architecture rtl of sum is
	signal cnt : integer range 0 to 99;
begin
    process (clk, rst_n)
        variable p, g : std_logic;
    begin
        if rst_n = '0' then
            s     <= '0';
            c_out <= '0';
        elsif rising_edge(clk) then
            p := a xor b;
            g := a and b;
            s     <= p xor c_in;
            c_out <= g or (p and c_in);
        end if;
    end process;
	 
	 process (clk, rst_n)		
	 begin
        if rst_n = '0' then
            cnt     <= 0;            
        elsif rising_edge(clk) then
				cnt <= cnt + 1;
				digits <= to_bcd(cnt, digits'length);
			end if;
	 end process;
	 
end architecture rtl;
