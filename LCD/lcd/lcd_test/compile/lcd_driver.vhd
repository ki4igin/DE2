-------------------------------------------------------------------------------
--
-- Title       : 
-- Design      : lcd_test
-- Author      : User
-- Company     : OOO
--
-------------------------------------------------------------------------------
--
-- File        : D:\Share\DE2\LCD\lcd\lcd_test\compile\lcd_driver.vhd
-- Generated   : Sat Oct 17 17:15:05 2020
-- From        : D:\Share\DE2\LCD\lcd\lcd_test\src\lcd_driver.bde
-- By          : Bde2Vhdl ver. 2.6
--
-------------------------------------------------------------------------------
--
-- Description : 
--
-------------------------------------------------------------------------------
-- Design unit header --
library ieee;
use ieee.std_logic_1164.all;
use ieee.NUMERIC_STD.all;

entity lcd_driver is
  generic(
       clk_freq : integer := 50;
       display_lines : STD_LOGIC := '1';
       character_font : STD_LOGIC := '0';
       display_on_off : STD_LOGIC := '1';
       cursor : STD_LOGIC := '0';
       blink : STD_LOGIC := '0';
       inc_dec : STD_LOGIC := '1';
       shift : STD_LOGIC := '0'
  );
  port(
       clk : in STD_LOGIC;
       reset : in STD_LOGIC := '0';
       enable : in STD_LOGIC;
       lcd_bus : in STD_LOGIC_VECTOR(9 downto 0);
       busy : out STD_LOGIC := '1';
       rw : out STD_LOGIC;
       rs : out STD_LOGIC;
       e : out STD_LOGIC;
       lcd_data : out STD_LOGIC_VECTOR(7 downto 0)
  );
end lcd_driver;

architecture rtl of lcd_driver is

---- Architecture declarations -----
type control is (power_up, initialize, ready, send);



---- Signal declarations used on the diagram ----

signal state : control := power_up;

begin

---- Processes ----

proc : process (clk)
                         variable clk_count : integer := 0;
                       begin
                         if rising_edge(clk) then
                            case state is 
                              when power_up => 
                                 busy <= '1';
                                 if (clk_count < (50000 * clk_freq)) then
                                    clk_count := clk_count + 1;
                                    state <= power_up;
                                 else 
                                    clk_count := 0;
                                    rs <= '0';
                                    rw <= '0';
                                    lcd_data <= "00110000";
                                    state <= initialize;
                                 end if;
                              when initialize => 
                                 busy <= '1';
                                 clk_count := clk_count + 1;
                                 if (clk_count < (10 * clk_freq)) then
                                    lcd_data <= ("0011", display_lines, character_font, "00");
                                    e <= '1';
                                 elsif (clk_count < (60 * clk_freq)) then
                                    lcd_data <= "00000000";
                                    e <= '0';
                                 elsif (clk_count < (70 * clk_freq)) then
                                    lcd_data <= ("00001", display_on_off, cursor, blink);
                                    e <= '1';
                                 elsif (clk_count < (120 * clk_freq)) then
                                    lcd_data <= "00000000";
                                    e <= '0';
                                 elsif (clk_count < (130 * clk_freq)) then
                                    lcd_data <= "00000001";
                                    e <= '1';
                                 elsif (clk_count < (2130 * clk_freq)) then
                                    lcd_data <= "00000000";
                                    e <= '0';
                                 elsif (clk_count < (2140 * clk_freq)) then
                                    lcd_data <= ("000001", inc_dec, shift);
                                    e <= '0';
                                 elsif (clk_count < (2200 * clk_freq)) then
                                    lcd_data <= "00000000";
                                    e <= '0';
                                 else 
                                    clk_count := 0;
                                    busy <= '0';
                                    state <= ready;
                                 end if;
                              when ready => 
                                 if ?? enable then
                                    busy <= '1';
                                    rs <= lcd_bus(9);
                                    rw <= lcd_bus(8);
                                    lcd_data <= lcd_bus(7 downto 0);
                                    clk_count := 0;
                                    state <= send;
                                 else 
                                    busy <= '0';
                                    rs <= '0';
                                    rw <= '0';
                                    lcd_data <= (others => '0');
                                    clk_count := 0;
                                    state <= ready;
                                 end if;
                              when send => 
                                 busy <= '1';
                                 if (clk_count < (50 * clk_freq)) then
                                    if (clk_count < clk_freq) then
                                       e <= '0';
                                    elsif (clk_count < (14 * clk_freq)) then
                                       e <= '1';
                                    elsif (clk_count < (27 * clk_freq)) then
                                       e <= '0';
                                    end if;
                                    clk_count := clk_count + 1;
                                    state <= send;
                                 else 
                                    clk_count := 0;
                                    state <= ready;
                                 end if;
                              when others => 
                            end case;
                            if ?? reset then
                               state <= power_up;
                            end if;
                         end if;
                       end process;
                      

end rtl;
