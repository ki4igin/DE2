library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.tools.all;

entity counter is
    port (
        CLOCK_50 : in std_logic;
        SW      : in std_logic_vector(5 downto 0);

        HEX0 : out std_logic_vector(6 downto 0)

    );
end entity counter;

architecture rtl of counter is
    constant clk_freq : integer := 50e3;

    signal ticks   : integer   := 0;
    signal cnt     : integer   := 0;
    signal clk_1_s : std_logic := '0';

    component seg7
        port (
            dig : in unsigned(3 downto 0);
            seg : out std_logic_vector(6 downto 0)
        );
    end component;

begin

    clock_div : process (CLOCK_50)
        variable wrap : boolean;
    begin
        if rising_edge(CLOCK_50) then
            Inc(ticks, clk_freq, true, wrap);
            clk_1_s <= '1' when wrap else
                '0';
        end if;
    end process clock_div;

    process (clk_1_s)
        variable a : boolean;
    begin
        if rising_edge(clk_1_s) then
            Inc(cnt, 16, true, a);
        end if;
    end process;

    seg : seg7
    port map(
        sel => SW,
        dig => to_unsigned(cnt, 4),
        seg => HEX0
    );
end architecture rtl;
