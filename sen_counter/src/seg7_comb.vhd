library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity seg7_comb is
    port (
        sel : in std_logic_vector(5 downto 0);

        dig : in unsigned(3 downto 0);
        seg : out std_logic_vector(6 downto 0)
    );
end entity seg7_comb;

architecture rtl of seg7_comb is
    signal a : std_logic_vector(5 downto 0);
    signal b : std_logic_vector(5 downto 0);
    signal c : std_logic_vector(5 downto 0);
    signal d : std_logic_vector(5 downto 0);
    signal e : std_logic_vector(5 downto 0);
    signal f : std_logic_vector(5 downto 0);
    signal g : std_logic_vector(5 downto 0);

    signal x1, x2, x3, x4     : std_logic;
    signal x1n, x2n, x3n, x4n : std_logic;

begin

    -- (x4, x3, x2, x1) <= dig;
    x1 <= dig(3);
    x2 <= dig(2);
    x3 <= dig(1);
    x4 <= dig(0);

    x4n <= not x4;
    x3n <= not x3;
    x2n <= not x2;
    x1n <= not x1;

    -- ---a----
    -- |	  |
    -- f	  b
    -- |	  |
    -- ---g----
    -- |	  |
    -- e	  c
    -- |	  |
    -- ---d----
    with sel select seg <=
        (g(0), f(0), e(0), d(0), c(0), b(0), a(0)) when "000001",
        (g(1), f(1), e(1), d(1), c(1), b(1), a(1)) when "000010",
        (g(2), f(2), e(2), d(2), c(2), b(2), a(2)) when "000100",
        (g(3), f(3), e(3), d(3), c(3), b(3), a(3)) when "001000",
        (g(4), f(4), e(4), d(4), c(4), b(4), a(4)) when "010000",
        (g(5), f(5), e(5), d(5), c(5), b(5), a(5)) when "100000",
        "ZZZZZZZ" when others;

    a(0) <= (x3 and x4n) or (x1n and x2n and x4n) or (x3 and x4 and x1n);
    b(0) <= (x1n and x2n) or (x1n and x3 and x4) or (x1n and x3n and x4n) or (x1 and x3n and x4) or (x1 and x2n and x4n);
    c(0) <= (x2n and x3n and x4n) or (x1 and x4) or (x1 and x3n and x4) or (x1n and x2 and x4n) or (x1 and x2n and x3);
    d(0) <= 'Z';
    e(0) <= (x1 and x3) or (x1 and x2) or (x3 and x4n) or (x2n and x4n);
    f(0) <= 'Z';
    -- g(0) <= 'Z';
    g(0) <= (x3 and x4n) or (x1 and x2n) or (x1 and x4) or (x1n and x2n and x3) or (x1n and x2 and x3n);

    a(1) <= 'Z';
    b(1) <= 'Z';
    c(1) <= (x2n and x3n) or (x1n and x2) or (x1 and x2n) or (x3n and x4) or (x1n and x3 and x4);
    d(1) <= (x1 and x3n) or (x2 and x3n and x4) or (x2n and x3 and x4) or (x1n and x2n and x4n) or (x2 and x3 and x4n);
    e(1) <= (x2n and x4n) or (x3 and x4n) or (x1 and x2) or (x1 and x3);
    f(1) <= (x1 and x2n) or (x3n and x4n) or (x2 and x4) or (x1n and x2 and x3) or (x1 and x3 and x4);
    g(1) <= 'Z';

    a(2) <= (x1n and x2n and x4n) or (x1n and x2 and x4) or (x1 and x2n and x3n) or (x1 and x4n) or (x2 and x3) or (x1n and x3);
    b(2) <= 'Z';
    c(2) <= 'Z';
    d(2) <= (x1n and x2n and x4n) or (x2n and x3 and x4) or (x2 and x3n and x4) or (x2 and x3 and x4n) or (x1 and x3n);
    e(2) <= 'Z';
    f(2) <= 'Z';
    g(2) <= 'Z';

    a(3) <= (x2n and x4n) or (x1n and x3) or (x2 and x3) or (x1 and x2n and x3n) or (x1n and x2 and x4) or (x1 and x3n and x4n);
    b(3) <= (x1n and x2n) or (x1n and x3 and x4) or (x1 and x2n and x4n) or (x1 and x3n and x4) or (x1n and x3n and x4n);
    c(3) <= (x1 and x2n) or (x1n and x2) or (x2 and x3n and x4) or (x1n and x3 and x4) or (x2n and x3n);
    d(3) <= (x1 and x2 and x3n and x4) or (x1 and x3n) or (x1n and x2 and x3n) or (x1 and x2 and x3 and x4n) or (x1 and x2n and x4n) or (x1n and x3n and x4);
    e(3) <= (x2n and x4n) or (x3 and x4n) or (x1 and x2) or (x1 and x3);
    f(3) <= (x1 and x2n) or (x1 and x3) or (x1n and x2 and x3n) or (x3n and x4n) or (x2 and x3 and x4n);
    g(3) <= (x1 and x2n) or (x3 and x4n) or (x2n and x3) or (x1 and x4) or (x1n and x2 and x3n);

    a(4) <= (x2n and x4n) or (x1n and x3) or (x2 and x3) or (x1n and x2 and x4) or (x1 and x2n and x3n) or (x1 and x3n and x4n);
    b(4) <= (x1n and x2n) or (x2n and x4n) or (x1n and x3n and x4n) or (x1n and x3 and x4) or (x1 and x3n and x4);
    c(4) <= (x1 and x2n) or (x1n and x2) or (x2n and x3n) or (x2 and x3n and x4) or (x1n and x2 and x4);
    d(4) <= (x1n and x2n and x4n) or (x2n and x3 and x4) or (x2 and x3 and x4n) or (x2 and x3n and x4) or (x1 and x3n);
    e(4) <= (x2n and x4n) or (x3 and x4n) or (x1 and x2) or (x1 and x3);
    f(4) <= 'Z';
    g(4) <= (x1 and x2n) or (x3 and x4n) or (x1 and x4) or (x1n and x2 and x3n) or (x1n and x2n and x3);

    a(5) <= (x2n and x4n) or (x1n and x3) or (x2 and x3) or (x1n and x2 and x4) or (x1 and x2n and x3n) or (x1 and x3n and x4n);
    b(5) <= 'Z';
    c(5) <= (x1 and x2n) or (x1n and x2) or (x2 and x3n and x4) or (x1n and x3 and x4) or (x2n and x3n);
    d(5) <= (x1n and x2n and x4n) or (x2n and x3 and x4) or (x2 and x3n and x4) or (x2 and x3 and x4n) or (x1 and x3n); 
    e(5) <= 'Z';
    f(5) <= (x3n and x4n) or (x1n and x2 and x3n) or (x1 and x2n) or (x1 and x3) or (x2 and x3 and x4n);
    g(5) <= 'Z';

    -- with dig select seg <=
    --     b"1000000" when x"0",
    --     b"1111001" when x"1",
    --     b"0100100" when x"2",
    --     b"0110000" when x"3",
    --     b"0011001" when x"4",
    --     b"0010010" when x"5",
    --     b"0000010" when x"6",
    --     b"1111000" when x"7",
    --     b"0000000" when x"8",
    --     b"0011000" when x"9",
    --     b"0001000" when x"a",
    --     b"0000011" when x"b",
    --     b"1000110" when x"c",
    --     b"0100001" when x"d",
    --     b"0000110" when x"e",
    --     b"0001110" when x"f",
    --     b"0000000" when others;

end architecture rtl;
