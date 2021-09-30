library ieee;
use ieee.std_logic_1164.all;
use IEEE.STD_LOGIC_UNSIGNED.all;
use IEEE.std_logic_arith.all;
entity SRAM_interface is
    port (
        clock      : in std_logic;                         -- тактовый сигнал
        start      : in std_logic;                         -- запуск операции чтения_записи
        w_r        : in std_logic;                         -- выбор типа операции: запись (1) или чтение (0)
        addr_w_r   : in std_logic_vector (3 downto 0);     -- адрес
        data_read  : out std_logic_vector (7 downto 0);    -- данные при чтении
        data_write : in std_logic_vector (7 downto 0);     -- данные при записи
        data_inout : inout std_logic_vector (15 downto 0); -- выходные данные
        addr_out   : out std_logic_vector (17 downto 0);   -- выходной адрес
        we         : out std_logic);                       -- разрешение записи
end SRAM_interface;
architecture behavior of SRAM_interface is
    signal rst_pause     : std_logic;                     -- сброс сигнала pause
    signal pause         : std_logic;                     -- временной промежуток для установки адреса
    signal count_pause   : std_logic_vector (3 downto 0); -- счетчик для паузы
    signal data_read_reg : std_logic_vector (7 downto 0); -- считываемые данные
begin
    process (start, rst_pause) -- описание триггера 1
    begin
        if (rst_pause = '0') then
            pause <= '0';
        elsif (start'event and start = '1') then
            pause <= '1';
        end if;
    end process;
    process (clock, rst_pause, pause) -- описание счетчика 2
    begin
        if (rst_pause = '0') then
            count_pause <= "0000";
        elsif (clock'event and clock = '1') then
            if (pause = '1') then
                count_pause <= count_pause + '1';
            end if;
        end if;
    end process;
    process (clock) -- описание компаратора 3
    begin
        if (clock'event and clock = '1') then
            if (count_pause > "0010") then
                rst_pause <= '0';
            else
                rst_pause <= '1';
            end if;
        end if;
    end process;
    process (start) -- описание регистра адреса 4
    begin
        if (start'event and start = '1') then
            addr_out(3 downto 0)  <= addr_w_r;
            addr_out(17 downto 4) <= "00000000000000";
        end if;
    end process;
    we <= not (w_r and pause); -- формирование сигнала we 8
    process (w_r, data_write)  -- установка данных для записи 5
    begin
        case w_r is
            when '1' => data_inout (7 downto 0) <= data_write;
                data_inout (15 downto 8)            <= "00000000";
            when '0' => data_inout (7 downto 0) <= "ZZZZZZZZ";
                data_inout (15 downto 8)            <= "ZZZZZZZZ";
            when others => data_inout           <= "XXXXXXXXXXXXXXXX";
        end case;
    end process;
    process (w_r, data_inout) -- установка данных для чтения 6
    begin
        case w_r is
            when '1'    => data_read_reg    <= "ZZZZZZZZ";
            when '0'    => data_read_reg    <= data_inout (7 downto 0);
            when others => data_read_reg <= "XXXXXXXX";
        end case;
    end process;
    process (w_r, pause) -- описание регистра 7
    begin
        if (pause'event and pause = '0') then
            if (w_r = '0') then
                data_read <= data_read_reg;
            end if;
        end if;
    end process;
end behavior;
