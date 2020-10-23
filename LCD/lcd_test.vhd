LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY lcd_test IS
    PORT (
        clk : IN STD_LOGIC;
        rw, rs, e : OUT STD_LOGIC;
        lcd_data : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
    );
END ENTITY lcd_test;

ARCHITECTURE rtl OF lcd_test IS

    FUNCTION char_to_slv(char : CHARACTER) RETURN STD_LOGIC_VECTOR IS
    BEGIN
        RETURN STD_LOGIC_VECTOR(to_unsigned(CHARACTER'pos(char), 8));
    END char_to_slv;

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

    SIGNAL enable : STD_LOGIC;
    SIGNAL busy : STD_LOGIC;
    SIGNAL lcd_bus : STD_LOGIC_VECTOR(9 DOWNTO 0);
BEGIN
    lcd : lcd_driver
    GENERIC MAP(
        clk_freq => 50
    )
    PORT MAP(
        clk => clk,
        reset => '0',
        enable => enable,
        lcd_bus => lcd_bus,
        busy => busy,
        rw => rw,
        rs => rs,
        e => e,
        lcd_data => lcd_data
    );

    PROCESS (clk)
        VARIABLE cnt : INTEGER := 0;
        CONSTANT char : CHARACTER := '5';
    BEGIN
        IF rising_edge(clk) THEN

            cnt := cnt + 1;
            IF (cnt = 100000) THEN
                lcd_bus(7 DOWNTO 0) <= char_to_slv('c');
                enable <= '1';
            END IF;
        END IF;
    END PROCESS;

END ARCHITECTURE rtl;