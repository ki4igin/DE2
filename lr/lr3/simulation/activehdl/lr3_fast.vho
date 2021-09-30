-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "12/04/2020 19:30:36"

-- 
-- Device: Altera EP2C35F672C6 Package FBGA672
-- 

-- 
-- This VHDL file should be used for Active-HDL (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	calc IS
    PORT (
	key : IN std_logic_vector(2 DOWNTO 0);
	clock_50 : IN std_logic;
	sw : IN std_logic_vector(1 DOWNTO 0);
	ledg : OUT std_logic_vector(8 DOWNTO 7);
	hex2 : OUT std_logic_vector(6 DOWNTO 0);
	hex3 : OUT std_logic_vector(6 DOWNTO 0);
	hex4 : OUT std_logic_vector(6 DOWNTO 0);
	hex5 : OUT std_logic_vector(6 DOWNTO 0);
	hex6 : OUT std_logic_vector(6 DOWNTO 0);
	hex7 : OUT std_logic_vector(6 DOWNTO 0)
	);
END calc;

-- Design Ports Information
-- sw[1]	=>  Location: PIN_N26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ledg[7]	=>  Location: PIN_Y18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledg[8]	=>  Location: PIN_Y12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex2[0]	=>  Location: PIN_AB23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex2[1]	=>  Location: PIN_V22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex2[2]	=>  Location: PIN_AC25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex2[3]	=>  Location: PIN_AC26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex2[4]	=>  Location: PIN_AB26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex2[5]	=>  Location: PIN_AB25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex2[6]	=>  Location: PIN_Y24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex3[0]	=>  Location: PIN_Y23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex3[1]	=>  Location: PIN_AA25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex3[2]	=>  Location: PIN_AA26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex3[3]	=>  Location: PIN_Y26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex3[4]	=>  Location: PIN_Y25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex3[5]	=>  Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex3[6]	=>  Location: PIN_W24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex4[0]	=>  Location: PIN_U9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex4[1]	=>  Location: PIN_U1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex4[2]	=>  Location: PIN_U2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex4[3]	=>  Location: PIN_T4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex4[4]	=>  Location: PIN_R7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex4[5]	=>  Location: PIN_R6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex4[6]	=>  Location: PIN_T3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex5[0]	=>  Location: PIN_T2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex5[1]	=>  Location: PIN_P6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex5[2]	=>  Location: PIN_P7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex5[3]	=>  Location: PIN_T9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex5[4]	=>  Location: PIN_R5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex5[5]	=>  Location: PIN_R4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex5[6]	=>  Location: PIN_R3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex6[0]	=>  Location: PIN_R2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex6[1]	=>  Location: PIN_P4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex6[2]	=>  Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex6[3]	=>  Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex6[4]	=>  Location: PIN_M3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex6[5]	=>  Location: PIN_M5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex6[6]	=>  Location: PIN_M4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex7[0]	=>  Location: PIN_L3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex7[1]	=>  Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex7[2]	=>  Location: PIN_L9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex7[3]	=>  Location: PIN_L6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex7[4]	=>  Location: PIN_L7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex7[5]	=>  Location: PIN_P9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex7[6]	=>  Location: PIN_N9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clock_50	=>  Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sw[0]	=>  Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- key[1]	=>  Location: PIN_N23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- key[0]	=>  Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- key[2]	=>  Location: PIN_P23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF calc IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_key : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_clock_50 : std_logic;
SIGNAL ww_sw : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_ledg : std_logic_vector(8 DOWNTO 7);
SIGNAL ww_hex2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_hex3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_hex4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_hex5 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_hex6 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_hex7 : std_logic_vector(6 DOWNTO 0);
SIGNAL \table3|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \table3|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \table2|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \table2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \table1|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \table1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \clock_50~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \key[2]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \key[1]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|result_int[1]~2_combout\ : std_logic;
SIGNAL \add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|result_int[2]~4_combout\ : std_logic;
SIGNAL \add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|result_int[4]~8_combout\ : std_logic;
SIGNAL \add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|_~1_combout\ : std_logic;
SIGNAL \add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|_~2_combout\ : std_logic;
SIGNAL \add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|_~4_combout\ : std_logic;
SIGNAL \add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|_~6_combout\ : std_logic;
SIGNAL \count2|Equal0~1_combout\ : std_logic;
SIGNAL \key[2]~clk_delay_ctrl_clkout\ : std_logic;
SIGNAL \key[1]~clk_delay_ctrl_clkout\ : std_logic;
SIGNAL \key[2]~clkctrl_outclk\ : std_logic;
SIGNAL \key[1]~clkctrl_outclk\ : std_logic;
SIGNAL \add_sub1|dataa_reg[6]~feeder_combout\ : std_logic;
SIGNAL \clock_50~combout\ : std_logic;
SIGNAL \clock_50~clkctrl_outclk\ : std_logic;
SIGNAL \count2|Add0~0_combout\ : std_logic;
SIGNAL \count2|Add0~1\ : std_logic;
SIGNAL \count2|Add0~2_combout\ : std_logic;
SIGNAL \count2|Add0~3\ : std_logic;
SIGNAL \count2|Add0~4_combout\ : std_logic;
SIGNAL \count2|int_data~2_combout\ : std_logic;
SIGNAL \count2|Add0~5\ : std_logic;
SIGNAL \count2|Add0~6_combout\ : std_logic;
SIGNAL \count2|Add0~7\ : std_logic;
SIGNAL \count2|Add0~8_combout\ : std_logic;
SIGNAL \count2|Equal0~0_combout\ : std_logic;
SIGNAL \count2|Add0~9\ : std_logic;
SIGNAL \count2|Add0~10_combout\ : std_logic;
SIGNAL \count2|int_data~1_combout\ : std_logic;
SIGNAL \count2|Add0~11\ : std_logic;
SIGNAL \count2|Add0~12_combout\ : std_logic;
SIGNAL \count2|int_data~0_combout\ : std_logic;
SIGNAL \add_sub1|add_sub_reg~regout\ : std_logic;
SIGNAL \add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|_~0_combout\ : std_logic;
SIGNAL \count1|Add0~1\ : std_logic;
SIGNAL \count1|Add0~3\ : std_logic;
SIGNAL \count1|Add0~4_combout\ : std_logic;
SIGNAL \count1|Add0~0_combout\ : std_logic;
SIGNAL \count1|Add0~7\ : std_logic;
SIGNAL \count1|Add0~8_combout\ : std_logic;
SIGNAL \count1|Equal0~0_combout\ : std_logic;
SIGNAL \count1|int_data~2_combout\ : std_logic;
SIGNAL \count1|Add0~5\ : std_logic;
SIGNAL \count1|Add0~6_combout\ : std_logic;
SIGNAL \count1|Add0~2_combout\ : std_logic;
SIGNAL \count1|Equal0~1_combout\ : std_logic;
SIGNAL \count1|Add0~9\ : std_logic;
SIGNAL \count1|Add0~10_combout\ : std_logic;
SIGNAL \count1|int_data~1_combout\ : std_logic;
SIGNAL \add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|_~3_combout\ : std_logic;
SIGNAL \add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|_~5_combout\ : std_logic;
SIGNAL \add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|result_int[0]~1_cout\ : std_logic;
SIGNAL \add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|result_int[1]~3\ : std_logic;
SIGNAL \add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|result_int[2]~5\ : std_logic;
SIGNAL \add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|result_int[3]~7\ : std_logic;
SIGNAL \add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|result_int[4]~9\ : std_logic;
SIGNAL \add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|result_int[5]~11\ : std_logic;
SIGNAL \add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|result_int[6]~13\ : std_logic;
SIGNAL \add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|result_int[7]~15\ : std_logic;
SIGNAL \add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|result_int[8]~16_combout\ : std_logic;
SIGNAL \add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|result_int[7]~14_combout\ : std_logic;
SIGNAL \add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|result_int[3]~6_combout\ : std_logic;
SIGNAL \add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|result_int[6]~12_combout\ : std_logic;
SIGNAL \add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|result_int[5]~10_combout\ : std_logic;
SIGNAL \add_sub1|process_0~0_combout\ : std_logic;
SIGNAL \add_sub1|process_0~1_combout\ : std_logic;
SIGNAL \add_sub1|overflow~regout\ : std_logic;
SIGNAL \add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|overflow~combout\ : std_logic;
SIGNAL \add_sub1|result~0_combout\ : std_logic;
SIGNAL \add_sub1|result~1_combout\ : std_logic;
SIGNAL \add_sub1|result~2_combout\ : std_logic;
SIGNAL \add_sub1|result~3_combout\ : std_logic;
SIGNAL \add_sub1|result~4_combout\ : std_logic;
SIGNAL \add_sub1|result~5_combout\ : std_logic;
SIGNAL \add_sub1|result~6_combout\ : std_logic;
SIGNAL \decoder3_1|Mux6~0_combout\ : std_logic;
SIGNAL \decoder3_1|Mux5~0_combout\ : std_logic;
SIGNAL \decoder3_1|Mux4~0_combout\ : std_logic;
SIGNAL \decoder3_1|Mux3~0_combout\ : std_logic;
SIGNAL \decoder3_1|Mux2~0_combout\ : std_logic;
SIGNAL \decoder3_1|Mux1~0_combout\ : std_logic;
SIGNAL \decoder3_1|Mux0~0_combout\ : std_logic;
SIGNAL \decoder3_2|Mux6~0_combout\ : std_logic;
SIGNAL \decoder3_2|Mux5~0_combout\ : std_logic;
SIGNAL \decoder3_2|Mux4~0_combout\ : std_logic;
SIGNAL \decoder3_2|Mux3~0_combout\ : std_logic;
SIGNAL \decoder3_2|Mux2~0_combout\ : std_logic;
SIGNAL \decoder3_2|Mux1~0_combout\ : std_logic;
SIGNAL \decoder3_2|Mux0~0_combout\ : std_logic;
SIGNAL \decoder2_1|Mux6~0_combout\ : std_logic;
SIGNAL \decoder2_1|Mux5~0_combout\ : std_logic;
SIGNAL \decoder2_1|Mux4~0_combout\ : std_logic;
SIGNAL \decoder2_1|Mux3~0_combout\ : std_logic;
SIGNAL \decoder2_1|Mux2~0_combout\ : std_logic;
SIGNAL \decoder2_1|Mux1~0_combout\ : std_logic;
SIGNAL \decoder2_1|Mux0~0_combout\ : std_logic;
SIGNAL \decoder2_2|Mux6~0_combout\ : std_logic;
SIGNAL \decoder2_2|Mux5~0_combout\ : std_logic;
SIGNAL \decoder2_2|Mux4~0_combout\ : std_logic;
SIGNAL \decoder2_2|Mux3~0_combout\ : std_logic;
SIGNAL \decoder2_2|Mux2~0_combout\ : std_logic;
SIGNAL \decoder2_2|Mux1~0_combout\ : std_logic;
SIGNAL \decoder2_2|Mux0~0_combout\ : std_logic;
SIGNAL \count1|Add0~11\ : std_logic;
SIGNAL \count1|Add0~12_combout\ : std_logic;
SIGNAL \count1|int_data~0_combout\ : std_logic;
SIGNAL \decoder1_1|Mux6~0_combout\ : std_logic;
SIGNAL \decoder1_1|Mux5~0_combout\ : std_logic;
SIGNAL \decoder1_1|Mux4~0_combout\ : std_logic;
SIGNAL \decoder1_1|Mux3~0_combout\ : std_logic;
SIGNAL \decoder1_1|Mux2~0_combout\ : std_logic;
SIGNAL \decoder1_1|Mux1~0_combout\ : std_logic;
SIGNAL \decoder1_1|Mux0~0_combout\ : std_logic;
SIGNAL \decoder1_2|Mux6~0_combout\ : std_logic;
SIGNAL \decoder1_2|Mux5~0_combout\ : std_logic;
SIGNAL \decoder1_2|Mux4~0_combout\ : std_logic;
SIGNAL \decoder1_2|Mux3~0_combout\ : std_logic;
SIGNAL \decoder1_2|Mux2~0_combout\ : std_logic;
SIGNAL \decoder1_2|Mux1~0_combout\ : std_logic;
SIGNAL \decoder1_2|Mux0~0_combout\ : std_logic;
SIGNAL \add_sub1|result\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \add_sub1|datab_reg\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \add_sub1|dataa_reg\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \sw~combout\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \key~combout\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \count2|int_data\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \decoder3_1|out_code\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \table1|altsyncram_component|auto_generated|q_a\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \decoder2_2|out_code\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \table2|altsyncram_component|auto_generated|q_a\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \table3|altsyncram_component|auto_generated|q_a\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \count1|int_data\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \decoder1_2|out_code\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \decoder2_1|out_code\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \decoder3_2|out_code\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \decoder1_1|out_code\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \ALT_INV_key~combout\ : std_logic_vector(0 DOWNTO 0);

BEGIN

ww_key <= key;
ww_clock_50 <= clock_50;
ww_sw <= sw;
ledg <= ww_ledg;
hex2 <= ww_hex2;
hex3 <= ww_hex3;
hex4 <= ww_hex4;
hex5 <= ww_hex5;
hex6 <= ww_hex6;
hex7 <= ww_hex7;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\table3|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\add_sub1|result\(6) & \add_sub1|result\(5) & \add_sub1|result\(4) & \add_sub1|result\(3) & \add_sub1|result\(2) & \add_sub1|result\(1) & \add_sub1|result\(0));

