library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity seg7 is
    port (
        dig : in unsigned(3 downto 0);
        seg : out std_logic_vector(6 downto 0)
    );
end entity seg7;

architecture rtl of seg7 is

begin

    -- ---t----
    -- |	  |
    -- lt	 rt
    -- |	  |
    -- ---m----
    -- |	  |
    -- lb	 rb
    -- |	  |
    -- ---b----

    with dig select seg <=
        b"1000000" when x"0",
        b"1111001" when x"1",
        b"0100100" when x"2",
        b"0110000" when x"3",
        b"0011001" when x"4",
        b"0010010" when x"5",
        b"0000010" when x"6",
        b"1111000" when x"7",
        b"0000000" when x"8",
        b"0011000" when x"9",
        b"0001000" when x"a",
        b"0000011" when x"b",
        b"1000110" when x"c",
        b"0100001" when x"d",
        b"0000110" when x"e",
        b"0001110" when x"f",
        b"0000000" when others;
end architecture rtl;