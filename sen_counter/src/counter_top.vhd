library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity counter_top is
    port (
        CLOCK_50 : in std_logic;
        EXT_CLOCK : in std_logic;

        KEY : in std_logic_vector(3 downto 0);

        HEX0 : out std_logic_vector(6 downto 0);
        HEX1 : out std_logic_vector(6 downto 0);
        HEX2 : out std_logic_vector(6 downto 0);
        HEX3 : out std_logic_vector(6 downto 0);
        HEX4 : out std_logic_vector(6 downto 0);
        HEX5 : out std_logic_vector(6 downto 0);
        HEX6 : out std_logic_vector(6 downto 0);
        HEX7 : out std_logic_vector(6 downto 0)
    );
end entity counter_top;

architecture rtl of counter_top is

    component SEG7_LUT_8 is
        port (
            idig  : in unsigned(31 downto 0);
            oseg0 : out std_logic_vector(6 downto 0);
            oseg1 : out std_logic_vector(6 downto 0);
            oseg2 : out std_logic_vector(6 downto 0);
            oseg3 : out std_logic_vector(6 downto 0);
            oseg4 : out std_logic_vector(6 downto 0);
            oseg5 : out std_logic_vector(6 downto 0);
            oseg6 : out std_logic_vector(6 downto 0);
            oseg7 : out std_logic_vector(6 downto 0)
        );
    end component;

    signal cnt : unsigned(31 downto 0) := (others => '0');
    alias clk  : std_logic is CLOCK_50;
    alias rst  : std_logic is KEY(0);

begin

    seg7_lut : SEG7_LUT_8
    port map(
        idig  => cnt,
        oseg0 => HEX0,
        oseg1 => HEX1,
        oseg2 => HEX2,
        oseg3 => HEX3,
        oseg4 => HEX4,
        oseg5 => HEX5,
        oseg6 => HEX6,
        oseg7 => HEX7
    );

    counter : process (EXT_CLOCK, rst)
    begin
        if rst = '0' then
            cnt <= (others => '0');
        elsif rising_edge(EXT_CLOCK) then
            cnt <= cnt + 1;
        end if;
    end process counter;
end architecture rtl;
