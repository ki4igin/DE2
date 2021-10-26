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

-- DATE "10/16/2021 21:28:24"

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

ENTITY 	rtc_test IS
    PORT (
	CLOCK_50 : IN std_logic;
	KEY : IN std_logic_vector(3 DOWNTO 0);
	HEX2 : OUT std_logic_vector(6 DOWNTO 0);
	HEX3 : OUT std_logic_vector(6 DOWNTO 0);
	HEX4 : OUT std_logic_vector(6 DOWNTO 0);
	HEX5 : OUT std_logic_vector(6 DOWNTO 0);
	HEX6 : OUT std_logic_vector(6 DOWNTO 0);
	HEX7 : OUT std_logic_vector(6 DOWNTO 0)
	);
END rtc_test;

-- Design Ports Information
-- KEY[1]	=>  Location: PIN_N23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_P23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_W26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- HEX2[0]	=>  Location: PIN_AB23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[1]	=>  Location: PIN_V22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[2]	=>  Location: PIN_AC25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[3]	=>  Location: PIN_AC26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[4]	=>  Location: PIN_AB26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[5]	=>  Location: PIN_AB25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[6]	=>  Location: PIN_Y24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3[0]	=>  Location: PIN_Y23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3[1]	=>  Location: PIN_AA25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3[2]	=>  Location: PIN_AA26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3[3]	=>  Location: PIN_Y26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3[4]	=>  Location: PIN_Y25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3[5]	=>  Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3[6]	=>  Location: PIN_W24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX4[0]	=>  Location: PIN_U9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX4[1]	=>  Location: PIN_U1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX4[2]	=>  Location: PIN_U2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX4[3]	=>  Location: PIN_T4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX4[4]	=>  Location: PIN_R7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX4[5]	=>  Location: PIN_R6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX4[6]	=>  Location: PIN_T3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX5[0]	=>  Location: PIN_T2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX5[1]	=>  Location: PIN_P6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX5[2]	=>  Location: PIN_P7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX5[3]	=>  Location: PIN_T9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX5[4]	=>  Location: PIN_R5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX5[5]	=>  Location: PIN_R4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX5[6]	=>  Location: PIN_R3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX6[0]	=>  Location: PIN_R2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX6[1]	=>  Location: PIN_P4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX6[2]	=>  Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX6[3]	=>  Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX6[4]	=>  Location: PIN_M3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX6[5]	=>  Location: PIN_M5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX6[6]	=>  Location: PIN_M4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX7[0]	=>  Location: PIN_L3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX7[1]	=>  Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX7[2]	=>  Location: PIN_L9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX7[3]	=>  Location: PIN_L6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX7[4]	=>  Location: PIN_L7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX7[5]	=>  Location: PIN_P9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX7[6]	=>  Location: PIN_N9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- CLOCK_50	=>  Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF rtc_test IS
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
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX6 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX7 : std_logic_vector(6 DOWNTO 0);
SIGNAL \CLOCK_50~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rtc1|Add0~4_combout\ : std_logic;
SIGNAL \rtc1|Add0~10_combout\ : std_logic;
SIGNAL \rtc1|Add0~36_combout\ : std_logic;
SIGNAL \rtc1|Add0~46_combout\ : std_logic;
SIGNAL \rtc1|Add0~54_combout\ : std_logic;
SIGNAL \rtc1|Equal0~3_combout\ : std_logic;
SIGNAL \rtc1|Equal0~7_combout\ : std_logic;
SIGNAL \rtc1|Equal0~8_combout\ : std_logic;
SIGNAL \rtc1|seconds_h[3]~0_combout\ : std_logic;
SIGNAL \rtc1|wrap~2_combout\ : std_logic;
SIGNAL \rtc1|cnt~15_combout\ : std_logic;
SIGNAL \rtc1|cnt~17_combout\ : std_logic;
SIGNAL \CLOCK_50~combout\ : std_logic;
SIGNAL \CLOCK_50~clkctrl_outclk\ : std_logic;
SIGNAL \rtc1|seconds_l[0]~1_combout\ : std_logic;
SIGNAL \rtc1|Add0~0_combout\ : std_logic;
SIGNAL \rtc1|Add0~1\ : std_logic;
SIGNAL \rtc1|Add0~2_combout\ : std_logic;
SIGNAL \rtc1|Add0~3\ : std_logic;
SIGNAL \rtc1|Add0~5\ : std_logic;
SIGNAL \rtc1|Add0~6_combout\ : std_logic;
SIGNAL \rtc1|Add0~7\ : std_logic;
SIGNAL \rtc1|Add0~8_combout\ : std_logic;
SIGNAL \rtc1|cnt~16_combout\ : std_logic;
SIGNAL \rtc1|Add0~9\ : std_logic;
SIGNAL \rtc1|Add0~11\ : std_logic;
SIGNAL \rtc1|Add0~12_combout\ : std_logic;
SIGNAL \rtc1|cnt~14_combout\ : std_logic;
SIGNAL \rtc1|Add0~13\ : std_logic;
SIGNAL \rtc1|Add0~14_combout\ : std_logic;
SIGNAL \rtc1|cnt~13_combout\ : std_logic;
SIGNAL \rtc1|Add0~15\ : std_logic;
SIGNAL \rtc1|Add0~16_combout\ : std_logic;
SIGNAL \rtc1|cnt~12_combout\ : std_logic;
SIGNAL \rtc1|Add0~17\ : std_logic;
SIGNAL \rtc1|Add0~19\ : std_logic;
SIGNAL \rtc1|Add0~20_combout\ : std_logic;
SIGNAL \rtc1|Add0~21\ : std_logic;
SIGNAL \rtc1|Add0~23\ : std_logic;
SIGNAL \rtc1|Add0~24_combout\ : std_logic;
SIGNAL \rtc1|Add0~25\ : std_logic;
SIGNAL \rtc1|Add0~26_combout\ : std_logic;
SIGNAL \rtc1|Add0~27\ : std_logic;
SIGNAL \rtc1|Add0~28_combout\ : std_logic;
SIGNAL \rtc1|Add0~29\ : std_logic;
SIGNAL \rtc1|Add0~30_combout\ : std_logic;
SIGNAL \rtc1|Add0~31\ : std_logic;
SIGNAL \rtc1|Add0~32_combout\ : std_logic;
SIGNAL \rtc1|Add0~33\ : std_logic;
SIGNAL \rtc1|Add0~34_combout\ : std_logic;
SIGNAL \rtc1|Add0~35\ : std_logic;
SIGNAL \rtc1|Add0~37\ : std_logic;
SIGNAL \rtc1|Add0~38_combout\ : std_logic;
SIGNAL \rtc1|Add0~39\ : std_logic;
SIGNAL \rtc1|Add0~41\ : std_logic;
SIGNAL \rtc1|Add0~43\ : std_logic;
SIGNAL \rtc1|Add0~44_combout\ : std_logic;
SIGNAL \rtc1|Add0~45\ : std_logic;
SIGNAL \rtc1|Add0~47\ : std_logic;
SIGNAL \rtc1|Add0~48_combout\ : std_logic;
SIGNAL \rtc1|Add0~49\ : std_logic;
SIGNAL \rtc1|Add0~50_combout\ : std_logic;
SIGNAL \rtc1|Add0~51\ : std_logic;
SIGNAL \rtc1|Add0~52_combout\ : std_logic;
SIGNAL \rtc1|Equal0~1_combout\ : std_logic;
SIGNAL \rtc1|Add0~53\ : std_logic;
SIGNAL \rtc1|Add0~55\ : std_logic;
SIGNAL \rtc1|Add0~56_combout\ : std_logic;
SIGNAL \rtc1|Add0~57\ : std_logic;
SIGNAL \rtc1|Add0~58_combout\ : std_logic;
SIGNAL \rtc1|Add0~59\ : std_logic;
SIGNAL \rtc1|Add0~60_combout\ : std_logic;
SIGNAL \rtc1|Equal0~0_combout\ : std_logic;
SIGNAL \rtc1|Add0~42_combout\ : std_logic;
SIGNAL \rtc1|Add0~40_combout\ : std_logic;
SIGNAL \rtc1|Equal0~2_combout\ : std_logic;
SIGNAL \rtc1|Equal0~4_combout\ : std_logic;
SIGNAL \rtc1|Equal0~5_combout\ : std_logic;
SIGNAL \rtc1|Add0~22_combout\ : std_logic;
SIGNAL \rtc1|Add0~18_combout\ : std_logic;
SIGNAL \rtc1|Equal0~6_combout\ : std_logic;
SIGNAL \rtc1|Equal0~9_combout\ : std_logic;
SIGNAL \rtc1|cnt~1_combout\ : std_logic;
SIGNAL \rtc1|cnt~0_combout\ : std_logic;
SIGNAL \rtc1|seconds_l[2]~0_combout\ : std_logic;
SIGNAL \q0:0:seg7_6|Mux6~0_combout\ : std_logic;
SIGNAL \q0:0:seg7_6|Mux5~0_combout\ : std_logic;
SIGNAL \q0:0:seg7_6|Mux4~0_combout\ : std_logic;
SIGNAL \q0:0:seg7_6|Mux3~0_combout\ : std_logic;
SIGNAL \q0:0:seg7_6|Mux2~0_combout\ : std_logic;
SIGNAL \q0:0:seg7_6|Mux1~0_combout\ : std_logic;
SIGNAL \q0:0:seg7_6|Mux0~0_combout\ : std_logic;
SIGNAL \rtc1|seconds_h[0]~2_combout\ : std_logic;
SIGNAL \rtc1|Equal1~0_combout\ : std_logic;
SIGNAL \rtc1|wrap~0_combout\ : std_logic;
SIGNAL \rtc1|cnt~2_combout\ : std_logic;
SIGNAL \rtc1|cnt~3_combout\ : std_logic;
SIGNAL \rtc1|seconds_h[3]~1_combout\ : std_logic;
SIGNAL \q0:1:seg7_6|Mux6~0_combout\ : std_logic;
SIGNAL \q0:1:seg7_6|Mux5~0_combout\ : std_logic;
SIGNAL \q0:1:seg7_6|Mux4~0_combout\ : std_logic;
SIGNAL \q0:1:seg7_6|Mux3~0_combout\ : std_logic;
SIGNAL \q0:1:seg7_6|Mux2~0_combout\ : std_logic;
SIGNAL \q0:1:seg7_6|Mux1~0_combout\ : std_logic;
SIGNAL \q0:1:seg7_6|Mux0~0_combout\ : std_logic;
SIGNAL \rtc1|Equal2~0_combout\ : std_logic;
SIGNAL \rtc1|wrap~1_combout\ : std_logic;
SIGNAL \rtc1|minutes_l[2]~0_combout\ : std_logic;
SIGNAL \rtc1|cnt~4_combout\ : std_logic;
SIGNAL \rtc1|cnt~5_combout\ : std_logic;
SIGNAL \rtc1|minutes_l[0]~1_combout\ : std_logic;
SIGNAL \q0:2:seg7_6|Mux6~0_combout\ : std_logic;
SIGNAL \q0:2:seg7_6|Mux5~0_combout\ : std_logic;
SIGNAL \q0:2:seg7_6|Mux4~0_combout\ : std_logic;
SIGNAL \q0:2:seg7_6|Mux3~0_combout\ : std_logic;
SIGNAL \q0:2:seg7_6|Mux2~0_combout\ : std_logic;
SIGNAL \q0:2:seg7_6|Mux1~0_combout\ : std_logic;
SIGNAL \q0:2:seg7_6|Mux0~0_combout\ : std_logic;
SIGNAL \rtc1|minutes_h[0]~2_combout\ : std_logic;
SIGNAL \rtc1|wrap~3_combout\ : std_logic;
SIGNAL \rtc1|wrap~4_combout\ : std_logic;
SIGNAL \rtc1|cnt~6_combout\ : std_logic;
SIGNAL \rtc1|minutes_h[3]~0_combout\ : std_logic;
SIGNAL \rtc1|minutes_h[3]~1_combout\ : std_logic;
SIGNAL \rtc1|cnt~7_combout\ : std_logic;
SIGNAL \q0:3:seg7_6|Mux6~0_combout\ : std_logic;
SIGNAL \q0:3:seg7_6|Mux5~0_combout\ : std_logic;
SIGNAL \q0:3:seg7_6|Mux4~0_combout\ : std_logic;
SIGNAL \q0:3:seg7_6|Mux3~0_combout\ : std_logic;
SIGNAL \q0:3:seg7_6|Mux2~0_combout\ : std_logic;
SIGNAL \q0:3:seg7_6|Mux1~0_combout\ : std_logic;
SIGNAL \q0:3:seg7_6|Mux0~0_combout\ : std_logic;
SIGNAL \rtc1|hours_l[0]~1_combout\ : std_logic;
SIGNAL \rtc1|Equal4~0_combout\ : std_logic;
SIGNAL \rtc1|wrap~5_combout\ : std_logic;
SIGNAL \rtc1|cnt~8_combout\ : std_logic;
SIGNAL \rtc1|hours_l[2]~0_combout\ : std_logic;
SIGNAL \rtc1|cnt~9_combout\ : std_logic;
SIGNAL \q0:4:seg7_6|Mux6~0_combout\ : std_logic;
SIGNAL \q0:4:seg7_6|Mux5~0_combout\ : std_logic;
SIGNAL \q0:4:seg7_6|Mux4~0_combout\ : std_logic;
SIGNAL \q0:4:seg7_6|Mux3~0_combout\ : std_logic;
SIGNAL \q0:4:seg7_6|Mux2~0_combout\ : std_logic;
SIGNAL \q0:4:seg7_6|Mux1~0_combout\ : std_logic;
SIGNAL \q0:4:seg7_6|Mux0~0_combout\ : std_logic;
SIGNAL \rtc1|Equal5~0_combout\ : std_logic;
SIGNAL \rtc1|wrap~6_combout\ : std_logic;
SIGNAL \rtc1|cnt~10_combout\ : std_logic;
SIGNAL \rtc1|hours_h[2]~2_combout\ : std_logic;
SIGNAL \rtc1|hours_h[3]~3_combout\ : std_logic;
SIGNAL \rtc1|cnt~11_combout\ : std_logic;
SIGNAL \rtc1|hours_h[2]~4_combout\ : std_logic;
SIGNAL \q0:5:seg7_6|Mux6~0_combout\ : std_logic;
SIGNAL \q0:5:seg7_6|Mux5~0_combout\ : std_logic;
SIGNAL \q0:5:seg7_6|Mux4~0_combout\ : std_logic;
SIGNAL \q0:5:seg7_6|Mux3~0_combout\ : std_logic;
SIGNAL \q0:5:seg7_6|Mux2~0_combout\ : std_logic;
SIGNAL \q0:5:seg7_6|Mux1~0_combout\ : std_logic;
SIGNAL \q0:5:seg7_6|Mux0~0_combout\ : std_logic;
SIGNAL \rtc1|ticks\ : std_logic_vector(30 DOWNTO 0);
SIGNAL \rtc1|seconds_l\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rtc1|seconds_h\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rtc1|minutes_l\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rtc1|minutes_h\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rtc1|hours_l\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rtc1|hours_h\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \KEY~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \q0:3:seg7_6|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \q0:2:seg7_6|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \q0:1:seg7_6|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \q0:0:seg7_6|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \ALT_INV_KEY~combout\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \q0:5:seg7_6|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \q0:4:seg7_6|ALT_INV_Mux0~0_combout\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
HEX4 <= ww_HEX4;
HEX5 <= ww_HEX5;
HEX6 <= ww_HEX6;
HEX7 <= ww_HEX7;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \CLOCK_50~combout\);
\q0:3:seg7_6|ALT_INV_Mux0~0_combout\ <= NOT \q0:3:seg7_6|Mux0~0_combout\;
\q0:2:seg7_6|ALT_INV_Mux0~0_combout\ <= NOT \q0:2:seg7_6|Mux0~0_combout\;
\q0:1:seg7_6|ALT_INV_Mux0~0_combout\ <= NOT \q0:1:seg7_6|Mux0~0_combout\;
\q0:0:seg7_6|ALT_INV_Mux0~0_combout\ <= NOT \q0:0:seg7_6|Mux0~0_combout\;
\ALT_INV_KEY~combout\(0) <= NOT \KEY~combout\(0);
\q0:5:seg7_6|ALT_INV_Mux0~0_combout\ <= NOT \q0:5:seg7_6|Mux0~0_combout\;
\q0:4:seg7_6|ALT_INV_Mux0~0_combout\ <= NOT \q0:4:seg7_6|Mux0~0_combout\;