\table3|altsyncram_component|auto_generated|q_a\(0) <= \table3|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\table3|altsyncram_component|auto_generated|q_a\(1) <= \table3|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\table3|altsyncram_component|auto_generated|q_a\(2) <= \table3|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\table3|altsyncram_component|auto_generated|q_a\(3) <= \table3|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\table3|altsyncram_component|auto_generated|q_a\(4) <= \table3|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\table3|altsyncram_component|auto_generated|q_a\(5) <= \table3|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\table3|altsyncram_component|auto_generated|q_a\(6) <= \table3|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\table3|altsyncram_component|auto_generated|q_a\(7) <= \table3|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);

\table2|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\count2|int_data\(6) & \count2|int_data\(5) & \count2|int_data\(4) & \count2|int_data\(3) & \count2|int_data\(2) & \count2|int_data\(1) & \count2|int_data\(0));

\table2|altsyncram_component|auto_generated|q_a\(0) <= \table2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\table2|altsyncram_component|auto_generated|q_a\(1) <= \table2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\table2|altsyncram_component|auto_generated|q_a\(2) <= \table2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\table2|altsyncram_component|auto_generated|q_a\(3) <= \table2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\table2|altsyncram_component|auto_generated|q_a\(4) <= \table2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\table2|altsyncram_component|auto_generated|q_a\(5) <= \table2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\table2|altsyncram_component|auto_generated|q_a\(6) <= \table2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\table2|altsyncram_component|auto_generated|q_a\(7) <= \table2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);

\table1|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\count1|int_data\(6) & \count1|int_data\(5) & \count1|int_data\(4) & \count1|int_data\(3) & \count1|int_data\(2) & \count1|int_data\(1) & \count1|int_data\(0));

\table1|altsyncram_component|auto_generated|q_a\(0) <= \table1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\table1|altsyncram_component|auto_generated|q_a\(1) <= \table1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\table1|altsyncram_component|auto_generated|q_a\(2) <= \table1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\table1|altsyncram_component|auto_generated|q_a\(3) <= \table1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\table1|altsyncram_component|auto_generated|q_a\(4) <= \table1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\table1|altsyncram_component|auto_generated|q_a\(5) <= \table1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\table1|altsyncram_component|auto_generated|q_a\(6) <= \table1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\table1|altsyncram_component|auto_generated|q_a\(7) <= \table1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);

\clock_50~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clock_50~combout\);

\key[2]~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \key[2]~clk_delay_ctrl_clkout\);

\key[1]~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \key[1]~clk_delay_ctrl_clkout\);
\ALT_INV_key~combout\(0) <= NOT \key~combout\(0);

