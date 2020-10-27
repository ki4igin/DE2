library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity adder_comb is
    port (
        c_in, a, b : in std_logic;
        s, c_out   : out std_logic
    );
end entity adder_comb;

architecture rtl of adder_comb is
    signal p, g : std_logic;
begin
        p <= a xor b;
        g <= a and b;
        s <= p xor c_in;
        c_out <= g or (p and c_in);
end architecture rtl;