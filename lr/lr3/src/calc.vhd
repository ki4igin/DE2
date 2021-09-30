
library IEEE;
use IEEE.std_logic_1164.all;
entity calc is -- Вехний уровень иерархии
    port (
        key      : in std_logic_vector (2 downto 0);  -- кнопки KEY1, KEY2
        clock_50 : in std_logic;                      -- источник тактового сигнала
        sw       : in std_logic_vector (1 downto 0);  -- тумблер SW0
        ledg     : out std_logic_vector (8 downto 7); -- переполнение
        hex2     : out std_logic_vector (6 downto 0); -- индикатор HEX2
        hex3     : out std_logic_vector (6 downto 0); -- индикатор HEX3
        hex4     : out std_logic_vector (6 downto 0); -- индикатор HEX4
        hex5     : out std_logic_vector (6 downto 0); -- индикатор HEX5
        hex6     : out std_logic_vector (6 downto 0); -- индикатор HEX6
        hex7     : out std_logic_vector (6 downto 0)  -- индикатор HEX7
    );
end calc;
architecture behavioral of calc is
    component count is -- счетчик с асинхронным сбросом
        port (
            rst       : in std_logic;
            clk       : in std_logic;
            out_count : out std_logic_vector (6 downto 0));
    end component;
    component table_99 is -- таблица преобразования кодов в пределах 0...99
        port (
            address : in std_logic_vector (6 downto 0);
            clock   : in std_logic := '1';
            q       : out std_logic_vector (7 downto 0));
    end component;
    component decoder is --дешифратор двоичного кода в семисегментный
        port (
            clk      : in std_logic;
            code     : in std_logic_vector (3 downto 0);
            out_code : out std_logic_vector (6 downto 0));
    end component;
    component add_sub_clock -- устройство суммирования/вычитания с регистрами
        port (
            clock    : in std_logic;
            add_sub  : in std_logic;
            dataa    : in std_logic_vector (6 downto 0);
            datab    : in std_logic_vector (6 downto 0);
            overflow : out std_logic;
            result   : out std_logic_vector (6 downto 0));
    end component;
    signal A      : std_logic_vector (6 downto 0);
    signal A_dc   : std_logic_vector (7 downto 0);
    signal B      : std_logic_vector (6 downto 0);
    signal B_dc   : std_logic_vector (7 downto 0);
    signal RES    : std_logic_vector (6 downto 0);
    signal RES_dc : std_logic_vector (7 downto 0);
begin
    count1 : count
    port map(key(0), key(2), A);

    table1 : table_99
    port map(A, clock_50, A_dc);

    decoder1_1 : decoder
    port map(clock_50, A_dc(3 downto 0), hex6);

    decoder1_2 : decoder
    port map(clock_50, A_dc(7 downto 4), hex7);

    count2 : count
    port map(key(0), key(1), B);

    table2 : table_99
    port map(B, clock_50, B_dc);

    decoder2_1 : decoder
    port map(clock_50, B_dc(3 downto 0), hex4);

    decoder2_2 : decoder
    port map(clock_50, B_dc(7 downto 4), hex5);

    add_sub1 : add_sub_clock
    port map(clock_50, sw(0), A, B, ledg(8), RES);

    table3 : table_99
    port map(RES, clock_50, RES_dc);

    decoder3_1 : decoder
    port map(clock_50, RES_dc(3 downto 0), hex2);

    decoder3_2 : decoder
    port map(clock_50, RES_dc(7 downto 4), hex3);
end behavioral;