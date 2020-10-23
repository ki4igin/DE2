LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY lcd_driver IS
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
        reset : IN STD_LOGIC := '0';
        enable : IN STD_LOGIC;
        lcd_bus : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
        busy : OUT STD_LOGIC := '1';
        rw, rs, e : OUT STD_LOGIC := '0';
        lcd_data : OUT STD_LOGIC_VECTOR(7 DOWNTO 0) := (OTHERS => '0')
    );
END ENTITY lcd_driver;

ARCHITECTURE rtl OF lcd_driver IS
    TYPE control IS (power_up, initialize, init_send, ready, send);
    SIGNAL state : control := power_up;
    SIGNAL clk_int : STD_LOGIC := '0';	
	signal enable_int :std_logic := '0';  
	signal enable_pref :std_logic := '0';
	signal enable_edge :std_logic := '0';
BEGIN
    proc : PROCESS (clk_int)
        VARIABLE init_cnt : INTEGER := 0;
        VARIABLE delay : INTEGER := 15000; -- delay in us for command or char
    BEGIN
        IF rising_edge(clk_int) THEN
            e <= '0';

            IF delay > 0 THEN
                delay := delay - 1;
            END IF;

            CASE state IS
                WHEN power_up =>
                    busy <= '1';
                    IF delay = 0 THEN
                        init_cnt := 0;
                        state <= initialize;
                    END IF;
                WHEN initialize =>
                    busy <= '1';
                    state <= init_send;
                    e <= '1';
                    CASE init_cnt IS
                        WHEN 0 =>
                            rs <= '0';
                            rw <= '0';
                            lcd_data <= "00110000";
                            delay := 4100;
                        WHEN 1 =>
                            lcd_data <= "00110000";
                            delay := 100;
                        WHEN 2 =>
                            lcd_data <= "00110000";
                            delay := 40;
                        WHEN 3 =>
                            lcd_data <= "0011" & display_lines & character_font & "00";
                            delay := 40;
                        WHEN 4 =>
                            lcd_data <= "00001" & display_on_off & cursor & blink;
                            delay := 40;
                        WHEN 5 =>
                            lcd_data <= "00000001";
                            delay := 1500;
                        WHEN 6 =>
                            lcd_data <= "000001" & inc_dec & shift;
                            delay := 40;
                        WHEN 7 =>
                            busy <= '0';
                            state <= ready;
                        WHEN OTHERS =>
                    END CASE;
                WHEN init_send =>
                    IF delay = 0 THEN
                        init_cnt := init_cnt + 1;
                        state <= initialize;
                    END IF;
                WHEN ready =>
                    IF enable_edge THEN
                        busy <= '1';
                        rs <= lcd_bus(9);
                        rw <= lcd_bus(8);
                        lcd_data <= lcd_bus(7 DOWNTO 0);
                        delay := 40;
                        e <= '1';
                        state <= send;
                    ELSE

                    END IF;
                WHEN send =>
                    IF delay = 0 THEN
                        busy <= '0';
                        state <= ready;
                    END IF;
                WHEN OTHERS =>
            END CASE;
            IF reset THEN
                state <= power_up;
            END IF;
        END IF;
    END PROCESS;

    divider : PROCESS (clk)
        VARIABLE cnt : INTEGER := 0;
    BEGIN
        IF clk'event THEN
            IF cnt < (clk_freq - 1) THEN
                cnt := cnt + 1;
            ELSE
                cnt := 0;
                clk_int <= NOT clk_int;
            END IF;
        END IF;
    END PROCESS divider;  
	
	process( clk_int )	
		
	begin  
	if  rising_edge(clk_int)  then	
		enable_int <= enable;
		enable_pref <= 	enable_int;
	end if;		
	end process; 
	
	enable_edge <= not enable_pref and 	enable_int;
	
END ARCHITECTURE rtl;