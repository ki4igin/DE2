library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity adder_reg is
    port (
        clk        : in std_logic;
        c_in, a, b : in std_logic;
        s, c_out   : out std_logic
    );
end entity adder_reg;

architecture rtl of adder_reg is
begin
    process (clk)
        variable p, g : std_logic;
    begin
        if rising_edge(clk) then
            p := a xor b;
            g := a and b;
            s     <= p xor c_in;
            c_out <= g or (p and c_in);
        end if;
    end process;
end architecture rtl;