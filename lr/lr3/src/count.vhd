--Описание счетчика с асинхронным сбросом
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;
entity count is
    port (
        rst       : in std_logic;                       -- сигнал асинхронного сброса
        clk       : in std_logic;                       -- тактовый сигнал счетчика
        out_count : out std_logic_vector (6 downto 0)); -- выходной код
end count;
architecture behavioral of count is
    signal int_data : std_logic_vector (6 downto 0) := (others => '0');
begin
    process (clk, rst)
    begin
        if (rst = '0') then -- асинхронный сброс
            int_data <= (others => '0');
        elsif (clk'event and clk = '1') then -- фронт сигнала
            if (int_data = CONV_STD_LOGIC_VECTOR(99, 7)) then
                int_data <= (others => '0');
            else
                int_data <= int_data + '1';
            end if;
        end if;
    end process;
    out_count <= int_data;
end behavioral;