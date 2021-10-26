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

-- DATE "10/25/2021 20:19:32"

-- 
-- Device: Altera EP2C35F672C6 Package FBGA672
-- 

-- 
-- This VHDL file should be used for Active-HDL (VHDL) only
-- 

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

PACKAGE sum_top_data_type IS

TYPE digits_3_0_type IS ARRAY (3 DOWNTO 0) OF std_logic;
TYPE digits_3_0_0_1_type IS ARRAY (0 TO 1) OF digits_3_0_type;
SUBTYPE digits_type IS digits_3_0_0_1_type;

END sum_top_data_type;

LIBRARY CYCLONEII;
LIBRARY IEEE;
LIBRARY WORK;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;
USE WORK.SUM_TOP_DATA_TYPE.ALL;

ENTITY 	sum_top IS
    PORT (
	CLOCK_50 : IN std_logic;
	KEY : IN std_logic_vector(0 DOWNTO 0);
	SW : IN std_logic_vector(2 DOWNTO 0);
	LEDG : BUFFER std_logic_vector(1 DOWNTO 0);
	digits : OUT digits_type
	);
END sum_top;

-- Design Ports Information
-- LEDG[0]	=>  Location: PIN_AE22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG[1]	=>  Location: PIN_AF22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- digits[1][0]	=>  Location: PIN_L6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- digits[1][1]	=>  Location: PIN_L7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- digits[1][2]	=>  Location: PIN_K1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- digits[1][3]	=>  Location: PIN_P9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- digits[0][0]	=>  Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- digits[0][1]	=>  Location: PIN_N9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- digits[0][2]	=>  Location: PIN_L4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- digits[0][3]	=>  Location: PIN_K2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SW[0]	=>  Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_P25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_N26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF sum_top IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_KEY : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_SW : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_LEDG : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_digits : digits_type;
SIGNAL \CLOCK_50~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \sum1|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \sum1|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \sum1|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \sum1|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \sum1|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \sum1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \sum1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \sum1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \sum1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \sum1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ : std_logic;
SIGNAL \sum1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \sum1|Div0|auto_generated|divider|divider|StageOut[18]~26_combout\ : std_logic;
SIGNAL \sum1|Div0|auto_generated|divider|divider|StageOut[17]~28_combout\ : std_logic;
SIGNAL \sum1|Div0|auto_generated|divider|divider|StageOut[16]~31_combout\ : std_logic;
SIGNAL \sum1|Div0|auto_generated|divider|divider|StageOut[15]~32_combout\ : std_logic;
SIGNAL \sum1|Div0|auto_generated|divider|divider|StageOut[23]~34_combout\ : std_logic;
SIGNAL \sum1|Div0|auto_generated|divider|divider|StageOut[21]~37_combout\ : std_logic;
SIGNAL \sum1|Div0|auto_generated|divider|divider|StageOut[20]~39_combout\ : std_logic;
SIGNAL \sum1|Div0|auto_generated|divider|divider|StageOut[28]~40_combout\ : std_logic;
SIGNAL \sum1|Div0|auto_generated|divider|divider|StageOut[27]~41_combout\ : std_logic;
SIGNAL \sum1|Div0|auto_generated|divider|divider|StageOut[26]~42_combout\ : std_logic;
SIGNAL \sum1|Div0|auto_generated|divider|divider|StageOut[25]~45_combout\ : std_logic;
SIGNAL \sum1|Mod0|auto_generated|divider|divider|StageOut[24]~38_combout\ : std_logic;
SIGNAL \sum1|Mod0|auto_generated|divider|divider|StageOut[23]~41_combout\ : std_logic;
SIGNAL \sum1|Mod0|auto_generated|divider|divider|StageOut[22]~43_combout\ : std_logic;
SIGNAL \sum1|Mod0|auto_generated|divider|divider|StageOut[21]~45_combout\ : std_logic;
SIGNAL \sum1|Mod0|auto_generated|divider|divider|StageOut[32]~46_combout\ : std_logic;
SIGNAL \sum1|Mod0|auto_generated|divider|divider|StageOut[31]~47_combout\ : std_logic;
SIGNAL \sum1|Mod0|auto_generated|divider|divider|StageOut[30]~48_combout\ : std_logic;
SIGNAL \sum1|Mod0|auto_generated|divider|divider|StageOut[29]~49_combout\ : std_logic;
SIGNAL \sum1|Mod0|auto_generated|divider|divider|StageOut[28]~52_combout\ : std_logic;
SIGNAL \sum1|Mod0|auto_generated|divider|divider|StageOut[35]~53_combout\ : std_logic;
SIGNAL \sum1|Mod0|auto_generated|divider|divider|StageOut[40]~55_combout\ : std_logic;
SIGNAL \sum1|Mod0|auto_generated|divider|divider|StageOut[39]~56_combout\ : std_logic;
SIGNAL \sum1|Mod0|auto_generated|divider|divider|StageOut[37]~58_combout\ : std_logic;
SIGNAL \sum1|Mod0|auto_generated|divider|divider|StageOut[38]~66_combout\ : std_logic;
SIGNAL \CLOCK_50~combout\ : std_logic;
SIGNAL \CLOCK_50~clkctrl_outclk\ : std_logic;
SIGNAL \sum1|c_out~0_combout\ : std_logic;
SIGNAL \sum1|c_out~regout\ : std_logic;
SIGNAL \sum1|s~0_combout\ : std_logic;
SIGNAL \sum1|s~regout\ : std_logic;
SIGNAL \sum1|cnt[0]~18_combout\ : std_logic;
SIGNAL \sum1|cnt[1]~7\ : std_logic;
SIGNAL \sum1|cnt[2]~9\ : std_logic;
SIGNAL \sum1|cnt[3]~10_combout\ : std_logic;
SIGNAL \sum1|cnt[3]~11\ : std_logic;
SIGNAL \sum1|cnt[4]~12_combout\ : std_logic;
SIGNAL \sum1|cnt[4]~13\ : std_logic;
SIGNAL \sum1|cnt[5]~14_combout\ : std_logic;
SIGNAL \sum1|cnt[5]~15\ : std_logic;
SIGNAL \sum1|cnt[6]~16_combout\ : std_logic;
SIGNAL \sum1|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \sum1|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \sum1|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \sum1|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \sum1|Div0|auto_generated|divider|divider|StageOut[16]~30_combout\ : std_logic;
SIGNAL \sum1|Div0|auto_generated|divider|divider|StageOut[15]~33_combout\ : std_logic;
SIGNAL \sum1|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \sum1|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \sum1|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \sum1|Div0|auto_generated|divider|divider|StageOut[18]~27_combout\ : std_logic;
SIGNAL \sum1|Div0|auto_generated|divider|divider|StageOut[17]~29_combout\ : std_logic;
SIGNAL \sum1|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \sum1|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \sum1|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ : std_logic;
SIGNAL \sum1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \sum1|Div0|auto_generated|divider|divider|StageOut[22]~48_combout\ : std_logic;
SIGNAL \sum1|Div0|auto_generated|divider|divider|StageOut[23]~47_combout\ : std_logic;
SIGNAL \sum1|Div0|auto_generated|divider|divider|StageOut[22]~35_combout\ : std_logic;
SIGNAL \sum1|Div0|auto_generated|divider|divider|StageOut[21]~36_combout\ : std_logic;
SIGNAL \sum1|cnt[2]~8_combout\ : std_logic;
SIGNAL \sum1|Div0|auto_generated|divider|divider|StageOut[20]~38_combout\ : std_logic;
SIGNAL \sum1|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \sum1|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \sum1|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \sum1|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ : std_logic;
SIGNAL \sum1|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \sum1|Div0|auto_generated|divider|divider|StageOut[28]~46_combout\ : std_logic;
SIGNAL \sum1|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \sum1|Div0|auto_generated|divider|divider|StageOut[27]~49_combout\ : std_logic;
SIGNAL \sum1|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \sum1|Div0|auto_generated|divider|divider|StageOut[26]~43_combout\ : std_logic;
SIGNAL \sum1|cnt[1]~6_combout\ : std_logic;
SIGNAL \sum1|Div0|auto_generated|divider|divider|StageOut[25]~44_combout\ : std_logic;
SIGNAL \sum1|digits[1][0]~2_cout\ : std_logic;
SIGNAL \sum1|digits[1][0]~4_cout\ : std_logic;
SIGNAL \sum1|digits[1][0]~6_cout\ : std_logic;
SIGNAL \sum1|digits[1][0]~8_cout\ : std_logic;
SIGNAL \sum1|digits[1][0]~9_combout\ : std_logic;
SIGNAL \sum1|digits[1][0]~regout\ : std_logic;
SIGNAL \sum1|digits[1][1]~11_combout\ : std_logic;
SIGNAL \sum1|digits[1][1]~regout\ : std_logic;
SIGNAL \sum1|digits[1][2]~12_combout\ : std_logic;
SIGNAL \sum1|digits[1][2]~regout\ : std_logic;
SIGNAL \sum1|digits[1][3]~13_combout\ : std_logic;
SIGNAL \sum1|digits[1][3]~regout\ : std_logic;
SIGNAL \sum1|digits[0][0]~feeder_combout\ : std_logic;
SIGNAL \sum1|digits[0][0]~regout\ : std_logic;
SIGNAL \sum1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \sum1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \sum1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \sum1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \sum1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \sum1|Mod0|auto_generated|divider|divider|StageOut[24]~39_combout\ : std_logic;
SIGNAL \sum1|Mod0|auto_generated|divider|divider|StageOut[23]~40_combout\ : std_logic;
SIGNAL \sum1|Mod0|auto_generated|divider|divider|StageOut[22]~42_combout\ : std_logic;
SIGNAL \sum1|Mod0|auto_generated|divider|divider|StageOut[21]~44_combout\ : std_logic;
SIGNAL \sum1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \sum1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \sum1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \sum1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : std_logic;
SIGNAL \sum1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \sum1|Mod0|auto_generated|divider|divider|StageOut[32]~67_combout\ : std_logic;
SIGNAL \sum1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \sum1|Mod0|auto_generated|divider|divider|StageOut[31]~68_combout\ : std_logic;
SIGNAL \sum1|Mod0|auto_generated|divider|divider|StageOut[30]~69_combout\ : std_logic;
SIGNAL \sum1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \sum1|Mod0|auto_generated|divider|divider|StageOut[29]~50_combout\ : std_logic;
SIGNAL \sum1|Mod0|auto_generated|divider|divider|StageOut[28]~51_combout\ : std_logic;
SIGNAL \sum1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \sum1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \sum1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \sum1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : std_logic;
SIGNAL \sum1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\ : std_logic;
SIGNAL \sum1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ : std_logic;
SIGNAL \sum1|Mod0|auto_generated|divider|divider|StageOut[35]~54_combout\ : std_logic;
SIGNAL \sum1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ : std_logic;
SIGNAL \sum1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ : std_logic;
SIGNAL \sum1|Mod0|auto_generated|divider|divider|StageOut[40]~64_combout\ : std_logic;
SIGNAL \sum1|Mod0|auto_generated|divider|divider|StageOut[39]~65_combout\ : std_logic;
SIGNAL \sum1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \sum1|Mod0|auto_generated|divider|divider|StageOut[38]~57_combout\ : std_logic;
SIGNAL \sum1|Mod0|auto_generated|divider|divider|StageOut[37]~70_combout\ : std_logic;
SIGNAL \sum1|Mod0|auto_generated|divider|divider|StageOut[36]~59_combout\ : std_logic;
SIGNAL \sum1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ : std_logic;
SIGNAL \sum1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ : std_logic;
SIGNAL \sum1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ : std_logic;
SIGNAL \sum1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ : std_logic;
SIGNAL \sum1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9_cout\ : std_logic;
SIGNAL \sum1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~11_cout\ : std_logic;
SIGNAL \sum1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ : std_logic;
SIGNAL \sum1|Mod0|auto_generated|divider|divider|StageOut[43]~61_combout\ : std_logic;
SIGNAL \sum1|digits[0][1]~regout\ : std_logic;
SIGNAL \sum1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ : std_logic;
SIGNAL \sum1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \sum1|Mod0|auto_generated|divider|divider|StageOut[36]~60_combout\ : std_logic;
SIGNAL \sum1|Mod0|auto_generated|divider|divider|StageOut[44]~62_combout\ : std_logic;
SIGNAL \sum1|digits[0][2]~regout\ : std_logic;
SIGNAL \sum1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ : std_logic;
SIGNAL \sum1|Mod0|auto_generated|divider|divider|StageOut[45]~63_combout\ : std_logic;
SIGNAL \sum1|digits[0][3]~regout\ : std_logic;
SIGNAL \sum1|cnt\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \SW~combout\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \KEY~combout\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ALT_INV_KEY~combout\ : std_logic_vector(0 DOWNTO 0);

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
ww_SW <= SW;
LEDG <= ww_LEDG;
digits <= ww_digits;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \CLOCK_50~combout\);
\ALT_INV_KEY~combout\(0) <= NOT \KEY~combout\(0);

