--описания дешифратора двоичного кода в семисегментный
library IEEE;
use IEEE.std_logic_1164.all;
entity decoder is
    port (
        clk      : in std_logic;
        code     : in std_logic_vector (3 downto 0);   -- входной двоичный код
        out_code : out std_logic_vector (6 downto 0)); -- выходной код
end decoder;
architecture behavioral of decoder is
begin
    process (clk)
    begin
        if rising_edge(clk) then
            case code (3 downto 0) is
                when "0000" => out_code <= "1000000"; --"0"
                when "0001" => out_code <= "1111001"; --"1"
                when "0010" => out_code <= "0100100"; --"2"
                when "0011" => out_code <= "0110000"; --"3"
                when "0100" => out_code <= "0011001"; --"4"
                when "0101" => out_code <= "0010010"; --"5"
                when "0110" => out_code <= "0000010"; --"6"
                when "0111" => out_code <= "1111000"; --"7"
                when "1000" => out_code <= "0000000"; --"8"
                when "1001" => out_code <= "0010000"; --"9"
                when others => out_code <= "1111111"; --"индикатор выключен"
            end case;
        end if;
    end process;
end behavioral;