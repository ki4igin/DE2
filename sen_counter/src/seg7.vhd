library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity seg7 is
    port (
        sel : in std_logic_vector(4 downto 0);

        dig : in unsigned(3 downto 0);
        seg : out std_logic_vector(6 downto 0)
    );
end entity seg7;

architecture rtl of seg7 is
    signal a : std_logic_vector(4 downto 0);
    signal b : std_logic_vector(4 downto 0);
    signal c : std_logic_vector(4 downto 0);
    signal d : std_logic_vector(4 downto 0);
    signal e : std_logic_vector(4 downto 0);
    signal f : std_logic_vector(4 downto 0);
    signal g : std_logic_vector(4 downto 0);

begin

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
        (g(0), f(0), e(0), d(0), c(0), b(0), a(0)) when "00001",
        (g(1), f(1), e(1), d(1), c(1), b(1), a(1)) when "00010",
        (g(2), f(2), e(2), d(2), c(2), b(2), a(2)) when "00100",
        (g(3), f(3), e(3), d(3), c(3), b(3), a(3)) when "01000",
        (g(4), f(4), e(4), d(4), c(4), b(4), a(4)) when "10000",
        b"0000000" when others;

    a(0) <= '0';
    b(0) <= '0';
    c(0) <= '0';
    d(0) <= '0';
    e(0) <= '0';
    f(0) <= '0';
    g(0) <= '0';

    a(1) <= '0';
    b(1) <= '0';
    c(1) <= '0';
    d(1) <= '0';
    e(1) <= '0';
    f(1) <= '0';
    g(1) <= '0';

    a(2) <= '0';
    b(2) <= '0';
    c(2) <= '0';
    d(2) <= '0';
    e(2) <= '0';
    f(2) <= '0';
    g(2) <= '0';

    a(3) <= '0';
    b(3) <= '0';
    c(3) <= '0';
    d(3) <= '0';
    e(3) <= '0';
    f(3) <= '0';
    g(3) <= '0';
    
    a(4) <= '0';
    b(4) <= '0';
    c(4) <= '0';
    d(4) <= '0';
    e(4) <= '0';
    f(4) <= '0';
    g(4) <= '0';

end architecture rtl;