-- Location: LCCOMB_X15_Y25_N4
\sum1|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \sum1|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = \sum1|cnt\(4) $ (VCC)
-- \sum1|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY(\sum1|cnt\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sum1|cnt\(4),
	datad => VCC,
	combout => \sum1|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \sum1|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X15_Y25_N6
\sum1|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \sum1|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (\sum1|cnt\(5) & (\sum1|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC)) # (!\sum1|cnt\(5) & 
-- (!\sum1|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))
-- \sum1|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!\sum1|cnt\(5) & !\sum1|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sum1|cnt\(5),
	datad => VCC,
	cin => \sum1|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \sum1|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \sum1|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X15_Y25_N22
\sum1|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \sum1|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\sum1|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & (((\sum1|Div0|auto_generated|divider|divider|StageOut[17]~28_combout\) # 
-- (\sum1|Div0|auto_generated|divider|divider|StageOut[17]~29_combout\)))) # (!\sum1|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((((\sum1|Div0|auto_generated|divider|divider|StageOut[17]~28_combout\) # 
-- (\sum1|Div0|auto_generated|divider|divider|StageOut[17]~29_combout\)))))
-- \sum1|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\sum1|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((\sum1|Div0|auto_generated|divider|divider|StageOut[17]~28_combout\) # 
-- (\sum1|Div0|auto_generated|divider|divider|StageOut[17]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sum1|Div0|auto_generated|divider|divider|StageOut[17]~28_combout\,
	datab => \sum1|Div0|auto_generated|divider|divider|StageOut[17]~29_combout\,
	datad => VCC,
	cin => \sum1|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \sum1|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \sum1|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X12_Y25_N4
\sum1|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \sum1|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\sum1|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (((\sum1|Div0|auto_generated|divider|divider|StageOut[21]~37_combout\) # 
-- (\sum1|Div0|auto_generated|divider|divider|StageOut[21]~36_combout\)))) # (!\sum1|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (!\sum1|Div0|auto_generated|divider|divider|StageOut[21]~37_combout\ & 
-- (!\sum1|Div0|auto_generated|divider|divider|StageOut[21]~36_combout\)))
-- \sum1|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!\sum1|Div0|auto_generated|divider|divider|StageOut[21]~37_combout\ & (!\sum1|Div0|auto_generated|divider|divider|StageOut[21]~36_combout\ & 
-- !\sum1|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sum1|Div0|auto_generated|divider|divider|StageOut[21]~37_combout\,
	datab => \sum1|Div0|auto_generated|divider|divider|StageOut[21]~36_combout\,
	datad => VCC,
	cin => \sum1|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \sum1|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \sum1|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X12_Y25_N6
\sum1|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \sum1|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\sum1|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & (((\sum1|Div0|auto_generated|divider|divider|StageOut[22]~48_combout\) # 
-- (\sum1|Div0|auto_generated|divider|divider|StageOut[22]~35_combout\)))) # (!\sum1|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((((\sum1|Div0|auto_generated|divider|divider|StageOut[22]~48_combout\) # 
-- (\sum1|Div0|auto_generated|divider|divider|StageOut[22]~35_combout\)))))
-- \sum1|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((!\sum1|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((\sum1|Div0|auto_generated|divider|divider|StageOut[22]~48_combout\) # 
-- (\sum1|Div0|auto_generated|divider|divider|StageOut[22]~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sum1|Div0|auto_generated|divider|divider|StageOut[22]~48_combout\,
	datab => \sum1|Div0|auto_generated|divider|divider|StageOut[22]~35_combout\,
	datad => VCC,
	cin => \sum1|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \sum1|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \sum1|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X19_Y25_N6
\sum1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \sum1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = \sum1|cnt\(4) $ (VCC)
-- \sum1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY(\sum1|cnt\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sum1|cnt\(4),
	datad => VCC,
	combout => \sum1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \sum1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X18_Y25_N24
\sum1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \sum1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\sum1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (((\sum1|Mod0|auto_generated|divider|divider|StageOut[22]~43_combout\) # 
-- (\sum1|Mod0|auto_generated|divider|divider|StageOut[22]~42_combout\)))) # (!\sum1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (!\sum1|Mod0|auto_generated|divider|divider|StageOut[22]~43_combout\ & 
-- (!\sum1|Mod0|auto_generated|divider|divider|StageOut[22]~42_combout\)))
-- \sum1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\sum1|Mod0|auto_generated|divider|divider|StageOut[22]~43_combout\ & (!\sum1|Mod0|auto_generated|divider|divider|StageOut[22]~42_combout\ & 
-- !\sum1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sum1|Mod0|auto_generated|divider|divider|StageOut[22]~43_combout\,
	datab => \sum1|Mod0|auto_generated|divider|divider|StageOut[22]~42_combout\,
	datad => VCC,
	cin => \sum1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \sum1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \sum1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X18_Y25_N26
\sum1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \sum1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\sum1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & (((\sum1|Mod0|auto_generated|divider|divider|StageOut[23]~41_combout\) # 
-- (\sum1|Mod0|auto_generated|divider|divider|StageOut[23]~40_combout\)))) # (!\sum1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((((\sum1|Mod0|auto_generated|divider|divider|StageOut[23]~41_combout\) # 
-- (\sum1|Mod0|auto_generated|divider|divider|StageOut[23]~40_combout\)))))
-- \sum1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\sum1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((\sum1|Mod0|auto_generated|divider|divider|StageOut[23]~41_combout\) # 
-- (\sum1|Mod0|auto_generated|divider|divider|StageOut[23]~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sum1|Mod0|auto_generated|divider|divider|StageOut[23]~41_combout\,
	datab => \sum1|Mod0|auto_generated|divider|divider|StageOut[23]~40_combout\,
	datad => VCC,
	cin => \sum1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \sum1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \sum1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X17_Y25_N8
\sum1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \sum1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\sum1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (((\sum1|Mod0|auto_generated|divider|divider|StageOut[29]~49_combout\) # 
-- (\sum1|Mod0|auto_generated|divider|divider|StageOut[29]~50_combout\)))) # (!\sum1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (!\sum1|Mod0|auto_generated|divider|divider|StageOut[29]~49_combout\ & 
-- (!\sum1|Mod0|auto_generated|divider|divider|StageOut[29]~50_combout\)))
-- \sum1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!\sum1|Mod0|auto_generated|divider|divider|StageOut[29]~49_combout\ & (!\sum1|Mod0|auto_generated|divider|divider|StageOut[29]~50_combout\ & 
-- !\sum1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sum1|Mod0|auto_generated|divider|divider|StageOut[29]~49_combout\,
	datab => \sum1|Mod0|auto_generated|divider|divider|StageOut[29]~50_combout\,
	datad => VCC,
	cin => \sum1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \sum1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \sum1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X17_Y25_N12
\sum1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \sum1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ = (\sum1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ & (((\sum1|Mod0|auto_generated|divider|divider|StageOut[31]~47_combout\) # 
-- (\sum1|Mod0|auto_generated|divider|divider|StageOut[31]~68_combout\)))) # (!\sum1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ & (!\sum1|Mod0|auto_generated|divider|divider|StageOut[31]~47_combout\ & 
-- (!\sum1|Mod0|auto_generated|divider|divider|StageOut[31]~68_combout\)))
-- \sum1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ = CARRY((!\sum1|Mod0|auto_generated|divider|divider|StageOut[31]~47_combout\ & (!\sum1|Mod0|auto_generated|divider|divider|StageOut[31]~68_combout\ & 
-- !\sum1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sum1|Mod0|auto_generated|divider|divider|StageOut[31]~47_combout\,
	datab => \sum1|Mod0|auto_generated|divider|divider|StageOut[31]~68_combout\,
	datad => VCC,
	cin => \sum1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	combout => \sum1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	cout => \sum1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\);

-- Location: LCCOMB_X17_Y25_N14
\sum1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \sum1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ = (\sum1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ & ((((\sum1|Mod0|auto_generated|divider|divider|StageOut[32]~46_combout\) # 
-- (\sum1|Mod0|auto_generated|divider|divider|StageOut[32]~67_combout\))))) # (!\sum1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ & ((\sum1|Mod0|auto_generated|divider|divider|StageOut[32]~46_combout\) # 
-- ((\sum1|Mod0|auto_generated|divider|divider|StageOut[32]~67_combout\) # (GND))))
-- \sum1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\ = CARRY((\sum1|Mod0|auto_generated|divider|divider|StageOut[32]~46_combout\) # ((\sum1|Mod0|auto_generated|divider|divider|StageOut[32]~67_combout\) # 
-- (!\sum1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sum1|Mod0|auto_generated|divider|divider|StageOut[32]~46_combout\,
	datab => \sum1|Mod0|auto_generated|divider|divider|StageOut[32]~67_combout\,
	datad => VCC,
	cin => \sum1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\,
	combout => \sum1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	cout => \sum1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\);

-- Location: LCCOMB_X15_Y25_N28
\sum1|Div0|auto_generated|divider|divider|StageOut[18]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \sum1|Div0|auto_generated|divider|divider|StageOut[18]~26_combout\ = (\sum1|cnt\(6) & \sum1|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sum1|cnt\(6),
	datad => \sum1|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \sum1|Div0|auto_generated|divider|divider|StageOut[18]~26_combout\);

-- Location: LCCOMB_X15_Y25_N12
\sum1|Div0|auto_generated|divider|divider|StageOut[17]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \sum1|Div0|auto_generated|divider|divider|StageOut[17]~28_combout\ = (\sum1|cnt\(5) & \sum1|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sum1|cnt\(5),
	datad => \sum1|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \sum1|Div0|auto_generated|divider|divider|StageOut[17]~28_combout\);

-- Location: LCCOMB_X15_Y25_N0
\sum1|Div0|auto_generated|divider|divider|StageOut[16]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \sum1|Div0|auto_generated|divider|divider|StageOut[16]~31_combout\ = (\sum1|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ & !\sum1|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sum1|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datad => \sum1|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \sum1|Div0|auto_generated|divider|divider|StageOut[16]~31_combout\);

-- Location: LCCOMB_X15_Y25_N16
\sum1|Div0|auto_generated|divider|divider|StageOut[15]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \sum1|Div0|auto_generated|divider|divider|StageOut[15]~32_combout\ = (\sum1|cnt\(3) & \sum1|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sum1|cnt\(3),
	datad => \sum1|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \sum1|Div0|auto_generated|divider|divider|StageOut[15]~32_combout\);

-- Location: LCCOMB_X12_Y25_N12
\sum1|Div0|auto_generated|divider|divider|StageOut[23]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \sum1|Div0|auto_generated|divider|divider|StageOut[23]~34_combout\ = (\sum1|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ & !\sum1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sum1|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datad => \sum1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \sum1|Div0|auto_generated|divider|divider|StageOut[23]~34_combout\);

-- Location: LCCOMB_X12_Y25_N24
\sum1|Div0|auto_generated|divider|divider|StageOut[21]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \sum1|Div0|auto_generated|divider|divider|StageOut[21]~37_combout\ = (\sum1|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ & !\sum1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sum1|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datad => \sum1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \sum1|Div0|auto_generated|divider|divider|StageOut[21]~37_combout\);

-- Location: LCCOMB_X12_Y25_N16
\sum1|Div0|auto_generated|divider|divider|StageOut[20]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \sum1|Div0|auto_generated|divider|divider|StageOut[20]~39_combout\ = (\sum1|cnt\(2) & !\sum1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sum1|cnt\(2),
	datad => \sum1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \sum1|Div0|auto_generated|divider|divider|StageOut[20]~39_combout\);

-- Location: LCCOMB_X11_Y25_N10
\sum1|Div0|auto_generated|divider|divider|StageOut[28]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \sum1|Div0|auto_generated|divider|divider|StageOut[28]~40_combout\ = (!\sum1|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \sum1|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sum1|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \sum1|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	combout => \sum1|Div0|auto_generated|divider|divider|StageOut[28]~40_combout\);

-- Location: LCCOMB_X11_Y25_N12
\sum1|Div0|auto_generated|divider|divider|StageOut[27]~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \sum1|Div0|auto_generated|divider|divider|StageOut[27]~41_combout\ = (!\sum1|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \sum1|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sum1|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \sum1|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	combout => \sum1|Div0|auto_generated|divider|divider|StageOut[27]~41_combout\);

-- Location: LCCOMB_X12_Y25_N26
\sum1|Div0|auto_generated|divider|divider|StageOut[26]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \sum1|Div0|auto_generated|divider|divider|StageOut[26]~42_combout\ = (\sum1|cnt\(2) & \sum1|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sum1|cnt\(2),
	datad => \sum1|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \sum1|Div0|auto_generated|divider|divider|StageOut[26]~42_combout\);

-- Location: LCCOMB_X11_Y25_N6
\sum1|Div0|auto_generated|divider|divider|StageOut[25]~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \sum1|Div0|auto_generated|divider|divider|StageOut[25]~45_combout\ = (!\sum1|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \sum1|cnt\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sum1|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \sum1|cnt\(1),
	combout => \sum1|Div0|auto_generated|divider|divider|StageOut[25]~45_combout\);

-- Location: LCCOMB_X19_Y25_N4
\sum1|Mod0|auto_generated|divider|divider|StageOut[24]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \sum1|Mod0|auto_generated|divider|divider|StageOut[24]~38_combout\ = (\sum1|cnt\(6) & \sum1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sum1|cnt\(6),
	datad => \sum1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \sum1|Mod0|auto_generated|divider|divider|StageOut[24]~38_combout\);

-- Location: LCCOMB_X18_Y25_N16
\sum1|Mod0|auto_generated|divider|divider|StageOut[23]~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \sum1|Mod0|auto_generated|divider|divider|StageOut[23]~41_combout\ = (!\sum1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \sum1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sum1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \sum1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	combout => \sum1|Mod0|auto_generated|divider|divider|StageOut[23]~41_combout\);

-- Location: LCCOMB_X19_Y25_N16
\sum1|Mod0|auto_generated|divider|divider|StageOut[22]~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \sum1|Mod0|auto_generated|divider|divider|StageOut[22]~43_combout\ = (\sum1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ & !\sum1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sum1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datad => \sum1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \sum1|Mod0|auto_generated|divider|divider|StageOut[22]~43_combout\);

-- Location: LCCOMB_X18_Y25_N20
\sum1|Mod0|auto_generated|divider|divider|StageOut[21]~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \sum1|Mod0|auto_generated|divider|divider|StageOut[21]~45_combout\ = (!\sum1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \sum1|cnt\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sum1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \sum1|cnt\(3),
	combout => \sum1|Mod0|auto_generated|divider|divider|StageOut[21]~45_combout\);

-- Location: LCCOMB_X18_Y25_N2
\sum1|Mod0|auto_generated|divider|divider|StageOut[32]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \sum1|Mod0|auto_generated|divider|divider|StageOut[32]~46_combout\ = (!\sum1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \sum1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sum1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \sum1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	combout => \sum1|Mod0|auto_generated|divider|divider|StageOut[32]~46_combout\);

-- Location: LCCOMB_X18_Y25_N4
\sum1|Mod0|auto_generated|divider|divider|StageOut[31]~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \sum1|Mod0|auto_generated|divider|divider|StageOut[31]~47_combout\ = (\sum1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ & !\sum1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sum1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datad => \sum1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \sum1|Mod0|auto_generated|divider|divider|StageOut[31]~47_combout\);

-- Location: LCCOMB_X18_Y25_N6
\sum1|Mod0|auto_generated|divider|divider|StageOut[30]~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \sum1|Mod0|auto_generated|divider|divider|StageOut[30]~48_combout\ = (\sum1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & !\sum1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sum1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datad => \sum1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \sum1|Mod0|auto_generated|divider|divider|StageOut[30]~48_combout\);

-- Location: LCCOMB_X17_Y25_N20
\sum1|Mod0|auto_generated|divider|divider|StageOut[29]~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \sum1|Mod0|auto_generated|divider|divider|StageOut[29]~49_combout\ = (\sum1|cnt\(3) & \sum1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sum1|cnt\(3),
	datad => \sum1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \sum1|Mod0|auto_generated|divider|divider|StageOut[29]~49_combout\);

-- Location: LCCOMB_X17_Y25_N24
\sum1|Mod0|auto_generated|divider|divider|StageOut[28]~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \sum1|Mod0|auto_generated|divider|divider|StageOut[28]~52_combout\ = (\sum1|cnt\(2) & !\sum1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sum1|cnt\(2),
	datad => \sum1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \sum1|Mod0|auto_generated|divider|divider|StageOut[28]~52_combout\);

-- Location: LCCOMB_X16_Y25_N16
\sum1|Mod0|auto_generated|divider|divider|StageOut[35]~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \sum1|Mod0|auto_generated|divider|divider|StageOut[35]~53_combout\ = (\sum1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \sum1|cnt\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sum1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \sum1|cnt\(1),
	combout => \sum1|Mod0|auto_generated|divider|divider|StageOut[35]~53_combout\);

-- Location: LCCOMB_X16_Y25_N24
\sum1|Mod0|auto_generated|divider|divider|StageOut[40]~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \sum1|Mod0|auto_generated|divider|divider|StageOut[40]~55_combout\ = (\sum1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & !\sum1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sum1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \sum1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \sum1|Mod0|auto_generated|divider|divider|StageOut[40]~55_combout\);

-- Location: LCCOMB_X17_Y25_N26
\sum1|Mod0|auto_generated|divider|divider|StageOut[39]~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \sum1|Mod0|auto_generated|divider|divider|StageOut[39]~56_combout\ = (!\sum1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \sum1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sum1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \sum1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	combout => \sum1|Mod0|auto_generated|divider|divider|StageOut[39]~56_combout\);

-- Location: LCCOMB_X16_Y25_N20
\sum1|Mod0|auto_generated|divider|divider|StageOut[37]~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \sum1|Mod0|auto_generated|divider|divider|StageOut[37]~58_combout\ = (\sum1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ & !\sum1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sum1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datac => \sum1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \sum1|Mod0|auto_generated|divider|divider|StageOut[37]~58_combout\);

-- Location: LCCOMB_X17_Y25_N2
\sum1|Mod0|auto_generated|divider|divider|StageOut[38]~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \sum1|Mod0|auto_generated|divider|divider|StageOut[38]~66_combout\ = (\sum1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\sum1|Mod0|auto_generated|divider|divider|StageOut[30]~69_combout\) # 
-- ((!\sum1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \sum1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sum1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \sum1|Mod0|auto_generated|divider|divider|StageOut[30]~69_combout\,
	datac => \sum1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \sum1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	combout => \sum1|Mod0|auto_generated|divider|divider|StageOut[38]~66_combout\);

-- Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CLOCK_50~I\ : cycloneii_io
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
	padio => ww_CLOCK_50,
	combout => \CLOCK_50~combout\);

-- Location: CLKCTRL_G2
\CLOCK_50~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK_50~clkctrl_outclk\);

-- Location: PIN_N26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[1]~I\ : cycloneii_io
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
	padio => ww_SW(1),
	combout => \SW~combout\(1));

-- Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[0]~I\ : cycloneii_io
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
	padio => ww_SW(0),
	combout => \SW~combout\(0));

-- Location: PIN_P25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[2]~I\ : cycloneii_io
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
	padio => ww_SW(2),
	combout => \SW~combout\(2));

