library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
entity sum is
    port (
        a   : in std_logic;
        b   : in std_logic;
        cin : in std_logic;

        s    : out std_logic;
        cout : out std_logic

    );
end entity sum;

architecture rtl of sum is
    signal T  : std_logic;
    signal S0 : std_logic;
    signal V  : std_logic;

begin
    T    <= (A and B) or (Cin and(A or B));
    S0   <= A and B and Cin;
    V    <= S0 or((not T) and (A or B or Cin));
    Cout <= T; -- Cout–перенос в старший разряд
    S    <= V; -- S–cумма разряда

end architecture rtl;