-- Location: LCCOMB_X3_Y18_N6
\rtc1|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add0~4_combout\ = (\rtc1|ticks\(2) & (\rtc1|Add0~3\ $ (GND))) # (!\rtc1|ticks\(2) & (!\rtc1|Add0~3\ & VCC))
-- \rtc1|Add0~5\ = CARRY((\rtc1|ticks\(2) & !\rtc1|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|ticks\(2),
	datad => VCC,
	cin => \rtc1|Add0~3\,
	combout => \rtc1|Add0~4_combout\,
	cout => \rtc1|Add0~5\);

-- Location: LCCOMB_X3_Y18_N12
\rtc1|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add0~10_combout\ = (\rtc1|ticks\(5) & (!\rtc1|Add0~9\)) # (!\rtc1|ticks\(5) & ((\rtc1|Add0~9\) # (GND)))
-- \rtc1|Add0~11\ = CARRY((!\rtc1|Add0~9\) # (!\rtc1|ticks\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|ticks\(5),
	datad => VCC,
	cin => \rtc1|Add0~9\,
	combout => \rtc1|Add0~10_combout\,
	cout => \rtc1|Add0~11\);

-- Location: LCCOMB_X3_Y17_N6
\rtc1|Add0~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add0~36_combout\ = (\rtc1|ticks\(18) & (\rtc1|Add0~35\ $ (GND))) # (!\rtc1|ticks\(18) & (!\rtc1|Add0~35\ & VCC))
-- \rtc1|Add0~37\ = CARRY((\rtc1|ticks\(18) & !\rtc1|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|ticks\(18),
	datad => VCC,
	cin => \rtc1|Add0~35\,
	combout => \rtc1|Add0~36_combout\,
	cout => \rtc1|Add0~37\);

-- Location: LCCOMB_X3_Y17_N16
\rtc1|Add0~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add0~46_combout\ = (\rtc1|ticks\(23) & (!\rtc1|Add0~45\)) # (!\rtc1|ticks\(23) & ((\rtc1|Add0~45\) # (GND)))
-- \rtc1|Add0~47\ = CARRY((!\rtc1|Add0~45\) # (!\rtc1|ticks\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|ticks\(23),
	datad => VCC,
	cin => \rtc1|Add0~45\,
	combout => \rtc1|Add0~46_combout\,
	cout => \rtc1|Add0~47\);

-- Location: LCCOMB_X3_Y17_N24
\rtc1|Add0~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add0~54_combout\ = (\rtc1|ticks\(27) & (!\rtc1|Add0~53\)) # (!\rtc1|ticks\(27) & ((\rtc1|Add0~53\) # (GND)))
-- \rtc1|Add0~55\ = CARRY((!\rtc1|Add0~53\) # (!\rtc1|ticks\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|ticks\(27),
	datad => VCC,
	cin => \rtc1|Add0~53\,
	combout => \rtc1|Add0~54_combout\,
	cout => \rtc1|Add0~55\);

-- Location: LCFF_X3_Y17_N25
\rtc1|ticks[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add0~54_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|ticks\(27));

-- Location: LCFF_X3_Y17_N17
\rtc1|ticks[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add0~46_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|ticks\(23));

-- Location: LCFF_X3_Y17_N7
\rtc1|ticks[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add0~36_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|ticks\(18));

-- Location: LCCOMB_X2_Y17_N12
\rtc1|Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Equal0~3_combout\ = (!\rtc1|ticks\(17) & (!\rtc1|ticks\(18) & (!\rtc1|ticks\(19) & !\rtc1|ticks\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|ticks\(17),
	datab => \rtc1|ticks\(18),
	datac => \rtc1|ticks\(19),
	datad => \rtc1|ticks\(16),
	combout => \rtc1|Equal0~3_combout\);

-- Location: LCFF_X2_Y18_N17
\rtc1|ticks[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|cnt~15_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|ticks\(5));

-- Location: LCCOMB_X2_Y18_N12
\rtc1|Equal0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Equal0~7_combout\ = (\rtc1|ticks\(5) & (\rtc1|ticks\(6) & (\rtc1|ticks\(7) & \rtc1|ticks\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|ticks\(5),
	datab => \rtc1|ticks\(6),
	datac => \rtc1|ticks\(7),
	datad => \rtc1|ticks\(4),
	combout => \rtc1|Equal0~7_combout\);

-- Location: LCFF_X2_Y18_N15
\rtc1|ticks[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|cnt~17_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|ticks\(2));

-- Location: LCCOMB_X2_Y18_N0
\rtc1|Equal0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Equal0~8_combout\ = (\rtc1|Equal0~7_combout\ & (!\rtc1|ticks\(2) & (!\rtc1|ticks\(3) & \rtc1|ticks\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|Equal0~7_combout\,
	datab => \rtc1|ticks\(2),
	datac => \rtc1|ticks\(3),
	datad => \rtc1|ticks\(1),
	combout => \rtc1|Equal0~8_combout\);

-- Location: LCCOMB_X64_Y8_N24
\rtc1|seconds_h[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|seconds_h[3]~0_combout\ = (\rtc1|seconds_h\(2) & (\rtc1|seconds_h\(1) & \rtc1|seconds_h\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|seconds_h\(2),
	datab => \rtc1|seconds_h\(1),
	datac => \rtc1|seconds_h\(0),
	combout => \rtc1|seconds_h[3]~0_combout\);

-- Location: LCCOMB_X1_Y14_N22
\rtc1|wrap~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|wrap~2_combout\ = (\rtc1|minutes_l\(3) & (!\rtc1|minutes_l\(1) & (\rtc1|minutes_l\(0) & !\rtc1|minutes_l\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|minutes_l\(3),
	datab => \rtc1|minutes_l\(1),
	datac => \rtc1|minutes_l\(0),
	datad => \rtc1|minutes_l\(2),
	combout => \rtc1|wrap~2_combout\);

-- Location: LCCOMB_X2_Y18_N16
\rtc1|cnt~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|cnt~15_combout\ = (\rtc1|Add0~10_combout\ & !\rtc1|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rtc1|Add0~10_combout\,
	datad => \rtc1|Equal0~9_combout\,
	combout => \rtc1|cnt~15_combout\);

-- Location: LCCOMB_X2_Y18_N14
\rtc1|cnt~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|cnt~17_combout\ = (!\rtc1|Equal0~9_combout\ & \rtc1|Add0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rtc1|Equal0~9_combout\,
	datad => \rtc1|Add0~4_combout\,
	combout => \rtc1|cnt~17_combout\);

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

-- Location: LCCOMB_X64_Y7_N24
\rtc1|seconds_l[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|seconds_l[0]~1_combout\ = !\rtc1|seconds_l\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rtc1|seconds_l\(0),
	combout => \rtc1|seconds_l[0]~1_combout\);

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

-- Location: LCCOMB_X3_Y18_N2
\rtc1|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add0~0_combout\ = \rtc1|ticks\(0) $ (VCC)
-- \rtc1|Add0~1\ = CARRY(\rtc1|ticks\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rtc1|ticks\(0),
	datad => VCC,
	combout => \rtc1|Add0~0_combout\,
	cout => \rtc1|Add0~1\);

-- Location: LCFF_X3_Y18_N3
\rtc1|ticks[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add0~0_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|ticks\(0));

-- Location: LCCOMB_X3_Y18_N4
\rtc1|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add0~2_combout\ = (\rtc1|ticks\(1) & (!\rtc1|Add0~1\)) # (!\rtc1|ticks\(1) & ((\rtc1|Add0~1\) # (GND)))
-- \rtc1|Add0~3\ = CARRY((!\rtc1|Add0~1\) # (!\rtc1|ticks\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rtc1|ticks\(1),
	datad => VCC,
	cin => \rtc1|Add0~1\,
	combout => \rtc1|Add0~2_combout\,
	cout => \rtc1|Add0~3\);

-- Location: LCFF_X3_Y18_N5
\rtc1|ticks[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add0~2_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|ticks\(1));

-- Location: LCCOMB_X3_Y18_N8
\rtc1|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add0~6_combout\ = (\rtc1|ticks\(3) & (!\rtc1|Add0~5\)) # (!\rtc1|ticks\(3) & ((\rtc1|Add0~5\) # (GND)))
-- \rtc1|Add0~7\ = CARRY((!\rtc1|Add0~5\) # (!\rtc1|ticks\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rtc1|ticks\(3),
	datad => VCC,
	cin => \rtc1|Add0~5\,
	combout => \rtc1|Add0~6_combout\,
	cout => \rtc1|Add0~7\);

-- Location: LCFF_X3_Y18_N9
\rtc1|ticks[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add0~6_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|ticks\(3));

-- Location: LCCOMB_X3_Y18_N10
\rtc1|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add0~8_combout\ = (\rtc1|ticks\(4) & (\rtc1|Add0~7\ $ (GND))) # (!\rtc1|ticks\(4) & (!\rtc1|Add0~7\ & VCC))
-- \rtc1|Add0~9\ = CARRY((\rtc1|ticks\(4) & !\rtc1|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rtc1|ticks\(4),
	datad => VCC,
	cin => \rtc1|Add0~7\,
	combout => \rtc1|Add0~8_combout\,
	cout => \rtc1|Add0~9\);

-- Location: LCCOMB_X2_Y18_N26
\rtc1|cnt~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|cnt~16_combout\ = (\rtc1|Add0~8_combout\ & !\rtc1|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rtc1|Add0~8_combout\,
	datad => \rtc1|Equal0~9_combout\,
	combout => \rtc1|cnt~16_combout\);

-- Location: LCFF_X2_Y18_N27
\rtc1|ticks[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|cnt~16_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|ticks\(4));

-- Location: LCCOMB_X3_Y18_N14
\rtc1|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add0~12_combout\ = (\rtc1|ticks\(6) & (\rtc1|Add0~11\ $ (GND))) # (!\rtc1|ticks\(6) & (!\rtc1|Add0~11\ & VCC))
-- \rtc1|Add0~13\ = CARRY((\rtc1|ticks\(6) & !\rtc1|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rtc1|ticks\(6),
	datad => VCC,
	cin => \rtc1|Add0~11\,
	combout => \rtc1|Add0~12_combout\,
	cout => \rtc1|Add0~13\);

-- Location: LCCOMB_X2_Y18_N22
\rtc1|cnt~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|cnt~14_combout\ = (\rtc1|Add0~12_combout\ & !\rtc1|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rtc1|Add0~12_combout\,
	datad => \rtc1|Equal0~9_combout\,
	combout => \rtc1|cnt~14_combout\);

-- Location: LCFF_X2_Y18_N23
\rtc1|ticks[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|cnt~14_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|ticks\(6));

-- Location: LCCOMB_X3_Y18_N16
\rtc1|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add0~14_combout\ = (\rtc1|ticks\(7) & (!\rtc1|Add0~13\)) # (!\rtc1|ticks\(7) & ((\rtc1|Add0~13\) # (GND)))
-- \rtc1|Add0~15\ = CARRY((!\rtc1|Add0~13\) # (!\rtc1|ticks\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rtc1|ticks\(7),
	datad => VCC,
	cin => \rtc1|Add0~13\,
	combout => \rtc1|Add0~14_combout\,
	cout => \rtc1|Add0~15\);

-- Location: LCCOMB_X2_Y18_N4
\rtc1|cnt~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|cnt~13_combout\ = (\rtc1|Add0~14_combout\ & !\rtc1|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rtc1|Add0~14_combout\,
	datad => \rtc1|Equal0~9_combout\,
	combout => \rtc1|cnt~13_combout\);

-- Location: LCFF_X2_Y18_N5
\rtc1|ticks[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|cnt~13_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|ticks\(7));

-- Location: LCCOMB_X3_Y18_N18
\rtc1|Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add0~16_combout\ = (\rtc1|ticks\(8) & (\rtc1|Add0~15\ $ (GND))) # (!\rtc1|ticks\(8) & (!\rtc1|Add0~15\ & VCC))
-- \rtc1|Add0~17\ = CARRY((\rtc1|ticks\(8) & !\rtc1|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rtc1|ticks\(8),
	datad => VCC,
	cin => \rtc1|Add0~15\,
	combout => \rtc1|Add0~16_combout\,
	cout => \rtc1|Add0~17\);

-- Location: LCCOMB_X2_Y18_N24
\rtc1|cnt~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|cnt~12_combout\ = (!\rtc1|Equal0~9_combout\ & \rtc1|Add0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rtc1|Equal0~9_combout\,
	datad => \rtc1|Add0~16_combout\,
	combout => \rtc1|cnt~12_combout\);

-- Location: LCFF_X2_Y18_N25
\rtc1|ticks[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|cnt~12_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|ticks\(8));

-- Location: LCCOMB_X3_Y18_N20
\rtc1|Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add0~18_combout\ = (\rtc1|ticks\(9) & (!\rtc1|Add0~17\)) # (!\rtc1|ticks\(9) & ((\rtc1|Add0~17\) # (GND)))
-- \rtc1|Add0~19\ = CARRY((!\rtc1|Add0~17\) # (!\rtc1|ticks\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|ticks\(9),
	datad => VCC,
	cin => \rtc1|Add0~17\,
	combout => \rtc1|Add0~18_combout\,
	cout => \rtc1|Add0~19\);

-- Location: LCCOMB_X3_Y18_N22
\rtc1|Add0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add0~20_combout\ = (\rtc1|ticks\(10) & (\rtc1|Add0~19\ $ (GND))) # (!\rtc1|ticks\(10) & (!\rtc1|Add0~19\ & VCC))
-- \rtc1|Add0~21\ = CARRY((\rtc1|ticks\(10) & !\rtc1|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rtc1|ticks\(10),
	datad => VCC,
	cin => \rtc1|Add0~19\,
	combout => \rtc1|Add0~20_combout\,
	cout => \rtc1|Add0~21\);

-- Location: LCFF_X3_Y18_N23
\rtc1|ticks[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add0~20_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|ticks\(10));

-- Location: LCCOMB_X3_Y18_N24
\rtc1|Add0~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add0~22_combout\ = (\rtc1|ticks\(11) & (!\rtc1|Add0~21\)) # (!\rtc1|ticks\(11) & ((\rtc1|Add0~21\) # (GND)))
-- \rtc1|Add0~23\ = CARRY((!\rtc1|Add0~21\) # (!\rtc1|ticks\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|ticks\(11),
	datad => VCC,
	cin => \rtc1|Add0~21\,
	combout => \rtc1|Add0~22_combout\,
	cout => \rtc1|Add0~23\);

-- Location: LCCOMB_X3_Y18_N26
\rtc1|Add0~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add0~24_combout\ = (\rtc1|ticks\(12) & (\rtc1|Add0~23\ $ (GND))) # (!\rtc1|ticks\(12) & (!\rtc1|Add0~23\ & VCC))
-- \rtc1|Add0~25\ = CARRY((\rtc1|ticks\(12) & !\rtc1|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rtc1|ticks\(12),
	datad => VCC,
	cin => \rtc1|Add0~23\,
	combout => \rtc1|Add0~24_combout\,
	cout => \rtc1|Add0~25\);

-- Location: LCFF_X3_Y18_N27
\rtc1|ticks[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add0~24_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|ticks\(12));

-- Location: LCCOMB_X3_Y18_N28
\rtc1|Add0~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add0~26_combout\ = (\rtc1|ticks\(13) & (!\rtc1|Add0~25\)) # (!\rtc1|ticks\(13) & ((\rtc1|Add0~25\) # (GND)))
-- \rtc1|Add0~27\ = CARRY((!\rtc1|Add0~25\) # (!\rtc1|ticks\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rtc1|ticks\(13),
	datad => VCC,
	cin => \rtc1|Add0~25\,
	combout => \rtc1|Add0~26_combout\,
	cout => \rtc1|Add0~27\);

-- Location: LCFF_X3_Y18_N29
\rtc1|ticks[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add0~26_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|ticks\(13));

-- Location: LCCOMB_X3_Y18_N30
\rtc1|Add0~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add0~28_combout\ = (\rtc1|ticks\(14) & (\rtc1|Add0~27\ $ (GND))) # (!\rtc1|ticks\(14) & (!\rtc1|Add0~27\ & VCC))
-- \rtc1|Add0~29\ = CARRY((\rtc1|ticks\(14) & !\rtc1|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rtc1|ticks\(14),
	datad => VCC,
	cin => \rtc1|Add0~27\,
	combout => \rtc1|Add0~28_combout\,
	cout => \rtc1|Add0~29\);

-- Location: LCFF_X3_Y18_N31
\rtc1|ticks[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add0~28_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|ticks\(14));

-- Location: LCCOMB_X3_Y17_N0
\rtc1|Add0~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add0~30_combout\ = (\rtc1|ticks\(15) & (!\rtc1|Add0~29\)) # (!\rtc1|ticks\(15) & ((\rtc1|Add0~29\) # (GND)))
-- \rtc1|Add0~31\ = CARRY((!\rtc1|Add0~29\) # (!\rtc1|ticks\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rtc1|ticks\(15),
	datad => VCC,
	cin => \rtc1|Add0~29\,
	combout => \rtc1|Add0~30_combout\,
	cout => \rtc1|Add0~31\);

-- Location: LCFF_X3_Y17_N1
\rtc1|ticks[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add0~30_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|ticks\(15));

-- Location: LCCOMB_X3_Y17_N2
\rtc1|Add0~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add0~32_combout\ = (\rtc1|ticks\(16) & (\rtc1|Add0~31\ $ (GND))) # (!\rtc1|ticks\(16) & (!\rtc1|Add0~31\ & VCC))
-- \rtc1|Add0~33\ = CARRY((\rtc1|ticks\(16) & !\rtc1|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rtc1|ticks\(16),
	datad => VCC,
	cin => \rtc1|Add0~31\,
	combout => \rtc1|Add0~32_combout\,
	cout => \rtc1|Add0~33\);

-- Location: LCFF_X3_Y17_N3
\rtc1|ticks[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add0~32_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|ticks\(16));

-- Location: LCCOMB_X3_Y17_N4
\rtc1|Add0~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add0~34_combout\ = (\rtc1|ticks\(17) & (!\rtc1|Add0~33\)) # (!\rtc1|ticks\(17) & ((\rtc1|Add0~33\) # (GND)))
-- \rtc1|Add0~35\ = CARRY((!\rtc1|Add0~33\) # (!\rtc1|ticks\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rtc1|ticks\(17),
	datad => VCC,
	cin => \rtc1|Add0~33\,
	combout => \rtc1|Add0~34_combout\,
	cout => \rtc1|Add0~35\);

-- Location: LCFF_X3_Y17_N5
\rtc1|ticks[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add0~34_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|ticks\(17));

-- Location: LCCOMB_X3_Y17_N8
\rtc1|Add0~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add0~38_combout\ = (\rtc1|ticks\(19) & (!\rtc1|Add0~37\)) # (!\rtc1|ticks\(19) & ((\rtc1|Add0~37\) # (GND)))
-- \rtc1|Add0~39\ = CARRY((!\rtc1|Add0~37\) # (!\rtc1|ticks\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rtc1|ticks\(19),
	datad => VCC,
	cin => \rtc1|Add0~37\,
	combout => \rtc1|Add0~38_combout\,
	cout => \rtc1|Add0~39\);

-- Location: LCFF_X3_Y17_N9
\rtc1|ticks[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add0~38_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|ticks\(19));

-- Location: LCCOMB_X3_Y17_N10
\rtc1|Add0~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add0~40_combout\ = (\rtc1|ticks\(20) & (\rtc1|Add0~39\ $ (GND))) # (!\rtc1|ticks\(20) & (!\rtc1|Add0~39\ & VCC))
-- \rtc1|Add0~41\ = CARRY((\rtc1|ticks\(20) & !\rtc1|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|ticks\(20),
	datad => VCC,
	cin => \rtc1|Add0~39\,
	combout => \rtc1|Add0~40_combout\,
	cout => \rtc1|Add0~41\);

-- Location: LCCOMB_X3_Y17_N12
\rtc1|Add0~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add0~42_combout\ = (\rtc1|ticks\(21) & (!\rtc1|Add0~41\)) # (!\rtc1|ticks\(21) & ((\rtc1|Add0~41\) # (GND)))
-- \rtc1|Add0~43\ = CARRY((!\rtc1|Add0~41\) # (!\rtc1|ticks\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|ticks\(21),
	datad => VCC,
	cin => \rtc1|Add0~41\,
	combout => \rtc1|Add0~42_combout\,
	cout => \rtc1|Add0~43\);

-- Location: LCCOMB_X3_Y17_N14
\rtc1|Add0~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add0~44_combout\ = (\rtc1|ticks\(22) & (\rtc1|Add0~43\ $ (GND))) # (!\rtc1|ticks\(22) & (!\rtc1|Add0~43\ & VCC))
-- \rtc1|Add0~45\ = CARRY((\rtc1|ticks\(22) & !\rtc1|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rtc1|ticks\(22),
	datad => VCC,
	cin => \rtc1|Add0~43\,
	combout => \rtc1|Add0~44_combout\,
	cout => \rtc1|Add0~45\);

-- Location: LCFF_X3_Y17_N15
\rtc1|ticks[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add0~44_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|ticks\(22));

-- Location: LCCOMB_X3_Y17_N18
\rtc1|Add0~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add0~48_combout\ = (\rtc1|ticks\(24) & (\rtc1|Add0~47\ $ (GND))) # (!\rtc1|ticks\(24) & (!\rtc1|Add0~47\ & VCC))
-- \rtc1|Add0~49\ = CARRY((\rtc1|ticks\(24) & !\rtc1|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rtc1|ticks\(24),
	datad => VCC,
	cin => \rtc1|Add0~47\,
	combout => \rtc1|Add0~48_combout\,
	cout => \rtc1|Add0~49\);

-- Location: LCFF_X3_Y17_N19
\rtc1|ticks[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add0~48_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|ticks\(24));

-- Location: LCCOMB_X3_Y17_N20
\rtc1|Add0~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add0~50_combout\ = (\rtc1|ticks\(25) & (!\rtc1|Add0~49\)) # (!\rtc1|ticks\(25) & ((\rtc1|Add0~49\) # (GND)))
-- \rtc1|Add0~51\ = CARRY((!\rtc1|Add0~49\) # (!\rtc1|ticks\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|ticks\(25),
	datad => VCC,
	cin => \rtc1|Add0~49\,
	combout => \rtc1|Add0~50_combout\,
	cout => \rtc1|Add0~51\);

-- Location: LCFF_X3_Y17_N21
\rtc1|ticks[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add0~50_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|ticks\(25));

-- Location: LCCOMB_X3_Y17_N22
\rtc1|Add0~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add0~52_combout\ = (\rtc1|ticks\(26) & (\rtc1|Add0~51\ $ (GND))) # (!\rtc1|ticks\(26) & (!\rtc1|Add0~51\ & VCC))
-- \rtc1|Add0~53\ = CARRY((\rtc1|ticks\(26) & !\rtc1|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rtc1|ticks\(26),
	datad => VCC,
	cin => \rtc1|Add0~51\,
	combout => \rtc1|Add0~52_combout\,
	cout => \rtc1|Add0~53\);

-- Location: LCFF_X3_Y17_N23
\rtc1|ticks[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add0~52_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|ticks\(26));

-- Location: LCCOMB_X2_Y17_N0
\rtc1|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Equal0~1_combout\ = (!\rtc1|ticks\(27) & (!\rtc1|ticks\(25) & (!\rtc1|ticks\(26) & !\rtc1|ticks\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|ticks\(27),
	datab => \rtc1|ticks\(25),
	datac => \rtc1|ticks\(26),
	datad => \rtc1|ticks\(24),
	combout => \rtc1|Equal0~1_combout\);

-- Location: LCCOMB_X3_Y17_N26
\rtc1|Add0~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add0~56_combout\ = (\rtc1|ticks\(28) & (\rtc1|Add0~55\ $ (GND))) # (!\rtc1|ticks\(28) & (!\rtc1|Add0~55\ & VCC))
-- \rtc1|Add0~57\ = CARRY((\rtc1|ticks\(28) & !\rtc1|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rtc1|ticks\(28),
	datad => VCC,
	cin => \rtc1|Add0~55\,
	combout => \rtc1|Add0~56_combout\,
	cout => \rtc1|Add0~57\);

-- Location: LCFF_X3_Y17_N27
\rtc1|ticks[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add0~56_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|ticks\(28));

-- Location: LCCOMB_X3_Y17_N28
\rtc1|Add0~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add0~58_combout\ = (\rtc1|ticks\(29) & (!\rtc1|Add0~57\)) # (!\rtc1|ticks\(29) & ((\rtc1|Add0~57\) # (GND)))
-- \rtc1|Add0~59\ = CARRY((!\rtc1|Add0~57\) # (!\rtc1|ticks\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rtc1|ticks\(29),
	datad => VCC,
	cin => \rtc1|Add0~57\,
	combout => \rtc1|Add0~58_combout\,
	cout => \rtc1|Add0~59\);

-- Location: LCFF_X3_Y17_N29
\rtc1|ticks[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add0~58_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|ticks\(29));

-- Location: LCCOMB_X3_Y17_N30
\rtc1|Add0~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add0~60_combout\ = \rtc1|Add0~59\ $ (!\rtc1|ticks\(30))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \rtc1|ticks\(30),
	cin => \rtc1|Add0~59\,
	combout => \rtc1|Add0~60_combout\);

-- Location: LCFF_X3_Y17_N31
\rtc1|ticks[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add0~60_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|ticks\(30));

-- Location: LCCOMB_X1_Y17_N14
\rtc1|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Equal0~0_combout\ = (!\rtc1|ticks\(28) & (!\rtc1|ticks\(29) & (!\rtc1|ticks\(30) & \rtc1|ticks\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|ticks\(28),
	datab => \rtc1|ticks\(29),
	datac => \rtc1|ticks\(30),
	datad => \rtc1|ticks\(0),
	combout => \rtc1|Equal0~0_combout\);

-- Location: LCFF_X3_Y17_N13
\rtc1|ticks[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add0~42_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|ticks\(21));

-- Location: LCFF_X3_Y17_N11
\rtc1|ticks[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add0~40_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|ticks\(20));

-- Location: LCCOMB_X2_Y17_N2
\rtc1|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Equal0~2_combout\ = (!\rtc1|ticks\(23) & (!\rtc1|ticks\(21) & (!\rtc1|ticks\(20) & !\rtc1|ticks\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|ticks\(23),
	datab => \rtc1|ticks\(21),
	datac => \rtc1|ticks\(20),
	datad => \rtc1|ticks\(22),
	combout => \rtc1|Equal0~2_combout\);

-- Location: LCCOMB_X2_Y17_N6
\rtc1|Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Equal0~4_combout\ = (\rtc1|Equal0~3_combout\ & (\rtc1|Equal0~1_combout\ & (\rtc1|Equal0~0_combout\ & \rtc1|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|Equal0~3_combout\,
	datab => \rtc1|Equal0~1_combout\,
	datac => \rtc1|Equal0~0_combout\,
	datad => \rtc1|Equal0~2_combout\,
	combout => \rtc1|Equal0~4_combout\);

-- Location: LCCOMB_X3_Y18_N0
\rtc1|Equal0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Equal0~5_combout\ = (!\rtc1|ticks\(15) & (!\rtc1|ticks\(13) & (!\rtc1|ticks\(14) & !\rtc1|ticks\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|ticks\(15),
	datab => \rtc1|ticks\(13),
	datac => \rtc1|ticks\(14),
	datad => \rtc1|ticks\(12),
	combout => \rtc1|Equal0~5_combout\);

-- Location: LCFF_X3_Y18_N25
\rtc1|ticks[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add0~22_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|ticks\(11));

-- Location: LCFF_X3_Y18_N21
\rtc1|ticks[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add0~18_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|ticks\(9));

-- Location: LCCOMB_X2_Y18_N2
\rtc1|Equal0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Equal0~6_combout\ = (!\rtc1|ticks\(10) & (!\rtc1|ticks\(11) & (\rtc1|ticks\(8) & !\rtc1|ticks\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|ticks\(10),
	datab => \rtc1|ticks\(11),
	datac => \rtc1|ticks\(8),
	datad => \rtc1|ticks\(9),
	combout => \rtc1|Equal0~6_combout\);

-- Location: LCCOMB_X2_Y18_N18
\rtc1|Equal0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Equal0~9_combout\ = (\rtc1|Equal0~8_combout\ & (\rtc1|Equal0~4_combout\ & (\rtc1|Equal0~5_combout\ & \rtc1|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|Equal0~8_combout\,
	datab => \rtc1|Equal0~4_combout\,
	datac => \rtc1|Equal0~5_combout\,
	datad => \rtc1|Equal0~6_combout\,
	combout => \rtc1|Equal0~9_combout\);

-- Location: LCFF_X64_Y7_N25
\rtc1|seconds_l[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|seconds_l[0]~1_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \rtc1|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|seconds_l\(0));

-- Location: LCCOMB_X64_Y7_N22
\rtc1|cnt~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|cnt~1_combout\ = (\rtc1|seconds_l\(2) & (\rtc1|seconds_l\(3) $ (((\rtc1|seconds_l\(1) & \rtc1|seconds_l\(0)))))) # (!\rtc1|seconds_l\(2) & (\rtc1|seconds_l\(3) & ((\rtc1|seconds_l\(1)) # (!\rtc1|seconds_l\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|seconds_l\(2),
	datab => \rtc1|seconds_l\(1),
	datac => \rtc1|seconds_l\(3),
	datad => \rtc1|seconds_l\(0),
	combout => \rtc1|cnt~1_combout\);

-- Location: LCFF_X64_Y7_N23
\rtc1|seconds_l[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|cnt~1_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \rtc1|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|seconds_l\(3));

-- Location: LCCOMB_X64_Y7_N2
\rtc1|cnt~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|cnt~0_combout\ = (\rtc1|seconds_l\(1) & (((!\rtc1|seconds_l\(0))))) # (!\rtc1|seconds_l\(1) & (\rtc1|seconds_l\(0) & ((\rtc1|seconds_l\(2)) # (!\rtc1|seconds_l\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|seconds_l\(2),
	datab => \rtc1|seconds_l\(3),
	datac => \rtc1|seconds_l\(1),
	datad => \rtc1|seconds_l\(0),
	combout => \rtc1|cnt~0_combout\);

-- Location: LCFF_X64_Y7_N3
\rtc1|seconds_l[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|cnt~0_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \rtc1|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|seconds_l\(1));

-- Location: LCCOMB_X64_Y7_N20
\rtc1|seconds_l[2]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|seconds_l[2]~0_combout\ = \rtc1|seconds_l\(2) $ (((\rtc1|seconds_l\(0) & (\rtc1|seconds_l\(1) & \rtc1|Equal0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|seconds_l\(0),
	datab => \rtc1|seconds_l\(1),
	datac => \rtc1|seconds_l\(2),
	datad => \rtc1|Equal0~9_combout\,
	combout => \rtc1|seconds_l[2]~0_combout\);

-- Location: LCFF_X64_Y7_N21
\rtc1|seconds_l[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|seconds_l[2]~0_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|seconds_l\(2));

-- Location: LCCOMB_X64_Y7_N16
\q0:0:seg7_6|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \q0:0:seg7_6|Mux6~0_combout\ = (\rtc1|seconds_l\(2) & (!\rtc1|seconds_l\(1) & (\rtc1|seconds_l\(3) $ (!\rtc1|seconds_l\(0))))) # (!\rtc1|seconds_l\(2) & (\rtc1|seconds_l\(0) & (\rtc1|seconds_l\(3) $ (!\rtc1|seconds_l\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|seconds_l\(2),
	datab => \rtc1|seconds_l\(3),
	datac => \rtc1|seconds_l\(0),
	datad => \rtc1|seconds_l\(1),
	combout => \q0:0:seg7_6|Mux6~0_combout\);

-- Location: LCCOMB_X64_Y7_N26
\q0:0:seg7_6|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \q0:0:seg7_6|Mux5~0_combout\ = (\rtc1|seconds_l\(3) & ((\rtc1|seconds_l\(0) & ((\rtc1|seconds_l\(1)))) # (!\rtc1|seconds_l\(0) & (\rtc1|seconds_l\(2))))) # (!\rtc1|seconds_l\(3) & (\rtc1|seconds_l\(2) & (\rtc1|seconds_l\(0) $ (\rtc1|seconds_l\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|seconds_l\(2),
	datab => \rtc1|seconds_l\(3),
	datac => \rtc1|seconds_l\(0),
	datad => \rtc1|seconds_l\(1),
	combout => \q0:0:seg7_6|Mux5~0_combout\);

-- Location: LCCOMB_X64_Y7_N12
\q0:0:seg7_6|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \q0:0:seg7_6|Mux4~0_combout\ = (\rtc1|seconds_l\(2) & (\rtc1|seconds_l\(3) & ((\rtc1|seconds_l\(1)) # (!\rtc1|seconds_l\(0))))) # (!\rtc1|seconds_l\(2) & (!\rtc1|seconds_l\(3) & (!\rtc1|seconds_l\(0) & \rtc1|seconds_l\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|seconds_l\(2),
	datab => \rtc1|seconds_l\(3),
	datac => \rtc1|seconds_l\(0),
	datad => \rtc1|seconds_l\(1),
	combout => \q0:0:seg7_6|Mux4~0_combout\);

-- Location: LCCOMB_X64_Y7_N6
\q0:0:seg7_6|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \q0:0:seg7_6|Mux3~0_combout\ = (\rtc1|seconds_l\(0) & (\rtc1|seconds_l\(2) $ (((!\rtc1|seconds_l\(1)))))) # (!\rtc1|seconds_l\(0) & ((\rtc1|seconds_l\(2) & (!\rtc1|seconds_l\(3) & !\rtc1|seconds_l\(1))) # (!\rtc1|seconds_l\(2) & (\rtc1|seconds_l\(3) & 
-- \rtc1|seconds_l\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|seconds_l\(2),
	datab => \rtc1|seconds_l\(3),
	datac => \rtc1|seconds_l\(0),
	datad => \rtc1|seconds_l\(1),
	combout => \q0:0:seg7_6|Mux3~0_combout\);

-- Location: LCCOMB_X64_Y7_N0
\q0:0:seg7_6|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \q0:0:seg7_6|Mux2~0_combout\ = (\rtc1|seconds_l\(1) & (((!\rtc1|seconds_l\(3) & \rtc1|seconds_l\(0))))) # (!\rtc1|seconds_l\(1) & ((\rtc1|seconds_l\(2) & (!\rtc1|seconds_l\(3))) # (!\rtc1|seconds_l\(2) & ((\rtc1|seconds_l\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|seconds_l\(2),
	datab => \rtc1|seconds_l\(3),
	datac => \rtc1|seconds_l\(0),
	datad => \rtc1|seconds_l\(1),
	combout => \q0:0:seg7_6|Mux2~0_combout\);

-- Location: LCCOMB_X64_Y7_N10
\q0:0:seg7_6|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \q0:0:seg7_6|Mux1~0_combout\ = (\rtc1|seconds_l\(2) & (\rtc1|seconds_l\(0) & (\rtc1|seconds_l\(3) $ (\rtc1|seconds_l\(1))))) # (!\rtc1|seconds_l\(2) & (!\rtc1|seconds_l\(3) & ((\rtc1|seconds_l\(0)) # (\rtc1|seconds_l\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|seconds_l\(2),
	datab => \rtc1|seconds_l\(3),
	datac => \rtc1|seconds_l\(0),
	datad => \rtc1|seconds_l\(1),
	combout => \q0:0:seg7_6|Mux1~0_combout\);

-- Location: LCCOMB_X64_Y7_N4
\q0:0:seg7_6|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \q0:0:seg7_6|Mux0~0_combout\ = (\rtc1|seconds_l\(0) & ((\rtc1|seconds_l\(3)) # (\rtc1|seconds_l\(2) $ (\rtc1|seconds_l\(1))))) # (!\rtc1|seconds_l\(0) & ((\rtc1|seconds_l\(1)) # (\rtc1|seconds_l\(2) $ (\rtc1|seconds_l\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|seconds_l\(2),
	datab => \rtc1|seconds_l\(3),
	datac => \rtc1|seconds_l\(0),
	datad => \rtc1|seconds_l\(1),
	combout => \q0:0:seg7_6|Mux0~0_combout\);

-- Location: LCCOMB_X64_Y8_N8
\rtc1|seconds_h[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|seconds_h[0]~2_combout\ = !\rtc1|seconds_h\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rtc1|seconds_h\(0),
	combout => \rtc1|seconds_h[0]~2_combout\);

-- Location: LCCOMB_X64_Y7_N14
\rtc1|Equal1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Equal1~0_combout\ = (!\rtc1|seconds_l\(2) & (\rtc1|seconds_l\(3) & (\rtc1|seconds_l\(0) & !\rtc1|seconds_l\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|seconds_l\(2),
	datab => \rtc1|seconds_l\(3),
	datac => \rtc1|seconds_l\(0),
	datad => \rtc1|seconds_l\(1),
	combout => \rtc1|Equal1~0_combout\);

-- Location: LCCOMB_X64_Y8_N30
\rtc1|wrap~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|wrap~0_combout\ = (\rtc1|Equal0~9_combout\ & \rtc1|Equal1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rtc1|Equal0~9_combout\,
	datad => \rtc1|Equal1~0_combout\,
	combout => \rtc1|wrap~0_combout\);

-- Location: LCFF_X64_Y8_N9
\rtc1|seconds_h[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|seconds_h[0]~2_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \rtc1|wrap~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|seconds_h\(0));

-- Location: LCCOMB_X64_Y8_N26
\rtc1|cnt~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|cnt~2_combout\ = (\rtc1|seconds_h\(0) & (!\rtc1|seconds_h\(1) & ((\rtc1|seconds_h\(3)) # (!\rtc1|seconds_h\(2))))) # (!\rtc1|seconds_h\(0) & (((\rtc1|seconds_h\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|seconds_h\(3),
	datab => \rtc1|seconds_h\(0),
	datac => \rtc1|seconds_h\(1),
	datad => \rtc1|seconds_h\(2),
	combout => \rtc1|cnt~2_combout\);

-- Location: LCFF_X64_Y8_N27
\rtc1|seconds_h[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|cnt~2_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \rtc1|wrap~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|seconds_h\(1));

-- Location: LCCOMB_X64_Y8_N12
\rtc1|cnt~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|cnt~3_combout\ = (\rtc1|seconds_h\(0) & ((\rtc1|seconds_h\(2) & (\rtc1|seconds_h\(3) & !\rtc1|seconds_h\(1))) # (!\rtc1|seconds_h\(2) & ((\rtc1|seconds_h\(1)))))) # (!\rtc1|seconds_h\(0) & (((\rtc1|seconds_h\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|seconds_h\(3),
	datab => \rtc1|seconds_h\(0),
	datac => \rtc1|seconds_h\(2),
	datad => \rtc1|seconds_h\(1),
	combout => \rtc1|cnt~3_combout\);

-- Location: LCFF_X64_Y8_N13
\rtc1|seconds_h[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|cnt~3_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \rtc1|wrap~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|seconds_h\(2));

-- Location: LCCOMB_X64_Y8_N6
\rtc1|seconds_h[3]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|seconds_h[3]~1_combout\ = \rtc1|seconds_h\(3) $ (((\rtc1|seconds_h[3]~0_combout\ & (\rtc1|Equal0~9_combout\ & \rtc1|Equal1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|seconds_h[3]~0_combout\,
	datab => \rtc1|Equal0~9_combout\,
	datac => \rtc1|seconds_h\(3),
	datad => \rtc1|Equal1~0_combout\,
	combout => \rtc1|seconds_h[3]~1_combout\);

-- Location: LCFF_X64_Y8_N7
\rtc1|seconds_h[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|seconds_h[3]~1_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|seconds_h\(3));

-- Location: LCCOMB_X64_Y8_N16
\q0:1:seg7_6|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \q0:1:seg7_6|Mux6~0_combout\ = (\rtc1|seconds_h\(2) & (!\rtc1|seconds_h\(1) & (\rtc1|seconds_h\(0) $ (!\rtc1|seconds_h\(3))))) # (!\rtc1|seconds_h\(2) & (\rtc1|seconds_h\(0) & (\rtc1|seconds_h\(1) $ (!\rtc1|seconds_h\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|seconds_h\(2),
	datab => \rtc1|seconds_h\(1),
	datac => \rtc1|seconds_h\(0),
	datad => \rtc1|seconds_h\(3),
	combout => \q0:1:seg7_6|Mux6~0_combout\);

-- Location: LCCOMB_X64_Y8_N18
\q0:1:seg7_6|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \q0:1:seg7_6|Mux5~0_combout\ = (\rtc1|seconds_h\(1) & ((\rtc1|seconds_h\(0) & ((\rtc1|seconds_h\(3)))) # (!\rtc1|seconds_h\(0) & (\rtc1|seconds_h\(2))))) # (!\rtc1|seconds_h\(1) & (\rtc1|seconds_h\(2) & (\rtc1|seconds_h\(0) $ (\rtc1|seconds_h\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|seconds_h\(2),
	datab => \rtc1|seconds_h\(1),
	datac => \rtc1|seconds_h\(0),
	datad => \rtc1|seconds_h\(3),
	combout => \q0:1:seg7_6|Mux5~0_combout\);

-- Location: LCCOMB_X64_Y8_N28
\q0:1:seg7_6|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \q0:1:seg7_6|Mux4~0_combout\ = (\rtc1|seconds_h\(2) & (\rtc1|seconds_h\(3) & ((\rtc1|seconds_h\(1)) # (!\rtc1|seconds_h\(0))))) # (!\rtc1|seconds_h\(2) & (\rtc1|seconds_h\(1) & (!\rtc1|seconds_h\(0) & !\rtc1|seconds_h\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|seconds_h\(2),
	datab => \rtc1|seconds_h\(1),
	datac => \rtc1|seconds_h\(0),
	datad => \rtc1|seconds_h\(3),
	combout => \q0:1:seg7_6|Mux4~0_combout\);

-- Location: LCCOMB_X64_Y8_N14
\q0:1:seg7_6|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \q0:1:seg7_6|Mux3~0_combout\ = (\rtc1|seconds_h\(0) & (\rtc1|seconds_h\(2) $ ((!\rtc1|seconds_h\(1))))) # (!\rtc1|seconds_h\(0) & ((\rtc1|seconds_h\(2) & (!\rtc1|seconds_h\(1) & !\rtc1|seconds_h\(3))) # (!\rtc1|seconds_h\(2) & (\rtc1|seconds_h\(1) & 
-- \rtc1|seconds_h\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|seconds_h\(2),
	datab => \rtc1|seconds_h\(1),
	datac => \rtc1|seconds_h\(0),
	datad => \rtc1|seconds_h\(3),
	combout => \q0:1:seg7_6|Mux3~0_combout\);

-- Location: LCCOMB_X64_Y8_N0
\q0:1:seg7_6|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \q0:1:seg7_6|Mux2~0_combout\ = (\rtc1|seconds_h\(1) & (((\rtc1|seconds_h\(0) & !\rtc1|seconds_h\(3))))) # (!\rtc1|seconds_h\(1) & ((\rtc1|seconds_h\(2) & ((!\rtc1|seconds_h\(3)))) # (!\rtc1|seconds_h\(2) & (\rtc1|seconds_h\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|seconds_h\(2),
	datab => \rtc1|seconds_h\(1),
	datac => \rtc1|seconds_h\(0),
	datad => \rtc1|seconds_h\(3),
	combout => \q0:1:seg7_6|Mux2~0_combout\);

-- Location: LCCOMB_X64_Y8_N2
\q0:1:seg7_6|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \q0:1:seg7_6|Mux1~0_combout\ = (\rtc1|seconds_h\(2) & (\rtc1|seconds_h\(0) & (\rtc1|seconds_h\(1) $ (\rtc1|seconds_h\(3))))) # (!\rtc1|seconds_h\(2) & (!\rtc1|seconds_h\(3) & ((\rtc1|seconds_h\(1)) # (\rtc1|seconds_h\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|seconds_h\(2),
	datab => \rtc1|seconds_h\(1),
	datac => \rtc1|seconds_h\(0),
	datad => \rtc1|seconds_h\(3),
	combout => \q0:1:seg7_6|Mux1~0_combout\);

-- Location: LCCOMB_X64_Y8_N20
\q0:1:seg7_6|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \q0:1:seg7_6|Mux0~0_combout\ = (\rtc1|seconds_h\(0) & ((\rtc1|seconds_h\(3)) # (\rtc1|seconds_h\(2) $ (\rtc1|seconds_h\(1))))) # (!\rtc1|seconds_h\(0) & ((\rtc1|seconds_h\(1)) # (\rtc1|seconds_h\(2) $ (\rtc1|seconds_h\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110101101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|seconds_h\(2),
	datab => \rtc1|seconds_h\(1),
	datac => \rtc1|seconds_h\(0),
	datad => \rtc1|seconds_h\(3),
	combout => \q0:1:seg7_6|Mux0~0_combout\);

-- Location: LCCOMB_X64_Y8_N10
\rtc1|Equal2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Equal2~0_combout\ = (\rtc1|seconds_h\(2) & (!\rtc1|seconds_h\(1) & (\rtc1|seconds_h\(0) & !\rtc1|seconds_h\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|seconds_h\(2),
	datab => \rtc1|seconds_h\(1),
	datac => \rtc1|seconds_h\(0),
	datad => \rtc1|seconds_h\(3),
	combout => \rtc1|Equal2~0_combout\);

-- Location: LCCOMB_X2_Y18_N28
\rtc1|wrap~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|wrap~1_combout\ = (\rtc1|Equal0~9_combout\ & (\rtc1|Equal1~0_combout\ & \rtc1|Equal2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rtc1|Equal0~9_combout\,
	datac => \rtc1|Equal1~0_combout\,
	datad => \rtc1|Equal2~0_combout\,
	combout => \rtc1|wrap~1_combout\);

-- Location: LCCOMB_X1_Y14_N28
\rtc1|minutes_l[2]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|minutes_l[2]~0_combout\ = \rtc1|minutes_l\(2) $ (((\rtc1|minutes_l\(0) & (\rtc1|minutes_l\(1) & \rtc1|wrap~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|minutes_l\(0),
	datab => \rtc1|minutes_l\(1),
	datac => \rtc1|minutes_l\(2),
	datad => \rtc1|wrap~1_combout\,
	combout => \rtc1|minutes_l[2]~0_combout\);

-- Location: LCFF_X1_Y14_N29
\rtc1|minutes_l[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|minutes_l[2]~0_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|minutes_l\(2));

-- Location: LCCOMB_X1_Y14_N2
\rtc1|cnt~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|cnt~4_combout\ = (\rtc1|minutes_l\(0) & (!\rtc1|minutes_l\(1) & ((\rtc1|minutes_l\(2)) # (!\rtc1|minutes_l\(3))))) # (!\rtc1|minutes_l\(0) & (((\rtc1|minutes_l\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|minutes_l\(0),
	datab => \rtc1|minutes_l\(2),
	datac => \rtc1|minutes_l\(1),
	datad => \rtc1|minutes_l\(3),
	combout => \rtc1|cnt~4_combout\);

-- Location: LCFF_X1_Y14_N3
\rtc1|minutes_l[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|cnt~4_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \rtc1|wrap~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|minutes_l\(1));

-- Location: LCCOMB_X1_Y14_N6
\rtc1|cnt~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|cnt~5_combout\ = (\rtc1|minutes_l\(0) & ((\rtc1|minutes_l\(1) & (\rtc1|minutes_l\(3) $ (\rtc1|minutes_l\(2)))) # (!\rtc1|minutes_l\(1) & (\rtc1|minutes_l\(3) & \rtc1|minutes_l\(2))))) # (!\rtc1|minutes_l\(0) & (((\rtc1|minutes_l\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|minutes_l\(0),
	datab => \rtc1|minutes_l\(1),
	datac => \rtc1|minutes_l\(3),
	datad => \rtc1|minutes_l\(2),
	combout => \rtc1|cnt~5_combout\);

-- Location: LCFF_X1_Y14_N7
\rtc1|minutes_l[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|cnt~5_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \rtc1|wrap~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|minutes_l\(3));

-- Location: LCCOMB_X1_Y14_N24
\rtc1|minutes_l[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|minutes_l[0]~1_combout\ = !\rtc1|minutes_l\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rtc1|minutes_l\(0),
	combout => \rtc1|minutes_l[0]~1_combout\);

-- Location: LCFF_X1_Y14_N25
\rtc1|minutes_l[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|minutes_l[0]~1_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \rtc1|wrap~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|minutes_l\(0));

-- Location: LCCOMB_X1_Y14_N16
\q0:2:seg7_6|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \q0:2:seg7_6|Mux6~0_combout\ = (\rtc1|minutes_l\(3) & (\rtc1|minutes_l\(0) & (\rtc1|minutes_l\(1) $ (\rtc1|minutes_l\(2))))) # (!\rtc1|minutes_l\(3) & (!\rtc1|minutes_l\(1) & (\rtc1|minutes_l\(0) $ (\rtc1|minutes_l\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|minutes_l\(3),
	datab => \rtc1|minutes_l\(1),
	datac => \rtc1|minutes_l\(0),
	datad => \rtc1|minutes_l\(2),
	combout => \q0:2:seg7_6|Mux6~0_combout\);

-- Location: LCCOMB_X1_Y14_N18
\q0:2:seg7_6|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \q0:2:seg7_6|Mux5~0_combout\ = (\rtc1|minutes_l\(3) & ((\rtc1|minutes_l\(0) & (\rtc1|minutes_l\(1))) # (!\rtc1|minutes_l\(0) & ((\rtc1|minutes_l\(2)))))) # (!\rtc1|minutes_l\(3) & (\rtc1|minutes_l\(2) & (\rtc1|minutes_l\(1) $ (\rtc1|minutes_l\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|minutes_l\(3),
	datab => \rtc1|minutes_l\(1),
	datac => \rtc1|minutes_l\(0),
	datad => \rtc1|minutes_l\(2),
	combout => \q0:2:seg7_6|Mux5~0_combout\);

-- Location: LCCOMB_X1_Y14_N20
\q0:2:seg7_6|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \q0:2:seg7_6|Mux4~0_combout\ = (\rtc1|minutes_l\(3) & (\rtc1|minutes_l\(2) & ((\rtc1|minutes_l\(1)) # (!\rtc1|minutes_l\(0))))) # (!\rtc1|minutes_l\(3) & (\rtc1|minutes_l\(1) & (!\rtc1|minutes_l\(0) & !\rtc1|minutes_l\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|minutes_l\(3),
	datab => \rtc1|minutes_l\(1),
	datac => \rtc1|minutes_l\(0),
	datad => \rtc1|minutes_l\(2),
	combout => \q0:2:seg7_6|Mux4~0_combout\);

-- Location: LCCOMB_X1_Y14_N30
\q0:2:seg7_6|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \q0:2:seg7_6|Mux3~0_combout\ = (\rtc1|minutes_l\(0) & ((\rtc1|minutes_l\(1) $ (!\rtc1|minutes_l\(2))))) # (!\rtc1|minutes_l\(0) & ((\rtc1|minutes_l\(3) & (\rtc1|minutes_l\(1) & !\rtc1|minutes_l\(2))) # (!\rtc1|minutes_l\(3) & (!\rtc1|minutes_l\(1) & 
-- \rtc1|minutes_l\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|minutes_l\(3),
	datab => \rtc1|minutes_l\(1),
	datac => \rtc1|minutes_l\(0),
	datad => \rtc1|minutes_l\(2),
	combout => \q0:2:seg7_6|Mux3~0_combout\);

-- Location: LCCOMB_X1_Y14_N0
\q0:2:seg7_6|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \q0:2:seg7_6|Mux2~0_combout\ = (\rtc1|minutes_l\(1) & (!\rtc1|minutes_l\(3) & (\rtc1|minutes_l\(0)))) # (!\rtc1|minutes_l\(1) & ((\rtc1|minutes_l\(2) & (!\rtc1|minutes_l\(3))) # (!\rtc1|minutes_l\(2) & ((\rtc1|minutes_l\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|minutes_l\(3),
	datab => \rtc1|minutes_l\(1),
	datac => \rtc1|minutes_l\(0),
	datad => \rtc1|minutes_l\(2),
	combout => \q0:2:seg7_6|Mux2~0_combout\);

-- Location: LCCOMB_X1_Y14_N10
\q0:2:seg7_6|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \q0:2:seg7_6|Mux1~0_combout\ = (\rtc1|minutes_l\(1) & (!\rtc1|minutes_l\(3) & ((\rtc1|minutes_l\(0)) # (!\rtc1|minutes_l\(2))))) # (!\rtc1|minutes_l\(1) & (\rtc1|minutes_l\(0) & (\rtc1|minutes_l\(3) $ (!\rtc1|minutes_l\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|minutes_l\(3),
	datab => \rtc1|minutes_l\(1),
	datac => \rtc1|minutes_l\(0),
	datad => \rtc1|minutes_l\(2),
	combout => \q0:2:seg7_6|Mux1~0_combout\);

-- Location: LCCOMB_X1_Y14_N12
\q0:2:seg7_6|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \q0:2:seg7_6|Mux0~0_combout\ = (\rtc1|minutes_l\(0) & ((\rtc1|minutes_l\(3)) # (\rtc1|minutes_l\(1) $ (\rtc1|minutes_l\(2))))) # (!\rtc1|minutes_l\(0) & ((\rtc1|minutes_l\(1)) # (\rtc1|minutes_l\(3) $ (\rtc1|minutes_l\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|minutes_l\(3),
	datab => \rtc1|minutes_l\(1),
	datac => \rtc1|minutes_l\(0),
	datad => \rtc1|minutes_l\(2),
	combout => \q0:2:seg7_6|Mux0~0_combout\);

-- Location: LCCOMB_X1_Y18_N8
\rtc1|minutes_h[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|minutes_h[0]~2_combout\ = !\rtc1|minutes_h\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rtc1|minutes_h\(0),
	combout => \rtc1|minutes_h[0]~2_combout\);

-- Location: LCCOMB_X2_Y18_N30
\rtc1|wrap~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|wrap~3_combout\ = (\rtc1|wrap~2_combout\ & (\rtc1|Equal0~6_combout\ & (\rtc1|Equal0~5_combout\ & \rtc1|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|wrap~2_combout\,
	datab => \rtc1|Equal0~6_combout\,
	datac => \rtc1|Equal0~5_combout\,
	datad => \rtc1|Equal2~0_combout\,
	combout => \rtc1|wrap~3_combout\);

-- Location: LCCOMB_X1_Y18_N22
\rtc1|wrap~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|wrap~4_combout\ = (\rtc1|Equal0~8_combout\ & (\rtc1|wrap~3_combout\ & (\rtc1|Equal0~4_combout\ & \rtc1|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|Equal0~8_combout\,
	datab => \rtc1|wrap~3_combout\,
	datac => \rtc1|Equal0~4_combout\,
	datad => \rtc1|Equal1~0_combout\,
	combout => \rtc1|wrap~4_combout\);

-- Location: LCFF_X1_Y18_N9
\rtc1|minutes_h[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|minutes_h[0]~2_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \rtc1|wrap~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|minutes_h\(0));

-- Location: LCCOMB_X1_Y18_N10
\rtc1|cnt~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|cnt~6_combout\ = (\rtc1|minutes_h\(0) & (!\rtc1|minutes_h\(1) & ((\rtc1|minutes_h\(3)) # (!\rtc1|minutes_h\(2))))) # (!\rtc1|minutes_h\(0) & (((\rtc1|minutes_h\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|minutes_h\(2),
	datab => \rtc1|minutes_h\(0),
	datac => \rtc1|minutes_h\(1),
	datad => \rtc1|minutes_h\(3),
	combout => \rtc1|cnt~6_combout\);

-- Location: LCFF_X1_Y18_N11
\rtc1|minutes_h[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|cnt~6_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \rtc1|wrap~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|minutes_h\(1));

-- Location: LCCOMB_X1_Y18_N0
\rtc1|minutes_h[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|minutes_h[3]~0_combout\ = (\rtc1|minutes_h\(2) & (\rtc1|minutes_h\(0) & \rtc1|minutes_h\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|minutes_h\(2),
	datac => \rtc1|minutes_h\(0),
	datad => \rtc1|minutes_h\(1),
	combout => \rtc1|minutes_h[3]~0_combout\);

-- Location: LCCOMB_X1_Y18_N30
\rtc1|minutes_h[3]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|minutes_h[3]~1_combout\ = \rtc1|minutes_h\(3) $ (((\rtc1|minutes_h[3]~0_combout\ & \rtc1|wrap~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rtc1|minutes_h[3]~0_combout\,
	datac => \rtc1|minutes_h\(3),
	datad => \rtc1|wrap~4_combout\,
	combout => \rtc1|minutes_h[3]~1_combout\);

-- Location: LCFF_X1_Y18_N31
\rtc1|minutes_h[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|minutes_h[3]~1_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|minutes_h\(3));

-- Location: LCCOMB_X1_Y18_N4
\rtc1|cnt~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|cnt~7_combout\ = (\rtc1|minutes_h\(1) & (\rtc1|minutes_h\(0) $ ((\rtc1|minutes_h\(2))))) # (!\rtc1|minutes_h\(1) & (\rtc1|minutes_h\(2) & ((\rtc1|minutes_h\(3)) # (!\rtc1|minutes_h\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|minutes_h\(1),
	datab => \rtc1|minutes_h\(0),
	datac => \rtc1|minutes_h\(2),
	datad => \rtc1|minutes_h\(3),
	combout => \rtc1|cnt~7_combout\);

-- Location: LCFF_X1_Y18_N5
\rtc1|minutes_h[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|cnt~7_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \rtc1|wrap~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|minutes_h\(2));

-- Location: LCCOMB_X1_Y18_N16
\q0:3:seg7_6|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \q0:3:seg7_6|Mux6~0_combout\ = (\rtc1|minutes_h\(2) & (!\rtc1|minutes_h\(1) & (\rtc1|minutes_h\(3) $ (!\rtc1|minutes_h\(0))))) # (!\rtc1|minutes_h\(2) & (\rtc1|minutes_h\(0) & (\rtc1|minutes_h\(3) $ (!\rtc1|minutes_h\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|minutes_h\(2),
	datab => \rtc1|minutes_h\(3),
	datac => \rtc1|minutes_h\(0),
	datad => \rtc1|minutes_h\(1),
	combout => \q0:3:seg7_6|Mux6~0_combout\);

-- Location: LCCOMB_X1_Y18_N18
\q0:3:seg7_6|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \q0:3:seg7_6|Mux5~0_combout\ = (\rtc1|minutes_h\(3) & ((\rtc1|minutes_h\(0) & ((\rtc1|minutes_h\(1)))) # (!\rtc1|minutes_h\(0) & (\rtc1|minutes_h\(2))))) # (!\rtc1|minutes_h\(3) & (\rtc1|minutes_h\(2) & (\rtc1|minutes_h\(0) $ (\rtc1|minutes_h\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|minutes_h\(2),
	datab => \rtc1|minutes_h\(3),
	datac => \rtc1|minutes_h\(0),
	datad => \rtc1|minutes_h\(1),
	combout => \q0:3:seg7_6|Mux5~0_combout\);

-- Location: LCCOMB_X1_Y18_N20
\q0:3:seg7_6|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \q0:3:seg7_6|Mux4~0_combout\ = (\rtc1|minutes_h\(2) & (\rtc1|minutes_h\(3) & ((\rtc1|minutes_h\(1)) # (!\rtc1|minutes_h\(0))))) # (!\rtc1|minutes_h\(2) & (!\rtc1|minutes_h\(3) & (!\rtc1|minutes_h\(0) & \rtc1|minutes_h\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|minutes_h\(2),
	datab => \rtc1|minutes_h\(3),
	datac => \rtc1|minutes_h\(0),
	datad => \rtc1|minutes_h\(1),
	combout => \q0:3:seg7_6|Mux4~0_combout\);

-- Location: LCCOMB_X1_Y18_N6
\q0:3:seg7_6|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \q0:3:seg7_6|Mux3~0_combout\ = (\rtc1|minutes_h\(0) & (\rtc1|minutes_h\(2) $ (((!\rtc1|minutes_h\(1)))))) # (!\rtc1|minutes_h\(0) & ((\rtc1|minutes_h\(2) & (!\rtc1|minutes_h\(3) & !\rtc1|minutes_h\(1))) # (!\rtc1|minutes_h\(2) & (\rtc1|minutes_h\(3) & 
-- \rtc1|minutes_h\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|minutes_h\(2),
	datab => \rtc1|minutes_h\(3),
	datac => \rtc1|minutes_h\(0),
	datad => \rtc1|minutes_h\(1),
	combout => \q0:3:seg7_6|Mux3~0_combout\);

-- Location: LCCOMB_X1_Y18_N24
\q0:3:seg7_6|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \q0:3:seg7_6|Mux2~0_combout\ = (\rtc1|minutes_h\(1) & (((!\rtc1|minutes_h\(3) & \rtc1|minutes_h\(0))))) # (!\rtc1|minutes_h\(1) & ((\rtc1|minutes_h\(2) & (!\rtc1|minutes_h\(3))) # (!\rtc1|minutes_h\(2) & ((\rtc1|minutes_h\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|minutes_h\(2),
	datab => \rtc1|minutes_h\(3),
	datac => \rtc1|minutes_h\(0),
	datad => \rtc1|minutes_h\(1),
	combout => \q0:3:seg7_6|Mux2~0_combout\);

-- Location: LCCOMB_X1_Y18_N26
\q0:3:seg7_6|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \q0:3:seg7_6|Mux1~0_combout\ = (\rtc1|minutes_h\(2) & (\rtc1|minutes_h\(0) & (\rtc1|minutes_h\(3) $ (\rtc1|minutes_h\(1))))) # (!\rtc1|minutes_h\(2) & (!\rtc1|minutes_h\(3) & ((\rtc1|minutes_h\(0)) # (\rtc1|minutes_h\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|minutes_h\(2),
	datab => \rtc1|minutes_h\(3),
	datac => \rtc1|minutes_h\(0),
	datad => \rtc1|minutes_h\(1),
	combout => \q0:3:seg7_6|Mux1~0_combout\);

-- Location: LCCOMB_X1_Y18_N12
\q0:3:seg7_6|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \q0:3:seg7_6|Mux0~0_combout\ = (\rtc1|minutes_h\(0) & ((\rtc1|minutes_h\(3)) # (\rtc1|minutes_h\(2) $ (\rtc1|minutes_h\(1))))) # (!\rtc1|minutes_h\(0) & ((\rtc1|minutes_h\(1)) # (\rtc1|minutes_h\(2) $ (\rtc1|minutes_h\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|minutes_h\(2),
	datab => \rtc1|minutes_h\(3),
	datac => \rtc1|minutes_h\(0),
	datad => \rtc1|minutes_h\(1),
	combout => \q0:3:seg7_6|Mux0~0_combout\);

-- Location: LCCOMB_X1_Y17_N0
\rtc1|hours_l[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|hours_l[0]~1_combout\ = !\rtc1|hours_l\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rtc1|hours_l\(0),
	combout => \rtc1|hours_l[0]~1_combout\);

-- Location: LCCOMB_X1_Y18_N2
\rtc1|Equal4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Equal4~0_combout\ = (\rtc1|minutes_h\(2) & (!\rtc1|minutes_h\(3) & (\rtc1|minutes_h\(0) & !\rtc1|minutes_h\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|minutes_h\(2),
	datab => \rtc1|minutes_h\(3),
	datac => \rtc1|minutes_h\(0),
	datad => \rtc1|minutes_h\(1),
	combout => \rtc1|Equal4~0_combout\);

-- Location: LCCOMB_X1_Y17_N24
\rtc1|wrap~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|wrap~5_combout\ = (\rtc1|Equal4~0_combout\ & \rtc1|wrap~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rtc1|Equal4~0_combout\,
	datad => \rtc1|wrap~4_combout\,
	combout => \rtc1|wrap~5_combout\);

-- Location: LCFF_X1_Y17_N1
\rtc1|hours_l[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|hours_l[0]~1_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \rtc1|wrap~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|hours_l\(0));

-- Location: LCCOMB_X1_Y17_N26
\rtc1|cnt~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|cnt~8_combout\ = (\rtc1|hours_l\(1) & (((!\rtc1|hours_l\(0))))) # (!\rtc1|hours_l\(1) & (\rtc1|hours_l\(0) & ((\rtc1|hours_l\(2)) # (!\rtc1|hours_l\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|hours_l\(3),
	datab => \rtc1|hours_l\(2),
	datac => \rtc1|hours_l\(1),
	datad => \rtc1|hours_l\(0),
	combout => \rtc1|cnt~8_combout\);

-- Location: LCFF_X1_Y17_N27
\rtc1|hours_l[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|cnt~8_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \rtc1|wrap~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|hours_l\(1));

-- Location: LCCOMB_X1_Y17_N28
\rtc1|hours_l[2]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|hours_l[2]~0_combout\ = \rtc1|hours_l\(2) $ (((\rtc1|wrap~5_combout\ & (\rtc1|hours_l\(1) & \rtc1|hours_l\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|wrap~5_combout\,
	datab => \rtc1|hours_l\(1),
	datac => \rtc1|hours_l\(2),
	datad => \rtc1|hours_l\(0),
	combout => \rtc1|hours_l[2]~0_combout\);

-- Location: LCFF_X1_Y17_N29
\rtc1|hours_l[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|hours_l[2]~0_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|hours_l\(2));

-- Location: LCCOMB_X1_Y17_N6
\rtc1|cnt~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|cnt~9_combout\ = (\rtc1|hours_l\(1) & (\rtc1|hours_l\(3) $ (((\rtc1|hours_l\(2) & \rtc1|hours_l\(0)))))) # (!\rtc1|hours_l\(1) & (\rtc1|hours_l\(3) & ((\rtc1|hours_l\(2)) # (!\rtc1|hours_l\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|hours_l\(1),
	datab => \rtc1|hours_l\(2),
	datac => \rtc1|hours_l\(3),
	datad => \rtc1|hours_l\(0),
	combout => \rtc1|cnt~9_combout\);

-- Location: LCFF_X1_Y17_N7
\rtc1|hours_l[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|cnt~9_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \rtc1|wrap~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|hours_l\(3));

-- Location: LCCOMB_X1_Y17_N16
\q0:4:seg7_6|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \q0:4:seg7_6|Mux6~0_combout\ = (\rtc1|hours_l\(3) & (\rtc1|hours_l\(0) & (\rtc1|hours_l\(2) $ (\rtc1|hours_l\(1))))) # (!\rtc1|hours_l\(3) & (!\rtc1|hours_l\(1) & (\rtc1|hours_l\(2) $ (\rtc1|hours_l\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|hours_l\(3),
	datab => \rtc1|hours_l\(2),
	datac => \rtc1|hours_l\(1),
	datad => \rtc1|hours_l\(0),
	combout => \q0:4:seg7_6|Mux6~0_combout\);

-- Location: LCCOMB_X1_Y17_N18
\q0:4:seg7_6|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \q0:4:seg7_6|Mux5~0_combout\ = (\rtc1|hours_l\(3) & ((\rtc1|hours_l\(0) & ((\rtc1|hours_l\(1)))) # (!\rtc1|hours_l\(0) & (\rtc1|hours_l\(2))))) # (!\rtc1|hours_l\(3) & (\rtc1|hours_l\(2) & (\rtc1|hours_l\(1) $ (\rtc1|hours_l\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|hours_l\(3),
	datab => \rtc1|hours_l\(2),
	datac => \rtc1|hours_l\(1),
	datad => \rtc1|hours_l\(0),
	combout => \q0:4:seg7_6|Mux5~0_combout\);

-- Location: LCCOMB_X1_Y17_N20
\q0:4:seg7_6|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \q0:4:seg7_6|Mux4~0_combout\ = (\rtc1|hours_l\(3) & (\rtc1|hours_l\(2) & ((\rtc1|hours_l\(1)) # (!\rtc1|hours_l\(0))))) # (!\rtc1|hours_l\(3) & (!\rtc1|hours_l\(2) & (\rtc1|hours_l\(1) & !\rtc1|hours_l\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|hours_l\(3),
	datab => \rtc1|hours_l\(2),
	datac => \rtc1|hours_l\(1),
	datad => \rtc1|hours_l\(0),
	combout => \q0:4:seg7_6|Mux4~0_combout\);

-- Location: LCCOMB_X1_Y17_N22
\q0:4:seg7_6|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \q0:4:seg7_6|Mux3~0_combout\ = (\rtc1|hours_l\(0) & ((\rtc1|hours_l\(2) $ (!\rtc1|hours_l\(1))))) # (!\rtc1|hours_l\(0) & ((\rtc1|hours_l\(3) & (!\rtc1|hours_l\(2) & \rtc1|hours_l\(1))) # (!\rtc1|hours_l\(3) & (\rtc1|hours_l\(2) & !\rtc1|hours_l\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|hours_l\(3),
	datab => \rtc1|hours_l\(2),
	datac => \rtc1|hours_l\(1),
	datad => \rtc1|hours_l\(0),
	combout => \q0:4:seg7_6|Mux3~0_combout\);

-- Location: LCCOMB_X1_Y17_N8
\q0:4:seg7_6|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \q0:4:seg7_6|Mux2~0_combout\ = (\rtc1|hours_l\(1) & (!\rtc1|hours_l\(3) & ((\rtc1|hours_l\(0))))) # (!\rtc1|hours_l\(1) & ((\rtc1|hours_l\(2) & (!\rtc1|hours_l\(3))) # (!\rtc1|hours_l\(2) & ((\rtc1|hours_l\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|hours_l\(3),
	datab => \rtc1|hours_l\(2),
	datac => \rtc1|hours_l\(1),
	datad => \rtc1|hours_l\(0),
	combout => \q0:4:seg7_6|Mux2~0_combout\);

-- Location: LCCOMB_X1_Y17_N10
\q0:4:seg7_6|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \q0:4:seg7_6|Mux1~0_combout\ = (\rtc1|hours_l\(2) & (\rtc1|hours_l\(0) & (\rtc1|hours_l\(3) $ (\rtc1|hours_l\(1))))) # (!\rtc1|hours_l\(2) & (!\rtc1|hours_l\(3) & ((\rtc1|hours_l\(1)) # (\rtc1|hours_l\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|hours_l\(3),
	datab => \rtc1|hours_l\(2),
	datac => \rtc1|hours_l\(1),
	datad => \rtc1|hours_l\(0),
	combout => \q0:4:seg7_6|Mux1~0_combout\);

-- Location: LCCOMB_X1_Y17_N12
\q0:4:seg7_6|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \q0:4:seg7_6|Mux0~0_combout\ = (\rtc1|hours_l\(0) & ((\rtc1|hours_l\(3)) # (\rtc1|hours_l\(2) $ (\rtc1|hours_l\(1))))) # (!\rtc1|hours_l\(0) & ((\rtc1|hours_l\(1)) # (\rtc1|hours_l\(3) $ (\rtc1|hours_l\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111011110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|hours_l\(3),
	datab => \rtc1|hours_l\(2),
	datac => \rtc1|hours_l\(1),
	datad => \rtc1|hours_l\(0),
	combout => \q0:4:seg7_6|Mux0~0_combout\);

-- Location: LCCOMB_X1_Y17_N2
\rtc1|Equal5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Equal5~0_combout\ = (\rtc1|hours_l\(3) & (!\rtc1|hours_l\(2) & (!\rtc1|hours_l\(1) & \rtc1|hours_l\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|hours_l\(3),
	datab => \rtc1|hours_l\(2),
	datac => \rtc1|hours_l\(1),
	datad => \rtc1|hours_l\(0),
	combout => \rtc1|Equal5~0_combout\);

-- Location: LCCOMB_X1_Y18_N28
\rtc1|wrap~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|wrap~6_combout\ = (\rtc1|Equal4~0_combout\ & (\rtc1|Equal5~0_combout\ & \rtc1|wrap~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rtc1|Equal4~0_combout\,
	datac => \rtc1|Equal5~0_combout\,
	datad => \rtc1|wrap~4_combout\,
	combout => \rtc1|wrap~6_combout\);

-- Location: LCCOMB_X1_Y24_N24
\rtc1|cnt~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|cnt~10_combout\ = (!\rtc1|hours_h\(0) & ((\rtc1|hours_h\(2)) # ((\rtc1|hours_h\(3)) # (!\rtc1|hours_h\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|hours_h\(2),
	datab => \rtc1|hours_h\(1),
	datac => \rtc1|hours_h\(0),
	datad => \rtc1|hours_h\(3),
	combout => \rtc1|cnt~10_combout\);

-- Location: LCFF_X1_Y24_N25
\rtc1|hours_h[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|cnt~10_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \rtc1|wrap~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|hours_h\(0));

-- Location: LCCOMB_X1_Y24_N22
\rtc1|hours_h[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|hours_h[2]~2_combout\ = (\rtc1|hours_h\(1) & \rtc1|hours_h\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rtc1|hours_h\(1),
	datac => \rtc1|hours_h\(0),
	combout => \rtc1|hours_h[2]~2_combout\);

-- Location: LCCOMB_X1_Y24_N6
\rtc1|hours_h[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|hours_h[3]~3_combout\ = \rtc1|hours_h\(3) $ (((\rtc1|hours_h\(2) & (\rtc1|wrap~6_combout\ & \rtc1|hours_h[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|hours_h\(2),
	datab => \rtc1|wrap~6_combout\,
	datac => \rtc1|hours_h\(3),
	datad => \rtc1|hours_h[2]~2_combout\,
	combout => \rtc1|hours_h[3]~3_combout\);

-- Location: LCFF_X1_Y24_N7
\rtc1|hours_h[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|hours_h[3]~3_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|hours_h\(3));

-- Location: LCCOMB_X1_Y24_N2
\rtc1|cnt~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|cnt~11_combout\ = (\rtc1|hours_h\(0) & (((!\rtc1|hours_h\(1))))) # (!\rtc1|hours_h\(0) & (\rtc1|hours_h\(1) & ((\rtc1|hours_h\(2)) # (\rtc1|hours_h\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|hours_h\(0),
	datab => \rtc1|hours_h\(2),
	datac => \rtc1|hours_h\(1),
	datad => \rtc1|hours_h\(3),
	combout => \rtc1|cnt~11_combout\);

-- Location: LCFF_X1_Y24_N3
\rtc1|hours_h[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|cnt~11_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \rtc1|wrap~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|hours_h\(1));

-- Location: LCCOMB_X1_Y24_N20
\rtc1|hours_h[2]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|hours_h[2]~4_combout\ = \rtc1|hours_h\(2) $ (((\rtc1|hours_h\(0) & (\rtc1|wrap~6_combout\ & \rtc1|hours_h\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|hours_h\(0),
	datab => \rtc1|wrap~6_combout\,
	datac => \rtc1|hours_h\(2),
	datad => \rtc1|hours_h\(1),
	combout => \rtc1|hours_h[2]~4_combout\);

-- Location: LCFF_X1_Y24_N21
\rtc1|hours_h[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|hours_h[2]~4_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|hours_h\(2));

-- Location: LCCOMB_X1_Y24_N0
\q0:5:seg7_6|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \q0:5:seg7_6|Mux6~0_combout\ = (\rtc1|hours_h\(2) & (!\rtc1|hours_h\(1) & (\rtc1|hours_h\(0) $ (!\rtc1|hours_h\(3))))) # (!\rtc1|hours_h\(2) & (\rtc1|hours_h\(0) & (\rtc1|hours_h\(1) $ (!\rtc1|hours_h\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|hours_h\(2),
	datab => \rtc1|hours_h\(1),
	datac => \rtc1|hours_h\(0),
	datad => \rtc1|hours_h\(3),
	combout => \q0:5:seg7_6|Mux6~0_combout\);

-- Location: LCCOMB_X1_Y24_N18
\q0:5:seg7_6|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \q0:5:seg7_6|Mux5~0_combout\ = (\rtc1|hours_h\(1) & ((\rtc1|hours_h\(0) & ((\rtc1|hours_h\(3)))) # (!\rtc1|hours_h\(0) & (\rtc1|hours_h\(2))))) # (!\rtc1|hours_h\(1) & (\rtc1|hours_h\(2) & (\rtc1|hours_h\(0) $ (\rtc1|hours_h\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|hours_h\(2),
	datab => \rtc1|hours_h\(1),
	datac => \rtc1|hours_h\(0),
	datad => \rtc1|hours_h\(3),
	combout => \q0:5:seg7_6|Mux5~0_combout\);

-- Location: LCCOMB_X1_Y24_N28
\q0:5:seg7_6|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \q0:5:seg7_6|Mux4~0_combout\ = (\rtc1|hours_h\(2) & (\rtc1|hours_h\(3) & ((\rtc1|hours_h\(1)) # (!\rtc1|hours_h\(0))))) # (!\rtc1|hours_h\(2) & (\rtc1|hours_h\(1) & (!\rtc1|hours_h\(0) & !\rtc1|hours_h\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|hours_h\(2),
	datab => \rtc1|hours_h\(1),
	datac => \rtc1|hours_h\(0),
	datad => \rtc1|hours_h\(3),
	combout => \q0:5:seg7_6|Mux4~0_combout\);

-- Location: LCCOMB_X1_Y24_N14
\q0:5:seg7_6|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \q0:5:seg7_6|Mux3~0_combout\ = (\rtc1|hours_h\(0) & (\rtc1|hours_h\(2) $ ((!\rtc1|hours_h\(1))))) # (!\rtc1|hours_h\(0) & ((\rtc1|hours_h\(2) & (!\rtc1|hours_h\(1) & !\rtc1|hours_h\(3))) # (!\rtc1|hours_h\(2) & (\rtc1|hours_h\(1) & \rtc1|hours_h\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|hours_h\(2),
	datab => \rtc1|hours_h\(1),
	datac => \rtc1|hours_h\(0),
	datad => \rtc1|hours_h\(3),
	combout => \q0:5:seg7_6|Mux3~0_combout\);

-- Location: LCCOMB_X1_Y24_N16
\q0:5:seg7_6|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \q0:5:seg7_6|Mux2~0_combout\ = (\rtc1|hours_h\(1) & (((\rtc1|hours_h\(0) & !\rtc1|hours_h\(3))))) # (!\rtc1|hours_h\(1) & ((\rtc1|hours_h\(2) & ((!\rtc1|hours_h\(3)))) # (!\rtc1|hours_h\(2) & (\rtc1|hours_h\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|hours_h\(2),
	datab => \rtc1|hours_h\(1),
	datac => \rtc1|hours_h\(0),
	datad => \rtc1|hours_h\(3),
	combout => \q0:5:seg7_6|Mux2~0_combout\);

-- Location: LCCOMB_X1_Y24_N26
\q0:5:seg7_6|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \q0:5:seg7_6|Mux1~0_combout\ = (\rtc1|hours_h\(2) & (\rtc1|hours_h\(0) & (\rtc1|hours_h\(1) $ (\rtc1|hours_h\(3))))) # (!\rtc1|hours_h\(2) & (!\rtc1|hours_h\(3) & ((\rtc1|hours_h\(1)) # (\rtc1|hours_h\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|hours_h\(2),
	datab => \rtc1|hours_h\(1),
	datac => \rtc1|hours_h\(0),
	datad => \rtc1|hours_h\(3),
	combout => \q0:5:seg7_6|Mux1~0_combout\);

-- Location: LCCOMB_X1_Y24_N12
\q0:5:seg7_6|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \q0:5:seg7_6|Mux0~0_combout\ = (\rtc1|hours_h\(0) & ((\rtc1|hours_h\(3)) # (\rtc1|hours_h\(2) $ (\rtc1|hours_h\(1))))) # (!\rtc1|hours_h\(0) & ((\rtc1|hours_h\(1)) # (\rtc1|hours_h\(2) $ (\rtc1|hours_h\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110101101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|hours_h\(2),
	datab => \rtc1|hours_h\(1),
	datac => \rtc1|hours_h\(0),
	datad => \rtc1|hours_h\(3),
	combout => \q0:5:seg7_6|Mux0~0_combout\);

-- Location: PIN_N23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\KEY[1]~I\ : cycloneii_io
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
	padio => ww_KEY(1));

-- Location: PIN_P23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\KEY[2]~I\ : cycloneii_io
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
	padio => ww_KEY(2));

-- Location: PIN_W26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\KEY[3]~I\ : cycloneii_io
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
	padio => ww_KEY(3));

-- Location: PIN_AB23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX2[0]~I\ : cycloneii_io
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
	datain => \q0:0:seg7_6|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX2(0));

-- Location: PIN_V22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX2[1]~I\ : cycloneii_io
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
	datain => \q0:0:seg7_6|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX2(1));

-- Location: PIN_AC25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX2[2]~I\ : cycloneii_io
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
	datain => \q0:0:seg7_6|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX2(2));

-- Location: PIN_AC26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX2[3]~I\ : cycloneii_io
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
	datain => \q0:0:seg7_6|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX2(3));

-- Location: PIN_AB26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX2[4]~I\ : cycloneii_io
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
	datain => \q0:0:seg7_6|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX2(4));

-- Location: PIN_AB25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX2[5]~I\ : cycloneii_io
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
	datain => \q0:0:seg7_6|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX2(5));

-- Location: PIN_Y24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX2[6]~I\ : cycloneii_io
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
	datain => \q0:0:seg7_6|ALT_INV_Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX2(6));

-- Location: PIN_Y23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX3[0]~I\ : cycloneii_io
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
	datain => \q0:1:seg7_6|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX3(0));

-- Location: PIN_AA25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX3[1]~I\ : cycloneii_io
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
	datain => \q0:1:seg7_6|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX3(1));

-- Location: PIN_AA26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX3[2]~I\ : cycloneii_io
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
	datain => \q0:1:seg7_6|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX3(2));

-- Location: PIN_Y26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX3[3]~I\ : cycloneii_io
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
	datain => \q0:1:seg7_6|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX3(3));

-- Location: PIN_Y25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX3[4]~I\ : cycloneii_io
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
	datain => \q0:1:seg7_6|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX3(4));

-- Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX3[5]~I\ : cycloneii_io
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
	datain => \q0:1:seg7_6|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX3(5));

-- Location: PIN_W24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX3[6]~I\ : cycloneii_io
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
	datain => \q0:1:seg7_6|ALT_INV_Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX3(6));

-- Location: PIN_U9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX4[0]~I\ : cycloneii_io
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
	datain => \q0:2:seg7_6|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX4(0));

-- Location: PIN_U1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX4[1]~I\ : cycloneii_io
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
	datain => \q0:2:seg7_6|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX4(1));

-- Location: PIN_U2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX4[2]~I\ : cycloneii_io
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
	datain => \q0:2:seg7_6|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX4(2));

-- Location: PIN_T4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX4[3]~I\ : cycloneii_io
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
	datain => \q0:2:seg7_6|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX4(3));

-- Location: PIN_R7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX4[4]~I\ : cycloneii_io
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
	datain => \q0:2:seg7_6|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX4(4));

-- Location: PIN_R6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX4[5]~I\ : cycloneii_io
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
	datain => \q0:2:seg7_6|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX4(5));

-- Location: PIN_T3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX4[6]~I\ : cycloneii_io
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
	datain => \q0:2:seg7_6|ALT_INV_Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX4(6));

-- Location: PIN_T2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX5[0]~I\ : cycloneii_io
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
	datain => \q0:3:seg7_6|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX5(0));

-- Location: PIN_P6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX5[1]~I\ : cycloneii_io
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
	datain => \q0:3:seg7_6|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX5(1));

-- Location: PIN_P7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX5[2]~I\ : cycloneii_io
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
	datain => \q0:3:seg7_6|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX5(2));

-- Location: PIN_T9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX5[3]~I\ : cycloneii_io
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
	datain => \q0:3:seg7_6|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX5(3));

-- Location: PIN_R5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX5[4]~I\ : cycloneii_io
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
	datain => \q0:3:seg7_6|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX5(4));

-- Location: PIN_R4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX5[5]~I\ : cycloneii_io
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
	datain => \q0:3:seg7_6|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX5(5));

-- Location: PIN_R3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX5[6]~I\ : cycloneii_io
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
	datain => \q0:3:seg7_6|ALT_INV_Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX5(6));

-- Location: PIN_R2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX6[0]~I\ : cycloneii_io
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
	datain => \q0:4:seg7_6|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX6(0));

-- Location: PIN_P4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX6[1]~I\ : cycloneii_io
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
	datain => \q0:4:seg7_6|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX6(1));

-- Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX6[2]~I\ : cycloneii_io
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
	datain => \q0:4:seg7_6|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX6(2));

-- Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX6[3]~I\ : cycloneii_io
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
	datain => \q0:4:seg7_6|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX6(3));

-- Location: PIN_M3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX6[4]~I\ : cycloneii_io
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
	datain => \q0:4:seg7_6|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX6(4));

-- Location: PIN_M5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX6[5]~I\ : cycloneii_io
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
	datain => \q0:4:seg7_6|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX6(5));

-- Location: PIN_M4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX6[6]~I\ : cycloneii_io
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
	datain => \q0:4:seg7_6|ALT_INV_Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX6(6));

-- Location: PIN_L3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX7[0]~I\ : cycloneii_io
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
	datain => \q0:5:seg7_6|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX7(0));

-- Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX7[1]~I\ : cycloneii_io
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
	datain => \q0:5:seg7_6|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX7(1));

-- Location: PIN_L9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX7[2]~I\ : cycloneii_io
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
	datain => \q0:5:seg7_6|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX7(2));

-- Location: PIN_L6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX7[3]~I\ : cycloneii_io
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
	datain => \q0:5:seg7_6|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX7(3));

-- Location: PIN_L7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX7[4]~I\ : cycloneii_io
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
	datain => \q0:5:seg7_6|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX7(4));

-- Location: PIN_P9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX7[5]~I\ : cycloneii_io
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
	datain => \q0:5:seg7_6|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX7(5));

-- Location: PIN_N9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX7[6]~I\ : cycloneii_io
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
	datain => \q0:5:seg7_6|ALT_INV_Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX7(6));
END structure;


