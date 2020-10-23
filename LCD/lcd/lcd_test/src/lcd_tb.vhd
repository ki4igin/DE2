library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity lcd_tb is

end entity lcd_tb;

architecture rtl of lcd_tb is
    signal tb_clk             : std_logic := '0';
    signal tb_reset           : std_logic;
    signal tb_enable          : std_logic;
    signal tb_lcd_bus         : std_logic_vector(9 downto 0);
    signal tb_busy            : std_logic := '1';
    signal tb_rw, tb_rs, tb_e : std_logic;
    signal tb_lcd_data        : std_logic_vector(7 downto 0);

    component lcd_driver is
        generic (
            clk_freq       : integer   := 50;  --system clock frequency in MHz
            display_lines  : STD_LOGIC := '1'; --number of display lines (0 = 1-line mode, 1 = 2-line mode)
            character_font : STD_LOGIC := '0'; --font (0 = 5x8 dots, 1 = 5x10 dots)
            display_on_off : STD_LOGIC := '1'; --display on/off (0 = off, 1 = on)
            cursor         : STD_LOGIC := '0'; --cursor on/off (0 = off, 1 = on)
            blink          : STD_LOGIC := '0'; --blink on/off (0 = off, 1 = on)
            inc_dec        : STD_LOGIC := '1'; --increment/decrement (0 = decrement, 1 = increment)
            shift          : STD_LOGIC := '0'  --shift on/off (0 = off, 1 = on)
        );
        port (
            clk       : in std_logic;
            reset     : in std_logic;
            enable    : in std_logic;
            lcd_bus   : in std_logic_vector(9 downto 0);
            busy      : out std_logic := '1';
            rw, rs, e : out std_logic;
            lcd_data  : out std_logic_vector(7 downto 0)
        );
    end component;
begin
    lcd : lcd_driver
    generic map(
        clk_freq => 1
    )
    port map(
        clk      => tb_clk,
        reset    => '0',
        enable   => tb_enable,
        lcd_bus  => tb_lcd_bus,
        busy     => tb_busy,
        rw       => tb_rw,
        rs       => tb_rs,
        e        => tb_e,
        lcd_data => tb_lcd_data
    );

    process
    begin
        tb_clk <= not tb_clk;
        wait for 10 ns;
    end process;

    process
    begin
        tb_enable <= '0';
        wait for 2 ms;
        tb_enable <= '1';
        wait;
    end process;

    process
    begin
        tb_lcd_bus <= (others => '0');
        wait for 1.8 ms;
        tb_lcd_bus <= ("00", "10101010");
        wait;
    end process;

end architecture rtl;






