-- Location: LCCOMB_X64_Y19_N24
\sum1|c_out~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \sum1|c_out~0_combout\ = (\SW~combout\(1) & ((\SW~combout\(0)) # (\SW~combout\(2)))) # (!\SW~combout\(1) & (\SW~combout\(0) & \SW~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW~combout\(1),
	datac => \SW~combout\(0),
	datad => \SW~combout\(2),
	combout => \sum1|c_out~0_combout\);

-- Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\KEY[0]~I\ : cycloneii_io
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
	padio => ww_KEY(0),
	combout => \KEY~combout\(0));

-- Location: LCFF_X64_Y19_N25
\sum1|c_out\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \sum1|c_out~0_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sum1|c_out~regout\);

-- Location: LCCOMB_X64_Y19_N6
\sum1|s~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \sum1|s~0_combout\ = \SW~combout\(1) $ (\SW~combout\(0) $ (\SW~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW~combout\(1),
	datac => \SW~combout\(0),
	datad => \SW~combout\(2),
	combout => \sum1|s~0_combout\);

-- Location: LCFF_X64_Y19_N7
\sum1|s\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \sum1|s~0_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sum1|s~regout\);

-- Location: LCCOMB_X19_Y25_N2
\sum1|cnt[0]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \sum1|cnt[0]~18_combout\ = !\sum1|cnt\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sum1|cnt\(0),
	combout => \sum1|cnt[0]~18_combout\);

