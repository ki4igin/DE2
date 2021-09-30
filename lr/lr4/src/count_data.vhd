--Описание счетчика с асинхронным сбросом для записываемых данных
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.STD_LOGIC_UNSIGNED.all;
use IEEE.std_logic_arith.all;
entity count_data is
    port (
        rst       : in std_logic;                       -- сигнал асинхронного сброса
        clk       : in std_logic;                       -- тактовый сигнал счетчика
        out_count : out std_logic_vector (7 downto 0)); --выходной код
end count_data;
architecture behavioral of count_data is
    signal cnt : std_logic_vector (7 downto 0);
begin
    process (clk, rst)
    begin
        if (rst = '0') then
            cnt <= "00000000";
        elsif (clk'event and clk = '1') then
            cnt <= cnt + '1';
        end if;
    end process;
    out_count <= cnt;
end behavioral;