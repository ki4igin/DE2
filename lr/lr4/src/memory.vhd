library ieee;
use ieee.std_logic_1164.all;

entity memory is
    port (
        clock_50  : in std_logic;
        KEY       : in std_logic_vector (2 downto 0);     -- внешние кнопки
        SW        : in std_logic_vector (1 downto 0);     -- внешние кнопки
        HEX4      : out std_logic_vector (6 downto 0);    -- индикатор HEX4
        HEX5      : out std_logic_vector (6 downto 0);    -- индикатор HEX5
        HEX6      : out std_logic_vector (6 downto 0);    -- индикатор HEX6
        HEX7      : out std_logic_vector (6 downto 0);    -- индикатор HEX7
        SRAM_ADDR : out std_logic_vector (17 downto 0);   -- шина адреса SRAM
        SRAM_DQ   : inout std_logic_vector (15 downto 0); -- шина данных SRAM
        SRAM_WE_N : out std_logic;                        -- разрешение записи SRAM
        SRAM_OE_N : out std_logic;                        -- разрешение выхода SRAM
        SRAM_UB_N : out std_logic;                        -- выбор старшего байта данных SRAM
        SRAM_LB_N : out std_logic;                        --выбор младшего байта SRAM
        SRAM_CE_N : out std_logic);                       -- разрешение работы SRAM
end memory;

architecture behavior of memory is
    signal int_bus_addr       : std_logic_vector (3 downto 0);
    signal int_bus_data_read  : std_logic_vector (7 downto 0);
    signal int_bus_data_write : std_logic_vector (7 downto 0);
    signal int_bus_data_mux   : std_logic_vector (7 downto 0);
    component SRAM_interface is
        port (
            clock      : in std_logic;                         -- тактовый сигнал
            start      : in std_logic;                         -- запуск операции чтения_записи
            w_r        : in std_logic;                         -- выбор типа операции: запись (1) или чтение (0)
            addr_w_r   : in std_logic_vector (3 downto 0);     -- адрес
            data_read  : out std_logic_vector (7 downto 0);    -- данные при чтении
            data_write : in std_logic_vector (7 downto 0);     -- данные при записи
            data_inout : inout std_logic_vector (15 downto 0); -- выходные данные
            addr_out   : out std_logic_vector (17 downto 0);   -- выходной адрес
            we         : out std_logic);
    end component;
    component count_adr is
        port (
            rst       : in std_logic;                       -- сигнал асинхронного сброса
            clk       : in std_logic;                       -- тактовый сигнал счетчика
            out_count : out std_logic_vector (3 downto 0)); --выходной кода
    end component;
    component count_data is
        port (
            rst       : in std_logic;                       -- сигнал асинхронного сброса
            clk       : in std_logic;                       -- тактовый сигнал счетчика
            out_count : out std_logic_vector (7 downto 0)); --выходной код
    end component;
    component decoder is
        port (
            code     : in std_logic_vector (3 downto 0);   -- входной двоичный код
            out_code : out std_logic_vector (6 downto 0)); -- выходной код
    end component;
begin
    SRAM_OE_N <= '0';
    SRAM_UB_N <= '0';
    SRAM_LB_N <= '0';
    SRAM_CE_N <= '0';
    process (sw(0), int_bus_data_read, int_bus_data_write)
    begin
        case sw(0) is
            when '1'    => int_bus_data_mux    <= int_bus_data_write;
            when others => int_bus_data_mux <= int_bus_data_read;
        end case;
    end process;
    counter1 : count_adr
    port map('1', KEY(2), int_bus_addr);
    decoder1 : decoder
    port map(int_bus_addr, HEX6);
    HEX7 <= "1111111";
    counter2 : count_data
    port map('1', KEY(1), int_bus_data_write);
    decoder2 : decoder
    port map(int_bus_data_mux(7 downto 4), HEX5);
    decoder3 : decoder
    port map(int_bus_data_mux(3 downto 0), HEX4);
    SRAM1 : SRAM_interface
    port map(
        clock_50, KEY(0), SW(0), int_bus_addr,
        int_bus_data_read, int_bus_data_write, SRAM_DQ, SRAM_ADDR, SRAM_WE_N);
end behavior;

