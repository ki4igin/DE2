library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity nios_test is
    port (
        CLOCK_50  : in std_logic;  -- clk
        CLOCK_OUT : out std_logic; -- clk
        SW        : in std_logic_vector (2 downto 0);
        KEY       : in std_logic_vector (3 downto 0);
        GPIO_IN   : in std_logic;
        GPIO_OUT  : out std_logic;
        LEDR      : out std_logic_vector(17 downto 0)  := (others => '0'); -- export
        LCD_RS    : out std_logic                      := '0';             -- RS
        LCD_RW    : out std_logic                      := '0';             -- RW
        LCD_DATA  : inout std_logic_vector(7 downto 0) := (others => '0'); -- data
        LCD_EN    : out std_logic                      := '0';             -- E
        LCD_ON    : out std_logic                      := '1';
        LCD_BLON  : out std_logic                      := '1'
    );
end entity nios_test;

architecture rtl of nios_test is
    component nios is
        port (
            clk_clk                            : in std_logic := 'X';                                   -- clk
            pio_0_external_connection_export   : out std_logic_vector(16 downto 0);                     -- export
            lcd_16207_0_external_RS            : out std_logic;                                         -- RS
            lcd_16207_0_external_RW            : out std_logic;                                         -- RW
            lcd_16207_0_external_data          : inout std_logic_vector(7 downto 0) := (others => 'X'); -- data
            lcd_16207_0_external_E             : out std_logic;                                         -- E
            reset_controller_0_reset_in0_reset : in std_logic := 'X'                                    -- reset
        );
    end component nios;

    signal sync : std_logic_vector(3 downto 0);
    signal int1 : std_logic;
    signal int2 : std_logic;

begin
    u0 : nios
    port map(
        clk_clk                            => CLOCK_50,          --                          clk.clk
        pio_0_external_connection_export   => LEDR(16 downto 0), --    pio_0_external_connection.export
        lcd_16207_0_external_RS            => LCD_RS,            --         lcd_16207_0_external.RS
        lcd_16207_0_external_RW            => LCD_RW,            --                             .RW
        lcd_16207_0_external_data          => LCD_DATA,          --                             .data
        lcd_16207_0_external_E             => LCD_EN,            --                             .E
        reset_controller_0_reset_in0_reset => not KEY(0)
    );

    LEDR(17)  <= SW(2);
    LCD_ON    <= SW(0);
    LCD_BLON  <= SW(1);
    CLOCK_OUT <= CLOCK_50;

    process (CLOCK_50)
    begin
        if rising_edge(CLOCK_50) then
            int1 <= GPIO_IN;

            sync(3 downto 0) <= sync(2 downto 0) & GPIO_IN;
            int2             <= sync(3);

        end if;
    end process;

    GPIO_OUT <=
        int1 when SW(2) else
        int2;
    -- GPIO_OUT <= GPIO_IN;
end architecture rtl;