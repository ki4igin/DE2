--описания устройства суммирования/вычитания со входными и выходными регистрами
library IEEE;
use IEEE.std_logic_1164.all;
entity add_sub_clock is
    port (
        clock    : in std_logic;                       -- тактовый сигнал
        add_sub  : in std_logic;                       -- выбор сложение(1)/вычитание(0)
        dataa    : in std_logic_vector (6 downto 0);   -- число А
        datab    : in std_logic_vector (6 downto 0);   -- число В
        overflow : out std_logic;                      -- сигнал переполнения
        result   : out std_logic_vector (6 downto 0)); -- результат арифметической операции
end add_sub_clock;
architecture behavioral of add_sub_clock is
    component add
        port (
            add_sub  : in std_logic;
            dataa    : in std_logic_vector (6 downto 0);
            datab    : in std_logic_vector (6 downto 0);
            overflow : out std_logic;
            result   : out std_logic_vector (6 downto 0));
    end component;
    signal add_sub_reg  : std_logic;
    signal dataa_reg    : std_logic_vector (6 downto 0);
    signal datab_reg    : std_logic_vector (6 downto 0);
    signal overflow_reg : std_logic;
    signal result_reg   : std_logic_vector (6 downto 0);
begin
    process (clock)
    begin
        if (clock'event and clock = '1') then
            add_sub_reg <= add_sub;
            dataa_reg   <= dataa;
            datab_reg   <= datab;
            if (result_reg > "1100011" or overflow_reg = '0') then
                result   <= "0000000";
                overflow <= '1';
            else
                result   <= result_reg;
                overflow <= '0';
            end if;
        end if;
    end process;
    addsub_1 : add
    port map(add_sub_reg, dataa_reg, datab_reg, overflow_reg, result_reg);
end behavioral;