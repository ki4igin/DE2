library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity rtc_test is
    port (
        CLOCK_50 : in std_logic;
        KEY      : in std_logic_vector(3 downto 0);

        HEX2 : out std_logic_vector(6 downto 0);
        HEX3 : out std_logic_vector(6 downto 0);
        HEX4 : out std_logic_vector(6 downto 0);
        HEX5 : out std_logic_vector(6 downto 0);
        HEX6 : out std_logic_vector(6 downto 0);
        HEX7 : out std_logic_vector(6 downto 0)
    );
end entity rtc_test;

architecture rtl of rtc_test is

    type hhmmss_t is array (5 downto 0) of unsigned(3 downto 0);
    type hex_t is array (5 downto 0) of std_logic_vector(6 downto 0);

    signal hhmmss : hhmmss_t;
    signal hex    : hex_t;

    component rtc is
        generic (
            clk_freq : integer --system clock frequency in MHz
        );
        port (
            clk     : in std_logic;
            rst     : in std_logic;
            seconds : out unsigned(7 downto 0);
            minutes : out unsigned(7 downto 0);
            hours   : out unsigned(7 downto 0)
        );
    end component rtc;

    component seg7
        port (
            dig : in unsigned(3 downto 0);
            seg : out std_logic_vector(6 downto 0)
        );
    end component;

begin

    rtc1 : rtc
        generic map (
            clk_freq => 50e1
        )
        port map (
            clk                 => CLOCK_50,
            rst                 => KEY(0),
            seconds(7 downto 4) => hhmmss(1),
            seconds(3 downto 0) => hhmmss(0),
            minutes(7 downto 4) => hhmmss(3),
            minutes(3 downto 0) => hhmmss(2),
            hours(7 downto 4)   => hhmmss(5),
            hours(3 downto 0)   => hhmmss(4)
        );

    q0 : for i in 0 to 5 generate
        seg7_6 : seg7
        port map(
            dig => hhmmss(i),
            seg => hex(i)
        );
    end generate;

    HEX2 <= hex(0);
    HEX3 <= hex(1);
    HEX4 <= hex(2);
    HEX5 <= hex(3);
    HEX6 <= hex(4);
    HEX7 <= hex(5);

end architecture rtl;