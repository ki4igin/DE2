LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY lcd_tb IS

END ENTITY lcd_tb;

ARCHITECTURE rtl OF lcd_tb IS
    SIGNAL tb_clk : STD_LOGIC := '0';
    SIGNAL tb_reset : STD_LOGIC;
    SIGNAL tb_enable : STD_LOGIC;
    SIGNAL tb_lcd_bus : STD_LOGIC_VECTOR(9 DOWNTO 0);
    SIGNAL tb_busy : STD_LOGIC := '1';
    SIGNAL tb_rw, tb_rs, tb_e : STD_LOGIC;
    SIGNAL tb_lcd_data : STD_LOGIC_VECTOR(7 DOWNTO 0);

    COMPONENT lcd_driver IS
        GENERIC (
            clk_freq : INTEGER := 50; --system clock frequency in MHz
            display_lines : STD_LOGIC := '1'; --number of display lines (0 = 1-line mode, 1 = 2-line mode)
            character_font : STD_LOGIC := '0'; --font (0 = 5x8 dots, 1 = 5x10 dots)
            display_on_off : STD_LOGIC := '1'; --display on/off (0 = off, 1 = on)
            cursor : STD_LOGIC := '0'; --cursor on/off (0 = off, 1 = on)
            blink : STD_LOGIC := '0'; --blink on/off (0 = off, 1 = on)
            inc_dec : STD_LOGIC := '1'; --increment/decrement (0 = decrement, 1 = increment)
            shift : STD_LOGIC := '0' --shift on/off (0 = off, 1 = on)
        );
        PORT (
            clk : IN STD_LOGIC;
            reset : IN STD_LOGIC;
            enable : IN STD_LOGIC;
            lcd_bus : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
            busy : OUT STD_LOGIC := '1';
            rw, rs, e : OUT STD_LOGIC;
            lcd_data : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
        );
    END COMPONENT;
BEGIN
    lcd : lcd_driver
    GENERIC MAP(
        clk_freq => 1
    )
    PORT MAP(
        clk => tb_clk,
        reset => '0',
        enable => tb_enable,
        lcd_bus => tb_lcd_bus,
        busy => tb_busy,
        rw => tb_rw,
        rs => tb_rs,
        e => tb_e,
        lcd_data => tb_lcd_data
    );

    PROCESS
    BEGIN
        tb_clk <= NOT tb_clk;
        WAIT FOR 10 ns;
    END PROCESS;

    PROCESS
    BEGIN
        tb_enable <= '0';
        WAIT FOR 2 ms;
        tb_enable <= '1';
        WAIT;
    END PROCESS;

    PROCESS
    BEGIN
        tb_lcd_bus <= (OTHERS => '0');
        WAIT FOR 1.8 ms;
        tb_lcd_bus <= "00" & "10101010";
        WAIT;
    END PROCESS;

END ARCHITECTURE rtl;