-- Location: LCFF_X19_Y25_N3
\sum1|cnt[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \sum1|cnt[0]~18_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sum1|cnt\(0));

-- Location: LCCOMB_X19_Y25_N18
\sum1|cnt[1]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \sum1|cnt[1]~6_combout\ = (\sum1|cnt\(1) & (\sum1|cnt\(0) $ (VCC))) # (!\sum1|cnt\(1) & (\sum1|cnt\(0) & VCC))
-- \sum1|cnt[1]~7\ = CARRY((\sum1|cnt\(1) & \sum1|cnt\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sum1|cnt\(1),
	datab => \sum1|cnt\(0),
	datad => VCC,
	combout => \sum1|cnt[1]~6_combout\,
	cout => \sum1|cnt[1]~7\);

-- Location: LCCOMB_X19_Y25_N20
\sum1|cnt[2]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \sum1|cnt[2]~8_combout\ = (\sum1|cnt\(2) & (!\sum1|cnt[1]~7\)) # (!\sum1|cnt\(2) & ((\sum1|cnt[1]~7\) # (GND)))
-- \sum1|cnt[2]~9\ = CARRY((!\sum1|cnt[1]~7\) # (!\sum1|cnt\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sum1|cnt\(2),
	datad => VCC,
	cin => \sum1|cnt[1]~7\,
	combout => \sum1|cnt[2]~8_combout\,
	cout => \sum1|cnt[2]~9\);

-- Location: LCCOMB_X19_Y25_N22
\sum1|cnt[3]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \sum1|cnt[3]~10_combout\ = (\sum1|cnt\(3) & (\sum1|cnt[2]~9\ $ (GND))) # (!\sum1|cnt\(3) & (!\sum1|cnt[2]~9\ & VCC))
-- \sum1|cnt[3]~11\ = CARRY((\sum1|cnt\(3) & !\sum1|cnt[2]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sum1|cnt\(3),
	datad => VCC,
	cin => \sum1|cnt[2]~9\,
	combout => \sum1|cnt[3]~10_combout\,
	cout => \sum1|cnt[3]~11\);

-- Location: LCFF_X19_Y25_N23
\sum1|cnt[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \sum1|cnt[3]~10_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sum1|cnt\(3));

-- Location: LCCOMB_X19_Y25_N24
\sum1|cnt[4]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \sum1|cnt[4]~12_combout\ = (\sum1|cnt\(4) & (!\sum1|cnt[3]~11\)) # (!\sum1|cnt\(4) & ((\sum1|cnt[3]~11\) # (GND)))
-- \sum1|cnt[4]~13\ = CARRY((!\sum1|cnt[3]~11\) # (!\sum1|cnt\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sum1|cnt\(4),
	datad => VCC,
	cin => \sum1|cnt[3]~11\,
	combout => \sum1|cnt[4]~12_combout\,
	cout => \sum1|cnt[4]~13\);

-- Location: LCFF_X19_Y25_N25
\sum1|cnt[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \sum1|cnt[4]~12_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sum1|cnt\(4));

-- Location: LCCOMB_X19_Y25_N26
\sum1|cnt[5]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \sum1|cnt[5]~14_combout\ = (\sum1|cnt\(5) & (\sum1|cnt[4]~13\ $ (GND))) # (!\sum1|cnt\(5) & (!\sum1|cnt[4]~13\ & VCC))
-- \sum1|cnt[5]~15\ = CARRY((\sum1|cnt\(5) & !\sum1|cnt[4]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sum1|cnt\(5),
	datad => VCC,
	cin => \sum1|cnt[4]~13\,
	combout => \sum1|cnt[5]~14_combout\,
	cout => \sum1|cnt[5]~15\);

-- Location: LCFF_X19_Y25_N27
\sum1|cnt[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \sum1|cnt[5]~14_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sum1|cnt\(5));

-- Location: LCCOMB_X19_Y25_N28
\sum1|cnt[6]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \sum1|cnt[6]~16_combout\ = \sum1|cnt\(6) $ (\sum1|cnt[5]~15\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sum1|cnt\(6),
	cin => \sum1|cnt[5]~15\,
	combout => \sum1|cnt[6]~16_combout\);

-- Location: LCFF_X19_Y25_N29
\sum1|cnt[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \sum1|cnt[6]~16_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sum1|cnt\(6));

-- Location: LCCOMB_X15_Y25_N8
\sum1|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \sum1|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (\sum1|cnt\(6) & (\sum1|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ $ (GND))) # (!\sum1|cnt\(6) & 
-- (!\sum1|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & VCC))
-- \sum1|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((\sum1|cnt\(6) & !\sum1|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sum1|cnt\(6),
	datad => VCC,
	cin => \sum1|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \sum1|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \sum1|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X15_Y25_N10
\sum1|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \sum1|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\sum1|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \sum1|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \sum1|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X14_Y25_N16
\sum1|Div0|auto_generated|divider|divider|StageOut[16]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \sum1|Div0|auto_generated|divider|divider|StageOut[16]~30_combout\ = (\sum1|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \sum1|cnt\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sum1|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \sum1|cnt\(4),
	combout => \sum1|Div0|auto_generated|divider|divider|StageOut[16]~30_combout\);

-- Location: LCCOMB_X15_Y25_N2
\sum1|Div0|auto_generated|divider|divider|StageOut[15]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \sum1|Div0|auto_generated|divider|divider|StageOut[15]~33_combout\ = (\sum1|cnt\(3) & !\sum1|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sum1|cnt\(3),
	datad => \sum1|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \sum1|Div0|auto_generated|divider|divider|StageOut[15]~33_combout\);

-- Location: LCCOMB_X15_Y25_N18
\sum1|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \sum1|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = (((\sum1|Div0|auto_generated|divider|divider|StageOut[15]~32_combout\) # (\sum1|Div0|auto_generated|divider|divider|StageOut[15]~33_combout\)))
-- \sum1|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY((\sum1|Div0|auto_generated|divider|divider|StageOut[15]~32_combout\) # (\sum1|Div0|auto_generated|divider|divider|StageOut[15]~33_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sum1|Div0|auto_generated|divider|divider|StageOut[15]~32_combout\,
	datab => \sum1|Div0|auto_generated|divider|divider|StageOut[15]~33_combout\,
	datad => VCC,
	combout => \sum1|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \sum1|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X15_Y25_N20
\sum1|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \sum1|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\sum1|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (((\sum1|Div0|auto_generated|divider|divider|StageOut[16]~31_combout\) # 
-- (\sum1|Div0|auto_generated|divider|divider|StageOut[16]~30_combout\)))) # (!\sum1|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (!\sum1|Div0|auto_generated|divider|divider|StageOut[16]~31_combout\ & 
-- (!\sum1|Div0|auto_generated|divider|divider|StageOut[16]~30_combout\)))
-- \sum1|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\sum1|Div0|auto_generated|divider|divider|StageOut[16]~31_combout\ & (!\sum1|Div0|auto_generated|divider|divider|StageOut[16]~30_combout\ & 
-- !\sum1|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sum1|Div0|auto_generated|divider|divider|StageOut[16]~31_combout\,
	datab => \sum1|Div0|auto_generated|divider|divider|StageOut[16]~30_combout\,
	datad => VCC,
	cin => \sum1|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \sum1|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \sum1|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X15_Y25_N14
\sum1|Div0|auto_generated|divider|divider|StageOut[18]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \sum1|Div0|auto_generated|divider|divider|StageOut[18]~27_combout\ = (\sum1|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ & !\sum1|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sum1|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datad => \sum1|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \sum1|Div0|auto_generated|divider|divider|StageOut[18]~27_combout\);

-- Location: LCCOMB_X15_Y25_N30
\sum1|Div0|auto_generated|divider|divider|StageOut[17]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \sum1|Div0|auto_generated|divider|divider|StageOut[17]~29_combout\ = (\sum1|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ & !\sum1|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sum1|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datad => \sum1|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \sum1|Div0|auto_generated|divider|divider|StageOut[17]~29_combout\);

-- Location: LCCOMB_X15_Y25_N24
\sum1|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \sum1|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ = CARRY((!\sum1|Div0|auto_generated|divider|divider|StageOut[18]~26_combout\ & (!\sum1|Div0|auto_generated|divider|divider|StageOut[18]~27_combout\ & 
-- !\sum1|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sum1|Div0|auto_generated|divider|divider|StageOut[18]~26_combout\,
	datab => \sum1|Div0|auto_generated|divider|divider|StageOut[18]~27_combout\,
	datad => VCC,
	cin => \sum1|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	cout => \sum1|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\);

-- Location: LCCOMB_X15_Y25_N26
\sum1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \sum1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \sum1|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \sum1|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\,
	combout => \sum1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X12_Y25_N20
\sum1|Div0|auto_generated|divider|divider|StageOut[22]~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \sum1|Div0|auto_generated|divider|divider|StageOut[22]~48_combout\ = (\sum1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\sum1|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\sum1|cnt\(4)))) # 
-- (!\sum1|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\sum1|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sum1|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datab => \sum1|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \sum1|cnt\(4),
	datad => \sum1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \sum1|Div0|auto_generated|divider|divider|StageOut[22]~48_combout\);

-- Location: LCCOMB_X12_Y25_N22
\sum1|Div0|auto_generated|divider|divider|StageOut[23]~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \sum1|Div0|auto_generated|divider|divider|StageOut[23]~47_combout\ = (\sum1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\sum1|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\sum1|cnt\(5)))) # 
-- (!\sum1|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\sum1|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sum1|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datab => \sum1|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \sum1|cnt\(5),
	datad => \sum1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \sum1|Div0|auto_generated|divider|divider|StageOut[23]~47_combout\);

-- Location: LCCOMB_X12_Y25_N0
\sum1|Div0|auto_generated|divider|divider|StageOut[22]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \sum1|Div0|auto_generated|divider|divider|StageOut[22]~35_combout\ = (\sum1|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & !\sum1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sum1|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datad => \sum1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \sum1|Div0|auto_generated|divider|divider|StageOut[22]~35_combout\);

-- Location: LCCOMB_X12_Y25_N18
\sum1|Div0|auto_generated|divider|divider|StageOut[21]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \sum1|Div0|auto_generated|divider|divider|StageOut[21]~36_combout\ = (\sum1|cnt\(3) & \sum1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sum1|cnt\(3),
	datad => \sum1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \sum1|Div0|auto_generated|divider|divider|StageOut[21]~36_combout\);

-- Location: LCFF_X19_Y25_N21
\sum1|cnt[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \sum1|cnt[2]~8_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sum1|cnt\(2));

-- Location: LCCOMB_X12_Y25_N14
\sum1|Div0|auto_generated|divider|divider|StageOut[20]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \sum1|Div0|auto_generated|divider|divider|StageOut[20]~38_combout\ = (\sum1|cnt\(2) & \sum1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sum1|cnt\(2),
	datad => \sum1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \sum1|Div0|auto_generated|divider|divider|StageOut[20]~38_combout\);

-- Location: LCCOMB_X12_Y25_N2
\sum1|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \sum1|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = (((\sum1|Div0|auto_generated|divider|divider|StageOut[20]~39_combout\) # (\sum1|Div0|auto_generated|divider|divider|StageOut[20]~38_combout\)))
-- \sum1|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY((\sum1|Div0|auto_generated|divider|divider|StageOut[20]~39_combout\) # (\sum1|Div0|auto_generated|divider|divider|StageOut[20]~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sum1|Div0|auto_generated|divider|divider|StageOut[20]~39_combout\,
	datab => \sum1|Div0|auto_generated|divider|divider|StageOut[20]~38_combout\,
	datad => VCC,
	combout => \sum1|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \sum1|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X12_Y25_N8
\sum1|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \sum1|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ = CARRY((!\sum1|Div0|auto_generated|divider|divider|StageOut[23]~34_combout\ & (!\sum1|Div0|auto_generated|divider|divider|StageOut[23]~47_combout\ & 
-- !\sum1|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sum1|Div0|auto_generated|divider|divider|StageOut[23]~34_combout\,
	datab => \sum1|Div0|auto_generated|divider|divider|StageOut[23]~47_combout\,
	datad => VCC,
	cin => \sum1|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	cout => \sum1|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\);

-- Location: LCCOMB_X12_Y25_N10
\sum1|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \sum1|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ = \sum1|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \sum1|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\,
	combout => \sum1|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\);

-- Location: LCCOMB_X12_Y25_N28
\sum1|Div0|auto_generated|divider|divider|StageOut[28]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \sum1|Div0|auto_generated|divider|divider|StageOut[28]~46_combout\ = (\sum1|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\sum1|Div0|auto_generated|divider|divider|StageOut[22]~48_combout\) # 
-- ((!\sum1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \sum1|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sum1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \sum1|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datac => \sum1|Div0|auto_generated|divider|divider|StageOut[22]~48_combout\,
	datad => \sum1|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \sum1|Div0|auto_generated|divider|divider|StageOut[28]~46_combout\);

-- Location: LCCOMB_X12_Y25_N30
\sum1|Div0|auto_generated|divider|divider|StageOut[27]~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \sum1|Div0|auto_generated|divider|divider|StageOut[27]~49_combout\ = (\sum1|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\sum1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\sum1|cnt\(3))) # 
-- (!\sum1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\sum1|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sum1|cnt\(3),
	datab => \sum1|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datac => \sum1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \sum1|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \sum1|Div0|auto_generated|divider|divider|StageOut[27]~49_combout\);

-- Location: LCCOMB_X11_Y25_N30
\sum1|Div0|auto_generated|divider|divider|StageOut[26]~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \sum1|Div0|auto_generated|divider|divider|StageOut[26]~43_combout\ = (!\sum1|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \sum1|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sum1|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \sum1|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	combout => \sum1|Div0|auto_generated|divider|divider|StageOut[26]~43_combout\);

-- Location: LCFF_X19_Y25_N19
\sum1|cnt[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \sum1|cnt[1]~6_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sum1|cnt\(1));

-- Location: LCCOMB_X11_Y25_N0
\sum1|Div0|auto_generated|divider|divider|StageOut[25]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \sum1|Div0|auto_generated|divider|divider|StageOut[25]~44_combout\ = (\sum1|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \sum1|cnt\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sum1|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \sum1|cnt\(1),
	combout => \sum1|Div0|auto_generated|divider|divider|StageOut[25]~44_combout\);

-- Location: LCCOMB_X11_Y25_N18
\sum1|digits[1][0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \sum1|digits[1][0]~2_cout\ = CARRY((\sum1|Div0|auto_generated|divider|divider|StageOut[25]~45_combout\) # (\sum1|Div0|auto_generated|divider|divider|StageOut[25]~44_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sum1|Div0|auto_generated|divider|divider|StageOut[25]~45_combout\,
	datab => \sum1|Div0|auto_generated|divider|divider|StageOut[25]~44_combout\,
	datad => VCC,
	cout => \sum1|digits[1][0]~2_cout\);

-- Location: LCCOMB_X11_Y25_N20
\sum1|digits[1][0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \sum1|digits[1][0]~4_cout\ = CARRY((!\sum1|Div0|auto_generated|divider|divider|StageOut[26]~42_combout\ & (!\sum1|Div0|auto_generated|divider|divider|StageOut[26]~43_combout\ & !\sum1|digits[1][0]~2_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sum1|Div0|auto_generated|divider|divider|StageOut[26]~42_combout\,
	datab => \sum1|Div0|auto_generated|divider|divider|StageOut[26]~43_combout\,
	datad => VCC,
	cin => \sum1|digits[1][0]~2_cout\,
	cout => \sum1|digits[1][0]~4_cout\);

-- Location: LCCOMB_X11_Y25_N22
\sum1|digits[1][0]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \sum1|digits[1][0]~6_cout\ = CARRY((!\sum1|digits[1][0]~4_cout\ & ((\sum1|Div0|auto_generated|divider|divider|StageOut[27]~41_combout\) # (\sum1|Div0|auto_generated|divider|divider|StageOut[27]~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sum1|Div0|auto_generated|divider|divider|StageOut[27]~41_combout\,
	datab => \sum1|Div0|auto_generated|divider|divider|StageOut[27]~49_combout\,
	datad => VCC,
	cin => \sum1|digits[1][0]~4_cout\,
	cout => \sum1|digits[1][0]~6_cout\);

-- Location: LCCOMB_X11_Y25_N24
\sum1|digits[1][0]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \sum1|digits[1][0]~8_cout\ = CARRY((!\sum1|Div0|auto_generated|divider|divider|StageOut[28]~40_combout\ & (!\sum1|Div0|auto_generated|divider|divider|StageOut[28]~46_combout\ & !\sum1|digits[1][0]~6_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sum1|Div0|auto_generated|divider|divider|StageOut[28]~40_combout\,
	datab => \sum1|Div0|auto_generated|divider|divider|StageOut[28]~46_combout\,
	datad => VCC,
	cin => \sum1|digits[1][0]~6_cout\,
	cout => \sum1|digits[1][0]~8_cout\);

-- Location: LCCOMB_X11_Y25_N26
\sum1|digits[1][0]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \sum1|digits[1][0]~9_combout\ = !\sum1|digits[1][0]~8_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \sum1|digits[1][0]~8_cout\,
	combout => \sum1|digits[1][0]~9_combout\);

-- Location: LCFF_X11_Y25_N27
\sum1|digits[1][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \sum1|digits[1][0]~9_combout\,
	ena => \KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sum1|digits[1][0]~regout\);

-- Location: LCCOMB_X11_Y25_N16
\sum1|digits[1][1]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \sum1|digits[1][1]~11_combout\ = !\sum1|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sum1|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \sum1|digits[1][1]~11_combout\);

-- Location: LCFF_X11_Y25_N17
\sum1|digits[1][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \sum1|digits[1][1]~11_combout\,
	ena => \KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sum1|digits[1][1]~regout\);

-- Location: LCCOMB_X11_Y25_N14
\sum1|digits[1][2]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \sum1|digits[1][2]~12_combout\ = !\sum1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sum1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \sum1|digits[1][2]~12_combout\);

-- Location: LCFF_X11_Y25_N15
\sum1|digits[1][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \sum1|digits[1][2]~12_combout\,
	ena => \KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sum1|digits[1][2]~regout\);

-- Location: LCCOMB_X11_Y25_N28
\sum1|digits[1][3]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \sum1|digits[1][3]~13_combout\ = !\sum1|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sum1|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \sum1|digits[1][3]~13_combout\);

-- Location: LCFF_X11_Y25_N29
\sum1|digits[1][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \sum1|digits[1][3]~13_combout\,
	ena => \KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sum1|digits[1][3]~regout\);

-- Location: LCCOMB_X19_Y25_N0
\sum1|digits[0][0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \sum1|digits[0][0]~feeder_combout\ = \sum1|cnt\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sum1|cnt\(0),
	combout => \sum1|digits[0][0]~feeder_combout\);

-- Location: LCFF_X19_Y25_N1
\sum1|digits[0][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \sum1|digits[0][0]~feeder_combout\,
	ena => \KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sum1|digits[0][0]~regout\);

-- Location: LCCOMB_X19_Y25_N8
\sum1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \sum1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (\sum1|cnt\(5) & (\sum1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC)) # (!\sum1|cnt\(5) & 
-- (!\sum1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))
-- \sum1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!\sum1|cnt\(5) & !\sum1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sum1|cnt\(5),
	datad => VCC,
	cin => \sum1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \sum1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \sum1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X19_Y25_N10
\sum1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \sum1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (\sum1|cnt\(6) & (\sum1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ $ (GND))) # (!\sum1|cnt\(6) & 
-- (!\sum1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & VCC))
-- \sum1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((\sum1|cnt\(6) & !\sum1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sum1|cnt\(6),
	datad => VCC,
	cin => \sum1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \sum1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \sum1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X19_Y25_N12
\sum1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \sum1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\sum1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \sum1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \sum1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X18_Y25_N0
\sum1|Mod0|auto_generated|divider|divider|StageOut[24]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \sum1|Mod0|auto_generated|divider|divider|StageOut[24]~39_combout\ = (!\sum1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \sum1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sum1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \sum1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	combout => \sum1|Mod0|auto_generated|divider|divider|StageOut[24]~39_combout\);

-- Location: LCCOMB_X18_Y25_N14
\sum1|Mod0|auto_generated|divider|divider|StageOut[23]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \sum1|Mod0|auto_generated|divider|divider|StageOut[23]~40_combout\ = (\sum1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \sum1|cnt\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sum1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \sum1|cnt\(5),
	combout => \sum1|Mod0|auto_generated|divider|divider|StageOut[23]~40_combout\);

-- Location: LCCOMB_X19_Y25_N30
\sum1|Mod0|auto_generated|divider|divider|StageOut[22]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \sum1|Mod0|auto_generated|divider|divider|StageOut[22]~42_combout\ = (\sum1|cnt\(4) & \sum1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sum1|cnt\(4),
	datad => \sum1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \sum1|Mod0|auto_generated|divider|divider|StageOut[22]~42_combout\);

-- Location: LCCOMB_X18_Y25_N18
\sum1|Mod0|auto_generated|divider|divider|StageOut[21]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \sum1|Mod0|auto_generated|divider|divider|StageOut[21]~44_combout\ = (\sum1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \sum1|cnt\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sum1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \sum1|cnt\(3),
	combout => \sum1|Mod0|auto_generated|divider|divider|StageOut[21]~44_combout\);

-- Location: LCCOMB_X18_Y25_N22
\sum1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \sum1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = (((\sum1|Mod0|auto_generated|divider|divider|StageOut[21]~45_combout\) # (\sum1|Mod0|auto_generated|divider|divider|StageOut[21]~44_combout\)))
-- \sum1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY((\sum1|Mod0|auto_generated|divider|divider|StageOut[21]~45_combout\) # (\sum1|Mod0|auto_generated|divider|divider|StageOut[21]~44_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sum1|Mod0|auto_generated|divider|divider|StageOut[21]~45_combout\,
	datab => \sum1|Mod0|auto_generated|divider|divider|StageOut[21]~44_combout\,
	datad => VCC,
	combout => \sum1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \sum1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X18_Y25_N28
\sum1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \sum1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ = (\sum1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ & (((\sum1|Mod0|auto_generated|divider|divider|StageOut[24]~38_combout\) # 
-- (\sum1|Mod0|auto_generated|divider|divider|StageOut[24]~39_combout\)))) # (!\sum1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ & (!\sum1|Mod0|auto_generated|divider|divider|StageOut[24]~38_combout\ & 
-- (!\sum1|Mod0|auto_generated|divider|divider|StageOut[24]~39_combout\)))
-- \sum1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ = CARRY((!\sum1|Mod0|auto_generated|divider|divider|StageOut[24]~38_combout\ & (!\sum1|Mod0|auto_generated|divider|divider|StageOut[24]~39_combout\ & 
-- !\sum1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sum1|Mod0|auto_generated|divider|divider|StageOut[24]~38_combout\,
	datab => \sum1|Mod0|auto_generated|divider|divider|StageOut[24]~39_combout\,
	datad => VCC,
	cin => \sum1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	combout => \sum1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	cout => \sum1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\);

-- Location: LCCOMB_X18_Y25_N30
\sum1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \sum1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \sum1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \sum1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\,
	combout => \sum1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X17_Y25_N0
\sum1|Mod0|auto_generated|divider|divider|StageOut[32]~67\ : cycloneii_lcell_comb
-- Equation(s):
-- \sum1|Mod0|auto_generated|divider|divider|StageOut[32]~67_combout\ = (\sum1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\sum1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\sum1|cnt\(6))) # 
-- (!\sum1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\sum1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sum1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \sum1|cnt\(6),
	datac => \sum1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datad => \sum1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \sum1|Mod0|auto_generated|divider|divider|StageOut[32]~67_combout\);

-- Location: LCCOMB_X18_Y25_N10
\sum1|Mod0|auto_generated|divider|divider|StageOut[31]~68\ : cycloneii_lcell_comb
-- Equation(s):
-- \sum1|Mod0|auto_generated|divider|divider|StageOut[31]~68_combout\ = (\sum1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\sum1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\sum1|cnt\(5))) # 
-- (!\sum1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\sum1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sum1|cnt\(5),
	datab => \sum1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \sum1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datad => \sum1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \sum1|Mod0|auto_generated|divider|divider|StageOut[31]~68_combout\);

-- Location: LCCOMB_X18_Y25_N8
\sum1|Mod0|auto_generated|divider|divider|StageOut[30]~69\ : cycloneii_lcell_comb
-- Equation(s):
-- \sum1|Mod0|auto_generated|divider|divider|StageOut[30]~69_combout\ = (\sum1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\sum1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\sum1|cnt\(4)))) # 
-- (!\sum1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\sum1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sum1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datab => \sum1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \sum1|cnt\(4),
	datad => \sum1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \sum1|Mod0|auto_generated|divider|divider|StageOut[30]~69_combout\);

-- Location: LCCOMB_X18_Y25_N12
\sum1|Mod0|auto_generated|divider|divider|StageOut[29]~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \sum1|Mod0|auto_generated|divider|divider|StageOut[29]~50_combout\ = (\sum1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ & !\sum1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sum1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datad => \sum1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \sum1|Mod0|auto_generated|divider|divider|StageOut[29]~50_combout\);

-- Location: LCCOMB_X17_Y25_N18
\sum1|Mod0|auto_generated|divider|divider|StageOut[28]~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \sum1|Mod0|auto_generated|divider|divider|StageOut[28]~51_combout\ = (\sum1|cnt\(2) & \sum1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sum1|cnt\(2),
	datad => \sum1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \sum1|Mod0|auto_generated|divider|divider|StageOut[28]~51_combout\);

-- Location: LCCOMB_X17_Y25_N6
\sum1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \sum1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = (((\sum1|Mod0|auto_generated|divider|divider|StageOut[28]~52_combout\) # (\sum1|Mod0|auto_generated|divider|divider|StageOut[28]~51_combout\)))
-- \sum1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY((\sum1|Mod0|auto_generated|divider|divider|StageOut[28]~52_combout\) # (\sum1|Mod0|auto_generated|divider|divider|StageOut[28]~51_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sum1|Mod0|auto_generated|divider|divider|StageOut[28]~52_combout\,
	datab => \sum1|Mod0|auto_generated|divider|divider|StageOut[28]~51_combout\,
	datad => VCC,
	combout => \sum1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \sum1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X17_Y25_N10
\sum1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \sum1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\sum1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & (((\sum1|Mod0|auto_generated|divider|divider|StageOut[30]~48_combout\) # 
-- (\sum1|Mod0|auto_generated|divider|divider|StageOut[30]~69_combout\)))) # (!\sum1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((((\sum1|Mod0|auto_generated|divider|divider|StageOut[30]~48_combout\) # 
-- (\sum1|Mod0|auto_generated|divider|divider|StageOut[30]~69_combout\)))))
-- \sum1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((!\sum1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((\sum1|Mod0|auto_generated|divider|divider|StageOut[30]~48_combout\) # 
-- (\sum1|Mod0|auto_generated|divider|divider|StageOut[30]~69_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sum1|Mod0|auto_generated|divider|divider|StageOut[30]~48_combout\,
	datab => \sum1|Mod0|auto_generated|divider|divider|StageOut[30]~69_combout\,
	datad => VCC,
	cin => \sum1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \sum1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \sum1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X17_Y25_N16
\sum1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \sum1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ = !\sum1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \sum1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\,
	combout => \sum1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\);

-- Location: LCCOMB_X16_Y25_N30
\sum1|Mod0|auto_generated|divider|divider|StageOut[35]~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \sum1|Mod0|auto_generated|divider|divider|StageOut[35]~54_combout\ = (!\sum1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \sum1|cnt\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sum1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \sum1|cnt\(1),
	combout => \sum1|Mod0|auto_generated|divider|divider|StageOut[35]~54_combout\);

-- Location: LCCOMB_X16_Y25_N0
\sum1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \sum1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ = (((\sum1|Mod0|auto_generated|divider|divider|StageOut[35]~53_combout\) # (\sum1|Mod0|auto_generated|divider|divider|StageOut[35]~54_combout\)))
-- \sum1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ = CARRY((\sum1|Mod0|auto_generated|divider|divider|StageOut[35]~53_combout\) # (\sum1|Mod0|auto_generated|divider|divider|StageOut[35]~54_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sum1|Mod0|auto_generated|divider|divider|StageOut[35]~53_combout\,
	datab => \sum1|Mod0|auto_generated|divider|divider|StageOut[35]~54_combout\,
	datad => VCC,
	combout => \sum1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	cout => \sum1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\);

-- Location: LCCOMB_X17_Y25_N30
\sum1|Mod0|auto_generated|divider|divider|StageOut[40]~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \sum1|Mod0|auto_generated|divider|divider|StageOut[40]~64_combout\ = (\sum1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\sum1|Mod0|auto_generated|divider|divider|StageOut[32]~67_combout\) # 
-- ((!\sum1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \sum1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sum1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \sum1|Mod0|auto_generated|divider|divider|StageOut[32]~67_combout\,
	datac => \sum1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \sum1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	combout => \sum1|Mod0|auto_generated|divider|divider|StageOut[40]~64_combout\);

-- Location: LCCOMB_X17_Y25_N28
\sum1|Mod0|auto_generated|divider|divider|StageOut[39]~65\ : cycloneii_lcell_comb
-- Equation(s):
-- \sum1|Mod0|auto_generated|divider|divider|StageOut[39]~65_combout\ = (\sum1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\sum1|Mod0|auto_generated|divider|divider|StageOut[31]~68_combout\) # 
-- ((\sum1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ & !\sum1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sum1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datab => \sum1|Mod0|auto_generated|divider|divider|StageOut[31]~68_combout\,
	datac => \sum1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \sum1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \sum1|Mod0|auto_generated|divider|divider|StageOut[39]~65_combout\);

-- Location: LCCOMB_X16_Y25_N14
\sum1|Mod0|auto_generated|divider|divider|StageOut[38]~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \sum1|Mod0|auto_generated|divider|divider|StageOut[38]~57_combout\ = (\sum1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ & !\sum1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sum1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datac => \sum1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \sum1|Mod0|auto_generated|divider|divider|StageOut[38]~57_combout\);

-- Location: LCCOMB_X17_Y25_N22
\sum1|Mod0|auto_generated|divider|divider|StageOut[37]~70\ : cycloneii_lcell_comb
-- Equation(s):
-- \sum1|Mod0|auto_generated|divider|divider|StageOut[37]~70_combout\ = (\sum1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\sum1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\sum1|cnt\(3))) # 
-- (!\sum1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\sum1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sum1|cnt\(3),
	datab => \sum1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \sum1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \sum1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	combout => \sum1|Mod0|auto_generated|divider|divider|StageOut[37]~70_combout\);

-- Location: LCCOMB_X16_Y25_N26
\sum1|Mod0|auto_generated|divider|divider|StageOut[36]~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \sum1|Mod0|auto_generated|divider|divider|StageOut[36]~59_combout\ = (\sum1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \sum1|cnt\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sum1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \sum1|cnt\(2),
	combout => \sum1|Mod0|auto_generated|divider|divider|StageOut[36]~59_combout\);

-- Location: LCCOMB_X16_Y25_N2
\sum1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \sum1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ = (\sum1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (((\sum1|Mod0|auto_generated|divider|divider|StageOut[36]~60_combout\) # 
-- (\sum1|Mod0|auto_generated|divider|divider|StageOut[36]~59_combout\)))) # (!\sum1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (!\sum1|Mod0|auto_generated|divider|divider|StageOut[36]~60_combout\ & 
-- (!\sum1|Mod0|auto_generated|divider|divider|StageOut[36]~59_combout\)))
-- \sum1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ = CARRY((!\sum1|Mod0|auto_generated|divider|divider|StageOut[36]~60_combout\ & (!\sum1|Mod0|auto_generated|divider|divider|StageOut[36]~59_combout\ & 
-- !\sum1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sum1|Mod0|auto_generated|divider|divider|StageOut[36]~60_combout\,
	datab => \sum1|Mod0|auto_generated|divider|divider|StageOut[36]~59_combout\,
	datad => VCC,
	cin => \sum1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\,
	combout => \sum1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	cout => \sum1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\);

-- Location: LCCOMB_X16_Y25_N4
\sum1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \sum1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ = (\sum1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & (((\sum1|Mod0|auto_generated|divider|divider|StageOut[37]~58_combout\) # 
-- (\sum1|Mod0|auto_generated|divider|divider|StageOut[37]~70_combout\)))) # (!\sum1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((((\sum1|Mod0|auto_generated|divider|divider|StageOut[37]~58_combout\) # 
-- (\sum1|Mod0|auto_generated|divider|divider|StageOut[37]~70_combout\)))))
-- \sum1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ = CARRY((!\sum1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((\sum1|Mod0|auto_generated|divider|divider|StageOut[37]~58_combout\) # 
-- (\sum1|Mod0|auto_generated|divider|divider|StageOut[37]~70_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sum1|Mod0|auto_generated|divider|divider|StageOut[37]~58_combout\,
	datab => \sum1|Mod0|auto_generated|divider|divider|StageOut[37]~70_combout\,
	datad => VCC,
	cin => \sum1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\,
	combout => \sum1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	cout => \sum1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\);

-- Location: LCCOMB_X16_Y25_N6
\sum1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \sum1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ = CARRY((!\sum1|Mod0|auto_generated|divider|divider|StageOut[38]~66_combout\ & (!\sum1|Mod0|auto_generated|divider|divider|StageOut[38]~57_combout\ & 
-- !\sum1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sum1|Mod0|auto_generated|divider|divider|StageOut[38]~66_combout\,
	datab => \sum1|Mod0|auto_generated|divider|divider|StageOut[38]~57_combout\,
	datad => VCC,
	cin => \sum1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\,
	cout => \sum1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\);

-- Location: LCCOMB_X16_Y25_N8
\sum1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \sum1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9_cout\ = CARRY((\sum1|Mod0|auto_generated|divider|divider|StageOut[39]~56_combout\) # ((\sum1|Mod0|auto_generated|divider|divider|StageOut[39]~65_combout\) # 
-- (!\sum1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sum1|Mod0|auto_generated|divider|divider|StageOut[39]~56_combout\,
	datab => \sum1|Mod0|auto_generated|divider|divider|StageOut[39]~65_combout\,
	datad => VCC,
	cin => \sum1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\,
	cout => \sum1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9_cout\);

-- Location: LCCOMB_X16_Y25_N10
\sum1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \sum1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~11_cout\ = CARRY((!\sum1|Mod0|auto_generated|divider|divider|StageOut[40]~55_combout\ & (!\sum1|Mod0|auto_generated|divider|divider|StageOut[40]~64_combout\ & 
-- !\sum1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sum1|Mod0|auto_generated|divider|divider|StageOut[40]~55_combout\,
	datab => \sum1|Mod0|auto_generated|divider|divider|StageOut[40]~64_combout\,
	datad => VCC,
	cin => \sum1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9_cout\,
	cout => \sum1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~11_cout\);

-- Location: LCCOMB_X16_Y25_N12
\sum1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \sum1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ = \sum1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~11_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \sum1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~11_cout\,
	combout => \sum1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\);

-- Location: LCCOMB_X16_Y25_N22
\sum1|Mod0|auto_generated|divider|divider|StageOut[43]~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \sum1|Mod0|auto_generated|divider|divider|StageOut[43]~61_combout\ = (\sum1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & (\sum1|cnt\(1))) # (!\sum1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & 
-- ((\sum1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sum1|cnt\(1),
	datac => \sum1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	datad => \sum1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \sum1|Mod0|auto_generated|divider|divider|StageOut[43]~61_combout\);

-- Location: LCFF_X16_Y25_N23
\sum1|digits[0][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \sum1|Mod0|auto_generated|divider|divider|StageOut[43]~61_combout\,
	ena => \KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sum1|digits[0][1]~regout\);

-- Location: LCCOMB_X17_Y25_N4
\sum1|Mod0|auto_generated|divider|divider|StageOut[36]~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \sum1|Mod0|auto_generated|divider|divider|StageOut[36]~60_combout\ = (!\sum1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \sum1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sum1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \sum1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	combout => \sum1|Mod0|auto_generated|divider|divider|StageOut[36]~60_combout\);

-- Location: LCCOMB_X16_Y25_N28
\sum1|Mod0|auto_generated|divider|divider|StageOut[44]~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \sum1|Mod0|auto_generated|divider|divider|StageOut[44]~62_combout\ = (\sum1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\sum1|Mod0|auto_generated|divider|divider|StageOut[36]~59_combout\) # 
-- ((\sum1|Mod0|auto_generated|divider|divider|StageOut[36]~60_combout\)))) # (!\sum1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & (((\sum1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sum1|Mod0|auto_generated|divider|divider|StageOut[36]~59_combout\,
	datab => \sum1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	datac => \sum1|Mod0|auto_generated|divider|divider|StageOut[36]~60_combout\,
	datad => \sum1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \sum1|Mod0|auto_generated|divider|divider|StageOut[44]~62_combout\);

-- Location: LCFF_X16_Y25_N29
\sum1|digits[0][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \sum1|Mod0|auto_generated|divider|divider|StageOut[44]~62_combout\,
	ena => \KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sum1|digits[0][2]~regout\);

-- Location: LCCOMB_X16_Y25_N18
\sum1|Mod0|auto_generated|divider|divider|StageOut[45]~63\ : cycloneii_lcell_comb
-- Equation(s):
-- \sum1|Mod0|auto_generated|divider|divider|StageOut[45]~63_combout\ = (\sum1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\sum1|Mod0|auto_generated|divider|divider|StageOut[37]~58_combout\) # 
-- ((\sum1|Mod0|auto_generated|divider|divider|StageOut[37]~70_combout\)))) # (!\sum1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & (((\sum1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sum1|Mod0|auto_generated|divider|divider|StageOut[37]~58_combout\,
	datab => \sum1|Mod0|auto_generated|divider|divider|StageOut[37]~70_combout\,
	datac => \sum1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	datad => \sum1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \sum1|Mod0|auto_generated|divider|divider|StageOut[45]~63_combout\);

-- Location: LCFF_X16_Y25_N19
\sum1|digits[0][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \sum1|Mod0|auto_generated|divider|divider|StageOut[45]~63_combout\,
	ena => \KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sum1|digits[0][3]~regout\);

-- Location: PIN_AE22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDG[0]~I\ : cycloneii_io
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
	datain => \sum1|c_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(0));

-- Location: PIN_AF22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDG[1]~I\ : cycloneii_io
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
	datain => \sum1|s~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(1));

-- Location: PIN_L6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\digits[1][0]~I\ : cycloneii_io
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
	datain => \sum1|digits[1][0]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_digits(1)(0));

-- Location: PIN_L7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\digits[1][1]~I\ : cycloneii_io
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
	datain => \sum1|digits[1][1]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_digits(1)(1));

-- Location: PIN_K1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\digits[1][2]~I\ : cycloneii_io
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
	datain => \sum1|digits[1][2]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_digits(1)(2));

-- Location: PIN_P9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\digits[1][3]~I\ : cycloneii_io
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
	datain => \sum1|digits[1][3]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_digits(1)(3));

-- Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\digits[0][0]~I\ : cycloneii_io
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
	datain => \sum1|digits[0][0]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_digits(0)(0));

-- Location: PIN_N9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\digits[0][1]~I\ : cycloneii_io
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
	datain => \sum1|digits[0][1]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_digits(0)(1));

-- Location: PIN_L4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\digits[0][2]~I\ : cycloneii_io
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
	datain => \sum1|digits[0][2]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_digits(0)(2));

-- Location: PIN_K2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\digits[0][3]~I\ : cycloneii_io
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
	datain => \sum1|digits[0][3]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_digits(0)(3));
END structure;


