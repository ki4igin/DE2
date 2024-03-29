library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity sum_top is
    port (
        SW   : in std_logic_vector(2 downto 0);
        LEDG : out std_logic_vector(1 downto 0)
    );
end entity sum_top;

architecture rtl of sum_top is
    component sum is
        port (
            a   : in std_logic;
            b   : in std_logic;
            cin : in std_logic;

            s    : out std_logic;
            cout : out std_logic

        );
    end component;
begin
sum1 : sum
port map(
    a   => SW(0),
    b   => SW(1),
    cin => SW(2),

    s    => LEDG(0),
    cout => LEDG(1)
);

end architecture rtl;
