library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity test is
    port (
        clk : in std_logic;
        rst : in std_logic;

        test : in std_logic_vector(7 downto 0);

        sig
    );
end test;

architecture rtl of test is

begin
    test : process (clk)
    begin
        if clk'event = '1' then
            -- das da da ..

        else

        end if;
    end process;
end architecture;
