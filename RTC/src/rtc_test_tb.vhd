library IEEE;
use IEEE.STD_LOGIC_1164.all;
use std.env.all;

entity rtc_test_tb is
end rtc_test_tb;

architecture tb of rtc_test_tb is
    constant clock_frequency : integer := 50e1;
    constant clock_period    : time    := 1000 ms / clock_frequency;

    signal CLOCK_50 : std_logic                    := '0';
    signal KEY      : std_logic_vector(3 downto 0) := "0000";
    signal HEX2     : std_logic_vector(6 downto 0);
    signal HEX3     : std_logic_vector(6 downto 0);
    signal HEX4     : std_logic_vector(6 downto 0);
    signal HEX5     : std_logic_vector(6 downto 0);
    signal HEX6     : std_logic_vector(6 downto 0);
    signal HEX7     : std_logic_vector(6 downto 0);
begin

    test : entity work.rtc_test
        port map(
            CLOCK_50,
            KEY,
            HEX2,
            HEX3,
            HEX4,
            HEX5,
            HEX6,
            HEX7
        );

    CLOCK_50 <= not CLOCK_50 after clock_period / 2;
    KEY      <= "1111" after clock_period;

    tb: process
    begin
        wait for 10 sec;
        finish;
    end process tb;

end tb;