-- Location: LCCOMB_X15_Y14_N14
\add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|result_int[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|result_int[1]~2_combout\ = (\add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|_~6_combout\ & ((\add_sub1|dataa_reg\(0) & 
-- (!\add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|result_int[0]~1_cout\)) # (!\add_sub1|dataa_reg\(0) & ((\add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|result_int[0]~1_cout\) # (GND))))) # 
-- (!\add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|_~6_combout\ & ((\add_sub1|dataa_reg\(0) & (\add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|result_int[0]~1_cout\ & VCC)) # (!\add_sub1|dataa_reg\(0) & 
-- (!\add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|result_int[0]~1_cout\))))
-- \add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|result_int[1]~3\ = CARRY((\add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|_~6_combout\ & ((!\add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|result_int[0]~1_cout\) # 
-- (!\add_sub1|dataa_reg\(0)))) # (!\add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|_~6_combout\ & (!\add_sub1|dataa_reg\(0) & !\add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|result_int[0]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|_~6_combout\,
	datab => \add_sub1|dataa_reg\(0),
	datad => VCC,
	cin => \add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|result_int[0]~1_cout\,
	combout => \add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|result_int[1]~2_combout\,
	cout => \add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|result_int[1]~3\);

-- Location: LCCOMB_X15_Y14_N16
\add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|result_int[2]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|result_int[2]~4_combout\ = ((\add_sub1|dataa_reg\(1) $ (\add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|_~5_combout\ $ 
-- (\add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|result_int[1]~3\)))) # (GND)
-- \add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|result_int[2]~5\ = CARRY((\add_sub1|dataa_reg\(1) & ((!\add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|result_int[1]~3\) # 
-- (!\add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|_~5_combout\))) # (!\add_sub1|dataa_reg\(1) & (!\add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|_~5_combout\ & !\add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|result_int[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \add_sub1|dataa_reg\(1),
	datab => \add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|_~5_combout\,
	datad => VCC,
	cin => \add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|result_int[1]~3\,
	combout => \add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|result_int[2]~4_combout\,
	cout => \add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|result_int[2]~5\);

-- Location: LCCOMB_X15_Y14_N20
\add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|result_int[4]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|result_int[4]~8_combout\ = ((\add_sub1|dataa_reg\(3) $ (\add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|_~3_combout\ $ 
-- (\add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|result_int[3]~7\)))) # (GND)
-- \add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|result_int[4]~9\ = CARRY((\add_sub1|dataa_reg\(3) & ((!\add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|result_int[3]~7\) # 
-- (!\add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|_~3_combout\))) # (!\add_sub1|dataa_reg\(3) & (!\add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|_~3_combout\ & !\add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|result_int[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \add_sub1|dataa_reg\(3),
	datab => \add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|_~3_combout\,
	datad => VCC,
	cin => \add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|result_int[3]~7\,
	combout => \add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|result_int[4]~8_combout\,
	cout => \add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|result_int[4]~9\);

-- Location: M4K_X52_Y7
\table3|altsyncram_component|auto_generated|ram_block1a0\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"0000000000000000000000000000000000000000000000000000000099989796959493929190898887868584838281807978777675747372717069686766656463626160595857565554535251504948474645444342414039383736353433323130292827262524232221201918171615141312111009080706050403020100",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./src/ip/table_99.hex",
	init_file_layout => "port_a",
	logical_ram_name => "table_99:table3|altsyncram:altsyncram_component|altsyncram_ht71:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 7,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 8,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 127,
	port_a_logical_ram_depth => 128,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_a_write_enable_clock => "none",
	port_b_address_width => 7,
	port_b_data_width => 8,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	clk0 => \clock_50~clkctrl_outclk\,
	portaaddr => \table3|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \table3|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: M4K_X13_Y14
\table2|altsyncram_component|auto_generated|ram_block1a0\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"0000000000000000000000000000000000000000000000000000000099989796959493929190898887868584838281807978777675747372717069686766656463626160595857565554535251504948474645444342414039383736353433323130292827262524232221201918171615141312111009080706050403020100",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./src/ip/table_99.hex",
	init_file_layout => "port_a",
	logical_ram_name => "table_99:table2|altsyncram:altsyncram_component|altsyncram_ht71:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 7,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 8,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 127,
	port_a_logical_ram_depth => 128,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_a_write_enable_clock => "none",
	port_b_address_width => 7,
	port_b_data_width => 8,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	clk0 => \clock_50~clkctrl_outclk\,
	portaaddr => \table2|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \table2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: M4K_X13_Y15
\table1|altsyncram_component|auto_generated|ram_block1a0\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"0000000000000000000000000000000000000000000000000000000099989796959493929190898887868584838281807978777675747372717069686766656463626160595857565554535251504948474645444342414039383736353433323130292827262524232221201918171615141312111009080706050403020100",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./src/ip/table_99.hex",
	init_file_layout => "port_a",
	logical_ram_name => "table_99:table1|altsyncram:altsyncram_component|altsyncram_ht71:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 7,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 8,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 127,
	port_a_logical_ram_depth => 128,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_a_write_enable_clock => "none",
	port_b_address_width => 7,
	port_b_data_width => 8,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	clk0 => \clock_50~clkctrl_outclk\,
	portaaddr => \table1|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \table1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCFF_X15_Y15_N17
\add_sub1|dataa_reg[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \add_sub1|dataa_reg[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \add_sub1|dataa_reg\(6));

-- Location: LCFF_X14_Y14_N11
\add_sub1|datab_reg[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	sdata => \count2|int_data\(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \add_sub1|datab_reg\(5));

-- Location: LCCOMB_X14_Y14_N10
\add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|_~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|_~1_combout\ = \add_sub1|datab_reg\(5) $ (\add_sub1|add_sub_reg~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \add_sub1|datab_reg\(5),
	datad => \add_sub1|add_sub_reg~regout\,
	combout => \add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|_~1_combout\);

-- Location: LCFF_X14_Y14_N3
\add_sub1|datab_reg[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	sdata => \count2|int_data\(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \add_sub1|datab_reg\(4));

-- Location: LCCOMB_X14_Y14_N2
\add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|_~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|_~2_combout\ = \add_sub1|datab_reg\(4) $ (\add_sub1|add_sub_reg~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \add_sub1|datab_reg\(4),
	datad => \add_sub1|add_sub_reg~regout\,
	combout => \add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|_~2_combout\);

-- Location: LCFF_X15_Y14_N21
\add_sub1|dataa_reg[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	sdata => \count1|int_data\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \add_sub1|dataa_reg\(3));

-- Location: LCFF_X15_Y14_N1
\add_sub1|datab_reg[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	sdata => \count2|int_data\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \add_sub1|datab_reg\(2));

-- Location: LCCOMB_X15_Y14_N0
\add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|_~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|_~4_combout\ = \add_sub1|add_sub_reg~regout\ $ (\add_sub1|datab_reg\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \add_sub1|add_sub_reg~regout\,
	datac => \add_sub1|datab_reg\(2),
	combout => \add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|_~4_combout\);

-- Location: LCFF_X15_Y14_N17
\add_sub1|dataa_reg[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	sdata => \count1|int_data\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \add_sub1|dataa_reg\(1));

-- Location: LCFF_X15_Y14_N7
\add_sub1|datab_reg[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	sdata => \count2|int_data\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \add_sub1|datab_reg\(0));

-- Location: LCCOMB_X15_Y14_N6
\add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|_~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|_~6_combout\ = \add_sub1|add_sub_reg~regout\ $ (\add_sub1|datab_reg\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \add_sub1|add_sub_reg~regout\,
	datac => \add_sub1|datab_reg\(0),
	combout => \add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|_~6_combout\);

-- Location: LCCOMB_X14_Y14_N6
\count2|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \count2|Equal0~1_combout\ = (!\count2|int_data\(2) & (\count2|int_data\(1) & !\count2|int_data\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count2|int_data\(2),
	datac => \count2|int_data\(1),
	datad => \count2|int_data\(3),
	combout => \count2|Equal0~1_combout\);

-- Location: PIN_N23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\key[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_key(1),
	combout => \key~combout\(1));

-- Location: PIN_P23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\key[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_key(2),
	combout => \key~combout\(2));

-- Location: CLKDELAYCTRL_G5
\key[2]~clk_delay_ctrl\ : cycloneii_clk_delay_ctrl
-- pragma translate_off
GENERIC MAP (
	delay_chain_mode => "none",
	use_new_style_dq_detection => "false")
-- pragma translate_on
PORT MAP (
	clk => \key~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	clkout => \key[2]~clk_delay_ctrl_clkout\);

-- Location: CLKDELAYCTRL_G4
\key[1]~clk_delay_ctrl\ : cycloneii_clk_delay_ctrl
-- pragma translate_off
GENERIC MAP (
	delay_chain_mode => "none",
	use_new_style_dq_detection => "false")
-- pragma translate_on
PORT MAP (
	clk => \key~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	clkout => \key[1]~clk_delay_ctrl_clkout\);

-- Location: CLKCTRL_G5
\key[2]~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \key[2]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \key[2]~clkctrl_outclk\);

-- Location: CLKCTRL_G4
\key[1]~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \key[1]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \key[1]~clkctrl_outclk\);

-- Location: LCCOMB_X15_Y15_N16
\add_sub1|dataa_reg[6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \add_sub1|dataa_reg[6]~feeder_combout\ = \count1|int_data\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \count1|int_data\(6),
	combout => \add_sub1|dataa_reg[6]~feeder_combout\);

-- Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clock_50~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_clock_50,
	combout => \clock_50~combout\);

-- Location: CLKCTRL_G2
\clock_50~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock_50~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock_50~clkctrl_outclk\);

-- Location: LCCOMB_X14_Y14_N12
\count2|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \count2|Add0~0_combout\ = \count2|int_data\(0) $ (VCC)
-- \count2|Add0~1\ = CARRY(\count2|int_data\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count2|int_data\(0),
	datad => VCC,
	combout => \count2|Add0~0_combout\,
	cout => \count2|Add0~1\);

-- Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\key[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_key(0),
	combout => \key~combout\(0));

-- Location: LCFF_X14_Y14_N13
\count2|int_data[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \key[1]~clkctrl_outclk\,
	datain => \count2|Add0~0_combout\,
	aclr => \ALT_INV_key~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \count2|int_data\(0));

-- Location: LCCOMB_X14_Y14_N14
\count2|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \count2|Add0~2_combout\ = (\count2|int_data\(1) & (!\count2|Add0~1\)) # (!\count2|int_data\(1) & ((\count2|Add0~1\) # (GND)))
-- \count2|Add0~3\ = CARRY((!\count2|Add0~1\) # (!\count2|int_data\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \count2|int_data\(1),
	datad => VCC,
	cin => \count2|Add0~1\,
	combout => \count2|Add0~2_combout\,
	cout => \count2|Add0~3\);

-- Location: LCFF_X14_Y14_N15
\count2|int_data[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \key[1]~clkctrl_outclk\,
	datain => \count2|Add0~2_combout\,
	aclr => \ALT_INV_key~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \count2|int_data\(1));

-- Location: LCCOMB_X14_Y14_N16
\count2|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \count2|Add0~4_combout\ = (\count2|int_data\(2) & (\count2|Add0~3\ $ (GND))) # (!\count2|int_data\(2) & (!\count2|Add0~3\ & VCC))
-- \count2|Add0~5\ = CARRY((\count2|int_data\(2) & !\count2|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \count2|int_data\(2),
	datad => VCC,
	cin => \count2|Add0~3\,
	combout => \count2|Add0~4_combout\,
	cout => \count2|Add0~5\);

-- Location: LCCOMB_X14_Y14_N30
\count2|int_data~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \count2|int_data~2_combout\ = (\count2|Add0~4_combout\ & ((!\count2|Equal0~0_combout\) # (!\count2|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count2|Equal0~1_combout\,
	datac => \count2|Add0~4_combout\,
	datad => \count2|Equal0~0_combout\,
	combout => \count2|int_data~2_combout\);

-- Location: LCFF_X14_Y14_N31
\count2|int_data[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \key[1]~clkctrl_outclk\,
	datain => \count2|int_data~2_combout\,
	aclr => \ALT_INV_key~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \count2|int_data\(2));

-- Location: LCCOMB_X14_Y14_N18
\count2|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \count2|Add0~6_combout\ = (\count2|int_data\(3) & (!\count2|Add0~5\)) # (!\count2|int_data\(3) & ((\count2|Add0~5\) # (GND)))
-- \count2|Add0~7\ = CARRY((!\count2|Add0~5\) # (!\count2|int_data\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \count2|int_data\(3),
	datad => VCC,
	cin => \count2|Add0~5\,
	combout => \count2|Add0~6_combout\,
	cout => \count2|Add0~7\);

-- Location: LCFF_X14_Y14_N19
\count2|int_data[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \key[1]~clkctrl_outclk\,
	datain => \count2|Add0~6_combout\,
	aclr => \ALT_INV_key~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \count2|int_data\(3));

-- Location: LCCOMB_X14_Y14_N20
\count2|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \count2|Add0~8_combout\ = (\count2|int_data\(4) & (\count2|Add0~7\ $ (GND))) # (!\count2|int_data\(4) & (!\count2|Add0~7\ & VCC))
-- \count2|Add0~9\ = CARRY((\count2|int_data\(4) & !\count2|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \count2|int_data\(4),
	datad => VCC,
	cin => \count2|Add0~7\,
	combout => \count2|Add0~8_combout\,
	cout => \count2|Add0~9\);

-- Location: LCFF_X14_Y14_N21
\count2|int_data[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \key[1]~clkctrl_outclk\,
	datain => \count2|Add0~8_combout\,
	aclr => \ALT_INV_key~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \count2|int_data\(4));

-- Location: LCCOMB_X14_Y14_N0
\count2|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \count2|Equal0~0_combout\ = (\count2|int_data\(6) & (\count2|int_data\(0) & (!\count2|int_data\(4) & \count2|int_data\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count2|int_data\(6),
	datab => \count2|int_data\(0),
	datac => \count2|int_data\(4),
	datad => \count2|int_data\(5),
	combout => \count2|Equal0~0_combout\);

-- Location: LCCOMB_X14_Y14_N22
\count2|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \count2|Add0~10_combout\ = (\count2|int_data\(5) & (!\count2|Add0~9\)) # (!\count2|int_data\(5) & ((\count2|Add0~9\) # (GND)))
-- \count2|Add0~11\ = CARRY((!\count2|Add0~9\) # (!\count2|int_data\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \count2|int_data\(5),
	datad => VCC,
	cin => \count2|Add0~9\,
	combout => \count2|Add0~10_combout\,
	cout => \count2|Add0~11\);

-- Location: LCCOMB_X14_Y14_N8
\count2|int_data~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \count2|int_data~1_combout\ = (\count2|Add0~10_combout\ & ((!\count2|Equal0~0_combout\) # (!\count2|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count2|Equal0~1_combout\,
	datab => \count2|Equal0~0_combout\,
	datad => \count2|Add0~10_combout\,
	combout => \count2|int_data~1_combout\);

-- Location: LCFF_X14_Y14_N9
\count2|int_data[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \key[1]~clkctrl_outclk\,
	datain => \count2|int_data~1_combout\,
	aclr => \ALT_INV_key~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \count2|int_data\(5));

-- Location: LCCOMB_X14_Y14_N24
\count2|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \count2|Add0~12_combout\ = \count2|Add0~11\ $ (!\count2|int_data\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \count2|int_data\(6),
	cin => \count2|Add0~11\,
	combout => \count2|Add0~12_combout\);

-- Location: LCCOMB_X14_Y14_N4
\count2|int_data~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \count2|int_data~0_combout\ = (\count2|Add0~12_combout\ & ((!\count2|Equal0~0_combout\) # (!\count2|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count2|Equal0~1_combout\,
	datac => \count2|Add0~12_combout\,
	datad => \count2|Equal0~0_combout\,
	combout => \count2|int_data~0_combout\);

-- Location: LCFF_X14_Y14_N5
\count2|int_data[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \key[1]~clkctrl_outclk\,
	datain => \count2|int_data~0_combout\,
	aclr => \ALT_INV_key~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \count2|int_data\(6));

-- Location: LCFF_X14_Y14_N29
\add_sub1|datab_reg[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	sdata => \count2|int_data\(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \add_sub1|datab_reg\(6));

-- Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\sw[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_sw(0),
	combout => \sw~combout\(0));

-- Location: LCFF_X15_Y14_N5
\add_sub1|add_sub_reg\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	sdata => \sw~combout\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \add_sub1|add_sub_reg~regout\);

-- Location: LCCOMB_X14_Y14_N28
\add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|_~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|_~0_combout\ = \add_sub1|datab_reg\(6) $ (\add_sub1|add_sub_reg~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \add_sub1|datab_reg\(6),
	datad => \add_sub1|add_sub_reg~regout\,
	combout => \add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|_~0_combout\);

-- Location: LCCOMB_X16_Y15_N10
\count1|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \count1|Add0~0_combout\ = \count1|int_data\(0) $ (VCC)
-- \count1|Add0~1\ = CARRY(\count1|int_data\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count1|int_data\(0),
	datad => VCC,
	combout => \count1|Add0~0_combout\,
	cout => \count1|Add0~1\);

-- Location: LCCOMB_X16_Y15_N12
\count1|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \count1|Add0~2_combout\ = (\count1|int_data\(1) & (!\count1|Add0~1\)) # (!\count1|int_data\(1) & ((\count1|Add0~1\) # (GND)))
-- \count1|Add0~3\ = CARRY((!\count1|Add0~1\) # (!\count1|int_data\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \count1|int_data\(1),
	datad => VCC,
	cin => \count1|Add0~1\,
	combout => \count1|Add0~2_combout\,
	cout => \count1|Add0~3\);

-- Location: LCCOMB_X16_Y15_N14
\count1|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \count1|Add0~4_combout\ = (\count1|int_data\(2) & (\count1|Add0~3\ $ (GND))) # (!\count1|int_data\(2) & (!\count1|Add0~3\ & VCC))
-- \count1|Add0~5\ = CARRY((\count1|int_data\(2) & !\count1|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \count1|int_data\(2),
	datad => VCC,
	cin => \count1|Add0~3\,
	combout => \count1|Add0~4_combout\,
	cout => \count1|Add0~5\);

-- Location: LCFF_X16_Y15_N11
\count1|int_data[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \key[2]~clkctrl_outclk\,
	datain => \count1|Add0~0_combout\,
	aclr => \ALT_INV_key~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \count1|int_data\(0));

-- Location: LCCOMB_X16_Y15_N16
\count1|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \count1|Add0~6_combout\ = (\count1|int_data\(3) & (!\count1|Add0~5\)) # (!\count1|int_data\(3) & ((\count1|Add0~5\) # (GND)))
-- \count1|Add0~7\ = CARRY((!\count1|Add0~5\) # (!\count1|int_data\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \count1|int_data\(3),
	datad => VCC,
	cin => \count1|Add0~5\,
	combout => \count1|Add0~6_combout\,
	cout => \count1|Add0~7\);

-- Location: LCCOMB_X16_Y15_N18
\count1|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \count1|Add0~8_combout\ = (\count1|int_data\(4) & (\count1|Add0~7\ $ (GND))) # (!\count1|int_data\(4) & (!\count1|Add0~7\ & VCC))
-- \count1|Add0~9\ = CARRY((\count1|int_data\(4) & !\count1|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \count1|int_data\(4),
	datad => VCC,
	cin => \count1|Add0~7\,
	combout => \count1|Add0~8_combout\,
	cout => \count1|Add0~9\);

-- Location: LCFF_X16_Y15_N19
\count1|int_data[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \key[2]~clkctrl_outclk\,
	datain => \count1|Add0~8_combout\,
	aclr => \ALT_INV_key~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \count1|int_data\(4));

-- Location: LCCOMB_X16_Y15_N30
\count1|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \count1|Equal0~0_combout\ = (\count1|int_data\(6) & (\count1|int_data\(5) & (\count1|int_data\(0) & !\count1|int_data\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count1|int_data\(6),
	datab => \count1|int_data\(5),
	datac => \count1|int_data\(0),
	datad => \count1|int_data\(4),
	combout => \count1|Equal0~0_combout\);

-- Location: LCCOMB_X16_Y15_N28
\count1|int_data~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \count1|int_data~2_combout\ = (\count1|Add0~4_combout\ & ((!\count1|Equal0~0_combout\) # (!\count1|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \count1|Equal0~1_combout\,
	datac => \count1|Add0~4_combout\,
	datad => \count1|Equal0~0_combout\,
	combout => \count1|int_data~2_combout\);

-- Location: LCFF_X16_Y15_N29
\count1|int_data[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \key[2]~clkctrl_outclk\,
	datain => \count1|int_data~2_combout\,
	aclr => \ALT_INV_key~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \count1|int_data\(2));

-- Location: LCFF_X16_Y15_N17
\count1|int_data[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \key[2]~clkctrl_outclk\,
	datain => \count1|Add0~6_combout\,
	aclr => \ALT_INV_key~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \count1|int_data\(3));

-- Location: LCFF_X16_Y15_N13
\count1|int_data[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \key[2]~clkctrl_outclk\,
	datain => \count1|Add0~2_combout\,
	aclr => \ALT_INV_key~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \count1|int_data\(1));

-- Location: LCCOMB_X16_Y15_N0
\count1|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \count1|Equal0~1_combout\ = (!\count1|int_data\(2) & (!\count1|int_data\(3) & \count1|int_data\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count1|int_data\(2),
	datac => \count1|int_data\(3),
	datad => \count1|int_data\(1),
	combout => \count1|Equal0~1_combout\);

-- Location: LCCOMB_X16_Y15_N20
\count1|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \count1|Add0~10_combout\ = (\count1|int_data\(5) & (!\count1|Add0~9\)) # (!\count1|int_data\(5) & ((\count1|Add0~9\) # (GND)))
-- \count1|Add0~11\ = CARRY((!\count1|Add0~9\) # (!\count1|int_data\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \count1|int_data\(5),
	datad => VCC,
	cin => \count1|Add0~9\,
	combout => \count1|Add0~10_combout\,
	cout => \count1|Add0~11\);

-- Location: LCCOMB_X16_Y15_N26
\count1|int_data~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \count1|int_data~1_combout\ = (\count1|Add0~10_combout\ & ((!\count1|Equal0~0_combout\) # (!\count1|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \count1|Equal0~1_combout\,
	datac => \count1|Add0~10_combout\,
	datad => \count1|Equal0~0_combout\,
	combout => \count1|int_data~1_combout\);

-- Location: LCFF_X16_Y15_N27
\count1|int_data[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \key[2]~clkctrl_outclk\,
	datain => \count1|int_data~1_combout\,
	aclr => \ALT_INV_key~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \count1|int_data\(5));

-- Location: LCFF_X15_Y14_N25
\add_sub1|dataa_reg[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	sdata => \count1|int_data\(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \add_sub1|dataa_reg\(5));

-- Location: LCFF_X15_Y14_N23
\add_sub1|dataa_reg[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	sdata => \count1|int_data\(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \add_sub1|dataa_reg\(4));

-- Location: LCFF_X15_Y14_N3
\add_sub1|datab_reg[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	sdata => \count2|int_data\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \add_sub1|datab_reg\(3));

-- Location: LCCOMB_X15_Y14_N2
\add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|_~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|_~3_combout\ = \add_sub1|add_sub_reg~regout\ $ (\add_sub1|datab_reg\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \add_sub1|add_sub_reg~regout\,
	datac => \add_sub1|datab_reg\(3),
	combout => \add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|_~3_combout\);

-- Location: LCFF_X15_Y14_N19
\add_sub1|dataa_reg[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	sdata => \count1|int_data\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \add_sub1|dataa_reg\(2));

-- Location: LCFF_X14_Y14_N27
\add_sub1|datab_reg[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	sdata => \count2|int_data\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \add_sub1|datab_reg\(1));

-- Location: LCCOMB_X14_Y14_N26
\add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|_~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|_~5_combout\ = \add_sub1|datab_reg\(1) $ (\add_sub1|add_sub_reg~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \add_sub1|datab_reg\(1),
	datad => \add_sub1|add_sub_reg~regout\,
	combout => \add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|_~5_combout\);

-- Location: LCFF_X15_Y14_N15
\add_sub1|dataa_reg[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	sdata => \count1|int_data\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \add_sub1|dataa_reg\(0));

-- Location: LCCOMB_X15_Y14_N12
\add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|result_int[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|result_int[0]~1_cout\ = CARRY(!\add_sub1|add_sub_reg~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \add_sub1|add_sub_reg~regout\,
	datad => VCC,
	cout => \add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|result_int[0]~1_cout\);

-- Location: LCCOMB_X15_Y14_N18
\add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|result_int[3]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|result_int[3]~6_combout\ = (\add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|_~4_combout\ & ((\add_sub1|dataa_reg\(2) & 
-- (!\add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|result_int[2]~5\)) # (!\add_sub1|dataa_reg\(2) & ((\add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|result_int[2]~5\) # (GND))))) # 
-- (!\add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|_~4_combout\ & ((\add_sub1|dataa_reg\(2) & (\add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|result_int[2]~5\ & VCC)) # (!\add_sub1|dataa_reg\(2) & 
-- (!\add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|result_int[2]~5\))))
-- \add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|result_int[3]~7\ = CARRY((\add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|_~4_combout\ & ((!\add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|result_int[2]~5\) # 
-- (!\add_sub1|dataa_reg\(2)))) # (!\add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|_~4_combout\ & (!\add_sub1|dataa_reg\(2) & !\add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|result_int[2]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|_~4_combout\,
	datab => \add_sub1|dataa_reg\(2),
	datad => VCC,
	cin => \add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|result_int[2]~5\,
	combout => \add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|result_int[3]~6_combout\,
	cout => \add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|result_int[3]~7\);

-- Location: LCCOMB_X15_Y14_N22
\add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|result_int[5]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|result_int[5]~10_combout\ = (\add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|_~2_combout\ & ((\add_sub1|dataa_reg\(4) & 
-- (!\add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|result_int[4]~9\)) # (!\add_sub1|dataa_reg\(4) & ((\add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|result_int[4]~9\) # (GND))))) # 
-- (!\add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|_~2_combout\ & ((\add_sub1|dataa_reg\(4) & (\add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|result_int[4]~9\ & VCC)) # (!\add_sub1|dataa_reg\(4) & 
-- (!\add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|result_int[4]~9\))))
-- \add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|result_int[5]~11\ = CARRY((\add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|_~2_combout\ & ((!\add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|result_int[4]~9\) # 
-- (!\add_sub1|dataa_reg\(4)))) # (!\add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|_~2_combout\ & (!\add_sub1|dataa_reg\(4) & !\add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|result_int[4]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|_~2_combout\,
	datab => \add_sub1|dataa_reg\(4),
	datad => VCC,
	cin => \add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|result_int[4]~9\,
	combout => \add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|result_int[5]~10_combout\,
	cout => \add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|result_int[5]~11\);

-- Location: LCCOMB_X15_Y14_N24
\add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|result_int[6]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|result_int[6]~12_combout\ = ((\add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|_~1_combout\ $ (\add_sub1|dataa_reg\(5) $ 
-- (\add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|result_int[5]~11\)))) # (GND)
-- \add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|result_int[6]~13\ = CARRY((\add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|_~1_combout\ & (\add_sub1|dataa_reg\(5) & 
-- !\add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|result_int[5]~11\)) # (!\add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|_~1_combout\ & ((\add_sub1|dataa_reg\(5)) # 
-- (!\add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|result_int[5]~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|_~1_combout\,
	datab => \add_sub1|dataa_reg\(5),
	datad => VCC,
	cin => \add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|result_int[5]~11\,
	combout => \add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|result_int[6]~12_combout\,
	cout => \add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|result_int[6]~13\);

-- Location: LCCOMB_X15_Y14_N26
\add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|result_int[7]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|result_int[7]~14_combout\ = (\add_sub1|dataa_reg\(6) & ((\add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & 
-- (!\add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|result_int[6]~13\)) # (!\add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & (\add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|result_int[6]~13\ & VCC)))) # 
-- (!\add_sub1|dataa_reg\(6) & ((\add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & ((\add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|result_int[6]~13\) # (GND))) # 
-- (!\add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & (!\add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|result_int[6]~13\))))
-- \add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|result_int[7]~15\ = CARRY((\add_sub1|dataa_reg\(6) & (\add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & 
-- !\add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|result_int[6]~13\)) # (!\add_sub1|dataa_reg\(6) & ((\add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|_~0_combout\) # 
-- (!\add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|result_int[6]~13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \add_sub1|dataa_reg\(6),
	datab => \add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|_~0_combout\,
	datad => VCC,
	cin => \add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|result_int[6]~13\,
	combout => \add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|result_int[7]~14_combout\,
	cout => \add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|result_int[7]~15\);

-- Location: LCCOMB_X15_Y14_N28
\add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|result_int[8]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|result_int[8]~16_combout\ = !\add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|result_int[7]~15\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|result_int[7]~15\,
	combout => \add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|result_int[8]~16_combout\);

-- Location: LCCOMB_X15_Y14_N8
\add_sub1|process_0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \add_sub1|process_0~0_combout\ = (\add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|result_int[6]~12_combout\ & ((\add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|result_int[4]~8_combout\) # 
-- ((\add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|result_int[3]~6_combout\) # (\add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|result_int[5]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|result_int[4]~8_combout\,
	datab => \add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|result_int[3]~6_combout\,
	datac => \add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|result_int[6]~12_combout\,
	datad => \add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|result_int[5]~10_combout\,
	combout => \add_sub1|process_0~0_combout\);

-- Location: LCCOMB_X16_Y14_N0
\add_sub1|process_0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \add_sub1|process_0~1_combout\ = (\add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|result_int[7]~14_combout\ & ((\add_sub1|process_0~0_combout\) # (\add_sub1|add_sub_reg~regout\ $ 
-- (!\add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|result_int[8]~16_combout\)))) # (!\add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|result_int[7]~14_combout\ & (\add_sub1|add_sub_reg~regout\ $ 
-- ((!\add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|result_int[8]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100110011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_sub1|add_sub_reg~regout\,
	datab => \add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|result_int[8]~16_combout\,
	datac => \add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|result_int[7]~14_combout\,
	datad => \add_sub1|process_0~0_combout\,
	combout => \add_sub1|process_0~1_combout\);

-- Location: LCFF_X16_Y14_N1
\add_sub1|overflow\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \add_sub1|process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \add_sub1|overflow~regout\);

-- Location: LCCOMB_X15_Y14_N4
\add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|overflow\ : cycloneii_lcell_comb
-- Equation(s):
-- \add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|overflow~combout\ = \add_sub1|add_sub_reg~regout\ $ (\add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|result_int[8]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \add_sub1|add_sub_reg~regout\,
	datad => \add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|result_int[8]~16_combout\,
	combout => \add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|overflow~combout\);

-- Location: LCCOMB_X16_Y14_N6
\add_sub1|result~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \add_sub1|result~0_combout\ = (\add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|result_int[1]~2_combout\ & (\add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|overflow~combout\ & ((!\add_sub1|process_0~0_combout\) # 
-- (!\add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|result_int[7]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|result_int[1]~2_combout\,
	datab => \add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|result_int[7]~14_combout\,
	datac => \add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|overflow~combout\,
	datad => \add_sub1|process_0~0_combout\,
	combout => \add_sub1|result~0_combout\);

-- Location: LCFF_X16_Y14_N7
\add_sub1|result[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \add_sub1|result~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \add_sub1|result\(0));

-- Location: LCCOMB_X16_Y14_N8
\add_sub1|result~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \add_sub1|result~1_combout\ = (\add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|result_int[2]~4_combout\ & (\add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|overflow~combout\ & ((!\add_sub1|process_0~0_combout\) # 
-- (!\add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|result_int[7]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|result_int[2]~4_combout\,
	datab => \add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|result_int[7]~14_combout\,
	datac => \add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|overflow~combout\,
	datad => \add_sub1|process_0~0_combout\,
	combout => \add_sub1|result~1_combout\);

-- Location: LCFF_X16_Y14_N9
\add_sub1|result[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \add_sub1|result~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \add_sub1|result\(1));

-- Location: LCCOMB_X16_Y14_N18
\add_sub1|result~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \add_sub1|result~2_combout\ = (\add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|result_int[3]~6_combout\ & (\add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|overflow~combout\ & ((!\add_sub1|process_0~0_combout\) # 
-- (!\add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|result_int[7]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|result_int[3]~6_combout\,
	datab => \add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|result_int[7]~14_combout\,
	datac => \add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|overflow~combout\,
	datad => \add_sub1|process_0~0_combout\,
	combout => \add_sub1|result~2_combout\);

-- Location: LCFF_X16_Y14_N19
\add_sub1|result[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \add_sub1|result~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \add_sub1|result\(2));

-- Location: LCCOMB_X16_Y14_N12
\add_sub1|result~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \add_sub1|result~3_combout\ = (\add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|result_int[4]~8_combout\ & (\add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|overflow~combout\ & ((!\add_sub1|process_0~0_combout\) # 
-- (!\add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|result_int[7]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|result_int[4]~8_combout\,
	datab => \add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|result_int[7]~14_combout\,
	datac => \add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|overflow~combout\,
	datad => \add_sub1|process_0~0_combout\,
	combout => \add_sub1|result~3_combout\);

-- Location: LCFF_X16_Y14_N13
\add_sub1|result[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \add_sub1|result~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \add_sub1|result\(3));

-- Location: LCCOMB_X15_Y14_N10
\add_sub1|result~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \add_sub1|result~4_combout\ = (\add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|result_int[5]~10_combout\ & (\add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|overflow~combout\ & ((!\add_sub1|process_0~0_combout\) # 
-- (!\add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|result_int[7]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|result_int[7]~14_combout\,
	datab => \add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|result_int[5]~10_combout\,
	datac => \add_sub1|process_0~0_combout\,
	datad => \add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|overflow~combout\,
	combout => \add_sub1|result~4_combout\);

-- Location: LCFF_X15_Y14_N11
\add_sub1|result[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \add_sub1|result~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \add_sub1|result\(4));

-- Location: LCCOMB_X15_Y14_N30
\add_sub1|result~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \add_sub1|result~5_combout\ = (\add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|result_int[6]~12_combout\ & (\add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|overflow~combout\ & ((!\add_sub1|process_0~0_combout\) # 
-- (!\add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|result_int[7]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|result_int[6]~12_combout\,
	datab => \add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|result_int[7]~14_combout\,
	datac => \add_sub1|process_0~0_combout\,
	datad => \add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|overflow~combout\,
	combout => \add_sub1|result~5_combout\);

-- Location: LCFF_X15_Y14_N31
\add_sub1|result[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \add_sub1|result~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \add_sub1|result\(5));

-- Location: LCCOMB_X16_Y14_N10
\add_sub1|result~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \add_sub1|result~6_combout\ = (\add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|result_int[7]~14_combout\ & (!\add_sub1|process_0~0_combout\ & (\add_sub1|add_sub_reg~regout\ $ 
-- (\add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|result_int[8]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_sub1|add_sub_reg~regout\,
	datab => \add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|result_int[8]~16_combout\,
	datac => \add_sub1|addsub_1|LPM_ADD_SUB_component|auto_generated|result_int[7]~14_combout\,
	datad => \add_sub1|process_0~0_combout\,
	combout => \add_sub1|result~6_combout\);

-- Location: LCFF_X16_Y14_N11
\add_sub1|result[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \add_sub1|result~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \add_sub1|result\(6));

-- Location: LCCOMB_X51_Y7_N4
\decoder3_1|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder3_1|Mux6~0_combout\ = (\table3|altsyncram_component|auto_generated|q_a\(1) & (((\table3|altsyncram_component|auto_generated|q_a\(3))))) # (!\table3|altsyncram_component|auto_generated|q_a\(1) & (\table3|altsyncram_component|auto_generated|q_a\(2) 
-- $ (((\table3|altsyncram_component|auto_generated|q_a\(0) & !\table3|altsyncram_component|auto_generated|q_a\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \table3|altsyncram_component|auto_generated|q_a\(0),
	datab => \table3|altsyncram_component|auto_generated|q_a\(1),
	datac => \table3|altsyncram_component|auto_generated|q_a\(2),
	datad => \table3|altsyncram_component|auto_generated|q_a\(3),
	combout => \decoder3_1|Mux6~0_combout\);

-- Location: LCFF_X51_Y7_N5
\decoder3_1|out_code[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \decoder3_1|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder3_1|out_code\(0));

-- Location: LCCOMB_X51_Y7_N22
\decoder3_1|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder3_1|Mux5~0_combout\ = (\table3|altsyncram_component|auto_generated|q_a\(2) & ((\table3|altsyncram_component|auto_generated|q_a\(3)) # (\table3|altsyncram_component|auto_generated|q_a\(0) $ (\table3|altsyncram_component|auto_generated|q_a\(1))))) # 
-- (!\table3|altsyncram_component|auto_generated|q_a\(2) & (((\table3|altsyncram_component|auto_generated|q_a\(1) & \table3|altsyncram_component|auto_generated|q_a\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \table3|altsyncram_component|auto_generated|q_a\(0),
	datab => \table3|altsyncram_component|auto_generated|q_a\(1),
	datac => \table3|altsyncram_component|auto_generated|q_a\(2),
	datad => \table3|altsyncram_component|auto_generated|q_a\(3),
	combout => \decoder3_1|Mux5~0_combout\);

-- Location: LCFF_X51_Y7_N23
\decoder3_1|out_code[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \decoder3_1|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder3_1|out_code\(1));

-- Location: LCCOMB_X51_Y7_N16
\decoder3_1|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder3_1|Mux4~0_combout\ = (\table3|altsyncram_component|auto_generated|q_a\(2) & (((\table3|altsyncram_component|auto_generated|q_a\(3))))) # (!\table3|altsyncram_component|auto_generated|q_a\(2) & (\table3|altsyncram_component|auto_generated|q_a\(1) 
-- & ((\table3|altsyncram_component|auto_generated|q_a\(3)) # (!\table3|altsyncram_component|auto_generated|q_a\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \table3|altsyncram_component|auto_generated|q_a\(0),
	datab => \table3|altsyncram_component|auto_generated|q_a\(3),
	datac => \table3|altsyncram_component|auto_generated|q_a\(2),
	datad => \table3|altsyncram_component|auto_generated|q_a\(1),
	combout => \decoder3_1|Mux4~0_combout\);

-- Location: LCFF_X51_Y7_N17
\decoder3_1|out_code[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \decoder3_1|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder3_1|out_code\(2));

-- Location: LCCOMB_X51_Y7_N6
\decoder3_1|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder3_1|Mux3~0_combout\ = (\table3|altsyncram_component|auto_generated|q_a\(1) & ((\table3|altsyncram_component|auto_generated|q_a\(3)) # ((\table3|altsyncram_component|auto_generated|q_a\(0) & \table3|altsyncram_component|auto_generated|q_a\(2))))) # 
-- (!\table3|altsyncram_component|auto_generated|q_a\(1) & (\table3|altsyncram_component|auto_generated|q_a\(2) $ (((\table3|altsyncram_component|auto_generated|q_a\(0) & !\table3|altsyncram_component|auto_generated|q_a\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \table3|altsyncram_component|auto_generated|q_a\(0),
	datab => \table3|altsyncram_component|auto_generated|q_a\(1),
	datac => \table3|altsyncram_component|auto_generated|q_a\(2),
	datad => \table3|altsyncram_component|auto_generated|q_a\(3),
	combout => \decoder3_1|Mux3~0_combout\);

-- Location: LCFF_X51_Y7_N7
\decoder3_1|out_code[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \decoder3_1|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder3_1|out_code\(3));

-- Location: LCCOMB_X51_Y7_N12
\decoder3_1|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder3_1|Mux2~0_combout\ = (\table3|altsyncram_component|auto_generated|q_a\(0)) # ((\table3|altsyncram_component|auto_generated|q_a\(1) & ((\table3|altsyncram_component|auto_generated|q_a\(3)))) # (!\table3|altsyncram_component|auto_generated|q_a\(1) 
-- & (\table3|altsyncram_component|auto_generated|q_a\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \table3|altsyncram_component|auto_generated|q_a\(0),
	datab => \table3|altsyncram_component|auto_generated|q_a\(1),
	datac => \table3|altsyncram_component|auto_generated|q_a\(2),
	datad => \table3|altsyncram_component|auto_generated|q_a\(3),
	combout => \decoder3_1|Mux2~0_combout\);

-- Location: LCFF_X51_Y7_N13
\decoder3_1|out_code[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \decoder3_1|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder3_1|out_code\(4));

-- Location: LCCOMB_X51_Y7_N2
\decoder3_1|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder3_1|Mux1~0_combout\ = (\table3|altsyncram_component|auto_generated|q_a\(0) & ((\table3|altsyncram_component|auto_generated|q_a\(1)) # (\table3|altsyncram_component|auto_generated|q_a\(2) $ (!\table3|altsyncram_component|auto_generated|q_a\(3))))) 
-- # (!\table3|altsyncram_component|auto_generated|q_a\(0) & ((\table3|altsyncram_component|auto_generated|q_a\(2) & ((\table3|altsyncram_component|auto_generated|q_a\(3)))) # (!\table3|altsyncram_component|auto_generated|q_a\(2) & 
-- (\table3|altsyncram_component|auto_generated|q_a\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \table3|altsyncram_component|auto_generated|q_a\(0),
	datab => \table3|altsyncram_component|auto_generated|q_a\(1),
	datac => \table3|altsyncram_component|auto_generated|q_a\(2),
	datad => \table3|altsyncram_component|auto_generated|q_a\(3),
	combout => \decoder3_1|Mux1~0_combout\);

-- Location: LCFF_X51_Y7_N3
\decoder3_1|out_code[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \decoder3_1|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder3_1|out_code\(5));

-- Location: LCCOMB_X51_Y7_N0
\decoder3_1|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder3_1|Mux0~0_combout\ = (\table3|altsyncram_component|auto_generated|q_a\(1) & ((\table3|altsyncram_component|auto_generated|q_a\(3)) # ((\table3|altsyncram_component|auto_generated|q_a\(0) & \table3|altsyncram_component|auto_generated|q_a\(2))))) # 
-- (!\table3|altsyncram_component|auto_generated|q_a\(1) & ((\table3|altsyncram_component|auto_generated|q_a\(2) $ (!\table3|altsyncram_component|auto_generated|q_a\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \table3|altsyncram_component|auto_generated|q_a\(0),
	datab => \table3|altsyncram_component|auto_generated|q_a\(1),
	datac => \table3|altsyncram_component|auto_generated|q_a\(2),
	datad => \table3|altsyncram_component|auto_generated|q_a\(3),
	combout => \decoder3_1|Mux0~0_combout\);

-- Location: LCFF_X51_Y7_N1
\decoder3_1|out_code[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \decoder3_1|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder3_1|out_code\(6));

-- Location: LCCOMB_X53_Y7_N16
\decoder3_2|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder3_2|Mux6~0_combout\ = (\table3|altsyncram_component|auto_generated|q_a\(5) & (((\table3|altsyncram_component|auto_generated|q_a\(7))))) # (!\table3|altsyncram_component|auto_generated|q_a\(5) & (\table3|altsyncram_component|auto_generated|q_a\(6) 
-- $ (((\table3|altsyncram_component|auto_generated|q_a\(4) & !\table3|altsyncram_component|auto_generated|q_a\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \table3|altsyncram_component|auto_generated|q_a\(4),
	datab => \table3|altsyncram_component|auto_generated|q_a\(5),
	datac => \table3|altsyncram_component|auto_generated|q_a\(7),
	datad => \table3|altsyncram_component|auto_generated|q_a\(6),
	combout => \decoder3_2|Mux6~0_combout\);

-- Location: LCFF_X53_Y7_N17
\decoder3_2|out_code[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \decoder3_2|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder3_2|out_code\(0));

-- Location: LCCOMB_X53_Y7_N10
\decoder3_2|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder3_2|Mux5~0_combout\ = (\table3|altsyncram_component|auto_generated|q_a\(7) & ((\table3|altsyncram_component|auto_generated|q_a\(5)) # ((\table3|altsyncram_component|auto_generated|q_a\(6))))) # (!\table3|altsyncram_component|auto_generated|q_a\(7) 
-- & (\table3|altsyncram_component|auto_generated|q_a\(6) & (\table3|altsyncram_component|auto_generated|q_a\(5) $ (\table3|altsyncram_component|auto_generated|q_a\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \table3|altsyncram_component|auto_generated|q_a\(7),
	datab => \table3|altsyncram_component|auto_generated|q_a\(5),
	datac => \table3|altsyncram_component|auto_generated|q_a\(6),
	datad => \table3|altsyncram_component|auto_generated|q_a\(4),
	combout => \decoder3_2|Mux5~0_combout\);

-- Location: LCFF_X53_Y7_N11
\decoder3_2|out_code[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \decoder3_2|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder3_2|out_code\(1));

-- Location: LCCOMB_X53_Y7_N0
\decoder3_2|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder3_2|Mux4~0_combout\ = (\table3|altsyncram_component|auto_generated|q_a\(6) & (((\table3|altsyncram_component|auto_generated|q_a\(7))))) # (!\table3|altsyncram_component|auto_generated|q_a\(6) & (\table3|altsyncram_component|auto_generated|q_a\(5) 
-- & ((\table3|altsyncram_component|auto_generated|q_a\(7)) # (!\table3|altsyncram_component|auto_generated|q_a\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \table3|altsyncram_component|auto_generated|q_a\(4),
	datab => \table3|altsyncram_component|auto_generated|q_a\(5),
	datac => \table3|altsyncram_component|auto_generated|q_a\(7),
	datad => \table3|altsyncram_component|auto_generated|q_a\(6),
	combout => \decoder3_2|Mux4~0_combout\);

-- Location: LCFF_X53_Y7_N1
\decoder3_2|out_code[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \decoder3_2|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder3_2|out_code\(2));

-- Location: LCCOMB_X53_Y7_N22
\decoder3_2|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder3_2|Mux3~0_combout\ = (\table3|altsyncram_component|auto_generated|q_a\(5) & ((\table3|altsyncram_component|auto_generated|q_a\(7)) # ((\table3|altsyncram_component|auto_generated|q_a\(4) & \table3|altsyncram_component|auto_generated|q_a\(6))))) # 
-- (!\table3|altsyncram_component|auto_generated|q_a\(5) & (\table3|altsyncram_component|auto_generated|q_a\(6) $ (((\table3|altsyncram_component|auto_generated|q_a\(4) & !\table3|altsyncram_component|auto_generated|q_a\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \table3|altsyncram_component|auto_generated|q_a\(4),
	datab => \table3|altsyncram_component|auto_generated|q_a\(7),
	datac => \table3|altsyncram_component|auto_generated|q_a\(6),
	datad => \table3|altsyncram_component|auto_generated|q_a\(5),
	combout => \decoder3_2|Mux3~0_combout\);

-- Location: LCFF_X53_Y7_N23
\decoder3_2|out_code[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \decoder3_2|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder3_2|out_code\(3));

-- Location: LCCOMB_X53_Y7_N20
\decoder3_2|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder3_2|Mux2~0_combout\ = (\table3|altsyncram_component|auto_generated|q_a\(4)) # ((\table3|altsyncram_component|auto_generated|q_a\(5) & (\table3|altsyncram_component|auto_generated|q_a\(7))) # (!\table3|altsyncram_component|auto_generated|q_a\(5) & 
-- ((\table3|altsyncram_component|auto_generated|q_a\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \table3|altsyncram_component|auto_generated|q_a\(4),
	datab => \table3|altsyncram_component|auto_generated|q_a\(7),
	datac => \table3|altsyncram_component|auto_generated|q_a\(5),
	datad => \table3|altsyncram_component|auto_generated|q_a\(6),
	combout => \decoder3_2|Mux2~0_combout\);

-- Location: LCFF_X53_Y7_N21
\decoder3_2|out_code[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \decoder3_2|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder3_2|out_code\(4));

-- Location: LCCOMB_X53_Y7_N2
\decoder3_2|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder3_2|Mux1~0_combout\ = (\table3|altsyncram_component|auto_generated|q_a\(4) & ((\table3|altsyncram_component|auto_generated|q_a\(5)) # (\table3|altsyncram_component|auto_generated|q_a\(7) $ (!\table3|altsyncram_component|auto_generated|q_a\(6))))) 
-- # (!\table3|altsyncram_component|auto_generated|q_a\(4) & ((\table3|altsyncram_component|auto_generated|q_a\(6) & (\table3|altsyncram_component|auto_generated|q_a\(7))) # (!\table3|altsyncram_component|auto_generated|q_a\(6) & 
-- ((\table3|altsyncram_component|auto_generated|q_a\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \table3|altsyncram_component|auto_generated|q_a\(4),
	datab => \table3|altsyncram_component|auto_generated|q_a\(7),
	datac => \table3|altsyncram_component|auto_generated|q_a\(6),
	datad => \table3|altsyncram_component|auto_generated|q_a\(5),
	combout => \decoder3_2|Mux1~0_combout\);

-- Location: LCFF_X53_Y7_N3
\decoder3_2|out_code[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \decoder3_2|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder3_2|out_code\(5));

-- Location: LCCOMB_X53_Y7_N12
\decoder3_2|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder3_2|Mux0~0_combout\ = (\table3|altsyncram_component|auto_generated|q_a\(5) & ((\table3|altsyncram_component|auto_generated|q_a\(7)) # ((\table3|altsyncram_component|auto_generated|q_a\(4) & \table3|altsyncram_component|auto_generated|q_a\(6))))) # 
-- (!\table3|altsyncram_component|auto_generated|q_a\(5) & ((\table3|altsyncram_component|auto_generated|q_a\(7) $ (!\table3|altsyncram_component|auto_generated|q_a\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \table3|altsyncram_component|auto_generated|q_a\(4),
	datab => \table3|altsyncram_component|auto_generated|q_a\(7),
	datac => \table3|altsyncram_component|auto_generated|q_a\(5),
	datad => \table3|altsyncram_component|auto_generated|q_a\(6),
	combout => \decoder3_2|Mux0~0_combout\);

-- Location: LCFF_X53_Y7_N13
\decoder3_2|out_code[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \decoder3_2|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder3_2|out_code\(6));

-- Location: LCCOMB_X12_Y14_N16
\decoder2_1|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder2_1|Mux6~0_combout\ = (\table2|altsyncram_component|auto_generated|q_a\(1) & (((\table2|altsyncram_component|auto_generated|q_a\(3))))) # (!\table2|altsyncram_component|auto_generated|q_a\(1) & (\table2|altsyncram_component|auto_generated|q_a\(2) 
-- $ (((\table2|altsyncram_component|auto_generated|q_a\(0) & !\table2|altsyncram_component|auto_generated|q_a\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \table2|altsyncram_component|auto_generated|q_a\(0),
	datab => \table2|altsyncram_component|auto_generated|q_a\(1),
	datac => \table2|altsyncram_component|auto_generated|q_a\(2),
	datad => \table2|altsyncram_component|auto_generated|q_a\(3),
	combout => \decoder2_1|Mux6~0_combout\);

-- Location: LCFF_X12_Y14_N17
\decoder2_1|out_code[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \decoder2_1|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder2_1|out_code\(0));

-- Location: LCCOMB_X12_Y14_N10
\decoder2_1|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder2_1|Mux5~0_combout\ = (\table2|altsyncram_component|auto_generated|q_a\(2) & ((\table2|altsyncram_component|auto_generated|q_a\(3)) # (\table2|altsyncram_component|auto_generated|q_a\(0) $ (\table2|altsyncram_component|auto_generated|q_a\(1))))) # 
-- (!\table2|altsyncram_component|auto_generated|q_a\(2) & (((\table2|altsyncram_component|auto_generated|q_a\(1) & \table2|altsyncram_component|auto_generated|q_a\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \table2|altsyncram_component|auto_generated|q_a\(0),
	datab => \table2|altsyncram_component|auto_generated|q_a\(1),
	datac => \table2|altsyncram_component|auto_generated|q_a\(2),
	datad => \table2|altsyncram_component|auto_generated|q_a\(3),
	combout => \decoder2_1|Mux5~0_combout\);

-- Location: LCFF_X12_Y14_N11
\decoder2_1|out_code[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \decoder2_1|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder2_1|out_code\(1));

-- Location: LCCOMB_X12_Y14_N24
\decoder2_1|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder2_1|Mux4~0_combout\ = (\table2|altsyncram_component|auto_generated|q_a\(2) & (((\table2|altsyncram_component|auto_generated|q_a\(3))))) # (!\table2|altsyncram_component|auto_generated|q_a\(2) & (\table2|altsyncram_component|auto_generated|q_a\(1) 
-- & ((\table2|altsyncram_component|auto_generated|q_a\(3)) # (!\table2|altsyncram_component|auto_generated|q_a\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \table2|altsyncram_component|auto_generated|q_a\(0),
	datab => \table2|altsyncram_component|auto_generated|q_a\(3),
	datac => \table2|altsyncram_component|auto_generated|q_a\(2),
	datad => \table2|altsyncram_component|auto_generated|q_a\(1),
	combout => \decoder2_1|Mux4~0_combout\);

-- Location: LCFF_X12_Y14_N25
\decoder2_1|out_code[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \decoder2_1|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder2_1|out_code\(2));

-- Location: LCCOMB_X12_Y14_N26
\decoder2_1|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder2_1|Mux3~0_combout\ = (\table2|altsyncram_component|auto_generated|q_a\(1) & ((\table2|altsyncram_component|auto_generated|q_a\(3)) # ((\table2|altsyncram_component|auto_generated|q_a\(0) & \table2|altsyncram_component|auto_generated|q_a\(2))))) # 
-- (!\table2|altsyncram_component|auto_generated|q_a\(1) & (\table2|altsyncram_component|auto_generated|q_a\(2) $ (((\table2|altsyncram_component|auto_generated|q_a\(0) & !\table2|altsyncram_component|auto_generated|q_a\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \table2|altsyncram_component|auto_generated|q_a\(0),
	datab => \table2|altsyncram_component|auto_generated|q_a\(1),
	datac => \table2|altsyncram_component|auto_generated|q_a\(2),
	datad => \table2|altsyncram_component|auto_generated|q_a\(3),
	combout => \decoder2_1|Mux3~0_combout\);

-- Location: LCFF_X12_Y14_N27
\decoder2_1|out_code[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \decoder2_1|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder2_1|out_code\(3));

-- Location: LCCOMB_X12_Y14_N4
\decoder2_1|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder2_1|Mux2~0_combout\ = (\table2|altsyncram_component|auto_generated|q_a\(0)) # ((\table2|altsyncram_component|auto_generated|q_a\(1) & ((\table2|altsyncram_component|auto_generated|q_a\(3)))) # (!\table2|altsyncram_component|auto_generated|q_a\(1) 
-- & (\table2|altsyncram_component|auto_generated|q_a\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \table2|altsyncram_component|auto_generated|q_a\(0),
	datab => \table2|altsyncram_component|auto_generated|q_a\(1),
	datac => \table2|altsyncram_component|auto_generated|q_a\(2),
	datad => \table2|altsyncram_component|auto_generated|q_a\(3),
	combout => \decoder2_1|Mux2~0_combout\);

-- Location: LCFF_X12_Y14_N5
\decoder2_1|out_code[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \decoder2_1|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder2_1|out_code\(4));

-- Location: LCCOMB_X12_Y14_N2
\decoder2_1|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder2_1|Mux1~0_combout\ = (\table2|altsyncram_component|auto_generated|q_a\(0) & ((\table2|altsyncram_component|auto_generated|q_a\(1)) # (\table2|altsyncram_component|auto_generated|q_a\(2) $ (!\table2|altsyncram_component|auto_generated|q_a\(3))))) 
-- # (!\table2|altsyncram_component|auto_generated|q_a\(0) & ((\table2|altsyncram_component|auto_generated|q_a\(2) & ((\table2|altsyncram_component|auto_generated|q_a\(3)))) # (!\table2|altsyncram_component|auto_generated|q_a\(2) & 
-- (\table2|altsyncram_component|auto_generated|q_a\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \table2|altsyncram_component|auto_generated|q_a\(0),
	datab => \table2|altsyncram_component|auto_generated|q_a\(1),
	datac => \table2|altsyncram_component|auto_generated|q_a\(2),
	datad => \table2|altsyncram_component|auto_generated|q_a\(3),
	combout => \decoder2_1|Mux1~0_combout\);

-- Location: LCFF_X12_Y14_N3
\decoder2_1|out_code[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \decoder2_1|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder2_1|out_code\(5));

-- Location: LCCOMB_X12_Y14_N0
\decoder2_1|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder2_1|Mux0~0_combout\ = (\table2|altsyncram_component|auto_generated|q_a\(1) & ((\table2|altsyncram_component|auto_generated|q_a\(3)) # ((\table2|altsyncram_component|auto_generated|q_a\(0) & \table2|altsyncram_component|auto_generated|q_a\(2))))) # 
-- (!\table2|altsyncram_component|auto_generated|q_a\(1) & ((\table2|altsyncram_component|auto_generated|q_a\(2) $ (!\table2|altsyncram_component|auto_generated|q_a\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \table2|altsyncram_component|auto_generated|q_a\(0),
	datab => \table2|altsyncram_component|auto_generated|q_a\(1),
	datac => \table2|altsyncram_component|auto_generated|q_a\(2),
	datad => \table2|altsyncram_component|auto_generated|q_a\(3),
	combout => \decoder2_1|Mux0~0_combout\);

-- Location: LCFF_X12_Y14_N1
\decoder2_1|out_code[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \decoder2_1|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder2_1|out_code\(6));

-- Location: LCCOMB_X12_Y14_N14
\decoder2_2|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder2_2|Mux6~0_combout\ = (\table2|altsyncram_component|auto_generated|q_a\(5) & (((\table2|altsyncram_component|auto_generated|q_a\(7))))) # (!\table2|altsyncram_component|auto_generated|q_a\(5) & (\table2|altsyncram_component|auto_generated|q_a\(6) 
-- $ (((\table2|altsyncram_component|auto_generated|q_a\(4) & !\table2|altsyncram_component|auto_generated|q_a\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \table2|altsyncram_component|auto_generated|q_a\(4),
	datab => \table2|altsyncram_component|auto_generated|q_a\(6),
	datac => \table2|altsyncram_component|auto_generated|q_a\(7),
	datad => \table2|altsyncram_component|auto_generated|q_a\(5),
	combout => \decoder2_2|Mux6~0_combout\);

-- Location: LCFF_X12_Y14_N15
\decoder2_2|out_code[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \decoder2_2|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder2_2|out_code\(0));

-- Location: LCCOMB_X12_Y14_N8
\decoder2_2|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder2_2|Mux5~0_combout\ = (\table2|altsyncram_component|auto_generated|q_a\(6) & ((\table2|altsyncram_component|auto_generated|q_a\(7)) # (\table2|altsyncram_component|auto_generated|q_a\(4) $ (\table2|altsyncram_component|auto_generated|q_a\(5))))) # 
-- (!\table2|altsyncram_component|auto_generated|q_a\(6) & (((\table2|altsyncram_component|auto_generated|q_a\(7) & \table2|altsyncram_component|auto_generated|q_a\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \table2|altsyncram_component|auto_generated|q_a\(4),
	datab => \table2|altsyncram_component|auto_generated|q_a\(6),
	datac => \table2|altsyncram_component|auto_generated|q_a\(7),
	datad => \table2|altsyncram_component|auto_generated|q_a\(5),
	combout => \decoder2_2|Mux5~0_combout\);

-- Location: LCFF_X12_Y14_N9
\decoder2_2|out_code[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \decoder2_2|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder2_2|out_code\(1));

-- Location: LCCOMB_X12_Y14_N30
\decoder2_2|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder2_2|Mux4~0_combout\ = (\table2|altsyncram_component|auto_generated|q_a\(6) & (((\table2|altsyncram_component|auto_generated|q_a\(7))))) # (!\table2|altsyncram_component|auto_generated|q_a\(6) & (\table2|altsyncram_component|auto_generated|q_a\(5) 
-- & ((\table2|altsyncram_component|auto_generated|q_a\(7)) # (!\table2|altsyncram_component|auto_generated|q_a\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \table2|altsyncram_component|auto_generated|q_a\(4),
	datab => \table2|altsyncram_component|auto_generated|q_a\(6),
	datac => \table2|altsyncram_component|auto_generated|q_a\(7),
	datad => \table2|altsyncram_component|auto_generated|q_a\(5),
	combout => \decoder2_2|Mux4~0_combout\);

-- Location: LCFF_X12_Y14_N31
\decoder2_2|out_code[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \decoder2_2|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder2_2|out_code\(2));

-- Location: LCCOMB_X12_Y14_N20
\decoder2_2|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder2_2|Mux3~0_combout\ = (\table2|altsyncram_component|auto_generated|q_a\(5) & ((\table2|altsyncram_component|auto_generated|q_a\(7)) # ((\table2|altsyncram_component|auto_generated|q_a\(4) & \table2|altsyncram_component|auto_generated|q_a\(6))))) # 
-- (!\table2|altsyncram_component|auto_generated|q_a\(5) & (\table2|altsyncram_component|auto_generated|q_a\(6) $ (((\table2|altsyncram_component|auto_generated|q_a\(4) & !\table2|altsyncram_component|auto_generated|q_a\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \table2|altsyncram_component|auto_generated|q_a\(4),
	datab => \table2|altsyncram_component|auto_generated|q_a\(6),
	datac => \table2|altsyncram_component|auto_generated|q_a\(7),
	datad => \table2|altsyncram_component|auto_generated|q_a\(5),
	combout => \decoder2_2|Mux3~0_combout\);

-- Location: LCFF_X12_Y14_N21
\decoder2_2|out_code[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \decoder2_2|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder2_2|out_code\(3));

-- Location: LCCOMB_X12_Y14_N22
\decoder2_2|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder2_2|Mux2~0_combout\ = (\table2|altsyncram_component|auto_generated|q_a\(4)) # ((\table2|altsyncram_component|auto_generated|q_a\(5) & ((\table2|altsyncram_component|auto_generated|q_a\(7)))) # (!\table2|altsyncram_component|auto_generated|q_a\(5) 
-- & (\table2|altsyncram_component|auto_generated|q_a\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \table2|altsyncram_component|auto_generated|q_a\(4),
	datab => \table2|altsyncram_component|auto_generated|q_a\(6),
	datac => \table2|altsyncram_component|auto_generated|q_a\(7),
	datad => \table2|altsyncram_component|auto_generated|q_a\(5),
	combout => \decoder2_2|Mux2~0_combout\);

-- Location: LCFF_X12_Y14_N23
\decoder2_2|out_code[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \decoder2_2|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder2_2|out_code\(4));

-- Location: LCCOMB_X12_Y14_N28
\decoder2_2|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder2_2|Mux1~0_combout\ = (\table2|altsyncram_component|auto_generated|q_a\(4) & ((\table2|altsyncram_component|auto_generated|q_a\(5)) # (\table2|altsyncram_component|auto_generated|q_a\(6) $ (!\table2|altsyncram_component|auto_generated|q_a\(7))))) 
-- # (!\table2|altsyncram_component|auto_generated|q_a\(4) & ((\table2|altsyncram_component|auto_generated|q_a\(6) & (\table2|altsyncram_component|auto_generated|q_a\(7))) # (!\table2|altsyncram_component|auto_generated|q_a\(6) & 
-- ((\table2|altsyncram_component|auto_generated|q_a\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \table2|altsyncram_component|auto_generated|q_a\(4),
	datab => \table2|altsyncram_component|auto_generated|q_a\(6),
	datac => \table2|altsyncram_component|auto_generated|q_a\(7),
	datad => \table2|altsyncram_component|auto_generated|q_a\(5),
	combout => \decoder2_2|Mux1~0_combout\);

-- Location: LCFF_X12_Y14_N29
\decoder2_2|out_code[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \decoder2_2|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder2_2|out_code\(5));

-- Location: LCCOMB_X12_Y14_N18
\decoder2_2|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder2_2|Mux0~0_combout\ = (\table2|altsyncram_component|auto_generated|q_a\(6) & ((\table2|altsyncram_component|auto_generated|q_a\(7)) # ((\table2|altsyncram_component|auto_generated|q_a\(4) & \table2|altsyncram_component|auto_generated|q_a\(5))))) # 
-- (!\table2|altsyncram_component|auto_generated|q_a\(6) & ((\table2|altsyncram_component|auto_generated|q_a\(7) $ (!\table2|altsyncram_component|auto_generated|q_a\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \table2|altsyncram_component|auto_generated|q_a\(4),
	datab => \table2|altsyncram_component|auto_generated|q_a\(6),
	datac => \table2|altsyncram_component|auto_generated|q_a\(7),
	datad => \table2|altsyncram_component|auto_generated|q_a\(5),
	combout => \decoder2_2|Mux0~0_combout\);

-- Location: LCFF_X12_Y14_N19
\decoder2_2|out_code[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \decoder2_2|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder2_2|out_code\(6));

-- Location: LCCOMB_X16_Y15_N22
\count1|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \count1|Add0~12_combout\ = \count1|int_data\(6) $ (!\count1|Add0~11\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \count1|int_data\(6),
	cin => \count1|Add0~11\,
	combout => \count1|Add0~12_combout\);

-- Location: LCCOMB_X16_Y15_N24
\count1|int_data~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \count1|int_data~0_combout\ = (\count1|Add0~12_combout\ & ((!\count1|Equal0~1_combout\) # (!\count1|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \count1|Equal0~0_combout\,
	datac => \count1|Equal0~1_combout\,
	datad => \count1|Add0~12_combout\,
	combout => \count1|int_data~0_combout\);

-- Location: LCFF_X16_Y15_N25
\count1|int_data[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \key[2]~clkctrl_outclk\,
	datain => \count1|int_data~0_combout\,
	aclr => \ALT_INV_key~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \count1|int_data\(6));

-- Location: LCCOMB_X12_Y15_N4
\decoder1_1|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder1_1|Mux6~0_combout\ = (\table1|altsyncram_component|auto_generated|q_a\(1) & (((\table1|altsyncram_component|auto_generated|q_a\(3))))) # (!\table1|altsyncram_component|auto_generated|q_a\(1) & (\table1|altsyncram_component|auto_generated|q_a\(2) 
-- $ (((\table1|altsyncram_component|auto_generated|q_a\(0) & !\table1|altsyncram_component|auto_generated|q_a\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \table1|altsyncram_component|auto_generated|q_a\(0),
	datab => \table1|altsyncram_component|auto_generated|q_a\(1),
	datac => \table1|altsyncram_component|auto_generated|q_a\(2),
	datad => \table1|altsyncram_component|auto_generated|q_a\(3),
	combout => \decoder1_1|Mux6~0_combout\);

-- Location: LCFF_X12_Y15_N5
\decoder1_1|out_code[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \decoder1_1|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder1_1|out_code\(0));

-- Location: LCCOMB_X12_Y15_N2
\decoder1_1|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder1_1|Mux5~0_combout\ = (\table1|altsyncram_component|auto_generated|q_a\(3) & (((\table1|altsyncram_component|auto_generated|q_a\(2)) # (\table1|altsyncram_component|auto_generated|q_a\(1))))) # (!\table1|altsyncram_component|auto_generated|q_a\(3) 
-- & (\table1|altsyncram_component|auto_generated|q_a\(2) & (\table1|altsyncram_component|auto_generated|q_a\(0) $ (\table1|altsyncram_component|auto_generated|q_a\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \table1|altsyncram_component|auto_generated|q_a\(0),
	datab => \table1|altsyncram_component|auto_generated|q_a\(3),
	datac => \table1|altsyncram_component|auto_generated|q_a\(2),
	datad => \table1|altsyncram_component|auto_generated|q_a\(1),
	combout => \decoder1_1|Mux5~0_combout\);

-- Location: LCFF_X12_Y15_N3
\decoder1_1|out_code[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \decoder1_1|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder1_1|out_code\(1));

-- Location: LCCOMB_X12_Y15_N28
\decoder1_1|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder1_1|Mux4~0_combout\ = (\table1|altsyncram_component|auto_generated|q_a\(2) & (((\table1|altsyncram_component|auto_generated|q_a\(3))))) # (!\table1|altsyncram_component|auto_generated|q_a\(2) & (\table1|altsyncram_component|auto_generated|q_a\(1) 
-- & ((\table1|altsyncram_component|auto_generated|q_a\(3)) # (!\table1|altsyncram_component|auto_generated|q_a\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \table1|altsyncram_component|auto_generated|q_a\(0),
	datab => \table1|altsyncram_component|auto_generated|q_a\(1),
	datac => \table1|altsyncram_component|auto_generated|q_a\(2),
	datad => \table1|altsyncram_component|auto_generated|q_a\(3),
	combout => \decoder1_1|Mux4~0_combout\);

-- Location: LCFF_X12_Y15_N29
\decoder1_1|out_code[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \decoder1_1|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder1_1|out_code\(2));

-- Location: LCCOMB_X12_Y15_N22
\decoder1_1|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder1_1|Mux3~0_combout\ = (\table1|altsyncram_component|auto_generated|q_a\(1) & ((\table1|altsyncram_component|auto_generated|q_a\(3)) # ((\table1|altsyncram_component|auto_generated|q_a\(0) & \table1|altsyncram_component|auto_generated|q_a\(2))))) # 
-- (!\table1|altsyncram_component|auto_generated|q_a\(1) & (\table1|altsyncram_component|auto_generated|q_a\(2) $ (((\table1|altsyncram_component|auto_generated|q_a\(0) & !\table1|altsyncram_component|auto_generated|q_a\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \table1|altsyncram_component|auto_generated|q_a\(0),
	datab => \table1|altsyncram_component|auto_generated|q_a\(3),
	datac => \table1|altsyncram_component|auto_generated|q_a\(2),
	datad => \table1|altsyncram_component|auto_generated|q_a\(1),
	combout => \decoder1_1|Mux3~0_combout\);

-- Location: LCFF_X12_Y15_N23
\decoder1_1|out_code[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \decoder1_1|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder1_1|out_code\(3));

-- Location: LCCOMB_X12_Y15_N12
\decoder1_1|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder1_1|Mux2~0_combout\ = (\table1|altsyncram_component|auto_generated|q_a\(0)) # ((\table1|altsyncram_component|auto_generated|q_a\(1) & (\table1|altsyncram_component|auto_generated|q_a\(3))) # (!\table1|altsyncram_component|auto_generated|q_a\(1) & 
-- ((\table1|altsyncram_component|auto_generated|q_a\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \table1|altsyncram_component|auto_generated|q_a\(0),
	datab => \table1|altsyncram_component|auto_generated|q_a\(3),
	datac => \table1|altsyncram_component|auto_generated|q_a\(2),
	datad => \table1|altsyncram_component|auto_generated|q_a\(1),
	combout => \decoder1_1|Mux2~0_combout\);

-- Location: LCFF_X12_Y15_N13
\decoder1_1|out_code[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \decoder1_1|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder1_1|out_code\(4));

-- Location: LCCOMB_X12_Y15_N26
\decoder1_1|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder1_1|Mux1~0_combout\ = (\table1|altsyncram_component|auto_generated|q_a\(0) & ((\table1|altsyncram_component|auto_generated|q_a\(1)) # (\table1|altsyncram_component|auto_generated|q_a\(3) $ (!\table1|altsyncram_component|auto_generated|q_a\(2))))) 
-- # (!\table1|altsyncram_component|auto_generated|q_a\(0) & ((\table1|altsyncram_component|auto_generated|q_a\(2) & (\table1|altsyncram_component|auto_generated|q_a\(3))) # (!\table1|altsyncram_component|auto_generated|q_a\(2) & 
-- ((\table1|altsyncram_component|auto_generated|q_a\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \table1|altsyncram_component|auto_generated|q_a\(0),
	datab => \table1|altsyncram_component|auto_generated|q_a\(3),
	datac => \table1|altsyncram_component|auto_generated|q_a\(2),
	datad => \table1|altsyncram_component|auto_generated|q_a\(1),
	combout => \decoder1_1|Mux1~0_combout\);

-- Location: LCFF_X12_Y15_N27
\decoder1_1|out_code[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \decoder1_1|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder1_1|out_code\(5));

-- Location: LCCOMB_X12_Y15_N20
\decoder1_1|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder1_1|Mux0~0_combout\ = (\table1|altsyncram_component|auto_generated|q_a\(2) & ((\table1|altsyncram_component|auto_generated|q_a\(3)) # ((\table1|altsyncram_component|auto_generated|q_a\(0) & \table1|altsyncram_component|auto_generated|q_a\(1))))) # 
-- (!\table1|altsyncram_component|auto_generated|q_a\(2) & ((\table1|altsyncram_component|auto_generated|q_a\(3) $ (!\table1|altsyncram_component|auto_generated|q_a\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \table1|altsyncram_component|auto_generated|q_a\(0),
	datab => \table1|altsyncram_component|auto_generated|q_a\(3),
	datac => \table1|altsyncram_component|auto_generated|q_a\(2),
	datad => \table1|altsyncram_component|auto_generated|q_a\(1),
	combout => \decoder1_1|Mux0~0_combout\);

-- Location: LCFF_X12_Y15_N21
\decoder1_1|out_code[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \decoder1_1|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder1_1|out_code\(6));

-- Location: LCCOMB_X14_Y15_N0
\decoder1_2|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder1_2|Mux6~0_combout\ = (\table1|altsyncram_component|auto_generated|q_a\(5) & (((\table1|altsyncram_component|auto_generated|q_a\(7))))) # (!\table1|altsyncram_component|auto_generated|q_a\(5) & (\table1|altsyncram_component|auto_generated|q_a\(6) 
-- $ (((\table1|altsyncram_component|auto_generated|q_a\(4) & !\table1|altsyncram_component|auto_generated|q_a\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \table1|altsyncram_component|auto_generated|q_a\(6),
	datab => \table1|altsyncram_component|auto_generated|q_a\(4),
	datac => \table1|altsyncram_component|auto_generated|q_a\(5),
	datad => \table1|altsyncram_component|auto_generated|q_a\(7),
	combout => \decoder1_2|Mux6~0_combout\);

-- Location: LCFF_X14_Y15_N1
\decoder1_2|out_code[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \decoder1_2|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder1_2|out_code\(0));

-- Location: LCCOMB_X14_Y15_N6
\decoder1_2|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder1_2|Mux5~0_combout\ = (\table1|altsyncram_component|auto_generated|q_a\(7) & (((\table1|altsyncram_component|auto_generated|q_a\(5)) # (\table1|altsyncram_component|auto_generated|q_a\(6))))) # (!\table1|altsyncram_component|auto_generated|q_a\(7) 
-- & (\table1|altsyncram_component|auto_generated|q_a\(6) & (\table1|altsyncram_component|auto_generated|q_a\(4) $ (\table1|altsyncram_component|auto_generated|q_a\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \table1|altsyncram_component|auto_generated|q_a\(4),
	datab => \table1|altsyncram_component|auto_generated|q_a\(7),
	datac => \table1|altsyncram_component|auto_generated|q_a\(5),
	datad => \table1|altsyncram_component|auto_generated|q_a\(6),
	combout => \decoder1_2|Mux5~0_combout\);

-- Location: LCFF_X14_Y15_N7
\decoder1_2|out_code[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \decoder1_2|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder1_2|out_code\(1));

-- Location: LCCOMB_X14_Y15_N8
\decoder1_2|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder1_2|Mux4~0_combout\ = (\table1|altsyncram_component|auto_generated|q_a\(6) & (((\table1|altsyncram_component|auto_generated|q_a\(7))))) # (!\table1|altsyncram_component|auto_generated|q_a\(6) & (\table1|altsyncram_component|auto_generated|q_a\(5) 
-- & ((\table1|altsyncram_component|auto_generated|q_a\(7)) # (!\table1|altsyncram_component|auto_generated|q_a\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \table1|altsyncram_component|auto_generated|q_a\(6),
	datab => \table1|altsyncram_component|auto_generated|q_a\(4),
	datac => \table1|altsyncram_component|auto_generated|q_a\(5),
	datad => \table1|altsyncram_component|auto_generated|q_a\(7),
	combout => \decoder1_2|Mux4~0_combout\);

-- Location: LCFF_X14_Y15_N9
\decoder1_2|out_code[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \decoder1_2|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder1_2|out_code\(2));

-- Location: LCCOMB_X14_Y15_N2
\decoder1_2|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder1_2|Mux3~0_combout\ = (\table1|altsyncram_component|auto_generated|q_a\(5) & ((\table1|altsyncram_component|auto_generated|q_a\(7)) # ((\table1|altsyncram_component|auto_generated|q_a\(4) & \table1|altsyncram_component|auto_generated|q_a\(6))))) # 
-- (!\table1|altsyncram_component|auto_generated|q_a\(5) & (\table1|altsyncram_component|auto_generated|q_a\(6) $ (((\table1|altsyncram_component|auto_generated|q_a\(4) & !\table1|altsyncram_component|auto_generated|q_a\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110111000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \table1|altsyncram_component|auto_generated|q_a\(4),
	datab => \table1|altsyncram_component|auto_generated|q_a\(7),
	datac => \table1|altsyncram_component|auto_generated|q_a\(5),
	datad => \table1|altsyncram_component|auto_generated|q_a\(6),
	combout => \decoder1_2|Mux3~0_combout\);

-- Location: LCFF_X14_Y15_N3
\decoder1_2|out_code[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \decoder1_2|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder1_2|out_code\(3));

-- Location: LCCOMB_X14_Y15_N4
\decoder1_2|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder1_2|Mux2~0_combout\ = (\table1|altsyncram_component|auto_generated|q_a\(4)) # ((\table1|altsyncram_component|auto_generated|q_a\(5) & ((\table1|altsyncram_component|auto_generated|q_a\(7)))) # (!\table1|altsyncram_component|auto_generated|q_a\(5) 
-- & (\table1|altsyncram_component|auto_generated|q_a\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \table1|altsyncram_component|auto_generated|q_a\(6),
	datab => \table1|altsyncram_component|auto_generated|q_a\(4),
	datac => \table1|altsyncram_component|auto_generated|q_a\(5),
	datad => \table1|altsyncram_component|auto_generated|q_a\(7),
	combout => \decoder1_2|Mux2~0_combout\);

-- Location: LCFF_X14_Y15_N5
\decoder1_2|out_code[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \decoder1_2|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder1_2|out_code\(4));

-- Location: LCCOMB_X14_Y15_N10
\decoder1_2|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder1_2|Mux1~0_combout\ = (\table1|altsyncram_component|auto_generated|q_a\(6) & ((\table1|altsyncram_component|auto_generated|q_a\(7)) # ((\table1|altsyncram_component|auto_generated|q_a\(4) & \table1|altsyncram_component|auto_generated|q_a\(5))))) # 
-- (!\table1|altsyncram_component|auto_generated|q_a\(6) & ((\table1|altsyncram_component|auto_generated|q_a\(5)) # ((\table1|altsyncram_component|auto_generated|q_a\(4) & !\table1|altsyncram_component|auto_generated|q_a\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \table1|altsyncram_component|auto_generated|q_a\(6),
	datab => \table1|altsyncram_component|auto_generated|q_a\(4),
	datac => \table1|altsyncram_component|auto_generated|q_a\(5),
	datad => \table1|altsyncram_component|auto_generated|q_a\(7),
	combout => \decoder1_2|Mux1~0_combout\);

-- Location: LCFF_X14_Y15_N11
\decoder1_2|out_code[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \decoder1_2|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder1_2|out_code\(5));

-- Location: LCCOMB_X14_Y15_N12
\decoder1_2|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder1_2|Mux0~0_combout\ = (\table1|altsyncram_component|auto_generated|q_a\(6) & ((\table1|altsyncram_component|auto_generated|q_a\(7)) # ((\table1|altsyncram_component|auto_generated|q_a\(4) & \table1|altsyncram_component|auto_generated|q_a\(5))))) # 
-- (!\table1|altsyncram_component|auto_generated|q_a\(6) & ((\table1|altsyncram_component|auto_generated|q_a\(5) $ (!\table1|altsyncram_component|auto_generated|q_a\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \table1|altsyncram_component|auto_generated|q_a\(6),
	datab => \table1|altsyncram_component|auto_generated|q_a\(4),
	datac => \table1|altsyncram_component|auto_generated|q_a\(5),
	datad => \table1|altsyncram_component|auto_generated|q_a\(7),
	combout => \decoder1_2|Mux0~0_combout\);

-- Location: LCFF_X14_Y15_N13
\decoder1_2|out_code[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \decoder1_2|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder1_2|out_code\(6));

-- Location: PIN_N26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\sw[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_sw(1));

-- Location: PIN_Y18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ledg[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ledg(7));

-- Location: PIN_Y12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ledg[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \add_sub1|overflow~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ledg(8));

-- Location: PIN_AB23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex2[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \decoder3_1|out_code\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex2(0));

-- Location: PIN_V22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex2[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \decoder3_1|out_code\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex2(1));

-- Location: PIN_AC25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex2[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \decoder3_1|out_code\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex2(2));

-- Location: PIN_AC26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex2[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \decoder3_1|out_code\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex2(3));

-- Location: PIN_AB26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex2[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \decoder3_1|out_code\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex2(4));

-- Location: PIN_AB25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex2[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \decoder3_1|out_code\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex2(5));

-- Location: PIN_Y24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex2[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \decoder3_1|out_code\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex2(6));

-- Location: PIN_Y23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex3[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \decoder3_2|out_code\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex3(0));

-- Location: PIN_AA25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex3[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \decoder3_2|out_code\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex3(1));

-- Location: PIN_AA26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex3[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \decoder3_2|out_code\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex3(2));

-- Location: PIN_Y26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex3[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \decoder3_2|out_code\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex3(3));

-- Location: PIN_Y25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex3[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \decoder3_2|out_code\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex3(4));

-- Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex3[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \decoder3_2|out_code\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex3(5));

-- Location: PIN_W24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex3[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \decoder3_2|out_code\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex3(6));

-- Location: PIN_U9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex4[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \decoder2_1|out_code\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex4(0));

-- Location: PIN_U1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex4[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \decoder2_1|out_code\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex4(1));

-- Location: PIN_U2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex4[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \decoder2_1|out_code\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex4(2));

-- Location: PIN_T4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex4[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \decoder2_1|out_code\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex4(3));

-- Location: PIN_R7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex4[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \decoder2_1|out_code\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex4(4));

-- Location: PIN_R6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex4[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \decoder2_1|out_code\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex4(5));

-- Location: PIN_T3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex4[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \decoder2_1|out_code\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex4(6));

-- Location: PIN_T2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex5[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \decoder2_2|out_code\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex5(0));

-- Location: PIN_P6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex5[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \decoder2_2|out_code\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex5(1));

-- Location: PIN_P7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex5[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \decoder2_2|out_code\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex5(2));

-- Location: PIN_T9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex5[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \decoder2_2|out_code\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex5(3));

-- Location: PIN_R5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex5[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \decoder2_2|out_code\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex5(4));

-- Location: PIN_R4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex5[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \decoder2_2|out_code\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex5(5));

-- Location: PIN_R3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex5[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \decoder2_2|out_code\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex5(6));

-- Location: PIN_R2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex6[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \decoder1_1|out_code\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex6(0));

-- Location: PIN_P4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex6[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \decoder1_1|out_code\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex6(1));

-- Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex6[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \decoder1_1|out_code\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex6(2));

-- Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex6[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \decoder1_1|out_code\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex6(3));

-- Location: PIN_M3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex6[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \decoder1_1|out_code\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex6(4));

-- Location: PIN_M5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex6[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \decoder1_1|out_code\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex6(5));

-- Location: PIN_M4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex6[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \decoder1_1|out_code\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex6(6));

-- Location: PIN_L3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex7[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \decoder1_2|out_code\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex7(0));

-- Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex7[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \decoder1_2|out_code\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex7(1));

-- Location: PIN_L9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex7[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \decoder1_2|out_code\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex7(2));

-- Location: PIN_L6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex7[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \decoder1_2|out_code\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex7(3));

-- Location: PIN_L7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex7[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \decoder1_2|out_code\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex7(4));

-- Location: PIN_P9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex7[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \decoder1_2|out_code\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex7(5));

-- Location: PIN_N9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex7[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \decoder1_2|out_code\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex7(6));
END structure;


