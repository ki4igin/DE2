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

-- DATE "10/20/2020 18:17:54"

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
SIGNAL \rtc1|Add3~2_combout\ : std_logic;
SIGNAL \rtc1|Add0~10_combout\ : std_logic;
SIGNAL \rtc1|Add0~12_combout\ : std_logic;
SIGNAL \rtc1|Add0~14_combout\ : std_logic;
SIGNAL \rtc1|Add0~16_combout\ : std_logic;
SIGNAL \rtc1|Add0~20_combout\ : std_logic;
SIGNAL \rtc1|Add0~52_combout\ : std_logic;
SIGNAL \rtc1|Add0~56_combout\ : std_logic;
SIGNAL \rtc1|Add1~16_combout\ : std_logic;
SIGNAL \rtc1|Add1~20_combout\ : std_logic;
SIGNAL \rtc1|Add1~38_combout\ : std_logic;
SIGNAL \rtc1|Add1~42_combout\ : std_logic;
SIGNAL \rtc1|Add1~52_combout\ : std_logic;
SIGNAL \rtc1|Add1~61\ : std_logic;
SIGNAL \rtc1|Add1~62_combout\ : std_logic;
SIGNAL \rtc1|Add2~12_combout\ : std_logic;
SIGNAL \rtc1|Add2~21\ : std_logic;
SIGNAL \rtc1|Add2~22_combout\ : std_logic;
SIGNAL \rtc1|Add2~23\ : std_logic;
SIGNAL \rtc1|Add2~24_combout\ : std_logic;
SIGNAL \rtc1|Add2~25\ : std_logic;
SIGNAL \rtc1|Add2~26_combout\ : std_logic;
SIGNAL \rtc1|Add2~27\ : std_logic;
SIGNAL \rtc1|Add2~28_combout\ : std_logic;
SIGNAL \rtc1|Add2~29\ : std_logic;
SIGNAL \rtc1|Add2~30_combout\ : std_logic;
SIGNAL \rtc1|Add2~31\ : std_logic;
SIGNAL \rtc1|Add2~32_combout\ : std_logic;
SIGNAL \rtc1|Add2~33\ : std_logic;
SIGNAL \rtc1|Add2~34_combout\ : std_logic;
SIGNAL \rtc1|Add2~35\ : std_logic;
SIGNAL \rtc1|Add2~36_combout\ : std_logic;
SIGNAL \rtc1|Add2~37\ : std_logic;
SIGNAL \rtc1|Add2~38_combout\ : std_logic;
SIGNAL \rtc1|Add2~39\ : std_logic;
SIGNAL \rtc1|Add2~40_combout\ : std_logic;
SIGNAL \rtc1|Add2~41\ : std_logic;
SIGNAL \rtc1|Add2~42_combout\ : std_logic;
SIGNAL \rtc1|Add2~43\ : std_logic;
SIGNAL \rtc1|Add2~44_combout\ : std_logic;
SIGNAL \rtc1|Add2~45\ : std_logic;
SIGNAL \rtc1|Add2~46_combout\ : std_logic;
SIGNAL \rtc1|Add2~47\ : std_logic;
SIGNAL \rtc1|Add2~48_combout\ : std_logic;
SIGNAL \rtc1|Add2~49\ : std_logic;
SIGNAL \rtc1|Add2~50_combout\ : std_logic;
SIGNAL \rtc1|Add2~51\ : std_logic;
SIGNAL \rtc1|Add2~52_combout\ : std_logic;
SIGNAL \rtc1|Add2~53\ : std_logic;
SIGNAL \rtc1|Add2~54_combout\ : std_logic;
SIGNAL \rtc1|Add2~55\ : std_logic;
SIGNAL \rtc1|Add2~56_combout\ : std_logic;
SIGNAL \rtc1|Add2~57\ : std_logic;
SIGNAL \rtc1|Add2~58_combout\ : std_logic;
SIGNAL \rtc1|Add2~59\ : std_logic;
SIGNAL \rtc1|Add2~60_combout\ : std_logic;
SIGNAL \rtc1|Add2~61\ : std_logic;
SIGNAL \rtc1|Add2~62_combout\ : std_logic;
SIGNAL \rtc1|Add3~10_combout\ : std_logic;
SIGNAL \rtc1|Add3~20_combout\ : std_logic;
SIGNAL \rtc1|Add3~24_combout\ : std_logic;
SIGNAL \rtc1|Add3~38_combout\ : std_logic;
SIGNAL \rtc1|Add3~44_combout\ : std_logic;
SIGNAL \rtc1|Add3~56_combout\ : std_logic;
SIGNAL \rtc1|Add4~12_combout\ : std_logic;
SIGNAL \rtc1|Add4~16_combout\ : std_logic;
SIGNAL \rtc1|Add4~20_combout\ : std_logic;
SIGNAL \rtc1|Add4~24_combout\ : std_logic;
SIGNAL \rtc1|Add4~42_combout\ : std_logic;
SIGNAL \rtc1|Add4~44_combout\ : std_logic;
SIGNAL \rtc1|Add4~56_combout\ : std_logic;
SIGNAL \rtc1|Add5~10_combout\ : std_logic;
SIGNAL \rtc1|Add5~24_combout\ : std_logic;
SIGNAL \rtc1|Add5~44_combout\ : std_logic;
SIGNAL \rtc1|Add5~52_combout\ : std_logic;
SIGNAL \rtc1|Add5~55\ : std_logic;
SIGNAL \rtc1|Add5~56_combout\ : std_logic;
SIGNAL \rtc1|Add5~57\ : std_logic;
SIGNAL \rtc1|Add5~58_combout\ : std_logic;
SIGNAL \rtc1|Add5~59\ : std_logic;
SIGNAL \rtc1|Add5~60_combout\ : std_logic;
SIGNAL \rtc1|Add5~61\ : std_logic;
SIGNAL \rtc1|Add5~62_combout\ : std_logic;
SIGNAL \rtc1|Add6~12_combout\ : std_logic;
SIGNAL \rtc1|Add6~16_combout\ : std_logic;
SIGNAL \rtc1|Add6~20_combout\ : std_logic;
SIGNAL \rtc1|Add6~38_combout\ : std_logic;
SIGNAL \rtc1|Add6~56_combout\ : std_logic;
SIGNAL \rtc1|Equal0~1_combout\ : std_logic;
SIGNAL \rtc1|Equal0~7_combout\ : std_logic;
SIGNAL \rtc1|Equal1~3_combout\ : std_logic;
SIGNAL \rtc1|Equal1~6_combout\ : std_logic;
SIGNAL \rtc1|Equal2~0_combout\ : std_logic;
SIGNAL \rtc1|Equal2~1_combout\ : std_logic;
SIGNAL \rtc1|Equal2~2_combout\ : std_logic;
SIGNAL \rtc1|Equal2~3_combout\ : std_logic;
SIGNAL \rtc1|Equal2~4_combout\ : std_logic;
SIGNAL \rtc1|Equal2~5_combout\ : std_logic;
SIGNAL \rtc1|Equal3~3_combout\ : std_logic;
SIGNAL \rtc1|Equal3~5_combout\ : std_logic;
SIGNAL \rtc1|Equal4~2_combout\ : std_logic;
SIGNAL \rtc1|Equal4~5_combout\ : std_logic;
SIGNAL \rtc1|Equal4~6_combout\ : std_logic;
SIGNAL \rtc1|Equal4~7_combout\ : std_logic;
SIGNAL \rtc1|Equal5~0_combout\ : std_logic;
SIGNAL \rtc1|Equal5~5_combout\ : std_logic;
SIGNAL \rtc1|Equal6~3_combout\ : std_logic;
SIGNAL \rtc1|Equal6~6_combout\ : std_logic;
SIGNAL \rtc1|Equal6~9_combout\ : std_logic;
SIGNAL \rtc1|cnt~28_combout\ : std_logic;
SIGNAL \CLOCK_50~combout\ : std_logic;
SIGNAL \CLOCK_50~clkctrl_outclk\ : std_logic;
SIGNAL \rtc1|Add1~7\ : std_logic;
SIGNAL \rtc1|Add1~8_combout\ : std_logic;
SIGNAL \rtc1|Add0~0_combout\ : std_logic;
SIGNAL \rtc1|Add0~1\ : std_logic;
SIGNAL \rtc1|Add0~2_combout\ : std_logic;
SIGNAL \rtc1|Add0~3\ : std_logic;
SIGNAL \rtc1|Add0~4_combout\ : std_logic;
SIGNAL \rtc1|Add0~5\ : std_logic;
SIGNAL \rtc1|Add0~7\ : std_logic;
SIGNAL \rtc1|Add0~8_combout\ : std_logic;
SIGNAL \rtc1|Add0~9\ : std_logic;
SIGNAL \rtc1|Add0~11\ : std_logic;
SIGNAL \rtc1|Add0~13\ : std_logic;
SIGNAL \rtc1|Add0~15\ : std_logic;
SIGNAL \rtc1|Add0~17\ : std_logic;
SIGNAL \rtc1|Add0~18_combout\ : std_logic;
SIGNAL \rtc1|Add0~19\ : std_logic;
SIGNAL \rtc1|Add0~21\ : std_logic;
SIGNAL \rtc1|Add0~22_combout\ : std_logic;
SIGNAL \rtc1|Add0~23\ : std_logic;
SIGNAL \rtc1|Add0~24_combout\ : std_logic;
SIGNAL \rtc1|cnt~27_combout\ : std_logic;
SIGNAL \rtc1|Equal0~6_combout\ : std_logic;
SIGNAL \rtc1|Add0~6_combout\ : std_logic;
SIGNAL \rtc1|Equal0~8_combout\ : std_logic;
SIGNAL \rtc1|Add0~25\ : std_logic;
SIGNAL \rtc1|Add0~26_combout\ : std_logic;
SIGNAL \rtc1|cnt~26_combout\ : std_logic;
SIGNAL \rtc1|Add0~27\ : std_logic;
SIGNAL \rtc1|Add0~28_combout\ : std_logic;
SIGNAL \rtc1|cnt~25_combout\ : std_logic;
SIGNAL \rtc1|Add0~29\ : std_logic;
SIGNAL \rtc1|Add0~30_combout\ : std_logic;
SIGNAL \rtc1|cnt~24_combout\ : std_logic;
SIGNAL \rtc1|Equal0~5_combout\ : std_logic;
SIGNAL \rtc1|Equal0~9_combout\ : std_logic;
SIGNAL \rtc1|Add0~31\ : std_logic;
SIGNAL \rtc1|Add0~32_combout\ : std_logic;
SIGNAL \rtc1|Add0~33\ : std_logic;
SIGNAL \rtc1|Add0~34_combout\ : std_logic;
SIGNAL \rtc1|cnt~23_combout\ : std_logic;
SIGNAL \rtc1|Add0~35\ : std_logic;
SIGNAL \rtc1|Add0~36_combout\ : std_logic;
SIGNAL \rtc1|Add0~37\ : std_logic;
SIGNAL \rtc1|Add0~38_combout\ : std_logic;
SIGNAL \rtc1|cnt~22_combout\ : std_logic;
SIGNAL \rtc1|Add0~39\ : std_logic;
SIGNAL \rtc1|Add0~40_combout\ : std_logic;
SIGNAL \rtc1|cnt~33_combout\ : std_logic;
SIGNAL \rtc1|Equal0~3_combout\ : std_logic;
SIGNAL \rtc1|Add0~41\ : std_logic;
SIGNAL \rtc1|Add0~43\ : std_logic;
SIGNAL \rtc1|Add0~44_combout\ : std_logic;
SIGNAL \rtc1|cnt~31_combout\ : std_logic;
SIGNAL \rtc1|Add0~45\ : std_logic;
SIGNAL \rtc1|Add0~47\ : std_logic;
SIGNAL \rtc1|Add0~49\ : std_logic;
SIGNAL \rtc1|Add0~50_combout\ : std_logic;
SIGNAL \rtc1|cnt~29_combout\ : std_logic;
SIGNAL \rtc1|Add0~51\ : std_logic;
SIGNAL \rtc1|Add0~53\ : std_logic;
SIGNAL \rtc1|Add0~54_combout\ : std_logic;
SIGNAL \rtc1|Add0~55\ : std_logic;
SIGNAL \rtc1|Add0~57\ : std_logic;
SIGNAL \rtc1|Add0~58_combout\ : std_logic;
SIGNAL \rtc1|Add0~59\ : std_logic;
SIGNAL \rtc1|Add0~60_combout\ : std_logic;
SIGNAL \rtc1|Add0~61\ : std_logic;
SIGNAL \rtc1|Add0~62_combout\ : std_logic;
SIGNAL \rtc1|Equal0~0_combout\ : std_logic;
SIGNAL \rtc1|Add0~46_combout\ : std_logic;
SIGNAL \rtc1|cnt~30_combout\ : std_logic;
SIGNAL \rtc1|Add0~48_combout\ : std_logic;
SIGNAL \rtc1|Add0~42_combout\ : std_logic;
SIGNAL \rtc1|cnt~32_combout\ : std_logic;
SIGNAL \rtc1|Equal0~2_combout\ : std_logic;
SIGNAL \rtc1|Equal0~4_combout\ : std_logic;
SIGNAL \rtc1|Equal0~10_combout\ : std_logic;
SIGNAL \rtc1|Add1~9\ : std_logic;
SIGNAL \rtc1|Add1~10_combout\ : std_logic;
SIGNAL \rtc1|Add1~11\ : std_logic;
SIGNAL \rtc1|Add1~12_combout\ : std_logic;
SIGNAL \rtc1|Equal1~7_combout\ : std_logic;
SIGNAL \rtc1|Add1~0_combout\ : std_logic;
SIGNAL \rtc1|Equal1~8_combout\ : std_logic;
SIGNAL \rtc1|Add1~13\ : std_logic;
SIGNAL \rtc1|Add1~14_combout\ : std_logic;
SIGNAL \rtc1|Add1~15\ : std_logic;
SIGNAL \rtc1|Add1~17\ : std_logic;
SIGNAL \rtc1|Add1~18_combout\ : std_logic;
SIGNAL \rtc1|Add1~19\ : std_logic;
SIGNAL \rtc1|Add1~21\ : std_logic;
SIGNAL \rtc1|Add1~22_combout\ : std_logic;
SIGNAL \rtc1|Add1~23\ : std_logic;
SIGNAL \rtc1|Add1~25\ : std_logic;
SIGNAL \rtc1|Add1~26_combout\ : std_logic;
SIGNAL \rtc1|Add1~27\ : std_logic;
SIGNAL \rtc1|Add1~28_combout\ : std_logic;
SIGNAL \rtc1|Add1~29\ : std_logic;
SIGNAL \rtc1|Add1~30_combout\ : std_logic;
SIGNAL \rtc1|Add1~24_combout\ : std_logic;
SIGNAL \rtc1|Equal1~5_combout\ : std_logic;
SIGNAL \rtc1|Equal1~9_combout\ : std_logic;
SIGNAL \rtc1|Add1~1\ : std_logic;
SIGNAL \rtc1|Add1~2_combout\ : std_logic;
SIGNAL \rtc1|cnt~10_combout\ : std_logic;
SIGNAL \rtc1|Add1~3\ : std_logic;
SIGNAL \rtc1|Add1~4_combout\ : std_logic;
SIGNAL \rtc1|Add1~5\ : std_logic;
SIGNAL \rtc1|Add1~6_combout\ : std_logic;
SIGNAL \rtc1|cnt~11_combout\ : std_logic;
SIGNAL \q0:0:seg7_6|Mux6~0_combout\ : std_logic;
SIGNAL \q0:0:seg7_6|Mux5~0_combout\ : std_logic;
SIGNAL \q0:0:seg7_6|Mux4~0_combout\ : std_logic;
SIGNAL \q0:0:seg7_6|Mux3~0_combout\ : std_logic;
SIGNAL \q0:0:seg7_6|Mux2~0_combout\ : std_logic;
SIGNAL \q0:0:seg7_6|Mux1~0_combout\ : std_logic;
SIGNAL \q0:0:seg7_6|Mux0~0_combout\ : std_logic;
SIGNAL \rtc1|Add2~0_combout\ : std_logic;
SIGNAL \rtc1|Add1~31\ : std_logic;
SIGNAL \rtc1|Add1~32_combout\ : std_logic;
SIGNAL \rtc1|Add1~33\ : std_logic;
SIGNAL \rtc1|Add1~34_combout\ : std_logic;
SIGNAL \rtc1|Add1~35\ : std_logic;
SIGNAL \rtc1|Add1~36_combout\ : std_logic;
SIGNAL \rtc1|Add1~37\ : std_logic;
SIGNAL \rtc1|Add1~39\ : std_logic;
SIGNAL \rtc1|Add1~40_combout\ : std_logic;
SIGNAL \rtc1|Add1~41\ : std_logic;
SIGNAL \rtc1|Add1~43\ : std_logic;
SIGNAL \rtc1|Add1~45\ : std_logic;
SIGNAL \rtc1|Add1~46_combout\ : std_logic;
SIGNAL \rtc1|Add1~47\ : std_logic;
SIGNAL \rtc1|Add1~49\ : std_logic;
SIGNAL \rtc1|Add1~50_combout\ : std_logic;
SIGNAL \rtc1|Add1~51\ : std_logic;
SIGNAL \rtc1|Add1~53\ : std_logic;
SIGNAL \rtc1|Add1~54_combout\ : std_logic;
SIGNAL \rtc1|Add1~48_combout\ : std_logic;
SIGNAL \rtc1|Equal1~1_combout\ : std_logic;
SIGNAL \rtc1|Add1~55\ : std_logic;
SIGNAL \rtc1|Add1~57\ : std_logic;
SIGNAL \rtc1|Add1~58_combout\ : std_logic;
SIGNAL \rtc1|Add1~59\ : std_logic;
SIGNAL \rtc1|Add1~60_combout\ : std_logic;
SIGNAL \rtc1|Add1~56_combout\ : std_logic;
SIGNAL \rtc1|Equal1~0_combout\ : std_logic;
SIGNAL \rtc1|Add1~44_combout\ : std_logic;
SIGNAL \rtc1|Equal1~2_combout\ : std_logic;
SIGNAL \rtc1|Equal1~4_combout\ : std_logic;
SIGNAL \rtc1|wrap~0_combout\ : std_logic;
SIGNAL \rtc1|Equal2~9_combout\ : std_logic;
SIGNAL \rtc1|Add2~7\ : std_logic;
SIGNAL \rtc1|Add2~8_combout\ : std_logic;
SIGNAL \rtc1|Add2~9\ : std_logic;
SIGNAL \rtc1|Add2~10_combout\ : std_logic;
SIGNAL \rtc1|Add2~11\ : std_logic;
SIGNAL \rtc1|Add2~13\ : std_logic;
SIGNAL \rtc1|Add2~14_combout\ : std_logic;
SIGNAL \rtc1|Equal2~8_combout\ : std_logic;
SIGNAL \rtc1|Add2~15\ : std_logic;
SIGNAL \rtc1|Add2~17\ : std_logic;
SIGNAL \rtc1|Add2~18_combout\ : std_logic;
SIGNAL \rtc1|Add2~19\ : std_logic;
SIGNAL \rtc1|Add2~20_combout\ : std_logic;
SIGNAL \rtc1|Add2~16_combout\ : std_logic;
SIGNAL \rtc1|Equal2~6_combout\ : std_logic;
SIGNAL \rtc1|Equal2~7_combout\ : std_logic;
SIGNAL \rtc1|Equal2~10_combout\ : std_logic;
SIGNAL \rtc1|Add2~1\ : std_logic;
SIGNAL \rtc1|Add2~2_combout\ : std_logic;
SIGNAL \rtc1|cnt~12_combout\ : std_logic;
SIGNAL \rtc1|Add2~3\ : std_logic;
SIGNAL \rtc1|Add2~4_combout\ : std_logic;
SIGNAL \rtc1|cnt~13_combout\ : std_logic;
SIGNAL \rtc1|Add2~5\ : std_logic;
SIGNAL \rtc1|Add2~6_combout\ : std_logic;
SIGNAL \q0:1:seg7_6|Mux6~0_combout\ : std_logic;
SIGNAL \q0:1:seg7_6|Mux5~0_combout\ : std_logic;
SIGNAL \q0:1:seg7_6|Mux4~0_combout\ : std_logic;
SIGNAL \q0:1:seg7_6|Mux3~0_combout\ : std_logic;
SIGNAL \q0:1:seg7_6|Mux2~0_combout\ : std_logic;
SIGNAL \q0:1:seg7_6|Mux1~0_combout\ : std_logic;
SIGNAL \q0:1:seg7_6|Mux0~0_combout\ : std_logic;
SIGNAL \rtc1|Add3~0_combout\ : std_logic;
SIGNAL \rtc1|wrap~1_combout\ : std_logic;
SIGNAL \rtc1|Add3~1\ : std_logic;
SIGNAL \rtc1|Add3~3\ : std_logic;
SIGNAL \rtc1|Add3~4_combout\ : std_logic;
SIGNAL \rtc1|Add3~5\ : std_logic;
SIGNAL \rtc1|Add3~6_combout\ : std_logic;
SIGNAL \rtc1|cnt~15_combout\ : std_logic;
SIGNAL \rtc1|Add3~7\ : std_logic;
SIGNAL \rtc1|Add3~8_combout\ : std_logic;
SIGNAL \rtc1|Add3~9\ : std_logic;
SIGNAL \rtc1|Add3~11\ : std_logic;
SIGNAL \rtc1|Add3~12_combout\ : std_logic;
SIGNAL \rtc1|Add3~13\ : std_logic;
SIGNAL \rtc1|Add3~14_combout\ : std_logic;
SIGNAL \rtc1|Equal3~7_combout\ : std_logic;
SIGNAL \rtc1|Equal3~8_combout\ : std_logic;
SIGNAL \rtc1|Equal3~9_combout\ : std_logic;
SIGNAL \rtc1|Add3~15\ : std_logic;
SIGNAL \rtc1|Add3~17\ : std_logic;
SIGNAL \rtc1|Add3~18_combout\ : std_logic;
SIGNAL \rtc1|Add3~19\ : std_logic;
SIGNAL \rtc1|Add3~21\ : std_logic;
SIGNAL \rtc1|Add3~22_combout\ : std_logic;
SIGNAL \rtc1|Add3~16_combout\ : std_logic;
SIGNAL \rtc1|Equal3~6_combout\ : std_logic;
SIGNAL \rtc1|Add3~23\ : std_logic;
SIGNAL \rtc1|Add3~25\ : std_logic;
SIGNAL \rtc1|Add3~26_combout\ : std_logic;
SIGNAL \rtc1|Add3~27\ : std_logic;
SIGNAL \rtc1|Add3~28_combout\ : std_logic;
SIGNAL \rtc1|Add3~29\ : std_logic;
SIGNAL \rtc1|Add3~30_combout\ : std_logic;
SIGNAL \rtc1|Add3~31\ : std_logic;
SIGNAL \rtc1|Add3~32_combout\ : std_logic;
SIGNAL \rtc1|Add3~33\ : std_logic;
SIGNAL \rtc1|Add3~34_combout\ : std_logic;
SIGNAL \rtc1|Add3~35\ : std_logic;
SIGNAL \rtc1|Add3~36_combout\ : std_logic;
SIGNAL \rtc1|Add3~37\ : std_logic;
SIGNAL \rtc1|Add3~39\ : std_logic;
SIGNAL \rtc1|Add3~40_combout\ : std_logic;
SIGNAL \rtc1|Add3~41\ : std_logic;
SIGNAL \rtc1|Add3~43\ : std_logic;
SIGNAL \rtc1|Add3~45\ : std_logic;
SIGNAL \rtc1|Add3~46_combout\ : std_logic;
SIGNAL \rtc1|Add3~47\ : std_logic;
SIGNAL \rtc1|Add3~49\ : std_logic;
SIGNAL \rtc1|Add3~50_combout\ : std_logic;
SIGNAL \rtc1|Add3~51\ : std_logic;
SIGNAL \rtc1|Add3~52_combout\ : std_logic;
SIGNAL \rtc1|Add3~48_combout\ : std_logic;
SIGNAL \rtc1|Equal3~1_combout\ : std_logic;
SIGNAL \rtc1|Add3~53\ : std_logic;
SIGNAL \rtc1|Add3~54_combout\ : std_logic;
SIGNAL \rtc1|Add3~55\ : std_logic;
SIGNAL \rtc1|Add3~57\ : std_logic;
SIGNAL \rtc1|Add3~58_combout\ : std_logic;
SIGNAL \rtc1|Add3~59\ : std_logic;
SIGNAL \rtc1|Add3~60_combout\ : std_logic;
SIGNAL \rtc1|Add3~61\ : std_logic;
SIGNAL \rtc1|Add3~62_combout\ : std_logic;
SIGNAL \rtc1|Equal3~0_combout\ : std_logic;
SIGNAL \rtc1|Add3~42_combout\ : std_logic;
SIGNAL \rtc1|Equal3~2_combout\ : std_logic;
SIGNAL \rtc1|Equal3~4_combout\ : std_logic;
SIGNAL \rtc1|Equal3~10_combout\ : std_logic;
SIGNAL \rtc1|cnt~14_combout\ : std_logic;
SIGNAL \q0:2:seg7_6|Mux6~0_combout\ : std_logic;
SIGNAL \q0:2:seg7_6|Mux5~0_combout\ : std_logic;
SIGNAL \q0:2:seg7_6|Mux4~0_combout\ : std_logic;
SIGNAL \q0:2:seg7_6|Mux3~0_combout\ : std_logic;
SIGNAL \q0:2:seg7_6|Mux2~0_combout\ : std_logic;
SIGNAL \q0:2:seg7_6|Mux1~0_combout\ : std_logic;
SIGNAL \q0:2:seg7_6|Mux0~0_combout\ : std_logic;
SIGNAL \rtc1|Add4~7\ : std_logic;
SIGNAL \rtc1|Add4~8_combout\ : std_logic;
SIGNAL \rtc1|wrap~2_combout\ : std_logic;
SIGNAL \rtc1|Add4~9\ : std_logic;
SIGNAL \rtc1|Add4~11\ : std_logic;
SIGNAL \rtc1|Add4~13\ : std_logic;
SIGNAL \rtc1|Add4~14_combout\ : std_logic;
SIGNAL \rtc1|Add4~15\ : std_logic;
SIGNAL \rtc1|Add4~17\ : std_logic;
SIGNAL \rtc1|Add4~18_combout\ : std_logic;
SIGNAL \rtc1|Add4~19\ : std_logic;
SIGNAL \rtc1|Add4~21\ : std_logic;
SIGNAL \rtc1|Add4~22_combout\ : std_logic;
SIGNAL \rtc1|Add4~23\ : std_logic;
SIGNAL \rtc1|Add4~25\ : std_logic;
SIGNAL \rtc1|Add4~26_combout\ : std_logic;
SIGNAL \rtc1|Add4~27\ : std_logic;
SIGNAL \rtc1|Add4~28_combout\ : std_logic;
SIGNAL \rtc1|Add4~29\ : std_logic;
SIGNAL \rtc1|Add4~30_combout\ : std_logic;
SIGNAL \rtc1|Add4~31\ : std_logic;
SIGNAL \rtc1|Add4~32_combout\ : std_logic;
SIGNAL \rtc1|Add4~33\ : std_logic;
SIGNAL \rtc1|Add4~34_combout\ : std_logic;
SIGNAL \rtc1|Add4~35\ : std_logic;
SIGNAL \rtc1|Add4~36_combout\ : std_logic;
SIGNAL \rtc1|Add4~37\ : std_logic;
SIGNAL \rtc1|Add4~39\ : std_logic;
SIGNAL \rtc1|Add4~40_combout\ : std_logic;
SIGNAL \rtc1|Add4~41\ : std_logic;
SIGNAL \rtc1|Add4~43\ : std_logic;
SIGNAL \rtc1|Add4~45\ : std_logic;
SIGNAL \rtc1|Add4~46_combout\ : std_logic;
SIGNAL \rtc1|Add4~47\ : std_logic;
SIGNAL \rtc1|Add4~49\ : std_logic;
SIGNAL \rtc1|Add4~50_combout\ : std_logic;
SIGNAL \rtc1|Add4~51\ : std_logic;
SIGNAL \rtc1|Add4~52_combout\ : std_logic;
SIGNAL \rtc1|Add4~48_combout\ : std_logic;
SIGNAL \rtc1|Equal4~1_combout\ : std_logic;
SIGNAL \rtc1|Add4~53\ : std_logic;
SIGNAL \rtc1|Add4~54_combout\ : std_logic;
SIGNAL \rtc1|Add4~55\ : std_logic;
SIGNAL \rtc1|Add4~57\ : std_logic;
SIGNAL \rtc1|Add4~58_combout\ : std_logic;
SIGNAL \rtc1|Add4~59\ : std_logic;
SIGNAL \rtc1|Add4~60_combout\ : std_logic;
SIGNAL \rtc1|Add4~61\ : std_logic;
SIGNAL \rtc1|Add4~62_combout\ : std_logic;
SIGNAL \rtc1|Equal4~0_combout\ : std_logic;
SIGNAL \rtc1|Add4~38_combout\ : std_logic;
SIGNAL \rtc1|Equal4~3_combout\ : std_logic;
SIGNAL \rtc1|Equal4~4_combout\ : std_logic;
SIGNAL \rtc1|Add4~0_combout\ : std_logic;
SIGNAL \rtc1|Add4~1\ : std_logic;
SIGNAL \rtc1|Add4~2_combout\ : std_logic;
SIGNAL \rtc1|cnt~16_combout\ : std_logic;
SIGNAL \rtc1|Equal4~9_combout\ : std_logic;
SIGNAL \rtc1|Add4~10_combout\ : std_logic;
SIGNAL \rtc1|Equal4~8_combout\ : std_logic;
SIGNAL \rtc1|Equal4~10_combout\ : std_logic;
SIGNAL \rtc1|Add4~3\ : std_logic;
SIGNAL \rtc1|Add4~4_combout\ : std_logic;
SIGNAL \rtc1|cnt~17_combout\ : std_logic;
SIGNAL \rtc1|Add4~5\ : std_logic;
SIGNAL \rtc1|Add4~6_combout\ : std_logic;
SIGNAL \q0:3:seg7_6|Mux6~0_combout\ : std_logic;
SIGNAL \q0:3:seg7_6|Mux5~0_combout\ : std_logic;
SIGNAL \q0:3:seg7_6|Mux4~0_combout\ : std_logic;
SIGNAL \q0:3:seg7_6|Mux3~0_combout\ : std_logic;
SIGNAL \q0:3:seg7_6|Mux2~0_combout\ : std_logic;
SIGNAL \q0:3:seg7_6|Mux1~0_combout\ : std_logic;
SIGNAL \q0:3:seg7_6|Mux0~0_combout\ : std_logic;
SIGNAL \rtc1|Add5~0_combout\ : std_logic;
SIGNAL \rtc1|wrap~3_combout\ : std_logic;
SIGNAL \rtc1|Add5~1\ : std_logic;
SIGNAL \rtc1|Add5~3\ : std_logic;
SIGNAL \rtc1|Add5~4_combout\ : std_logic;
SIGNAL \rtc1|Add5~5\ : std_logic;
SIGNAL \rtc1|Add5~6_combout\ : std_logic;
SIGNAL \rtc1|cnt~19_combout\ : std_logic;
SIGNAL \rtc1|Add5~7\ : std_logic;
SIGNAL \rtc1|Add5~8_combout\ : std_logic;
SIGNAL \rtc1|Add5~9\ : std_logic;
SIGNAL \rtc1|Add5~11\ : std_logic;
SIGNAL \rtc1|Add5~13\ : std_logic;
SIGNAL \rtc1|Add5~14_combout\ : std_logic;
SIGNAL \rtc1|Add5~15\ : std_logic;
SIGNAL \rtc1|Add5~17\ : std_logic;
SIGNAL \rtc1|Add5~18_combout\ : std_logic;
SIGNAL \rtc1|Add5~19\ : std_logic;
SIGNAL \rtc1|Add5~20_combout\ : std_logic;
SIGNAL \rtc1|Add5~16_combout\ : std_logic;
SIGNAL \rtc1|Equal5~6_combout\ : std_logic;
SIGNAL \rtc1|Add5~12_combout\ : std_logic;
SIGNAL \rtc1|Equal5~7_combout\ : std_logic;
SIGNAL \rtc1|Equal5~8_combout\ : std_logic;
SIGNAL \rtc1|Equal5~9_combout\ : std_logic;
SIGNAL \rtc1|Add5~21\ : std_logic;
SIGNAL \rtc1|Add5~22_combout\ : std_logic;
SIGNAL \rtc1|Add5~23\ : std_logic;
SIGNAL \rtc1|Add5~25\ : std_logic;
SIGNAL \rtc1|Add5~26_combout\ : std_logic;
SIGNAL \rtc1|Add5~27\ : std_logic;
SIGNAL \rtc1|Add5~28_combout\ : std_logic;
SIGNAL \rtc1|Add5~29\ : std_logic;
SIGNAL \rtc1|Add5~30_combout\ : std_logic;
SIGNAL \rtc1|Add5~31\ : std_logic;
SIGNAL \rtc1|Add5~32_combout\ : std_logic;
SIGNAL \rtc1|Add5~33\ : std_logic;
SIGNAL \rtc1|Add5~34_combout\ : std_logic;
SIGNAL \rtc1|Add5~35\ : std_logic;
SIGNAL \rtc1|Add5~36_combout\ : std_logic;
SIGNAL \rtc1|Add5~37\ : std_logic;
SIGNAL \rtc1|Add5~39\ : std_logic;
SIGNAL \rtc1|Add5~40_combout\ : std_logic;
SIGNAL \rtc1|Add5~41\ : std_logic;
SIGNAL \rtc1|Add5~42_combout\ : std_logic;
SIGNAL \rtc1|Add5~43\ : std_logic;
SIGNAL \rtc1|Add5~45\ : std_logic;
SIGNAL \rtc1|Add5~46_combout\ : std_logic;
SIGNAL \rtc1|Equal5~2_combout\ : std_logic;
SIGNAL \rtc1|Add5~38_combout\ : std_logic;
SIGNAL \rtc1|Equal5~3_combout\ : std_logic;
SIGNAL \rtc1|Add5~47\ : std_logic;
SIGNAL \rtc1|Add5~49\ : std_logic;
SIGNAL \rtc1|Add5~50_combout\ : std_logic;
SIGNAL \rtc1|Add5~51\ : std_logic;
SIGNAL \rtc1|Add5~53\ : std_logic;
SIGNAL \rtc1|Add5~54_combout\ : std_logic;
SIGNAL \rtc1|Add5~48_combout\ : std_logic;
SIGNAL \rtc1|Equal5~1_combout\ : std_logic;
SIGNAL \rtc1|Equal5~4_combout\ : std_logic;
SIGNAL \rtc1|Equal5~10_combout\ : std_logic;
SIGNAL \rtc1|Add5~2_combout\ : std_logic;
SIGNAL \rtc1|cnt~18_combout\ : std_logic;
SIGNAL \q0:4:seg7_6|Mux6~0_combout\ : std_logic;
SIGNAL \q0:4:seg7_6|Mux5~0_combout\ : std_logic;
SIGNAL \q0:4:seg7_6|Mux4~0_combout\ : std_logic;
SIGNAL \q0:4:seg7_6|Mux3~0_combout\ : std_logic;
SIGNAL \q0:4:seg7_6|Mux2~0_combout\ : std_logic;
SIGNAL \q0:4:seg7_6|Mux1~0_combout\ : std_logic;
SIGNAL \q0:4:seg7_6|Mux0~0_combout\ : std_logic;
SIGNAL \rtc1|Add6~0_combout\ : std_logic;
SIGNAL \rtc1|Add6~7\ : std_logic;
SIGNAL \rtc1|Add6~8_combout\ : std_logic;
SIGNAL \rtc1|wrap~4_combout\ : std_logic;
SIGNAL \rtc1|Add6~9\ : std_logic;
SIGNAL \rtc1|Add6~11\ : std_logic;
SIGNAL \rtc1|Add6~13\ : std_logic;
SIGNAL \rtc1|Add6~14_combout\ : std_logic;
SIGNAL \rtc1|Add6~15\ : std_logic;
SIGNAL \rtc1|Add6~17\ : std_logic;
SIGNAL \rtc1|Add6~18_combout\ : std_logic;
SIGNAL \rtc1|Add6~19\ : std_logic;
SIGNAL \rtc1|Add6~21\ : std_logic;
SIGNAL \rtc1|Add6~22_combout\ : std_logic;
SIGNAL \rtc1|Add6~23\ : std_logic;
SIGNAL \rtc1|Add6~25\ : std_logic;
SIGNAL \rtc1|Add6~26_combout\ : std_logic;
SIGNAL \rtc1|Add6~27\ : std_logic;
SIGNAL \rtc1|Add6~28_combout\ : std_logic;
SIGNAL \rtc1|Add6~29\ : std_logic;
SIGNAL \rtc1|Add6~30_combout\ : std_logic;
SIGNAL \rtc1|Add6~24_combout\ : std_logic;
SIGNAL \rtc1|Equal6~5_combout\ : std_logic;
SIGNAL \rtc1|Equal6~7_combout\ : std_logic;
SIGNAL \rtc1|Add6~31\ : std_logic;
SIGNAL \rtc1|Add6~32_combout\ : std_logic;
SIGNAL \rtc1|Add6~33\ : std_logic;
SIGNAL \rtc1|Add6~34_combout\ : std_logic;
SIGNAL \rtc1|Add6~35\ : std_logic;
SIGNAL \rtc1|Add6~36_combout\ : std_logic;
SIGNAL \rtc1|Add6~37\ : std_logic;
SIGNAL \rtc1|Add6~39\ : std_logic;
SIGNAL \rtc1|Add6~40_combout\ : std_logic;
SIGNAL \rtc1|Add6~41\ : std_logic;
SIGNAL \rtc1|Add6~43\ : std_logic;
SIGNAL \rtc1|Add6~44_combout\ : std_logic;
SIGNAL \rtc1|Add6~42_combout\ : std_logic;
SIGNAL \rtc1|Equal6~2_combout\ : std_logic;
SIGNAL \rtc1|Add6~45\ : std_logic;
SIGNAL \rtc1|Add6~46_combout\ : std_logic;
SIGNAL \rtc1|Add6~47\ : std_logic;
SIGNAL \rtc1|Add6~49\ : std_logic;
SIGNAL \rtc1|Add6~50_combout\ : std_logic;
SIGNAL \rtc1|Add6~51\ : std_logic;
SIGNAL \rtc1|Add6~53\ : std_logic;
SIGNAL \rtc1|Add6~54_combout\ : std_logic;
SIGNAL \rtc1|Add6~55\ : std_logic;
SIGNAL \rtc1|Add6~57\ : std_logic;
SIGNAL \rtc1|Add6~58_combout\ : std_logic;
SIGNAL \rtc1|Add6~59\ : std_logic;
SIGNAL \rtc1|Add6~60_combout\ : std_logic;
SIGNAL \rtc1|Add6~61\ : std_logic;
SIGNAL \rtc1|Add6~62_combout\ : std_logic;
SIGNAL \rtc1|Equal6~0_combout\ : std_logic;
SIGNAL \rtc1|Add6~52_combout\ : std_logic;
SIGNAL \rtc1|Add6~48_combout\ : std_logic;
SIGNAL \rtc1|Equal6~1_combout\ : std_logic;
SIGNAL \rtc1|Equal6~4_combout\ : std_logic;
SIGNAL \rtc1|Add6~10_combout\ : std_logic;
SIGNAL \rtc1|Equal6~8_combout\ : std_logic;
SIGNAL \rtc1|Equal6~10_combout\ : std_logic;
SIGNAL \rtc1|cnt~20_combout\ : std_logic;
SIGNAL \rtc1|Add6~1\ : std_logic;
SIGNAL \rtc1|Add6~2_combout\ : std_logic;
SIGNAL \rtc1|cnt~21_combout\ : std_logic;
SIGNAL \rtc1|Add6~3\ : std_logic;
SIGNAL \rtc1|Add6~4_combout\ : std_logic;
SIGNAL \rtc1|Add6~5\ : std_logic;
SIGNAL \rtc1|Add6~6_combout\ : std_logic;
SIGNAL \q0:5:seg7_6|Mux6~0_combout\ : std_logic;
SIGNAL \q0:5:seg7_6|Mux5~0_combout\ : std_logic;
SIGNAL \q0:5:seg7_6|Mux4~0_combout\ : std_logic;
SIGNAL \q0:5:seg7_6|Mux3~0_combout\ : std_logic;
SIGNAL \q0:5:seg7_6|Mux2~0_combout\ : std_logic;
SIGNAL \q0:5:seg7_6|Mux1~0_combout\ : std_logic;
SIGNAL \q0:5:seg7_6|Mux0~0_combout\ : std_logic;
SIGNAL \rtc1|ticks\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \rtc1|seconds_l\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \rtc1|seconds_h\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \rtc1|minutes_l\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \rtc1|minutes_h\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \rtc1|hours_l\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \rtc1|hours_h\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \KEY~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_KEY~combout\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \q0:5:seg7_6|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \q0:4:seg7_6|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \q0:3:seg7_6|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \q0:2:seg7_6|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \q0:1:seg7_6|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \q0:0:seg7_6|ALT_INV_Mux0~0_combout\ : std_logic;

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
\ALT_INV_KEY~combout\(0) <= NOT \KEY~combout\(0);
\q0:5:seg7_6|ALT_INV_Mux0~0_combout\ <= NOT \q0:5:seg7_6|Mux0~0_combout\;
\q0:4:seg7_6|ALT_INV_Mux0~0_combout\ <= NOT \q0:4:seg7_6|Mux0~0_combout\;
\q0:3:seg7_6|ALT_INV_Mux0~0_combout\ <= NOT \q0:3:seg7_6|Mux0~0_combout\;
\q0:2:seg7_6|ALT_INV_Mux0~0_combout\ <= NOT \q0:2:seg7_6|Mux0~0_combout\;
\q0:1:seg7_6|ALT_INV_Mux0~0_combout\ <= NOT \q0:1:seg7_6|Mux0~0_combout\;
\q0:0:seg7_6|ALT_INV_Mux0~0_combout\ <= NOT \q0:0:seg7_6|Mux0~0_combout\;

-- Location: LCCOMB_X28_Y21_N2
\rtc1|Add3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add3~2_combout\ = (\rtc1|minutes_l\(1) & (!\rtc1|Add3~1\)) # (!\rtc1|minutes_l\(1) & ((\rtc1|Add3~1\) # (GND)))
-- \rtc1|Add3~3\ = CARRY((!\rtc1|Add3~1\) # (!\rtc1|minutes_l\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|minutes_l\(1),
	datad => VCC,
	cin => \rtc1|Add3~1\,
	combout => \rtc1|Add3~2_combout\,
	cout => \rtc1|Add3~3\);

-- Location: LCCOMB_X30_Y25_N10
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

-- Location: LCCOMB_X30_Y25_N12
\rtc1|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add0~12_combout\ = (\rtc1|ticks\(6) & (\rtc1|Add0~11\ $ (GND))) # (!\rtc1|ticks\(6) & (!\rtc1|Add0~11\ & VCC))
-- \rtc1|Add0~13\ = CARRY((\rtc1|ticks\(6) & !\rtc1|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|ticks\(6),
	datad => VCC,
	cin => \rtc1|Add0~11\,
	combout => \rtc1|Add0~12_combout\,
	cout => \rtc1|Add0~13\);

-- Location: LCCOMB_X30_Y25_N14
\rtc1|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add0~14_combout\ = (\rtc1|ticks\(7) & (!\rtc1|Add0~13\)) # (!\rtc1|ticks\(7) & ((\rtc1|Add0~13\) # (GND)))
-- \rtc1|Add0~15\ = CARRY((!\rtc1|Add0~13\) # (!\rtc1|ticks\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|ticks\(7),
	datad => VCC,
	cin => \rtc1|Add0~13\,
	combout => \rtc1|Add0~14_combout\,
	cout => \rtc1|Add0~15\);

-- Location: LCCOMB_X30_Y25_N16
\rtc1|Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add0~16_combout\ = (\rtc1|ticks\(8) & (\rtc1|Add0~15\ $ (GND))) # (!\rtc1|ticks\(8) & (!\rtc1|Add0~15\ & VCC))
-- \rtc1|Add0~17\ = CARRY((\rtc1|ticks\(8) & !\rtc1|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|ticks\(8),
	datad => VCC,
	cin => \rtc1|Add0~15\,
	combout => \rtc1|Add0~16_combout\,
	cout => \rtc1|Add0~17\);

-- Location: LCCOMB_X30_Y25_N20
\rtc1|Add0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add0~20_combout\ = (\rtc1|ticks\(10) & (\rtc1|Add0~19\ $ (GND))) # (!\rtc1|ticks\(10) & (!\rtc1|Add0~19\ & VCC))
-- \rtc1|Add0~21\ = CARRY((\rtc1|ticks\(10) & !\rtc1|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|ticks\(10),
	datad => VCC,
	cin => \rtc1|Add0~19\,
	combout => \rtc1|Add0~20_combout\,
	cout => \rtc1|Add0~21\);

-- Location: LCCOMB_X30_Y24_N20
\rtc1|Add0~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add0~52_combout\ = (\rtc1|ticks\(26) & (\rtc1|Add0~51\ $ (GND))) # (!\rtc1|ticks\(26) & (!\rtc1|Add0~51\ & VCC))
-- \rtc1|Add0~53\ = CARRY((\rtc1|ticks\(26) & !\rtc1|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|ticks\(26),
	datad => VCC,
	cin => \rtc1|Add0~51\,
	combout => \rtc1|Add0~52_combout\,
	cout => \rtc1|Add0~53\);

-- Location: LCCOMB_X30_Y24_N24
\rtc1|Add0~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add0~56_combout\ = (\rtc1|ticks\(28) & (\rtc1|Add0~55\ $ (GND))) # (!\rtc1|ticks\(28) & (!\rtc1|Add0~55\ & VCC))
-- \rtc1|Add0~57\ = CARRY((\rtc1|ticks\(28) & !\rtc1|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|ticks\(28),
	datad => VCC,
	cin => \rtc1|Add0~55\,
	combout => \rtc1|Add0~56_combout\,
	cout => \rtc1|Add0~57\);

-- Location: LCCOMB_X31_Y19_N16
\rtc1|Add1~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add1~16_combout\ = (\rtc1|seconds_l\(8) & (\rtc1|Add1~15\ $ (GND))) # (!\rtc1|seconds_l\(8) & (!\rtc1|Add1~15\ & VCC))
-- \rtc1|Add1~17\ = CARRY((\rtc1|seconds_l\(8) & !\rtc1|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|seconds_l\(8),
	datad => VCC,
	cin => \rtc1|Add1~15\,
	combout => \rtc1|Add1~16_combout\,
	cout => \rtc1|Add1~17\);

-- Location: LCCOMB_X31_Y19_N20
\rtc1|Add1~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add1~20_combout\ = (\rtc1|seconds_l\(10) & (\rtc1|Add1~19\ $ (GND))) # (!\rtc1|seconds_l\(10) & (!\rtc1|Add1~19\ & VCC))
-- \rtc1|Add1~21\ = CARRY((\rtc1|seconds_l\(10) & !\rtc1|Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|seconds_l\(10),
	datad => VCC,
	cin => \rtc1|Add1~19\,
	combout => \rtc1|Add1~20_combout\,
	cout => \rtc1|Add1~21\);

-- Location: LCCOMB_X31_Y18_N6
\rtc1|Add1~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add1~38_combout\ = (\rtc1|seconds_l\(19) & (!\rtc1|Add1~37\)) # (!\rtc1|seconds_l\(19) & ((\rtc1|Add1~37\) # (GND)))
-- \rtc1|Add1~39\ = CARRY((!\rtc1|Add1~37\) # (!\rtc1|seconds_l\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|seconds_l\(19),
	datad => VCC,
	cin => \rtc1|Add1~37\,
	combout => \rtc1|Add1~38_combout\,
	cout => \rtc1|Add1~39\);

-- Location: LCCOMB_X31_Y18_N10
\rtc1|Add1~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add1~42_combout\ = (\rtc1|seconds_l\(21) & (!\rtc1|Add1~41\)) # (!\rtc1|seconds_l\(21) & ((\rtc1|Add1~41\) # (GND)))
-- \rtc1|Add1~43\ = CARRY((!\rtc1|Add1~41\) # (!\rtc1|seconds_l\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|seconds_l\(21),
	datad => VCC,
	cin => \rtc1|Add1~41\,
	combout => \rtc1|Add1~42_combout\,
	cout => \rtc1|Add1~43\);

-- Location: LCCOMB_X31_Y18_N20
\rtc1|Add1~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add1~52_combout\ = (\rtc1|seconds_l\(26) & (\rtc1|Add1~51\ $ (GND))) # (!\rtc1|seconds_l\(26) & (!\rtc1|Add1~51\ & VCC))
-- \rtc1|Add1~53\ = CARRY((\rtc1|seconds_l\(26) & !\rtc1|Add1~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|seconds_l\(26),
	datad => VCC,
	cin => \rtc1|Add1~51\,
	combout => \rtc1|Add1~52_combout\,
	cout => \rtc1|Add1~53\);

-- Location: LCCOMB_X31_Y18_N28
\rtc1|Add1~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add1~60_combout\ = (\rtc1|seconds_l\(30) & (\rtc1|Add1~59\ $ (GND))) # (!\rtc1|seconds_l\(30) & (!\rtc1|Add1~59\ & VCC))
-- \rtc1|Add1~61\ = CARRY((\rtc1|seconds_l\(30) & !\rtc1|Add1~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rtc1|seconds_l\(30),
	datad => VCC,
	cin => \rtc1|Add1~59\,
	combout => \rtc1|Add1~60_combout\,
	cout => \rtc1|Add1~61\);

-- Location: LCCOMB_X31_Y18_N30
\rtc1|Add1~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add1~62_combout\ = \rtc1|Add1~61\ $ (\rtc1|seconds_l\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \rtc1|seconds_l\(31),
	cin => \rtc1|Add1~61\,
	combout => \rtc1|Add1~62_combout\);

-- Location: LCCOMB_X30_Y23_N12
\rtc1|Add2~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add2~12_combout\ = (\rtc1|seconds_h\(6) & (\rtc1|Add2~11\ $ (GND))) # (!\rtc1|seconds_h\(6) & (!\rtc1|Add2~11\ & VCC))
-- \rtc1|Add2~13\ = CARRY((\rtc1|seconds_h\(6) & !\rtc1|Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|seconds_h\(6),
	datad => VCC,
	cin => \rtc1|Add2~11\,
	combout => \rtc1|Add2~12_combout\,
	cout => \rtc1|Add2~13\);

-- Location: LCCOMB_X30_Y23_N20
\rtc1|Add2~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add2~20_combout\ = (\rtc1|seconds_h\(10) & (\rtc1|Add2~19\ $ (GND))) # (!\rtc1|seconds_h\(10) & (!\rtc1|Add2~19\ & VCC))
-- \rtc1|Add2~21\ = CARRY((\rtc1|seconds_h\(10) & !\rtc1|Add2~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|seconds_h\(10),
	datad => VCC,
	cin => \rtc1|Add2~19\,
	combout => \rtc1|Add2~20_combout\,
	cout => \rtc1|Add2~21\);

-- Location: LCCOMB_X30_Y23_N22
\rtc1|Add2~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add2~22_combout\ = (\rtc1|seconds_h\(11) & (!\rtc1|Add2~21\)) # (!\rtc1|seconds_h\(11) & ((\rtc1|Add2~21\) # (GND)))
-- \rtc1|Add2~23\ = CARRY((!\rtc1|Add2~21\) # (!\rtc1|seconds_h\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rtc1|seconds_h\(11),
	datad => VCC,
	cin => \rtc1|Add2~21\,
	combout => \rtc1|Add2~22_combout\,
	cout => \rtc1|Add2~23\);

-- Location: LCCOMB_X30_Y23_N24
\rtc1|Add2~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add2~24_combout\ = (\rtc1|seconds_h\(12) & (\rtc1|Add2~23\ $ (GND))) # (!\rtc1|seconds_h\(12) & (!\rtc1|Add2~23\ & VCC))
-- \rtc1|Add2~25\ = CARRY((\rtc1|seconds_h\(12) & !\rtc1|Add2~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|seconds_h\(12),
	datad => VCC,
	cin => \rtc1|Add2~23\,
	combout => \rtc1|Add2~24_combout\,
	cout => \rtc1|Add2~25\);

-- Location: LCCOMB_X30_Y23_N26
\rtc1|Add2~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add2~26_combout\ = (\rtc1|seconds_h\(13) & (!\rtc1|Add2~25\)) # (!\rtc1|seconds_h\(13) & ((\rtc1|Add2~25\) # (GND)))
-- \rtc1|Add2~27\ = CARRY((!\rtc1|Add2~25\) # (!\rtc1|seconds_h\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rtc1|seconds_h\(13),
	datad => VCC,
	cin => \rtc1|Add2~25\,
	combout => \rtc1|Add2~26_combout\,
	cout => \rtc1|Add2~27\);

-- Location: LCCOMB_X30_Y23_N28
\rtc1|Add2~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add2~28_combout\ = (\rtc1|seconds_h\(14) & (\rtc1|Add2~27\ $ (GND))) # (!\rtc1|seconds_h\(14) & (!\rtc1|Add2~27\ & VCC))
-- \rtc1|Add2~29\ = CARRY((\rtc1|seconds_h\(14) & !\rtc1|Add2~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rtc1|seconds_h\(14),
	datad => VCC,
	cin => \rtc1|Add2~27\,
	combout => \rtc1|Add2~28_combout\,
	cout => \rtc1|Add2~29\);

-- Location: LCCOMB_X30_Y23_N30
\rtc1|Add2~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add2~30_combout\ = (\rtc1|seconds_h\(15) & (!\rtc1|Add2~29\)) # (!\rtc1|seconds_h\(15) & ((\rtc1|Add2~29\) # (GND)))
-- \rtc1|Add2~31\ = CARRY((!\rtc1|Add2~29\) # (!\rtc1|seconds_h\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rtc1|seconds_h\(15),
	datad => VCC,
	cin => \rtc1|Add2~29\,
	combout => \rtc1|Add2~30_combout\,
	cout => \rtc1|Add2~31\);

-- Location: LCCOMB_X30_Y22_N0
\rtc1|Add2~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add2~32_combout\ = (\rtc1|seconds_h\(16) & (\rtc1|Add2~31\ $ (GND))) # (!\rtc1|seconds_h\(16) & (!\rtc1|Add2~31\ & VCC))
-- \rtc1|Add2~33\ = CARRY((\rtc1|seconds_h\(16) & !\rtc1|Add2~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rtc1|seconds_h\(16),
	datad => VCC,
	cin => \rtc1|Add2~31\,
	combout => \rtc1|Add2~32_combout\,
	cout => \rtc1|Add2~33\);

-- Location: LCCOMB_X30_Y22_N2
\rtc1|Add2~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add2~34_combout\ = (\rtc1|seconds_h\(17) & (!\rtc1|Add2~33\)) # (!\rtc1|seconds_h\(17) & ((\rtc1|Add2~33\) # (GND)))
-- \rtc1|Add2~35\ = CARRY((!\rtc1|Add2~33\) # (!\rtc1|seconds_h\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rtc1|seconds_h\(17),
	datad => VCC,
	cin => \rtc1|Add2~33\,
	combout => \rtc1|Add2~34_combout\,
	cout => \rtc1|Add2~35\);

-- Location: LCCOMB_X30_Y22_N4
\rtc1|Add2~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add2~36_combout\ = (\rtc1|seconds_h\(18) & (\rtc1|Add2~35\ $ (GND))) # (!\rtc1|seconds_h\(18) & (!\rtc1|Add2~35\ & VCC))
-- \rtc1|Add2~37\ = CARRY((\rtc1|seconds_h\(18) & !\rtc1|Add2~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rtc1|seconds_h\(18),
	datad => VCC,
	cin => \rtc1|Add2~35\,
	combout => \rtc1|Add2~36_combout\,
	cout => \rtc1|Add2~37\);

-- Location: LCCOMB_X30_Y22_N6
\rtc1|Add2~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add2~38_combout\ = (\rtc1|seconds_h\(19) & (!\rtc1|Add2~37\)) # (!\rtc1|seconds_h\(19) & ((\rtc1|Add2~37\) # (GND)))
-- \rtc1|Add2~39\ = CARRY((!\rtc1|Add2~37\) # (!\rtc1|seconds_h\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|seconds_h\(19),
	datad => VCC,
	cin => \rtc1|Add2~37\,
	combout => \rtc1|Add2~38_combout\,
	cout => \rtc1|Add2~39\);

-- Location: LCCOMB_X30_Y22_N8
\rtc1|Add2~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add2~40_combout\ = (\rtc1|seconds_h\(20) & (\rtc1|Add2~39\ $ (GND))) # (!\rtc1|seconds_h\(20) & (!\rtc1|Add2~39\ & VCC))
-- \rtc1|Add2~41\ = CARRY((\rtc1|seconds_h\(20) & !\rtc1|Add2~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rtc1|seconds_h\(20),
	datad => VCC,
	cin => \rtc1|Add2~39\,
	combout => \rtc1|Add2~40_combout\,
	cout => \rtc1|Add2~41\);

-- Location: LCCOMB_X30_Y22_N10
\rtc1|Add2~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add2~42_combout\ = (\rtc1|seconds_h\(21) & (!\rtc1|Add2~41\)) # (!\rtc1|seconds_h\(21) & ((\rtc1|Add2~41\) # (GND)))
-- \rtc1|Add2~43\ = CARRY((!\rtc1|Add2~41\) # (!\rtc1|seconds_h\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|seconds_h\(21),
	datad => VCC,
	cin => \rtc1|Add2~41\,
	combout => \rtc1|Add2~42_combout\,
	cout => \rtc1|Add2~43\);

-- Location: LCCOMB_X30_Y22_N12
\rtc1|Add2~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add2~44_combout\ = (\rtc1|seconds_h\(22) & (\rtc1|Add2~43\ $ (GND))) # (!\rtc1|seconds_h\(22) & (!\rtc1|Add2~43\ & VCC))
-- \rtc1|Add2~45\ = CARRY((\rtc1|seconds_h\(22) & !\rtc1|Add2~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|seconds_h\(22),
	datad => VCC,
	cin => \rtc1|Add2~43\,
	combout => \rtc1|Add2~44_combout\,
	cout => \rtc1|Add2~45\);

-- Location: LCCOMB_X30_Y22_N14
\rtc1|Add2~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add2~46_combout\ = (\rtc1|seconds_h\(23) & (!\rtc1|Add2~45\)) # (!\rtc1|seconds_h\(23) & ((\rtc1|Add2~45\) # (GND)))
-- \rtc1|Add2~47\ = CARRY((!\rtc1|Add2~45\) # (!\rtc1|seconds_h\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rtc1|seconds_h\(23),
	datad => VCC,
	cin => \rtc1|Add2~45\,
	combout => \rtc1|Add2~46_combout\,
	cout => \rtc1|Add2~47\);

-- Location: LCCOMB_X30_Y22_N16
\rtc1|Add2~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add2~48_combout\ = (\rtc1|seconds_h\(24) & (\rtc1|Add2~47\ $ (GND))) # (!\rtc1|seconds_h\(24) & (!\rtc1|Add2~47\ & VCC))
-- \rtc1|Add2~49\ = CARRY((\rtc1|seconds_h\(24) & !\rtc1|Add2~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|seconds_h\(24),
	datad => VCC,
	cin => \rtc1|Add2~47\,
	combout => \rtc1|Add2~48_combout\,
	cout => \rtc1|Add2~49\);

-- Location: LCCOMB_X30_Y22_N18
\rtc1|Add2~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add2~50_combout\ = (\rtc1|seconds_h\(25) & (!\rtc1|Add2~49\)) # (!\rtc1|seconds_h\(25) & ((\rtc1|Add2~49\) # (GND)))
-- \rtc1|Add2~51\ = CARRY((!\rtc1|Add2~49\) # (!\rtc1|seconds_h\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rtc1|seconds_h\(25),
	datad => VCC,
	cin => \rtc1|Add2~49\,
	combout => \rtc1|Add2~50_combout\,
	cout => \rtc1|Add2~51\);

-- Location: LCCOMB_X30_Y22_N20
\rtc1|Add2~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add2~52_combout\ = (\rtc1|seconds_h\(26) & (\rtc1|Add2~51\ $ (GND))) # (!\rtc1|seconds_h\(26) & (!\rtc1|Add2~51\ & VCC))
-- \rtc1|Add2~53\ = CARRY((\rtc1|seconds_h\(26) & !\rtc1|Add2~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|seconds_h\(26),
	datad => VCC,
	cin => \rtc1|Add2~51\,
	combout => \rtc1|Add2~52_combout\,
	cout => \rtc1|Add2~53\);

-- Location: LCCOMB_X30_Y22_N22
\rtc1|Add2~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add2~54_combout\ = (\rtc1|seconds_h\(27) & (!\rtc1|Add2~53\)) # (!\rtc1|seconds_h\(27) & ((\rtc1|Add2~53\) # (GND)))
-- \rtc1|Add2~55\ = CARRY((!\rtc1|Add2~53\) # (!\rtc1|seconds_h\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rtc1|seconds_h\(27),
	datad => VCC,
	cin => \rtc1|Add2~53\,
	combout => \rtc1|Add2~54_combout\,
	cout => \rtc1|Add2~55\);

-- Location: LCCOMB_X30_Y22_N24
\rtc1|Add2~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add2~56_combout\ = (\rtc1|seconds_h\(28) & (\rtc1|Add2~55\ $ (GND))) # (!\rtc1|seconds_h\(28) & (!\rtc1|Add2~55\ & VCC))
-- \rtc1|Add2~57\ = CARRY((\rtc1|seconds_h\(28) & !\rtc1|Add2~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|seconds_h\(28),
	datad => VCC,
	cin => \rtc1|Add2~55\,
	combout => \rtc1|Add2~56_combout\,
	cout => \rtc1|Add2~57\);

-- Location: LCCOMB_X30_Y22_N26
\rtc1|Add2~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add2~58_combout\ = (\rtc1|seconds_h\(29) & (!\rtc1|Add2~57\)) # (!\rtc1|seconds_h\(29) & ((\rtc1|Add2~57\) # (GND)))
-- \rtc1|Add2~59\ = CARRY((!\rtc1|Add2~57\) # (!\rtc1|seconds_h\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rtc1|seconds_h\(29),
	datad => VCC,
	cin => \rtc1|Add2~57\,
	combout => \rtc1|Add2~58_combout\,
	cout => \rtc1|Add2~59\);

-- Location: LCCOMB_X30_Y22_N28
\rtc1|Add2~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add2~60_combout\ = (\rtc1|seconds_h\(30) & (\rtc1|Add2~59\ $ (GND))) # (!\rtc1|seconds_h\(30) & (!\rtc1|Add2~59\ & VCC))
-- \rtc1|Add2~61\ = CARRY((\rtc1|seconds_h\(30) & !\rtc1|Add2~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rtc1|seconds_h\(30),
	datad => VCC,
	cin => \rtc1|Add2~59\,
	combout => \rtc1|Add2~60_combout\,
	cout => \rtc1|Add2~61\);

-- Location: LCCOMB_X30_Y22_N30
\rtc1|Add2~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add2~62_combout\ = \rtc1|Add2~61\ $ (\rtc1|seconds_h\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \rtc1|seconds_h\(31),
	cin => \rtc1|Add2~61\,
	combout => \rtc1|Add2~62_combout\);

-- Location: LCCOMB_X28_Y21_N10
\rtc1|Add3~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add3~10_combout\ = (\rtc1|minutes_l\(5) & (!\rtc1|Add3~9\)) # (!\rtc1|minutes_l\(5) & ((\rtc1|Add3~9\) # (GND)))
-- \rtc1|Add3~11\ = CARRY((!\rtc1|Add3~9\) # (!\rtc1|minutes_l\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|minutes_l\(5),
	datad => VCC,
	cin => \rtc1|Add3~9\,
	combout => \rtc1|Add3~10_combout\,
	cout => \rtc1|Add3~11\);

-- Location: LCCOMB_X28_Y21_N20
\rtc1|Add3~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add3~20_combout\ = (\rtc1|minutes_l\(10) & (\rtc1|Add3~19\ $ (GND))) # (!\rtc1|minutes_l\(10) & (!\rtc1|Add3~19\ & VCC))
-- \rtc1|Add3~21\ = CARRY((\rtc1|minutes_l\(10) & !\rtc1|Add3~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|minutes_l\(10),
	datad => VCC,
	cin => \rtc1|Add3~19\,
	combout => \rtc1|Add3~20_combout\,
	cout => \rtc1|Add3~21\);

-- Location: LCCOMB_X28_Y21_N24
\rtc1|Add3~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add3~24_combout\ = (\rtc1|minutes_l\(12) & (\rtc1|Add3~23\ $ (GND))) # (!\rtc1|minutes_l\(12) & (!\rtc1|Add3~23\ & VCC))
-- \rtc1|Add3~25\ = CARRY((\rtc1|minutes_l\(12) & !\rtc1|Add3~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|minutes_l\(12),
	datad => VCC,
	cin => \rtc1|Add3~23\,
	combout => \rtc1|Add3~24_combout\,
	cout => \rtc1|Add3~25\);

-- Location: LCCOMB_X28_Y20_N6
\rtc1|Add3~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add3~38_combout\ = (\rtc1|minutes_l\(19) & (!\rtc1|Add3~37\)) # (!\rtc1|minutes_l\(19) & ((\rtc1|Add3~37\) # (GND)))
-- \rtc1|Add3~39\ = CARRY((!\rtc1|Add3~37\) # (!\rtc1|minutes_l\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|minutes_l\(19),
	datad => VCC,
	cin => \rtc1|Add3~37\,
	combout => \rtc1|Add3~38_combout\,
	cout => \rtc1|Add3~39\);

-- Location: LCCOMB_X28_Y20_N12
\rtc1|Add3~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add3~44_combout\ = (\rtc1|minutes_l\(22) & (\rtc1|Add3~43\ $ (GND))) # (!\rtc1|minutes_l\(22) & (!\rtc1|Add3~43\ & VCC))
-- \rtc1|Add3~45\ = CARRY((\rtc1|minutes_l\(22) & !\rtc1|Add3~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|minutes_l\(22),
	datad => VCC,
	cin => \rtc1|Add3~43\,
	combout => \rtc1|Add3~44_combout\,
	cout => \rtc1|Add3~45\);

-- Location: LCCOMB_X28_Y20_N24
\rtc1|Add3~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add3~56_combout\ = (\rtc1|minutes_l\(28) & (\rtc1|Add3~55\ $ (GND))) # (!\rtc1|minutes_l\(28) & (!\rtc1|Add3~55\ & VCC))
-- \rtc1|Add3~57\ = CARRY((\rtc1|minutes_l\(28) & !\rtc1|Add3~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|minutes_l\(28),
	datad => VCC,
	cin => \rtc1|Add3~55\,
	combout => \rtc1|Add3~56_combout\,
	cout => \rtc1|Add3~57\);

-- Location: LCCOMB_X20_Y23_N12
\rtc1|Add4~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add4~12_combout\ = (\rtc1|minutes_h\(6) & (\rtc1|Add4~11\ $ (GND))) # (!\rtc1|minutes_h\(6) & (!\rtc1|Add4~11\ & VCC))
-- \rtc1|Add4~13\ = CARRY((\rtc1|minutes_h\(6) & !\rtc1|Add4~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|minutes_h\(6),
	datad => VCC,
	cin => \rtc1|Add4~11\,
	combout => \rtc1|Add4~12_combout\,
	cout => \rtc1|Add4~13\);

-- Location: LCCOMB_X20_Y23_N16
\rtc1|Add4~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add4~16_combout\ = (\rtc1|minutes_h\(8) & (\rtc1|Add4~15\ $ (GND))) # (!\rtc1|minutes_h\(8) & (!\rtc1|Add4~15\ & VCC))
-- \rtc1|Add4~17\ = CARRY((\rtc1|minutes_h\(8) & !\rtc1|Add4~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|minutes_h\(8),
	datad => VCC,
	cin => \rtc1|Add4~15\,
	combout => \rtc1|Add4~16_combout\,
	cout => \rtc1|Add4~17\);

-- Location: LCCOMB_X20_Y23_N20
\rtc1|Add4~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add4~20_combout\ = (\rtc1|minutes_h\(10) & (\rtc1|Add4~19\ $ (GND))) # (!\rtc1|minutes_h\(10) & (!\rtc1|Add4~19\ & VCC))
-- \rtc1|Add4~21\ = CARRY((\rtc1|minutes_h\(10) & !\rtc1|Add4~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|minutes_h\(10),
	datad => VCC,
	cin => \rtc1|Add4~19\,
	combout => \rtc1|Add4~20_combout\,
	cout => \rtc1|Add4~21\);

-- Location: LCCOMB_X20_Y23_N24
\rtc1|Add4~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add4~24_combout\ = (\rtc1|minutes_h\(12) & (\rtc1|Add4~23\ $ (GND))) # (!\rtc1|minutes_h\(12) & (!\rtc1|Add4~23\ & VCC))
-- \rtc1|Add4~25\ = CARRY((\rtc1|minutes_h\(12) & !\rtc1|Add4~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|minutes_h\(12),
	datad => VCC,
	cin => \rtc1|Add4~23\,
	combout => \rtc1|Add4~24_combout\,
	cout => \rtc1|Add4~25\);

-- Location: LCCOMB_X20_Y22_N10
\rtc1|Add4~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add4~42_combout\ = (\rtc1|minutes_h\(21) & (!\rtc1|Add4~41\)) # (!\rtc1|minutes_h\(21) & ((\rtc1|Add4~41\) # (GND)))
-- \rtc1|Add4~43\ = CARRY((!\rtc1|Add4~41\) # (!\rtc1|minutes_h\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|minutes_h\(21),
	datad => VCC,
	cin => \rtc1|Add4~41\,
	combout => \rtc1|Add4~42_combout\,
	cout => \rtc1|Add4~43\);

-- Location: LCCOMB_X20_Y22_N12
\rtc1|Add4~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add4~44_combout\ = (\rtc1|minutes_h\(22) & (\rtc1|Add4~43\ $ (GND))) # (!\rtc1|minutes_h\(22) & (!\rtc1|Add4~43\ & VCC))
-- \rtc1|Add4~45\ = CARRY((\rtc1|minutes_h\(22) & !\rtc1|Add4~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|minutes_h\(22),
	datad => VCC,
	cin => \rtc1|Add4~43\,
	combout => \rtc1|Add4~44_combout\,
	cout => \rtc1|Add4~45\);

-- Location: LCCOMB_X20_Y22_N24
\rtc1|Add4~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add4~56_combout\ = (\rtc1|minutes_h\(28) & (\rtc1|Add4~55\ $ (GND))) # (!\rtc1|minutes_h\(28) & (!\rtc1|Add4~55\ & VCC))
-- \rtc1|Add4~57\ = CARRY((\rtc1|minutes_h\(28) & !\rtc1|Add4~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|minutes_h\(28),
	datad => VCC,
	cin => \rtc1|Add4~55\,
	combout => \rtc1|Add4~56_combout\,
	cout => \rtc1|Add4~57\);

-- Location: LCCOMB_X21_Y21_N10
\rtc1|Add5~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add5~10_combout\ = (\rtc1|hours_l\(5) & (!\rtc1|Add5~9\)) # (!\rtc1|hours_l\(5) & ((\rtc1|Add5~9\) # (GND)))
-- \rtc1|Add5~11\ = CARRY((!\rtc1|Add5~9\) # (!\rtc1|hours_l\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|hours_l\(5),
	datad => VCC,
	cin => \rtc1|Add5~9\,
	combout => \rtc1|Add5~10_combout\,
	cout => \rtc1|Add5~11\);

-- Location: LCCOMB_X21_Y21_N24
\rtc1|Add5~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add5~24_combout\ = (\rtc1|hours_l\(12) & (\rtc1|Add5~23\ $ (GND))) # (!\rtc1|hours_l\(12) & (!\rtc1|Add5~23\ & VCC))
-- \rtc1|Add5~25\ = CARRY((\rtc1|hours_l\(12) & !\rtc1|Add5~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|hours_l\(12),
	datad => VCC,
	cin => \rtc1|Add5~23\,
	combout => \rtc1|Add5~24_combout\,
	cout => \rtc1|Add5~25\);

-- Location: LCCOMB_X21_Y20_N12
\rtc1|Add5~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add5~44_combout\ = (\rtc1|hours_l\(22) & (\rtc1|Add5~43\ $ (GND))) # (!\rtc1|hours_l\(22) & (!\rtc1|Add5~43\ & VCC))
-- \rtc1|Add5~45\ = CARRY((\rtc1|hours_l\(22) & !\rtc1|Add5~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|hours_l\(22),
	datad => VCC,
	cin => \rtc1|Add5~43\,
	combout => \rtc1|Add5~44_combout\,
	cout => \rtc1|Add5~45\);

-- Location: LCCOMB_X21_Y20_N20
\rtc1|Add5~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add5~52_combout\ = (\rtc1|hours_l\(26) & (\rtc1|Add5~51\ $ (GND))) # (!\rtc1|hours_l\(26) & (!\rtc1|Add5~51\ & VCC))
-- \rtc1|Add5~53\ = CARRY((\rtc1|hours_l\(26) & !\rtc1|Add5~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|hours_l\(26),
	datad => VCC,
	cin => \rtc1|Add5~51\,
	combout => \rtc1|Add5~52_combout\,
	cout => \rtc1|Add5~53\);

-- Location: LCCOMB_X21_Y20_N22
\rtc1|Add5~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add5~54_combout\ = (\rtc1|hours_l\(27) & (!\rtc1|Add5~53\)) # (!\rtc1|hours_l\(27) & ((\rtc1|Add5~53\) # (GND)))
-- \rtc1|Add5~55\ = CARRY((!\rtc1|Add5~53\) # (!\rtc1|hours_l\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rtc1|hours_l\(27),
	datad => VCC,
	cin => \rtc1|Add5~53\,
	combout => \rtc1|Add5~54_combout\,
	cout => \rtc1|Add5~55\);

-- Location: LCCOMB_X21_Y20_N24
\rtc1|Add5~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add5~56_combout\ = (\rtc1|hours_l\(28) & (\rtc1|Add5~55\ $ (GND))) # (!\rtc1|hours_l\(28) & (!\rtc1|Add5~55\ & VCC))
-- \rtc1|Add5~57\ = CARRY((\rtc1|hours_l\(28) & !\rtc1|Add5~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|hours_l\(28),
	datad => VCC,
	cin => \rtc1|Add5~55\,
	combout => \rtc1|Add5~56_combout\,
	cout => \rtc1|Add5~57\);

-- Location: LCCOMB_X21_Y20_N26
\rtc1|Add5~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add5~58_combout\ = (\rtc1|hours_l\(29) & (!\rtc1|Add5~57\)) # (!\rtc1|hours_l\(29) & ((\rtc1|Add5~57\) # (GND)))
-- \rtc1|Add5~59\ = CARRY((!\rtc1|Add5~57\) # (!\rtc1|hours_l\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rtc1|hours_l\(29),
	datad => VCC,
	cin => \rtc1|Add5~57\,
	combout => \rtc1|Add5~58_combout\,
	cout => \rtc1|Add5~59\);

-- Location: LCCOMB_X21_Y20_N28
\rtc1|Add5~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add5~60_combout\ = (\rtc1|hours_l\(30) & (\rtc1|Add5~59\ $ (GND))) # (!\rtc1|hours_l\(30) & (!\rtc1|Add5~59\ & VCC))
-- \rtc1|Add5~61\ = CARRY((\rtc1|hours_l\(30) & !\rtc1|Add5~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rtc1|hours_l\(30),
	datad => VCC,
	cin => \rtc1|Add5~59\,
	combout => \rtc1|Add5~60_combout\,
	cout => \rtc1|Add5~61\);

-- Location: LCCOMB_X21_Y20_N30
\rtc1|Add5~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add5~62_combout\ = \rtc1|Add5~61\ $ (\rtc1|hours_l\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \rtc1|hours_l\(31),
	cin => \rtc1|Add5~61\,
	combout => \rtc1|Add5~62_combout\);

-- Location: LCCOMB_X18_Y24_N12
\rtc1|Add6~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add6~12_combout\ = (\rtc1|hours_h\(6) & (\rtc1|Add6~11\ $ (GND))) # (!\rtc1|hours_h\(6) & (!\rtc1|Add6~11\ & VCC))
-- \rtc1|Add6~13\ = CARRY((\rtc1|hours_h\(6) & !\rtc1|Add6~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|hours_h\(6),
	datad => VCC,
	cin => \rtc1|Add6~11\,
	combout => \rtc1|Add6~12_combout\,
	cout => \rtc1|Add6~13\);

-- Location: LCCOMB_X18_Y24_N16
\rtc1|Add6~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add6~16_combout\ = (\rtc1|hours_h\(8) & (\rtc1|Add6~15\ $ (GND))) # (!\rtc1|hours_h\(8) & (!\rtc1|Add6~15\ & VCC))
-- \rtc1|Add6~17\ = CARRY((\rtc1|hours_h\(8) & !\rtc1|Add6~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|hours_h\(8),
	datad => VCC,
	cin => \rtc1|Add6~15\,
	combout => \rtc1|Add6~16_combout\,
	cout => \rtc1|Add6~17\);

-- Location: LCCOMB_X18_Y24_N20
\rtc1|Add6~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add6~20_combout\ = (\rtc1|hours_h\(10) & (\rtc1|Add6~19\ $ (GND))) # (!\rtc1|hours_h\(10) & (!\rtc1|Add6~19\ & VCC))
-- \rtc1|Add6~21\ = CARRY((\rtc1|hours_h\(10) & !\rtc1|Add6~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|hours_h\(10),
	datad => VCC,
	cin => \rtc1|Add6~19\,
	combout => \rtc1|Add6~20_combout\,
	cout => \rtc1|Add6~21\);

-- Location: LCCOMB_X18_Y23_N6
\rtc1|Add6~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add6~38_combout\ = (\rtc1|hours_h\(19) & (!\rtc1|Add6~37\)) # (!\rtc1|hours_h\(19) & ((\rtc1|Add6~37\) # (GND)))
-- \rtc1|Add6~39\ = CARRY((!\rtc1|Add6~37\) # (!\rtc1|hours_h\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|hours_h\(19),
	datad => VCC,
	cin => \rtc1|Add6~37\,
	combout => \rtc1|Add6~38_combout\,
	cout => \rtc1|Add6~39\);

-- Location: LCCOMB_X18_Y23_N24
\rtc1|Add6~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add6~56_combout\ = (\rtc1|hours_h\(28) & (\rtc1|Add6~55\ $ (GND))) # (!\rtc1|hours_h\(28) & (!\rtc1|Add6~55\ & VCC))
-- \rtc1|Add6~57\ = CARRY((\rtc1|hours_h\(28) & !\rtc1|Add6~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|hours_h\(28),
	datad => VCC,
	cin => \rtc1|Add6~55\,
	combout => \rtc1|Add6~56_combout\,
	cout => \rtc1|Add6~57\);

-- Location: LCFF_X30_Y24_N25
\rtc1|ticks[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add0~56_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|ticks\(28));

-- Location: LCFF_X30_Y24_N21
\rtc1|ticks[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add0~52_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|ticks\(26));

-- Location: LCCOMB_X29_Y24_N12
\rtc1|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Equal0~1_combout\ = (!\rtc1|ticks\(26) & (!\rtc1|ticks\(28) & (!\rtc1|ticks\(27) & \rtc1|ticks\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|ticks\(26),
	datab => \rtc1|ticks\(28),
	datac => \rtc1|ticks\(27),
	datad => \rtc1|ticks\(25),
	combout => \rtc1|Equal0~1_combout\);

-- Location: LCFF_X30_Y25_N21
\rtc1|ticks[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add0~20_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|ticks\(10));

-- Location: LCFF_X30_Y25_N13
\rtc1|ticks[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add0~12_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|ticks\(6));

-- Location: LCFF_X30_Y25_N11
\rtc1|ticks[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add0~10_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|ticks\(5));

-- Location: LCFF_X30_Y25_N17
\rtc1|ticks[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add0~16_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|ticks\(8));

-- Location: LCFF_X29_Y25_N13
\rtc1|ticks[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|cnt~28_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|ticks\(7));

-- Location: LCCOMB_X29_Y25_N6
\rtc1|Equal0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Equal0~7_combout\ = (!\rtc1|ticks\(8) & (\rtc1|ticks\(6) & (\rtc1|ticks\(5) & !\rtc1|ticks\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|ticks\(8),
	datab => \rtc1|ticks\(6),
	datac => \rtc1|ticks\(5),
	datad => \rtc1|ticks\(7),
	combout => \rtc1|Equal0~7_combout\);

-- Location: LCFF_X31_Y18_N31
\rtc1|seconds_l[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add1~62_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \rtc1|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|seconds_l\(31));

-- Location: LCFF_X31_Y18_N21
\rtc1|seconds_l[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add1~52_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \rtc1|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|seconds_l\(26));

-- Location: LCFF_X31_Y18_N11
\rtc1|seconds_l[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add1~42_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \rtc1|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|seconds_l\(21));

-- Location: LCFF_X31_Y18_N7
\rtc1|seconds_l[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add1~38_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \rtc1|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|seconds_l\(19));

-- Location: LCCOMB_X30_Y18_N6
\rtc1|Equal1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Equal1~3_combout\ = (!\rtc1|seconds_l\(18) & (!\rtc1|seconds_l\(19) & (!\rtc1|seconds_l\(16) & !\rtc1|seconds_l\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|seconds_l\(18),
	datab => \rtc1|seconds_l\(19),
	datac => \rtc1|seconds_l\(16),
	datad => \rtc1|seconds_l\(17),
	combout => \rtc1|Equal1~3_combout\);

-- Location: LCFF_X31_Y19_N21
\rtc1|seconds_l[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add1~20_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \rtc1|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|seconds_l\(10));

-- Location: LCFF_X31_Y19_N17
\rtc1|seconds_l[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add1~16_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \rtc1|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|seconds_l\(8));

-- Location: LCCOMB_X32_Y19_N12
\rtc1|Equal1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Equal1~6_combout\ = (!\rtc1|seconds_l\(8) & (!\rtc1|seconds_l\(9) & (!\rtc1|seconds_l\(10) & !\rtc1|seconds_l\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|seconds_l\(8),
	datab => \rtc1|seconds_l\(9),
	datac => \rtc1|seconds_l\(10),
	datad => \rtc1|seconds_l\(11),
	combout => \rtc1|Equal1~6_combout\);

-- Location: LCFF_X30_Y22_N31
\rtc1|seconds_h[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add2~62_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \rtc1|wrap~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|seconds_h\(31));

-- Location: LCFF_X30_Y22_N29
\rtc1|seconds_h[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add2~60_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \rtc1|wrap~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|seconds_h\(30));

-- Location: LCFF_X30_Y22_N27
\rtc1|seconds_h[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add2~58_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \rtc1|wrap~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|seconds_h\(29));

-- Location: LCFF_X30_Y22_N25
\rtc1|seconds_h[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add2~56_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \rtc1|wrap~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|seconds_h\(28));

-- Location: LCCOMB_X31_Y22_N16
\rtc1|Equal2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Equal2~0_combout\ = (!\rtc1|seconds_h\(30) & (!\rtc1|seconds_h\(29) & (!\rtc1|seconds_h\(31) & !\rtc1|seconds_h\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|seconds_h\(30),
	datab => \rtc1|seconds_h\(29),
	datac => \rtc1|seconds_h\(31),
	datad => \rtc1|seconds_h\(28),
	combout => \rtc1|Equal2~0_combout\);

-- Location: LCFF_X30_Y22_N23
\rtc1|seconds_h[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add2~54_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \rtc1|wrap~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|seconds_h\(27));

-- Location: LCFF_X30_Y22_N21
\rtc1|seconds_h[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add2~52_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \rtc1|wrap~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|seconds_h\(26));

-- Location: LCFF_X30_Y22_N19
\rtc1|seconds_h[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add2~50_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \rtc1|wrap~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|seconds_h\(25));

-- Location: LCFF_X30_Y22_N17
\rtc1|seconds_h[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add2~48_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \rtc1|wrap~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|seconds_h\(24));

-- Location: LCCOMB_X28_Y22_N16
\rtc1|Equal2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Equal2~1_combout\ = (!\rtc1|seconds_h\(25) & (!\rtc1|seconds_h\(26) & (!\rtc1|seconds_h\(27) & !\rtc1|seconds_h\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|seconds_h\(25),
	datab => \rtc1|seconds_h\(26),
	datac => \rtc1|seconds_h\(27),
	datad => \rtc1|seconds_h\(24),
	combout => \rtc1|Equal2~1_combout\);

-- Location: LCFF_X30_Y22_N15
\rtc1|seconds_h[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add2~46_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \rtc1|wrap~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|seconds_h\(23));

-- Location: LCFF_X30_Y22_N13
\rtc1|seconds_h[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add2~44_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \rtc1|wrap~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|seconds_h\(22));

-- Location: LCFF_X30_Y22_N11
\rtc1|seconds_h[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add2~42_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \rtc1|wrap~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|seconds_h\(21));

-- Location: LCFF_X30_Y22_N9
\rtc1|seconds_h[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add2~40_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \rtc1|wrap~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|seconds_h\(20));

-- Location: LCCOMB_X29_Y22_N16
\rtc1|Equal2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Equal2~2_combout\ = (!\rtc1|seconds_h\(21) & (!\rtc1|seconds_h\(22) & (!\rtc1|seconds_h\(20) & !\rtc1|seconds_h\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|seconds_h\(21),
	datab => \rtc1|seconds_h\(22),
	datac => \rtc1|seconds_h\(20),
	datad => \rtc1|seconds_h\(23),
	combout => \rtc1|Equal2~2_combout\);

-- Location: LCFF_X30_Y22_N7
\rtc1|seconds_h[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add2~38_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \rtc1|wrap~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|seconds_h\(19));

-- Location: LCFF_X30_Y22_N5
\rtc1|seconds_h[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add2~36_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \rtc1|wrap~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|seconds_h\(18));

-- Location: LCFF_X30_Y22_N3
\rtc1|seconds_h[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add2~34_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \rtc1|wrap~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|seconds_h\(17));

-- Location: LCFF_X30_Y22_N1
\rtc1|seconds_h[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add2~32_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \rtc1|wrap~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|seconds_h\(16));

-- Location: LCCOMB_X30_Y21_N24
\rtc1|Equal2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Equal2~3_combout\ = (!\rtc1|seconds_h\(18) & (!\rtc1|seconds_h\(19) & (!\rtc1|seconds_h\(17) & !\rtc1|seconds_h\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|seconds_h\(18),
	datab => \rtc1|seconds_h\(19),
	datac => \rtc1|seconds_h\(17),
	datad => \rtc1|seconds_h\(16),
	combout => \rtc1|Equal2~3_combout\);

-- Location: LCCOMB_X29_Y21_N12
\rtc1|Equal2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Equal2~4_combout\ = (\rtc1|Equal2~0_combout\ & (\rtc1|Equal2~1_combout\ & (\rtc1|Equal2~2_combout\ & \rtc1|Equal2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|Equal2~0_combout\,
	datab => \rtc1|Equal2~1_combout\,
	datac => \rtc1|Equal2~2_combout\,
	datad => \rtc1|Equal2~3_combout\,
	combout => \rtc1|Equal2~4_combout\);

-- Location: LCFF_X30_Y23_N31
\rtc1|seconds_h[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add2~30_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \rtc1|wrap~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|seconds_h\(15));

-- Location: LCFF_X30_Y23_N29
\rtc1|seconds_h[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add2~28_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \rtc1|wrap~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|seconds_h\(14));

-- Location: LCFF_X30_Y23_N27
\rtc1|seconds_h[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add2~26_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \rtc1|wrap~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|seconds_h\(13));

-- Location: LCFF_X30_Y23_N25
\rtc1|seconds_h[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add2~24_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \rtc1|wrap~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|seconds_h\(12));

-- Location: LCCOMB_X29_Y23_N16
\rtc1|Equal2~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Equal2~5_combout\ = (!\rtc1|seconds_h\(15) & (!\rtc1|seconds_h\(14) & (!\rtc1|seconds_h\(13) & !\rtc1|seconds_h\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|seconds_h\(15),
	datab => \rtc1|seconds_h\(14),
	datac => \rtc1|seconds_h\(13),
	datad => \rtc1|seconds_h\(12),
	combout => \rtc1|Equal2~5_combout\);

-- Location: LCFF_X30_Y23_N23
\rtc1|seconds_h[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add2~22_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \rtc1|wrap~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|seconds_h\(11));

-- Location: LCFF_X30_Y23_N13
\rtc1|seconds_h[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add2~12_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \rtc1|wrap~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|seconds_h\(6));

-- Location: LCFF_X28_Y20_N25
\rtc1|minutes_l[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add3~56_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \rtc1|wrap~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|minutes_l\(28));

-- Location: LCFF_X28_Y20_N13
\rtc1|minutes_l[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add3~44_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \rtc1|wrap~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|minutes_l\(22));

-- Location: LCFF_X28_Y20_N7
\rtc1|minutes_l[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add3~38_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \rtc1|wrap~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|minutes_l\(19));

-- Location: LCCOMB_X29_Y20_N6
\rtc1|Equal3~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Equal3~3_combout\ = (!\rtc1|minutes_l\(16) & (!\rtc1|minutes_l\(19) & (!\rtc1|minutes_l\(18) & !\rtc1|minutes_l\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|minutes_l\(16),
	datab => \rtc1|minutes_l\(19),
	datac => \rtc1|minutes_l\(18),
	datad => \rtc1|minutes_l\(17),
	combout => \rtc1|Equal3~3_combout\);

-- Location: LCFF_X28_Y21_N25
\rtc1|minutes_l[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add3~24_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \rtc1|wrap~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|minutes_l\(12));

-- Location: LCCOMB_X29_Y21_N6
\rtc1|Equal3~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Equal3~5_combout\ = (!\rtc1|minutes_l\(13) & (!\rtc1|minutes_l\(14) & (!\rtc1|minutes_l\(15) & !\rtc1|minutes_l\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|minutes_l\(13),
	datab => \rtc1|minutes_l\(14),
	datac => \rtc1|minutes_l\(15),
	datad => \rtc1|minutes_l\(12),
	combout => \rtc1|Equal3~5_combout\);

-- Location: LCFF_X28_Y21_N21
\rtc1|minutes_l[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add3~20_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \rtc1|wrap~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|minutes_l\(10));

-- Location: LCFF_X28_Y21_N11
\rtc1|minutes_l[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add3~10_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \rtc1|wrap~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|minutes_l\(5));

-- Location: LCFF_X20_Y22_N25
\rtc1|minutes_h[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add4~56_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \rtc1|wrap~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|minutes_h\(28));

-- Location: LCFF_X20_Y22_N13
\rtc1|minutes_h[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add4~44_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \rtc1|wrap~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|minutes_h\(22));

-- Location: LCFF_X20_Y22_N11
\rtc1|minutes_h[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add4~42_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \rtc1|wrap~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|minutes_h\(21));

-- Location: LCCOMB_X19_Y22_N12
\rtc1|Equal4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Equal4~2_combout\ = (!\rtc1|minutes_h\(23) & (!\rtc1|minutes_h\(22) & (!\rtc1|minutes_h\(21) & !\rtc1|minutes_h\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|minutes_h\(23),
	datab => \rtc1|minutes_h\(22),
	datac => \rtc1|minutes_h\(21),
	datad => \rtc1|minutes_h\(20),
	combout => \rtc1|Equal4~2_combout\);

-- Location: LCFF_X20_Y23_N25
\rtc1|minutes_h[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add4~24_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \rtc1|wrap~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|minutes_h\(12));

-- Location: LCCOMB_X19_Y23_N30
\rtc1|Equal4~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Equal4~5_combout\ = (!\rtc1|minutes_h\(14) & (!\rtc1|minutes_h\(12) & (!\rtc1|minutes_h\(13) & !\rtc1|minutes_h\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|minutes_h\(14),
	datab => \rtc1|minutes_h\(12),
	datac => \rtc1|minutes_h\(13),
	datad => \rtc1|minutes_h\(15),
	combout => \rtc1|Equal4~5_combout\);

-- Location: LCFF_X20_Y23_N21
\rtc1|minutes_h[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add4~20_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \rtc1|wrap~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|minutes_h\(10));

-- Location: LCCOMB_X19_Y23_N8
\rtc1|Equal4~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Equal4~6_combout\ = (!\rtc1|minutes_h\(11) & !\rtc1|minutes_h\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rtc1|minutes_h\(11),
	datad => \rtc1|minutes_h\(10),
	combout => \rtc1|Equal4~6_combout\);

-- Location: LCFF_X20_Y23_N17
\rtc1|minutes_h[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add4~16_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \rtc1|wrap~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|minutes_h\(8));

-- Location: LCCOMB_X19_Y23_N10
\rtc1|Equal4~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Equal4~7_combout\ = (!\rtc1|minutes_h\(9) & (\rtc1|Equal4~6_combout\ & (!\rtc1|minutes_h\(8) & \rtc1|Equal4~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|minutes_h\(9),
	datab => \rtc1|Equal4~6_combout\,
	datac => \rtc1|minutes_h\(8),
	datad => \rtc1|Equal4~5_combout\,
	combout => \rtc1|Equal4~7_combout\);

-- Location: LCFF_X20_Y23_N13
\rtc1|minutes_h[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add4~12_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \rtc1|wrap~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|minutes_h\(6));

-- Location: LCFF_X21_Y20_N31
\rtc1|hours_l[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add5~62_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \rtc1|wrap~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|hours_l\(31));

-- Location: LCFF_X21_Y20_N29
\rtc1|hours_l[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add5~60_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \rtc1|wrap~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|hours_l\(30));

-- Location: LCFF_X21_Y20_N27
\rtc1|hours_l[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add5~58_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \rtc1|wrap~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|hours_l\(29));

-- Location: LCFF_X21_Y20_N25
\rtc1|hours_l[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add5~56_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \rtc1|wrap~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|hours_l\(28));

-- Location: LCCOMB_X20_Y21_N10
\rtc1|Equal5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Equal5~0_combout\ = (!\rtc1|hours_l\(30) & (!\rtc1|hours_l\(28) & (!\rtc1|hours_l\(31) & !\rtc1|hours_l\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|hours_l\(30),
	datab => \rtc1|hours_l\(28),
	datac => \rtc1|hours_l\(31),
	datad => \rtc1|hours_l\(29),
	combout => \rtc1|Equal5~0_combout\);

-- Location: LCFF_X21_Y20_N21
\rtc1|hours_l[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add5~52_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \rtc1|wrap~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|hours_l\(26));

-- Location: LCFF_X21_Y20_N13
\rtc1|hours_l[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add5~44_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \rtc1|wrap~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|hours_l\(22));

-- Location: LCFF_X21_Y21_N25
\rtc1|hours_l[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add5~24_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \rtc1|wrap~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|hours_l\(12));

-- Location: LCCOMB_X20_Y21_N24
\rtc1|Equal5~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Equal5~5_combout\ = (!\rtc1|hours_l\(15) & (!\rtc1|hours_l\(14) & (!\rtc1|hours_l\(13) & !\rtc1|hours_l\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|hours_l\(15),
	datab => \rtc1|hours_l\(14),
	datac => \rtc1|hours_l\(13),
	datad => \rtc1|hours_l\(12),
	combout => \rtc1|Equal5~5_combout\);

-- Location: LCFF_X21_Y21_N11
\rtc1|hours_l[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add5~10_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \rtc1|wrap~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|hours_l\(5));

-- Location: LCFF_X18_Y23_N25
\rtc1|hours_h[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add6~56_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \rtc1|wrap~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|hours_h\(28));

-- Location: LCFF_X18_Y23_N7
\rtc1|hours_h[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add6~38_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \rtc1|wrap~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|hours_h\(19));

-- Location: LCCOMB_X17_Y23_N6
\rtc1|Equal6~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Equal6~3_combout\ = (!\rtc1|hours_h\(19) & (!\rtc1|hours_h\(16) & (!\rtc1|hours_h\(17) & !\rtc1|hours_h\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|hours_h\(19),
	datab => \rtc1|hours_h\(16),
	datac => \rtc1|hours_h\(17),
	datad => \rtc1|hours_h\(18),
	combout => \rtc1|Equal6~3_combout\);

-- Location: LCFF_X18_Y24_N21
\rtc1|hours_h[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add6~20_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \rtc1|wrap~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|hours_h\(10));

-- Location: LCFF_X18_Y24_N17
\rtc1|hours_h[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add6~16_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \rtc1|wrap~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|hours_h\(8));

-- Location: LCCOMB_X17_Y23_N12
\rtc1|Equal6~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Equal6~6_combout\ = (!\rtc1|hours_h\(11) & (!\rtc1|hours_h\(10) & (!\rtc1|hours_h\(8) & !\rtc1|hours_h\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|hours_h\(11),
	datab => \rtc1|hours_h\(10),
	datac => \rtc1|hours_h\(8),
	datad => \rtc1|hours_h\(9),
	combout => \rtc1|Equal6~6_combout\);

-- Location: LCFF_X18_Y24_N13
\rtc1|hours_h[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add6~12_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \rtc1|wrap~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|hours_h\(6));

-- Location: LCCOMB_X1_Y24_N22
\rtc1|Equal6~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Equal6~9_combout\ = (!\rtc1|hours_h\(3) & (!\rtc1|hours_h\(2) & (\rtc1|hours_h\(1) & !\rtc1|hours_h\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|hours_h\(3),
	datab => \rtc1|hours_h\(2),
	datac => \rtc1|hours_h\(1),
	datad => \rtc1|hours_h\(0),
	combout => \rtc1|Equal6~9_combout\);

-- Location: LCCOMB_X29_Y25_N12
\rtc1|cnt~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|cnt~28_combout\ = (\rtc1|Add0~14_combout\ & ((!\rtc1|Equal0~9_combout\) # (!\rtc1|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rtc1|Equal0~4_combout\,
	datac => \rtc1|Add0~14_combout\,
	datad => \rtc1|Equal0~9_combout\,
	combout => \rtc1|cnt~28_combout\);

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

-- Location: LCCOMB_X31_Y19_N6
\rtc1|Add1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add1~6_combout\ = (\rtc1|seconds_l\(3) & (!\rtc1|Add1~5\)) # (!\rtc1|seconds_l\(3) & ((\rtc1|Add1~5\) # (GND)))
-- \rtc1|Add1~7\ = CARRY((!\rtc1|Add1~5\) # (!\rtc1|seconds_l\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rtc1|seconds_l\(3),
	datad => VCC,
	cin => \rtc1|Add1~5\,
	combout => \rtc1|Add1~6_combout\,
	cout => \rtc1|Add1~7\);

-- Location: LCCOMB_X31_Y19_N8
\rtc1|Add1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add1~8_combout\ = (\rtc1|seconds_l\(4) & (\rtc1|Add1~7\ $ (GND))) # (!\rtc1|seconds_l\(4) & (!\rtc1|Add1~7\ & VCC))
-- \rtc1|Add1~9\ = CARRY((\rtc1|seconds_l\(4) & !\rtc1|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rtc1|seconds_l\(4),
	datad => VCC,
	cin => \rtc1|Add1~7\,
	combout => \rtc1|Add1~8_combout\,
	cout => \rtc1|Add1~9\);

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

-- Location: LCCOMB_X30_Y25_N0
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

-- Location: LCFF_X30_Y25_N1
\rtc1|ticks[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add0~0_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|ticks\(0));

-- Location: LCCOMB_X30_Y25_N2
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

-- Location: LCFF_X30_Y25_N3
\rtc1|ticks[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add0~2_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|ticks\(1));

-- Location: LCCOMB_X30_Y25_N4
\rtc1|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add0~4_combout\ = (\rtc1|ticks\(2) & (\rtc1|Add0~3\ $ (GND))) # (!\rtc1|ticks\(2) & (!\rtc1|Add0~3\ & VCC))
-- \rtc1|Add0~5\ = CARRY((\rtc1|ticks\(2) & !\rtc1|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rtc1|ticks\(2),
	datad => VCC,
	cin => \rtc1|Add0~3\,
	combout => \rtc1|Add0~4_combout\,
	cout => \rtc1|Add0~5\);

-- Location: LCFF_X30_Y25_N5
\rtc1|ticks[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add0~4_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|ticks\(2));

-- Location: LCCOMB_X30_Y25_N6
\rtc1|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add0~6_combout\ = (\rtc1|ticks\(3) & (!\rtc1|Add0~5\)) # (!\rtc1|ticks\(3) & ((\rtc1|Add0~5\) # (GND)))
-- \rtc1|Add0~7\ = CARRY((!\rtc1|Add0~5\) # (!\rtc1|ticks\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|ticks\(3),
	datad => VCC,
	cin => \rtc1|Add0~5\,
	combout => \rtc1|Add0~6_combout\,
	cout => \rtc1|Add0~7\);

-- Location: LCCOMB_X30_Y25_N8
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

-- Location: LCFF_X30_Y25_N9
\rtc1|ticks[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add0~8_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|ticks\(4));

-- Location: LCCOMB_X30_Y25_N18
\rtc1|Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add0~18_combout\ = (\rtc1|ticks\(9) & (!\rtc1|Add0~17\)) # (!\rtc1|ticks\(9) & ((\rtc1|Add0~17\) # (GND)))
-- \rtc1|Add0~19\ = CARRY((!\rtc1|Add0~17\) # (!\rtc1|ticks\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rtc1|ticks\(9),
	datad => VCC,
	cin => \rtc1|Add0~17\,
	combout => \rtc1|Add0~18_combout\,
	cout => \rtc1|Add0~19\);

-- Location: LCFF_X30_Y25_N19
\rtc1|ticks[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add0~18_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|ticks\(9));

-- Location: LCCOMB_X30_Y25_N22
\rtc1|Add0~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add0~22_combout\ = (\rtc1|ticks\(11) & (!\rtc1|Add0~21\)) # (!\rtc1|ticks\(11) & ((\rtc1|Add0~21\) # (GND)))
-- \rtc1|Add0~23\ = CARRY((!\rtc1|Add0~21\) # (!\rtc1|ticks\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rtc1|ticks\(11),
	datad => VCC,
	cin => \rtc1|Add0~21\,
	combout => \rtc1|Add0~22_combout\,
	cout => \rtc1|Add0~23\);

-- Location: LCFF_X30_Y25_N23
\rtc1|ticks[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add0~22_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|ticks\(11));

-- Location: LCCOMB_X30_Y25_N24
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

-- Location: LCCOMB_X29_Y25_N16
\rtc1|cnt~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|cnt~27_combout\ = (\rtc1|Add0~24_combout\ & ((!\rtc1|Equal0~4_combout\) # (!\rtc1|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rtc1|Equal0~9_combout\,
	datac => \rtc1|Equal0~4_combout\,
	datad => \rtc1|Add0~24_combout\,
	combout => \rtc1|cnt~27_combout\);

-- Location: LCFF_X29_Y25_N17
\rtc1|ticks[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|cnt~27_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|ticks\(12));

-- Location: LCCOMB_X29_Y25_N2
\rtc1|Equal0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Equal0~6_combout\ = (!\rtc1|ticks\(10) & (!\rtc1|ticks\(11) & (\rtc1|ticks\(12) & !\rtc1|ticks\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|ticks\(10),
	datab => \rtc1|ticks\(11),
	datac => \rtc1|ticks\(12),
	datad => \rtc1|ticks\(9),
	combout => \rtc1|Equal0~6_combout\);

-- Location: LCFF_X30_Y25_N7
\rtc1|ticks[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add0~6_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|ticks\(3));

-- Location: LCCOMB_X29_Y25_N8
\rtc1|Equal0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Equal0~8_combout\ = (\rtc1|ticks\(2) & (\rtc1|ticks\(3) & (\rtc1|ticks\(4) & \rtc1|ticks\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|ticks\(2),
	datab => \rtc1|ticks\(3),
	datac => \rtc1|ticks\(4),
	datad => \rtc1|ticks\(1),
	combout => \rtc1|Equal0~8_combout\);

-- Location: LCCOMB_X30_Y25_N26
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

-- Location: LCCOMB_X29_Y25_N28
\rtc1|cnt~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|cnt~26_combout\ = (\rtc1|Add0~26_combout\ & ((!\rtc1|Equal0~9_combout\) # (!\rtc1|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rtc1|Equal0~4_combout\,
	datac => \rtc1|Add0~26_combout\,
	datad => \rtc1|Equal0~9_combout\,
	combout => \rtc1|cnt~26_combout\);

-- Location: LCFF_X29_Y25_N29
\rtc1|ticks[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|cnt~26_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|ticks\(13));

-- Location: LCCOMB_X30_Y25_N28
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

-- Location: LCCOMB_X29_Y25_N18
\rtc1|cnt~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|cnt~25_combout\ = (\rtc1|Add0~28_combout\ & ((!\rtc1|Equal0~4_combout\) # (!\rtc1|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rtc1|Equal0~9_combout\,
	datac => \rtc1|Equal0~4_combout\,
	datad => \rtc1|Add0~28_combout\,
	combout => \rtc1|cnt~25_combout\);

-- Location: LCFF_X29_Y25_N19
\rtc1|ticks[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|cnt~25_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|ticks\(14));

-- Location: LCCOMB_X30_Y25_N30
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

-- Location: LCCOMB_X29_Y25_N24
\rtc1|cnt~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|cnt~24_combout\ = (\rtc1|Add0~30_combout\ & ((!\rtc1|Equal0~4_combout\) # (!\rtc1|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rtc1|Equal0~9_combout\,
	datac => \rtc1|Equal0~4_combout\,
	datad => \rtc1|Add0~30_combout\,
	combout => \rtc1|cnt~24_combout\);

-- Location: LCFF_X29_Y25_N25
\rtc1|ticks[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|cnt~24_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|ticks\(15));

-- Location: LCCOMB_X29_Y25_N30
\rtc1|Equal0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Equal0~5_combout\ = (!\rtc1|ticks\(16) & (\rtc1|ticks\(14) & (\rtc1|ticks\(15) & \rtc1|ticks\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|ticks\(16),
	datab => \rtc1|ticks\(14),
	datac => \rtc1|ticks\(15),
	datad => \rtc1|ticks\(13),
	combout => \rtc1|Equal0~5_combout\);

-- Location: LCCOMB_X29_Y25_N26
\rtc1|Equal0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Equal0~9_combout\ = (\rtc1|Equal0~7_combout\ & (\rtc1|Equal0~6_combout\ & (\rtc1|Equal0~8_combout\ & \rtc1|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|Equal0~7_combout\,
	datab => \rtc1|Equal0~6_combout\,
	datac => \rtc1|Equal0~8_combout\,
	datad => \rtc1|Equal0~5_combout\,
	combout => \rtc1|Equal0~9_combout\);

-- Location: LCCOMB_X30_Y24_N0
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

-- Location: LCFF_X30_Y24_N1
\rtc1|ticks[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add0~32_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|ticks\(16));

-- Location: LCCOMB_X30_Y24_N2
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

-- Location: LCCOMB_X29_Y24_N18
\rtc1|cnt~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|cnt~23_combout\ = (\rtc1|Add0~34_combout\ & ((!\rtc1|Equal0~9_combout\) # (!\rtc1|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rtc1|Equal0~4_combout\,
	datac => \rtc1|Equal0~9_combout\,
	datad => \rtc1|Add0~34_combout\,
	combout => \rtc1|cnt~23_combout\);

-- Location: LCFF_X29_Y24_N19
\rtc1|ticks[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|cnt~23_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|ticks\(17));

-- Location: LCCOMB_X30_Y24_N4
\rtc1|Add0~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add0~36_combout\ = (\rtc1|ticks\(18) & (\rtc1|Add0~35\ $ (GND))) # (!\rtc1|ticks\(18) & (!\rtc1|Add0~35\ & VCC))
-- \rtc1|Add0~37\ = CARRY((\rtc1|ticks\(18) & !\rtc1|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rtc1|ticks\(18),
	datad => VCC,
	cin => \rtc1|Add0~35\,
	combout => \rtc1|Add0~36_combout\,
	cout => \rtc1|Add0~37\);

-- Location: LCFF_X30_Y24_N5
\rtc1|ticks[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add0~36_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|ticks\(18));

-- Location: LCCOMB_X30_Y24_N6
\rtc1|Add0~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add0~38_combout\ = (\rtc1|ticks\(19) & (!\rtc1|Add0~37\)) # (!\rtc1|ticks\(19) & ((\rtc1|Add0~37\) # (GND)))
-- \rtc1|Add0~39\ = CARRY((!\rtc1|Add0~37\) # (!\rtc1|ticks\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|ticks\(19),
	datad => VCC,
	cin => \rtc1|Add0~37\,
	combout => \rtc1|Add0~38_combout\,
	cout => \rtc1|Add0~39\);

-- Location: LCCOMB_X29_Y24_N0
\rtc1|cnt~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|cnt~22_combout\ = (\rtc1|Add0~38_combout\ & ((!\rtc1|Equal0~9_combout\) # (!\rtc1|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rtc1|Equal0~4_combout\,
	datac => \rtc1|Equal0~9_combout\,
	datad => \rtc1|Add0~38_combout\,
	combout => \rtc1|cnt~22_combout\);

-- Location: LCFF_X29_Y24_N1
\rtc1|ticks[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|cnt~22_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|ticks\(19));

-- Location: LCCOMB_X30_Y24_N8
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

-- Location: LCCOMB_X29_Y24_N30
\rtc1|cnt~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|cnt~33_combout\ = (\rtc1|Add0~40_combout\ & ((!\rtc1|Equal0~4_combout\) # (!\rtc1|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rtc1|Equal0~9_combout\,
	datac => \rtc1|Add0~40_combout\,
	datad => \rtc1|Equal0~4_combout\,
	combout => \rtc1|cnt~33_combout\);

-- Location: LCFF_X29_Y24_N31
\rtc1|ticks[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|cnt~33_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|ticks\(20));

-- Location: LCCOMB_X29_Y24_N4
\rtc1|Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Equal0~3_combout\ = (!\rtc1|ticks\(18) & (\rtc1|ticks\(19) & (\rtc1|ticks\(20) & \rtc1|ticks\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|ticks\(18),
	datab => \rtc1|ticks\(19),
	datac => \rtc1|ticks\(20),
	datad => \rtc1|ticks\(17),
	combout => \rtc1|Equal0~3_combout\);

-- Location: LCCOMB_X30_Y24_N10
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

-- Location: LCCOMB_X30_Y24_N12
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

-- Location: LCCOMB_X29_Y24_N16
\rtc1|cnt~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|cnt~31_combout\ = (\rtc1|Add0~44_combout\ & ((!\rtc1|Equal0~4_combout\) # (!\rtc1|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rtc1|Equal0~9_combout\,
	datac => \rtc1|Add0~44_combout\,
	datad => \rtc1|Equal0~4_combout\,
	combout => \rtc1|cnt~31_combout\);

-- Location: LCFF_X29_Y24_N17
\rtc1|ticks[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|cnt~31_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|ticks\(22));

-- Location: LCCOMB_X30_Y24_N14
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

-- Location: LCCOMB_X30_Y24_N16
\rtc1|Add0~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add0~48_combout\ = (\rtc1|ticks\(24) & (\rtc1|Add0~47\ $ (GND))) # (!\rtc1|ticks\(24) & (!\rtc1|Add0~47\ & VCC))
-- \rtc1|Add0~49\ = CARRY((\rtc1|ticks\(24) & !\rtc1|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|ticks\(24),
	datad => VCC,
	cin => \rtc1|Add0~47\,
	combout => \rtc1|Add0~48_combout\,
	cout => \rtc1|Add0~49\);

-- Location: LCCOMB_X30_Y24_N18
\rtc1|Add0~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add0~50_combout\ = (\rtc1|ticks\(25) & (!\rtc1|Add0~49\)) # (!\rtc1|ticks\(25) & ((\rtc1|Add0~49\) # (GND)))
-- \rtc1|Add0~51\ = CARRY((!\rtc1|Add0~49\) # (!\rtc1|ticks\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rtc1|ticks\(25),
	datad => VCC,
	cin => \rtc1|Add0~49\,
	combout => \rtc1|Add0~50_combout\,
	cout => \rtc1|Add0~51\);

-- Location: LCCOMB_X29_Y24_N26
\rtc1|cnt~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|cnt~29_combout\ = (\rtc1|Add0~50_combout\ & ((!\rtc1|Equal0~9_combout\) # (!\rtc1|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rtc1|Equal0~4_combout\,
	datac => \rtc1|Equal0~9_combout\,
	datad => \rtc1|Add0~50_combout\,
	combout => \rtc1|cnt~29_combout\);

-- Location: LCFF_X29_Y24_N27
\rtc1|ticks[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|cnt~29_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|ticks\(25));

-- Location: LCCOMB_X30_Y24_N22
\rtc1|Add0~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add0~54_combout\ = (\rtc1|ticks\(27) & (!\rtc1|Add0~53\)) # (!\rtc1|ticks\(27) & ((\rtc1|Add0~53\) # (GND)))
-- \rtc1|Add0~55\ = CARRY((!\rtc1|Add0~53\) # (!\rtc1|ticks\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rtc1|ticks\(27),
	datad => VCC,
	cin => \rtc1|Add0~53\,
	combout => \rtc1|Add0~54_combout\,
	cout => \rtc1|Add0~55\);

-- Location: LCFF_X30_Y24_N23
\rtc1|ticks[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add0~54_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|ticks\(27));

-- Location: LCCOMB_X30_Y24_N26
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

-- Location: LCFF_X30_Y24_N27
\rtc1|ticks[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add0~58_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|ticks\(29));

-- Location: LCCOMB_X30_Y24_N28
\rtc1|Add0~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add0~60_combout\ = (\rtc1|ticks\(30) & (\rtc1|Add0~59\ $ (GND))) # (!\rtc1|ticks\(30) & (!\rtc1|Add0~59\ & VCC))
-- \rtc1|Add0~61\ = CARRY((\rtc1|ticks\(30) & !\rtc1|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rtc1|ticks\(30),
	datad => VCC,
	cin => \rtc1|Add0~59\,
	combout => \rtc1|Add0~60_combout\,
	cout => \rtc1|Add0~61\);

-- Location: LCFF_X30_Y24_N29
\rtc1|ticks[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add0~60_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|ticks\(30));

-- Location: LCCOMB_X30_Y24_N30
\rtc1|Add0~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add0~62_combout\ = \rtc1|Add0~61\ $ (\rtc1|ticks\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \rtc1|ticks\(31),
	cin => \rtc1|Add0~61\,
	combout => \rtc1|Add0~62_combout\);

-- Location: LCFF_X30_Y24_N31
\rtc1|ticks[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add0~62_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|ticks\(31));

-- Location: LCCOMB_X29_Y24_N24
\rtc1|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Equal0~0_combout\ = (!\rtc1|ticks\(30) & (!\rtc1|ticks\(31) & (!\rtc1|ticks\(29) & \rtc1|ticks\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|ticks\(30),
	datab => \rtc1|ticks\(31),
	datac => \rtc1|ticks\(29),
	datad => \rtc1|ticks\(0),
	combout => \rtc1|Equal0~0_combout\);

-- Location: LCCOMB_X29_Y24_N14
\rtc1|cnt~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|cnt~30_combout\ = (\rtc1|Add0~46_combout\ & ((!\rtc1|Equal0~4_combout\) # (!\rtc1|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rtc1|Equal0~9_combout\,
	datac => \rtc1|Add0~46_combout\,
	datad => \rtc1|Equal0~4_combout\,
	combout => \rtc1|cnt~30_combout\);

-- Location: LCFF_X29_Y24_N15
\rtc1|ticks[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|cnt~30_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|ticks\(23));

-- Location: LCFF_X30_Y24_N17
\rtc1|ticks[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add0~48_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|ticks\(24));

-- Location: LCCOMB_X29_Y24_N10
\rtc1|cnt~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|cnt~32_combout\ = (\rtc1|Add0~42_combout\ & ((!\rtc1|Equal0~4_combout\) # (!\rtc1|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rtc1|Equal0~9_combout\,
	datac => \rtc1|Add0~42_combout\,
	datad => \rtc1|Equal0~4_combout\,
	combout => \rtc1|cnt~32_combout\);

-- Location: LCFF_X29_Y24_N11
\rtc1|ticks[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|cnt~32_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|ticks\(21));

-- Location: LCCOMB_X29_Y24_N28
\rtc1|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Equal0~2_combout\ = (\rtc1|ticks\(22) & (\rtc1|ticks\(23) & (!\rtc1|ticks\(24) & \rtc1|ticks\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|ticks\(22),
	datab => \rtc1|ticks\(23),
	datac => \rtc1|ticks\(24),
	datad => \rtc1|ticks\(21),
	combout => \rtc1|Equal0~2_combout\);

-- Location: LCCOMB_X29_Y24_N22
\rtc1|Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Equal0~4_combout\ = (\rtc1|Equal0~1_combout\ & (\rtc1|Equal0~3_combout\ & (\rtc1|Equal0~0_combout\ & \rtc1|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|Equal0~1_combout\,
	datab => \rtc1|Equal0~3_combout\,
	datac => \rtc1|Equal0~0_combout\,
	datad => \rtc1|Equal0~2_combout\,
	combout => \rtc1|Equal0~4_combout\);

-- Location: LCCOMB_X29_Y21_N8
\rtc1|Equal0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Equal0~10_combout\ = (\rtc1|Equal0~9_combout\ & \rtc1|Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|Equal0~9_combout\,
	datac => \rtc1|Equal0~4_combout\,
	combout => \rtc1|Equal0~10_combout\);

-- Location: LCFF_X31_Y19_N9
\rtc1|seconds_l[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add1~8_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \rtc1|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|seconds_l\(4));

-- Location: LCCOMB_X31_Y19_N10
\rtc1|Add1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add1~10_combout\ = (\rtc1|seconds_l\(5) & (!\rtc1|Add1~9\)) # (!\rtc1|seconds_l\(5) & ((\rtc1|Add1~9\) # (GND)))
-- \rtc1|Add1~11\ = CARRY((!\rtc1|Add1~9\) # (!\rtc1|seconds_l\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|seconds_l\(5),
	datad => VCC,
	cin => \rtc1|Add1~9\,
	combout => \rtc1|Add1~10_combout\,
	cout => \rtc1|Add1~11\);

-- Location: LCFF_X31_Y19_N11
\rtc1|seconds_l[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add1~10_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \rtc1|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|seconds_l\(5));

-- Location: LCCOMB_X31_Y19_N12
\rtc1|Add1~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add1~12_combout\ = (\rtc1|seconds_l\(6) & (\rtc1|Add1~11\ $ (GND))) # (!\rtc1|seconds_l\(6) & (!\rtc1|Add1~11\ & VCC))
-- \rtc1|Add1~13\ = CARRY((\rtc1|seconds_l\(6) & !\rtc1|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|seconds_l\(6),
	datad => VCC,
	cin => \rtc1|Add1~11\,
	combout => \rtc1|Add1~12_combout\,
	cout => \rtc1|Add1~13\);

-- Location: LCFF_X31_Y19_N13
\rtc1|seconds_l[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add1~12_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \rtc1|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|seconds_l\(6));

-- Location: LCCOMB_X32_Y19_N30
\rtc1|Equal1~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Equal1~7_combout\ = (!\rtc1|seconds_l\(7) & (!\rtc1|seconds_l\(5) & (!\rtc1|seconds_l\(6) & !\rtc1|seconds_l\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|seconds_l\(7),
	datab => \rtc1|seconds_l\(5),
	datac => \rtc1|seconds_l\(6),
	datad => \rtc1|seconds_l\(4),
	combout => \rtc1|Equal1~7_combout\);

-- Location: LCCOMB_X31_Y19_N0
\rtc1|Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add1~0_combout\ = \rtc1|seconds_l\(0) $ (VCC)
-- \rtc1|Add1~1\ = CARRY(\rtc1|seconds_l\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rtc1|seconds_l\(0),
	datad => VCC,
	combout => \rtc1|Add1~0_combout\,
	cout => \rtc1|Add1~1\);

-- Location: LCFF_X31_Y19_N1
\rtc1|seconds_l[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add1~0_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \rtc1|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|seconds_l\(0));

-- Location: LCCOMB_X32_Y19_N24
\rtc1|Equal1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Equal1~8_combout\ = (\rtc1|seconds_l\(3) & (!\rtc1|seconds_l\(2) & (\rtc1|seconds_l\(0) & !\rtc1|seconds_l\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|seconds_l\(3),
	datab => \rtc1|seconds_l\(2),
	datac => \rtc1|seconds_l\(0),
	datad => \rtc1|seconds_l\(1),
	combout => \rtc1|Equal1~8_combout\);

-- Location: LCCOMB_X31_Y19_N14
\rtc1|Add1~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add1~14_combout\ = (\rtc1|seconds_l\(7) & (!\rtc1|Add1~13\)) # (!\rtc1|seconds_l\(7) & ((\rtc1|Add1~13\) # (GND)))
-- \rtc1|Add1~15\ = CARRY((!\rtc1|Add1~13\) # (!\rtc1|seconds_l\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rtc1|seconds_l\(7),
	datad => VCC,
	cin => \rtc1|Add1~13\,
	combout => \rtc1|Add1~14_combout\,
	cout => \rtc1|Add1~15\);

-- Location: LCFF_X31_Y19_N15
\rtc1|seconds_l[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add1~14_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \rtc1|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|seconds_l\(7));

-- Location: LCCOMB_X31_Y19_N18
\rtc1|Add1~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add1~18_combout\ = (\rtc1|seconds_l\(9) & (!\rtc1|Add1~17\)) # (!\rtc1|seconds_l\(9) & ((\rtc1|Add1~17\) # (GND)))
-- \rtc1|Add1~19\ = CARRY((!\rtc1|Add1~17\) # (!\rtc1|seconds_l\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rtc1|seconds_l\(9),
	datad => VCC,
	cin => \rtc1|Add1~17\,
	combout => \rtc1|Add1~18_combout\,
	cout => \rtc1|Add1~19\);

-- Location: LCFF_X31_Y19_N19
\rtc1|seconds_l[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add1~18_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \rtc1|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|seconds_l\(9));

-- Location: LCCOMB_X31_Y19_N22
\rtc1|Add1~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add1~22_combout\ = (\rtc1|seconds_l\(11) & (!\rtc1|Add1~21\)) # (!\rtc1|seconds_l\(11) & ((\rtc1|Add1~21\) # (GND)))
-- \rtc1|Add1~23\ = CARRY((!\rtc1|Add1~21\) # (!\rtc1|seconds_l\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rtc1|seconds_l\(11),
	datad => VCC,
	cin => \rtc1|Add1~21\,
	combout => \rtc1|Add1~22_combout\,
	cout => \rtc1|Add1~23\);

-- Location: LCFF_X31_Y19_N23
\rtc1|seconds_l[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add1~22_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \rtc1|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|seconds_l\(11));

-- Location: LCCOMB_X31_Y19_N24
\rtc1|Add1~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add1~24_combout\ = (\rtc1|seconds_l\(12) & (\rtc1|Add1~23\ $ (GND))) # (!\rtc1|seconds_l\(12) & (!\rtc1|Add1~23\ & VCC))
-- \rtc1|Add1~25\ = CARRY((\rtc1|seconds_l\(12) & !\rtc1|Add1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|seconds_l\(12),
	datad => VCC,
	cin => \rtc1|Add1~23\,
	combout => \rtc1|Add1~24_combout\,
	cout => \rtc1|Add1~25\);

-- Location: LCCOMB_X31_Y19_N26
\rtc1|Add1~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add1~26_combout\ = (\rtc1|seconds_l\(13) & (!\rtc1|Add1~25\)) # (!\rtc1|seconds_l\(13) & ((\rtc1|Add1~25\) # (GND)))
-- \rtc1|Add1~27\ = CARRY((!\rtc1|Add1~25\) # (!\rtc1|seconds_l\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rtc1|seconds_l\(13),
	datad => VCC,
	cin => \rtc1|Add1~25\,
	combout => \rtc1|Add1~26_combout\,
	cout => \rtc1|Add1~27\);

-- Location: LCFF_X31_Y19_N27
\rtc1|seconds_l[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add1~26_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \rtc1|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|seconds_l\(13));

-- Location: LCCOMB_X31_Y19_N28
\rtc1|Add1~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add1~28_combout\ = (\rtc1|seconds_l\(14) & (\rtc1|Add1~27\ $ (GND))) # (!\rtc1|seconds_l\(14) & (!\rtc1|Add1~27\ & VCC))
-- \rtc1|Add1~29\ = CARRY((\rtc1|seconds_l\(14) & !\rtc1|Add1~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rtc1|seconds_l\(14),
	datad => VCC,
	cin => \rtc1|Add1~27\,
	combout => \rtc1|Add1~28_combout\,
	cout => \rtc1|Add1~29\);

-- Location: LCFF_X31_Y19_N29
\rtc1|seconds_l[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add1~28_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \rtc1|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|seconds_l\(14));

-- Location: LCCOMB_X31_Y19_N30
\rtc1|Add1~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add1~30_combout\ = (\rtc1|seconds_l\(15) & (!\rtc1|Add1~29\)) # (!\rtc1|seconds_l\(15) & ((\rtc1|Add1~29\) # (GND)))
-- \rtc1|Add1~31\ = CARRY((!\rtc1|Add1~29\) # (!\rtc1|seconds_l\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rtc1|seconds_l\(15),
	datad => VCC,
	cin => \rtc1|Add1~29\,
	combout => \rtc1|Add1~30_combout\,
	cout => \rtc1|Add1~31\);

-- Location: LCFF_X31_Y19_N31
\rtc1|seconds_l[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add1~30_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \rtc1|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|seconds_l\(15));

-- Location: LCFF_X31_Y19_N25
\rtc1|seconds_l[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add1~24_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \rtc1|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|seconds_l\(12));

-- Location: LCCOMB_X32_Y19_N2
\rtc1|Equal1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Equal1~5_combout\ = (!\rtc1|seconds_l\(13) & (!\rtc1|seconds_l\(14) & (!\rtc1|seconds_l\(15) & !\rtc1|seconds_l\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|seconds_l\(13),
	datab => \rtc1|seconds_l\(14),
	datac => \rtc1|seconds_l\(15),
	datad => \rtc1|seconds_l\(12),
	combout => \rtc1|Equal1~5_combout\);

-- Location: LCCOMB_X32_Y19_N18
\rtc1|Equal1~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Equal1~9_combout\ = (\rtc1|Equal1~6_combout\ & (\rtc1|Equal1~7_combout\ & (\rtc1|Equal1~8_combout\ & \rtc1|Equal1~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|Equal1~6_combout\,
	datab => \rtc1|Equal1~7_combout\,
	datac => \rtc1|Equal1~8_combout\,
	datad => \rtc1|Equal1~5_combout\,
	combout => \rtc1|Equal1~9_combout\);

-- Location: LCCOMB_X31_Y19_N2
\rtc1|Add1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add1~2_combout\ = (\rtc1|seconds_l\(1) & (!\rtc1|Add1~1\)) # (!\rtc1|seconds_l\(1) & ((\rtc1|Add1~1\) # (GND)))
-- \rtc1|Add1~3\ = CARRY((!\rtc1|Add1~1\) # (!\rtc1|seconds_l\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rtc1|seconds_l\(1),
	datad => VCC,
	cin => \rtc1|Add1~1\,
	combout => \rtc1|Add1~2_combout\,
	cout => \rtc1|Add1~3\);

-- Location: LCCOMB_X32_Y19_N0
\rtc1|cnt~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|cnt~10_combout\ = (\rtc1|Add1~2_combout\ & ((!\rtc1|Equal1~9_combout\) # (!\rtc1|Equal1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|Equal1~4_combout\,
	datab => \rtc1|Equal1~9_combout\,
	datad => \rtc1|Add1~2_combout\,
	combout => \rtc1|cnt~10_combout\);

-- Location: LCFF_X32_Y19_N1
\rtc1|seconds_l[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|cnt~10_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \rtc1|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|seconds_l\(1));

-- Location: LCCOMB_X31_Y19_N4
\rtc1|Add1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add1~4_combout\ = (\rtc1|seconds_l\(2) & (\rtc1|Add1~3\ $ (GND))) # (!\rtc1|seconds_l\(2) & (!\rtc1|Add1~3\ & VCC))
-- \rtc1|Add1~5\ = CARRY((\rtc1|seconds_l\(2) & !\rtc1|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rtc1|seconds_l\(2),
	datad => VCC,
	cin => \rtc1|Add1~3\,
	combout => \rtc1|Add1~4_combout\,
	cout => \rtc1|Add1~5\);

-- Location: LCFF_X31_Y19_N5
\rtc1|seconds_l[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add1~4_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \rtc1|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|seconds_l\(2));

-- Location: LCCOMB_X32_Y19_N10
\rtc1|cnt~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|cnt~11_combout\ = (\rtc1|Add1~6_combout\ & ((!\rtc1|Equal1~9_combout\) # (!\rtc1|Equal1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|Equal1~4_combout\,
	datac => \rtc1|Add1~6_combout\,
	datad => \rtc1|Equal1~9_combout\,
	combout => \rtc1|cnt~11_combout\);

-- Location: LCFF_X32_Y19_N11
\rtc1|seconds_l[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|cnt~11_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \rtc1|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|seconds_l\(3));

-- Location: LCCOMB_X32_Y19_N4
\q0:0:seg7_6|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \q0:0:seg7_6|Mux6~0_combout\ = (\rtc1|seconds_l\(3) & (\rtc1|seconds_l\(0) & (\rtc1|seconds_l\(2) $ (\rtc1|seconds_l\(1))))) # (!\rtc1|seconds_l\(3) & (!\rtc1|seconds_l\(1) & (\rtc1|seconds_l\(2) $ (\rtc1|seconds_l\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|seconds_l\(3),
	datab => \rtc1|seconds_l\(2),
	datac => \rtc1|seconds_l\(0),
	datad => \rtc1|seconds_l\(1),
	combout => \q0:0:seg7_6|Mux6~0_combout\);

-- Location: LCCOMB_X32_Y19_N22
\q0:0:seg7_6|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \q0:0:seg7_6|Mux5~0_combout\ = (\rtc1|seconds_l\(3) & ((\rtc1|seconds_l\(0) & ((\rtc1|seconds_l\(1)))) # (!\rtc1|seconds_l\(0) & (\rtc1|seconds_l\(2))))) # (!\rtc1|seconds_l\(3) & (\rtc1|seconds_l\(2) & (\rtc1|seconds_l\(0) $ (\rtc1|seconds_l\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|seconds_l\(3),
	datab => \rtc1|seconds_l\(2),
	datac => \rtc1|seconds_l\(0),
	datad => \rtc1|seconds_l\(1),
	combout => \q0:0:seg7_6|Mux5~0_combout\);

-- Location: LCCOMB_X32_Y19_N8
\q0:0:seg7_6|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \q0:0:seg7_6|Mux4~0_combout\ = (\rtc1|seconds_l\(3) & (\rtc1|seconds_l\(2) & ((\rtc1|seconds_l\(1)) # (!\rtc1|seconds_l\(0))))) # (!\rtc1|seconds_l\(3) & (!\rtc1|seconds_l\(2) & (!\rtc1|seconds_l\(0) & \rtc1|seconds_l\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|seconds_l\(3),
	datab => \rtc1|seconds_l\(2),
	datac => \rtc1|seconds_l\(0),
	datad => \rtc1|seconds_l\(1),
	combout => \q0:0:seg7_6|Mux4~0_combout\);

-- Location: LCCOMB_X32_Y19_N26
\q0:0:seg7_6|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \q0:0:seg7_6|Mux3~0_combout\ = (\rtc1|seconds_l\(0) & ((\rtc1|seconds_l\(2) $ (!\rtc1|seconds_l\(1))))) # (!\rtc1|seconds_l\(0) & ((\rtc1|seconds_l\(3) & (!\rtc1|seconds_l\(2) & \rtc1|seconds_l\(1))) # (!\rtc1|seconds_l\(3) & (\rtc1|seconds_l\(2) & 
-- !\rtc1|seconds_l\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001000110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|seconds_l\(3),
	datab => \rtc1|seconds_l\(2),
	datac => \rtc1|seconds_l\(0),
	datad => \rtc1|seconds_l\(1),
	combout => \q0:0:seg7_6|Mux3~0_combout\);

-- Location: LCCOMB_X32_Y19_N20
\q0:0:seg7_6|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \q0:0:seg7_6|Mux2~0_combout\ = (\rtc1|seconds_l\(1) & (!\rtc1|seconds_l\(3) & ((\rtc1|seconds_l\(0))))) # (!\rtc1|seconds_l\(1) & ((\rtc1|seconds_l\(2) & (!\rtc1|seconds_l\(3))) # (!\rtc1|seconds_l\(2) & ((\rtc1|seconds_l\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|seconds_l\(3),
	datab => \rtc1|seconds_l\(2),
	datac => \rtc1|seconds_l\(0),
	datad => \rtc1|seconds_l\(1),
	combout => \q0:0:seg7_6|Mux2~0_combout\);

-- Location: LCCOMB_X32_Y19_N6
\q0:0:seg7_6|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \q0:0:seg7_6|Mux1~0_combout\ = (\rtc1|seconds_l\(2) & (\rtc1|seconds_l\(0) & (\rtc1|seconds_l\(3) $ (\rtc1|seconds_l\(1))))) # (!\rtc1|seconds_l\(2) & (!\rtc1|seconds_l\(3) & ((\rtc1|seconds_l\(0)) # (\rtc1|seconds_l\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|seconds_l\(3),
	datab => \rtc1|seconds_l\(2),
	datac => \rtc1|seconds_l\(0),
	datad => \rtc1|seconds_l\(1),
	combout => \q0:0:seg7_6|Mux1~0_combout\);

-- Location: LCCOMB_X32_Y19_N16
\q0:0:seg7_6|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \q0:0:seg7_6|Mux0~0_combout\ = (\rtc1|seconds_l\(0) & ((\rtc1|seconds_l\(3)) # (\rtc1|seconds_l\(2) $ (\rtc1|seconds_l\(1))))) # (!\rtc1|seconds_l\(0) & ((\rtc1|seconds_l\(1)) # (\rtc1|seconds_l\(3) $ (\rtc1|seconds_l\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|seconds_l\(3),
	datab => \rtc1|seconds_l\(2),
	datac => \rtc1|seconds_l\(0),
	datad => \rtc1|seconds_l\(1),
	combout => \q0:0:seg7_6|Mux0~0_combout\);

-- Location: LCCOMB_X30_Y23_N0
\rtc1|Add2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add2~0_combout\ = \rtc1|seconds_h\(0) $ (VCC)
-- \rtc1|Add2~1\ = CARRY(\rtc1|seconds_h\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rtc1|seconds_h\(0),
	datad => VCC,
	combout => \rtc1|Add2~0_combout\,
	cout => \rtc1|Add2~1\);

-- Location: LCCOMB_X31_Y18_N0
\rtc1|Add1~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add1~32_combout\ = (\rtc1|seconds_l\(16) & (\rtc1|Add1~31\ $ (GND))) # (!\rtc1|seconds_l\(16) & (!\rtc1|Add1~31\ & VCC))
-- \rtc1|Add1~33\ = CARRY((\rtc1|seconds_l\(16) & !\rtc1|Add1~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rtc1|seconds_l\(16),
	datad => VCC,
	cin => \rtc1|Add1~31\,
	combout => \rtc1|Add1~32_combout\,
	cout => \rtc1|Add1~33\);

-- Location: LCFF_X31_Y18_N1
\rtc1|seconds_l[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add1~32_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \rtc1|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|seconds_l\(16));

-- Location: LCCOMB_X31_Y18_N2
\rtc1|Add1~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add1~34_combout\ = (\rtc1|seconds_l\(17) & (!\rtc1|Add1~33\)) # (!\rtc1|seconds_l\(17) & ((\rtc1|Add1~33\) # (GND)))
-- \rtc1|Add1~35\ = CARRY((!\rtc1|Add1~33\) # (!\rtc1|seconds_l\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rtc1|seconds_l\(17),
	datad => VCC,
	cin => \rtc1|Add1~33\,
	combout => \rtc1|Add1~34_combout\,
	cout => \rtc1|Add1~35\);

-- Location: LCFF_X31_Y18_N3
\rtc1|seconds_l[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add1~34_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \rtc1|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|seconds_l\(17));

-- Location: LCCOMB_X31_Y18_N4
\rtc1|Add1~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add1~36_combout\ = (\rtc1|seconds_l\(18) & (\rtc1|Add1~35\ $ (GND))) # (!\rtc1|seconds_l\(18) & (!\rtc1|Add1~35\ & VCC))
-- \rtc1|Add1~37\ = CARRY((\rtc1|seconds_l\(18) & !\rtc1|Add1~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rtc1|seconds_l\(18),
	datad => VCC,
	cin => \rtc1|Add1~35\,
	combout => \rtc1|Add1~36_combout\,
	cout => \rtc1|Add1~37\);

-- Location: LCFF_X31_Y18_N5
\rtc1|seconds_l[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add1~36_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \rtc1|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|seconds_l\(18));

-- Location: LCCOMB_X31_Y18_N8
\rtc1|Add1~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add1~40_combout\ = (\rtc1|seconds_l\(20) & (\rtc1|Add1~39\ $ (GND))) # (!\rtc1|seconds_l\(20) & (!\rtc1|Add1~39\ & VCC))
-- \rtc1|Add1~41\ = CARRY((\rtc1|seconds_l\(20) & !\rtc1|Add1~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rtc1|seconds_l\(20),
	datad => VCC,
	cin => \rtc1|Add1~39\,
	combout => \rtc1|Add1~40_combout\,
	cout => \rtc1|Add1~41\);

-- Location: LCFF_X31_Y18_N9
\rtc1|seconds_l[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add1~40_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \rtc1|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|seconds_l\(20));

-- Location: LCCOMB_X31_Y18_N12
\rtc1|Add1~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add1~44_combout\ = (\rtc1|seconds_l\(22) & (\rtc1|Add1~43\ $ (GND))) # (!\rtc1|seconds_l\(22) & (!\rtc1|Add1~43\ & VCC))
-- \rtc1|Add1~45\ = CARRY((\rtc1|seconds_l\(22) & !\rtc1|Add1~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|seconds_l\(22),
	datad => VCC,
	cin => \rtc1|Add1~43\,
	combout => \rtc1|Add1~44_combout\,
	cout => \rtc1|Add1~45\);

-- Location: LCCOMB_X31_Y18_N14
\rtc1|Add1~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add1~46_combout\ = (\rtc1|seconds_l\(23) & (!\rtc1|Add1~45\)) # (!\rtc1|seconds_l\(23) & ((\rtc1|Add1~45\) # (GND)))
-- \rtc1|Add1~47\ = CARRY((!\rtc1|Add1~45\) # (!\rtc1|seconds_l\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rtc1|seconds_l\(23),
	datad => VCC,
	cin => \rtc1|Add1~45\,
	combout => \rtc1|Add1~46_combout\,
	cout => \rtc1|Add1~47\);

-- Location: LCFF_X31_Y18_N15
\rtc1|seconds_l[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add1~46_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \rtc1|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|seconds_l\(23));

-- Location: LCCOMB_X31_Y18_N16
\rtc1|Add1~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add1~48_combout\ = (\rtc1|seconds_l\(24) & (\rtc1|Add1~47\ $ (GND))) # (!\rtc1|seconds_l\(24) & (!\rtc1|Add1~47\ & VCC))
-- \rtc1|Add1~49\ = CARRY((\rtc1|seconds_l\(24) & !\rtc1|Add1~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|seconds_l\(24),
	datad => VCC,
	cin => \rtc1|Add1~47\,
	combout => \rtc1|Add1~48_combout\,
	cout => \rtc1|Add1~49\);

-- Location: LCCOMB_X31_Y18_N18
\rtc1|Add1~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add1~50_combout\ = (\rtc1|seconds_l\(25) & (!\rtc1|Add1~49\)) # (!\rtc1|seconds_l\(25) & ((\rtc1|Add1~49\) # (GND)))
-- \rtc1|Add1~51\ = CARRY((!\rtc1|Add1~49\) # (!\rtc1|seconds_l\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rtc1|seconds_l\(25),
	datad => VCC,
	cin => \rtc1|Add1~49\,
	combout => \rtc1|Add1~50_combout\,
	cout => \rtc1|Add1~51\);

-- Location: LCFF_X31_Y18_N19
\rtc1|seconds_l[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add1~50_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \rtc1|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|seconds_l\(25));

-- Location: LCCOMB_X31_Y18_N22
\rtc1|Add1~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add1~54_combout\ = (\rtc1|seconds_l\(27) & (!\rtc1|Add1~53\)) # (!\rtc1|seconds_l\(27) & ((\rtc1|Add1~53\) # (GND)))
-- \rtc1|Add1~55\ = CARRY((!\rtc1|Add1~53\) # (!\rtc1|seconds_l\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rtc1|seconds_l\(27),
	datad => VCC,
	cin => \rtc1|Add1~53\,
	combout => \rtc1|Add1~54_combout\,
	cout => \rtc1|Add1~55\);

-- Location: LCFF_X31_Y18_N23
\rtc1|seconds_l[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add1~54_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \rtc1|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|seconds_l\(27));

-- Location: LCFF_X31_Y18_N17
\rtc1|seconds_l[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add1~48_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \rtc1|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|seconds_l\(24));

-- Location: LCCOMB_X30_Y18_N2
\rtc1|Equal1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Equal1~1_combout\ = (!\rtc1|seconds_l\(26) & (!\rtc1|seconds_l\(27) & (!\rtc1|seconds_l\(24) & !\rtc1|seconds_l\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|seconds_l\(26),
	datab => \rtc1|seconds_l\(27),
	datac => \rtc1|seconds_l\(24),
	datad => \rtc1|seconds_l\(25),
	combout => \rtc1|Equal1~1_combout\);

-- Location: LCCOMB_X31_Y18_N24
\rtc1|Add1~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add1~56_combout\ = (\rtc1|seconds_l\(28) & (\rtc1|Add1~55\ $ (GND))) # (!\rtc1|seconds_l\(28) & (!\rtc1|Add1~55\ & VCC))
-- \rtc1|Add1~57\ = CARRY((\rtc1|seconds_l\(28) & !\rtc1|Add1~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|seconds_l\(28),
	datad => VCC,
	cin => \rtc1|Add1~55\,
	combout => \rtc1|Add1~56_combout\,
	cout => \rtc1|Add1~57\);

-- Location: LCCOMB_X31_Y18_N26
\rtc1|Add1~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add1~58_combout\ = (\rtc1|seconds_l\(29) & (!\rtc1|Add1~57\)) # (!\rtc1|seconds_l\(29) & ((\rtc1|Add1~57\) # (GND)))
-- \rtc1|Add1~59\ = CARRY((!\rtc1|Add1~57\) # (!\rtc1|seconds_l\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rtc1|seconds_l\(29),
	datad => VCC,
	cin => \rtc1|Add1~57\,
	combout => \rtc1|Add1~58_combout\,
	cout => \rtc1|Add1~59\);

-- Location: LCFF_X31_Y18_N27
\rtc1|seconds_l[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add1~58_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \rtc1|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|seconds_l\(29));

-- Location: LCFF_X31_Y18_N29
\rtc1|seconds_l[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add1~60_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \rtc1|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|seconds_l\(30));

-- Location: LCFF_X31_Y18_N25
\rtc1|seconds_l[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add1~56_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \rtc1|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|seconds_l\(28));

-- Location: LCCOMB_X30_Y18_N24
\rtc1|Equal1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Equal1~0_combout\ = (!\rtc1|seconds_l\(31) & (!\rtc1|seconds_l\(30) & (!\rtc1|seconds_l\(29) & !\rtc1|seconds_l\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|seconds_l\(31),
	datab => \rtc1|seconds_l\(30),
	datac => \rtc1|seconds_l\(29),
	datad => \rtc1|seconds_l\(28),
	combout => \rtc1|Equal1~0_combout\);

-- Location: LCFF_X31_Y18_N13
\rtc1|seconds_l[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add1~44_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \rtc1|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|seconds_l\(22));

-- Location: LCCOMB_X30_Y18_N12
\rtc1|Equal1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Equal1~2_combout\ = (!\rtc1|seconds_l\(21) & (!\rtc1|seconds_l\(22) & (!\rtc1|seconds_l\(20) & !\rtc1|seconds_l\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|seconds_l\(21),
	datab => \rtc1|seconds_l\(22),
	datac => \rtc1|seconds_l\(20),
	datad => \rtc1|seconds_l\(23),
	combout => \rtc1|Equal1~2_combout\);

-- Location: LCCOMB_X30_Y18_N8
\rtc1|Equal1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Equal1~4_combout\ = (\rtc1|Equal1~3_combout\ & (\rtc1|Equal1~1_combout\ & (\rtc1|Equal1~0_combout\ & \rtc1|Equal1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|Equal1~3_combout\,
	datab => \rtc1|Equal1~1_combout\,
	datac => \rtc1|Equal1~0_combout\,
	datad => \rtc1|Equal1~2_combout\,
	combout => \rtc1|Equal1~4_combout\);

-- Location: LCCOMB_X29_Y21_N2
\rtc1|wrap~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|wrap~0_combout\ = (\rtc1|Equal0~9_combout\ & (\rtc1|Equal1~4_combout\ & (\rtc1|Equal0~4_combout\ & \rtc1|Equal1~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|Equal0~9_combout\,
	datab => \rtc1|Equal1~4_combout\,
	datac => \rtc1|Equal0~4_combout\,
	datad => \rtc1|Equal1~9_combout\,
	combout => \rtc1|wrap~0_combout\);

-- Location: LCFF_X30_Y23_N1
\rtc1|seconds_h[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add2~0_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \rtc1|wrap~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|seconds_h\(0));

-- Location: LCCOMB_X29_Y21_N0
\rtc1|Equal2~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Equal2~9_combout\ = (!\rtc1|seconds_h\(1) & (\rtc1|seconds_h\(2) & (!\rtc1|seconds_h\(3) & \rtc1|seconds_h\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|seconds_h\(1),
	datab => \rtc1|seconds_h\(2),
	datac => \rtc1|seconds_h\(3),
	datad => \rtc1|seconds_h\(0),
	combout => \rtc1|Equal2~9_combout\);

-- Location: LCCOMB_X30_Y23_N6
\rtc1|Add2~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add2~6_combout\ = (\rtc1|seconds_h\(3) & (!\rtc1|Add2~5\)) # (!\rtc1|seconds_h\(3) & ((\rtc1|Add2~5\) # (GND)))
-- \rtc1|Add2~7\ = CARRY((!\rtc1|Add2~5\) # (!\rtc1|seconds_h\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|seconds_h\(3),
	datad => VCC,
	cin => \rtc1|Add2~5\,
	combout => \rtc1|Add2~6_combout\,
	cout => \rtc1|Add2~7\);

-- Location: LCCOMB_X30_Y23_N8
\rtc1|Add2~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add2~8_combout\ = (\rtc1|seconds_h\(4) & (\rtc1|Add2~7\ $ (GND))) # (!\rtc1|seconds_h\(4) & (!\rtc1|Add2~7\ & VCC))
-- \rtc1|Add2~9\ = CARRY((\rtc1|seconds_h\(4) & !\rtc1|Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rtc1|seconds_h\(4),
	datad => VCC,
	cin => \rtc1|Add2~7\,
	combout => \rtc1|Add2~8_combout\,
	cout => \rtc1|Add2~9\);

-- Location: LCFF_X30_Y23_N9
\rtc1|seconds_h[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add2~8_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \rtc1|wrap~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|seconds_h\(4));

-- Location: LCCOMB_X30_Y23_N10
\rtc1|Add2~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add2~10_combout\ = (\rtc1|seconds_h\(5) & (!\rtc1|Add2~9\)) # (!\rtc1|seconds_h\(5) & ((\rtc1|Add2~9\) # (GND)))
-- \rtc1|Add2~11\ = CARRY((!\rtc1|Add2~9\) # (!\rtc1|seconds_h\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|seconds_h\(5),
	datad => VCC,
	cin => \rtc1|Add2~9\,
	combout => \rtc1|Add2~10_combout\,
	cout => \rtc1|Add2~11\);

-- Location: LCFF_X30_Y23_N11
\rtc1|seconds_h[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add2~10_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \rtc1|wrap~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|seconds_h\(5));

-- Location: LCCOMB_X30_Y23_N14
\rtc1|Add2~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add2~14_combout\ = (\rtc1|seconds_h\(7) & (!\rtc1|Add2~13\)) # (!\rtc1|seconds_h\(7) & ((\rtc1|Add2~13\) # (GND)))
-- \rtc1|Add2~15\ = CARRY((!\rtc1|Add2~13\) # (!\rtc1|seconds_h\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rtc1|seconds_h\(7),
	datad => VCC,
	cin => \rtc1|Add2~13\,
	combout => \rtc1|Add2~14_combout\,
	cout => \rtc1|Add2~15\);

-- Location: LCFF_X30_Y23_N15
\rtc1|seconds_h[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add2~14_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \rtc1|wrap~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|seconds_h\(7));

-- Location: LCCOMB_X28_Y23_N8
\rtc1|Equal2~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Equal2~8_combout\ = (!\rtc1|seconds_h\(6) & (!\rtc1|seconds_h\(5) & (!\rtc1|seconds_h\(7) & !\rtc1|seconds_h\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|seconds_h\(6),
	datab => \rtc1|seconds_h\(5),
	datac => \rtc1|seconds_h\(7),
	datad => \rtc1|seconds_h\(4),
	combout => \rtc1|Equal2~8_combout\);

-- Location: LCCOMB_X30_Y23_N16
\rtc1|Add2~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add2~16_combout\ = (\rtc1|seconds_h\(8) & (\rtc1|Add2~15\ $ (GND))) # (!\rtc1|seconds_h\(8) & (!\rtc1|Add2~15\ & VCC))
-- \rtc1|Add2~17\ = CARRY((\rtc1|seconds_h\(8) & !\rtc1|Add2~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|seconds_h\(8),
	datad => VCC,
	cin => \rtc1|Add2~15\,
	combout => \rtc1|Add2~16_combout\,
	cout => \rtc1|Add2~17\);

-- Location: LCCOMB_X30_Y23_N18
\rtc1|Add2~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add2~18_combout\ = (\rtc1|seconds_h\(9) & (!\rtc1|Add2~17\)) # (!\rtc1|seconds_h\(9) & ((\rtc1|Add2~17\) # (GND)))
-- \rtc1|Add2~19\ = CARRY((!\rtc1|Add2~17\) # (!\rtc1|seconds_h\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rtc1|seconds_h\(9),
	datad => VCC,
	cin => \rtc1|Add2~17\,
	combout => \rtc1|Add2~18_combout\,
	cout => \rtc1|Add2~19\);

-- Location: LCFF_X30_Y23_N19
\rtc1|seconds_h[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add2~18_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \rtc1|wrap~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|seconds_h\(9));

-- Location: LCFF_X30_Y23_N21
\rtc1|seconds_h[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add2~20_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \rtc1|wrap~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|seconds_h\(10));

-- Location: LCFF_X30_Y23_N17
\rtc1|seconds_h[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add2~16_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \rtc1|wrap~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|seconds_h\(8));

-- Location: LCCOMB_X31_Y23_N16
\rtc1|Equal2~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Equal2~6_combout\ = (!\rtc1|seconds_h\(11) & (!\rtc1|seconds_h\(9) & (!\rtc1|seconds_h\(10) & !\rtc1|seconds_h\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|seconds_h\(11),
	datab => \rtc1|seconds_h\(9),
	datac => \rtc1|seconds_h\(10),
	datad => \rtc1|seconds_h\(8),
	combout => \rtc1|Equal2~6_combout\);

-- Location: LCCOMB_X29_Y21_N30
\rtc1|Equal2~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Equal2~7_combout\ = (\rtc1|Equal2~5_combout\ & \rtc1|Equal2~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|Equal2~5_combout\,
	datac => \rtc1|Equal2~6_combout\,
	combout => \rtc1|Equal2~7_combout\);

-- Location: LCCOMB_X29_Y21_N18
\rtc1|Equal2~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Equal2~10_combout\ = (\rtc1|Equal2~4_combout\ & (\rtc1|Equal2~9_combout\ & (\rtc1|Equal2~8_combout\ & \rtc1|Equal2~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|Equal2~4_combout\,
	datab => \rtc1|Equal2~9_combout\,
	datac => \rtc1|Equal2~8_combout\,
	datad => \rtc1|Equal2~7_combout\,
	combout => \rtc1|Equal2~10_combout\);

-- Location: LCCOMB_X30_Y23_N2
\rtc1|Add2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add2~2_combout\ = (\rtc1|seconds_h\(1) & (!\rtc1|Add2~1\)) # (!\rtc1|seconds_h\(1) & ((\rtc1|Add2~1\) # (GND)))
-- \rtc1|Add2~3\ = CARRY((!\rtc1|Add2~1\) # (!\rtc1|seconds_h\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rtc1|seconds_h\(1),
	datad => VCC,
	cin => \rtc1|Add2~1\,
	combout => \rtc1|Add2~2_combout\,
	cout => \rtc1|Add2~3\);

-- Location: LCCOMB_X29_Y21_N16
\rtc1|cnt~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|cnt~12_combout\ = (!\rtc1|Equal2~10_combout\ & \rtc1|Add2~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rtc1|Equal2~10_combout\,
	datad => \rtc1|Add2~2_combout\,
	combout => \rtc1|cnt~12_combout\);

-- Location: LCFF_X29_Y21_N17
\rtc1|seconds_h[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|cnt~12_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \rtc1|wrap~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|seconds_h\(1));

-- Location: LCCOMB_X30_Y23_N4
\rtc1|Add2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add2~4_combout\ = (\rtc1|seconds_h\(2) & (\rtc1|Add2~3\ $ (GND))) # (!\rtc1|seconds_h\(2) & (!\rtc1|Add2~3\ & VCC))
-- \rtc1|Add2~5\ = CARRY((\rtc1|seconds_h\(2) & !\rtc1|Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rtc1|seconds_h\(2),
	datad => VCC,
	cin => \rtc1|Add2~3\,
	combout => \rtc1|Add2~4_combout\,
	cout => \rtc1|Add2~5\);

-- Location: LCCOMB_X29_Y21_N26
\rtc1|cnt~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|cnt~13_combout\ = (!\rtc1|Equal2~10_combout\ & \rtc1|Add2~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rtc1|Equal2~10_combout\,
	datac => \rtc1|Add2~4_combout\,
	combout => \rtc1|cnt~13_combout\);

-- Location: LCFF_X29_Y21_N27
\rtc1|seconds_h[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|cnt~13_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \rtc1|wrap~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|seconds_h\(2));

-- Location: LCFF_X30_Y23_N7
\rtc1|seconds_h[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add2~6_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \rtc1|wrap~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|seconds_h\(3));

-- Location: LCCOMB_X64_Y8_N16
\q0:1:seg7_6|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \q0:1:seg7_6|Mux6~0_combout\ = (\rtc1|seconds_h\(3) & (\rtc1|seconds_h\(0) & (\rtc1|seconds_h\(1) $ (\rtc1|seconds_h\(2))))) # (!\rtc1|seconds_h\(3) & (!\rtc1|seconds_h\(1) & (\rtc1|seconds_h\(2) $ (\rtc1|seconds_h\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|seconds_h\(3),
	datab => \rtc1|seconds_h\(1),
	datac => \rtc1|seconds_h\(2),
	datad => \rtc1|seconds_h\(0),
	combout => \q0:1:seg7_6|Mux6~0_combout\);

-- Location: LCCOMB_X64_Y8_N18
\q0:1:seg7_6|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \q0:1:seg7_6|Mux5~0_combout\ = (\rtc1|seconds_h\(3) & ((\rtc1|seconds_h\(0) & (\rtc1|seconds_h\(1))) # (!\rtc1|seconds_h\(0) & ((\rtc1|seconds_h\(2)))))) # (!\rtc1|seconds_h\(3) & (\rtc1|seconds_h\(2) & (\rtc1|seconds_h\(1) $ (\rtc1|seconds_h\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|seconds_h\(3),
	datab => \rtc1|seconds_h\(1),
	datac => \rtc1|seconds_h\(2),
	datad => \rtc1|seconds_h\(0),
	combout => \q0:1:seg7_6|Mux5~0_combout\);

-- Location: LCCOMB_X64_Y8_N12
\q0:1:seg7_6|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \q0:1:seg7_6|Mux4~0_combout\ = (\rtc1|seconds_h\(3) & (\rtc1|seconds_h\(2) & ((\rtc1|seconds_h\(1)) # (!\rtc1|seconds_h\(0))))) # (!\rtc1|seconds_h\(3) & (\rtc1|seconds_h\(1) & (!\rtc1|seconds_h\(2) & !\rtc1|seconds_h\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|seconds_h\(3),
	datab => \rtc1|seconds_h\(1),
	datac => \rtc1|seconds_h\(2),
	datad => \rtc1|seconds_h\(0),
	combout => \q0:1:seg7_6|Mux4~0_combout\);

-- Location: LCCOMB_X64_Y8_N30
\q0:1:seg7_6|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \q0:1:seg7_6|Mux3~0_combout\ = (\rtc1|seconds_h\(0) & ((\rtc1|seconds_h\(1) $ (!\rtc1|seconds_h\(2))))) # (!\rtc1|seconds_h\(0) & ((\rtc1|seconds_h\(3) & (\rtc1|seconds_h\(1) & !\rtc1|seconds_h\(2))) # (!\rtc1|seconds_h\(3) & (!\rtc1|seconds_h\(1) & 
-- \rtc1|seconds_h\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|seconds_h\(3),
	datab => \rtc1|seconds_h\(1),
	datac => \rtc1|seconds_h\(2),
	datad => \rtc1|seconds_h\(0),
	combout => \q0:1:seg7_6|Mux3~0_combout\);

-- Location: LCCOMB_X64_Y8_N0
\q0:1:seg7_6|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \q0:1:seg7_6|Mux2~0_combout\ = (\rtc1|seconds_h\(1) & (!\rtc1|seconds_h\(3) & ((\rtc1|seconds_h\(0))))) # (!\rtc1|seconds_h\(1) & ((\rtc1|seconds_h\(2) & (!\rtc1|seconds_h\(3))) # (!\rtc1|seconds_h\(2) & ((\rtc1|seconds_h\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|seconds_h\(3),
	datab => \rtc1|seconds_h\(1),
	datac => \rtc1|seconds_h\(2),
	datad => \rtc1|seconds_h\(0),
	combout => \q0:1:seg7_6|Mux2~0_combout\);

-- Location: LCCOMB_X64_Y8_N2
\q0:1:seg7_6|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \q0:1:seg7_6|Mux1~0_combout\ = (\rtc1|seconds_h\(1) & (!\rtc1|seconds_h\(3) & ((\rtc1|seconds_h\(0)) # (!\rtc1|seconds_h\(2))))) # (!\rtc1|seconds_h\(1) & (\rtc1|seconds_h\(0) & (\rtc1|seconds_h\(3) $ (!\rtc1|seconds_h\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|seconds_h\(3),
	datab => \rtc1|seconds_h\(1),
	datac => \rtc1|seconds_h\(2),
	datad => \rtc1|seconds_h\(0),
	combout => \q0:1:seg7_6|Mux1~0_combout\);

-- Location: LCCOMB_X64_Y8_N20
\q0:1:seg7_6|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \q0:1:seg7_6|Mux0~0_combout\ = (\rtc1|seconds_h\(0) & ((\rtc1|seconds_h\(3)) # (\rtc1|seconds_h\(1) $ (\rtc1|seconds_h\(2))))) # (!\rtc1|seconds_h\(0) & ((\rtc1|seconds_h\(1)) # (\rtc1|seconds_h\(3) $ (\rtc1|seconds_h\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111011011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|seconds_h\(3),
	datab => \rtc1|seconds_h\(1),
	datac => \rtc1|seconds_h\(2),
	datad => \rtc1|seconds_h\(0),
	combout => \q0:1:seg7_6|Mux0~0_combout\);

-- Location: LCCOMB_X28_Y21_N0
\rtc1|Add3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add3~0_combout\ = \rtc1|minutes_l\(0) $ (VCC)
-- \rtc1|Add3~1\ = CARRY(\rtc1|minutes_l\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rtc1|minutes_l\(0),
	datad => VCC,
	combout => \rtc1|Add3~0_combout\,
	cout => \rtc1|Add3~1\);

-- Location: LCCOMB_X29_Y21_N28
\rtc1|wrap~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|wrap~1_combout\ = (\rtc1|Equal0~10_combout\ & (\rtc1|Equal2~10_combout\ & (\rtc1|Equal1~4_combout\ & \rtc1|Equal1~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|Equal0~10_combout\,
	datab => \rtc1|Equal2~10_combout\,
	datac => \rtc1|Equal1~4_combout\,
	datad => \rtc1|Equal1~9_combout\,
	combout => \rtc1|wrap~1_combout\);

-- Location: LCFF_X28_Y21_N1
\rtc1|minutes_l[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add3~0_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \rtc1|wrap~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|minutes_l\(0));

-- Location: LCCOMB_X28_Y21_N4
\rtc1|Add3~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add3~4_combout\ = (\rtc1|minutes_l\(2) & (\rtc1|Add3~3\ $ (GND))) # (!\rtc1|minutes_l\(2) & (!\rtc1|Add3~3\ & VCC))
-- \rtc1|Add3~5\ = CARRY((\rtc1|minutes_l\(2) & !\rtc1|Add3~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rtc1|minutes_l\(2),
	datad => VCC,
	cin => \rtc1|Add3~3\,
	combout => \rtc1|Add3~4_combout\,
	cout => \rtc1|Add3~5\);

-- Location: LCFF_X28_Y21_N5
\rtc1|minutes_l[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add3~4_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \rtc1|wrap~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|minutes_l\(2));

-- Location: LCCOMB_X28_Y21_N6
\rtc1|Add3~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add3~6_combout\ = (\rtc1|minutes_l\(3) & (!\rtc1|Add3~5\)) # (!\rtc1|minutes_l\(3) & ((\rtc1|Add3~5\) # (GND)))
-- \rtc1|Add3~7\ = CARRY((!\rtc1|Add3~5\) # (!\rtc1|minutes_l\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rtc1|minutes_l\(3),
	datad => VCC,
	cin => \rtc1|Add3~5\,
	combout => \rtc1|Add3~6_combout\,
	cout => \rtc1|Add3~7\);

-- Location: LCCOMB_X29_Y21_N22
\rtc1|cnt~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|cnt~15_combout\ = (!\rtc1|Equal3~10_combout\ & \rtc1|Add3~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|Equal3~10_combout\,
	datac => \rtc1|Add3~6_combout\,
	combout => \rtc1|cnt~15_combout\);

-- Location: LCFF_X29_Y21_N23
\rtc1|minutes_l[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|cnt~15_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \rtc1|wrap~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|minutes_l\(3));

-- Location: LCCOMB_X28_Y21_N8
\rtc1|Add3~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add3~8_combout\ = (\rtc1|minutes_l\(4) & (\rtc1|Add3~7\ $ (GND))) # (!\rtc1|minutes_l\(4) & (!\rtc1|Add3~7\ & VCC))
-- \rtc1|Add3~9\ = CARRY((\rtc1|minutes_l\(4) & !\rtc1|Add3~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rtc1|minutes_l\(4),
	datad => VCC,
	cin => \rtc1|Add3~7\,
	combout => \rtc1|Add3~8_combout\,
	cout => \rtc1|Add3~9\);

-- Location: LCFF_X28_Y21_N9
\rtc1|minutes_l[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add3~8_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \rtc1|wrap~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|minutes_l\(4));

-- Location: LCCOMB_X28_Y21_N12
\rtc1|Add3~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add3~12_combout\ = (\rtc1|minutes_l\(6) & (\rtc1|Add3~11\ $ (GND))) # (!\rtc1|minutes_l\(6) & (!\rtc1|Add3~11\ & VCC))
-- \rtc1|Add3~13\ = CARRY((\rtc1|minutes_l\(6) & !\rtc1|Add3~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|minutes_l\(6),
	datad => VCC,
	cin => \rtc1|Add3~11\,
	combout => \rtc1|Add3~12_combout\,
	cout => \rtc1|Add3~13\);

-- Location: LCFF_X28_Y21_N13
\rtc1|minutes_l[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add3~12_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \rtc1|wrap~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|minutes_l\(6));

-- Location: LCCOMB_X28_Y21_N14
\rtc1|Add3~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add3~14_combout\ = (\rtc1|minutes_l\(7) & (!\rtc1|Add3~13\)) # (!\rtc1|minutes_l\(7) & ((\rtc1|Add3~13\) # (GND)))
-- \rtc1|Add3~15\ = CARRY((!\rtc1|Add3~13\) # (!\rtc1|minutes_l\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rtc1|minutes_l\(7),
	datad => VCC,
	cin => \rtc1|Add3~13\,
	combout => \rtc1|Add3~14_combout\,
	cout => \rtc1|Add3~15\);

-- Location: LCFF_X28_Y21_N15
\rtc1|minutes_l[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add3~14_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \rtc1|wrap~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|minutes_l\(7));

-- Location: LCCOMB_X28_Y17_N22
\rtc1|Equal3~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Equal3~7_combout\ = (!\rtc1|minutes_l\(6) & !\rtc1|minutes_l\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rtc1|minutes_l\(6),
	datac => \rtc1|minutes_l\(7),
	combout => \rtc1|Equal3~7_combout\);

-- Location: LCCOMB_X28_Y17_N24
\rtc1|Equal3~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Equal3~8_combout\ = (\rtc1|minutes_l\(0) & (\rtc1|minutes_l\(3) & (!\rtc1|minutes_l\(2) & !\rtc1|minutes_l\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|minutes_l\(0),
	datab => \rtc1|minutes_l\(3),
	datac => \rtc1|minutes_l\(2),
	datad => \rtc1|minutes_l\(1),
	combout => \rtc1|Equal3~8_combout\);

-- Location: LCCOMB_X28_Y17_N26
\rtc1|Equal3~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Equal3~9_combout\ = (!\rtc1|minutes_l\(5) & (\rtc1|Equal3~7_combout\ & (\rtc1|Equal3~8_combout\ & !\rtc1|minutes_l\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|minutes_l\(5),
	datab => \rtc1|Equal3~7_combout\,
	datac => \rtc1|Equal3~8_combout\,
	datad => \rtc1|minutes_l\(4),
	combout => \rtc1|Equal3~9_combout\);

-- Location: LCCOMB_X28_Y21_N16
\rtc1|Add3~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add3~16_combout\ = (\rtc1|minutes_l\(8) & (\rtc1|Add3~15\ $ (GND))) # (!\rtc1|minutes_l\(8) & (!\rtc1|Add3~15\ & VCC))
-- \rtc1|Add3~17\ = CARRY((\rtc1|minutes_l\(8) & !\rtc1|Add3~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|minutes_l\(8),
	datad => VCC,
	cin => \rtc1|Add3~15\,
	combout => \rtc1|Add3~16_combout\,
	cout => \rtc1|Add3~17\);

-- Location: LCCOMB_X28_Y21_N18
\rtc1|Add3~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add3~18_combout\ = (\rtc1|minutes_l\(9) & (!\rtc1|Add3~17\)) # (!\rtc1|minutes_l\(9) & ((\rtc1|Add3~17\) # (GND)))
-- \rtc1|Add3~19\ = CARRY((!\rtc1|Add3~17\) # (!\rtc1|minutes_l\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rtc1|minutes_l\(9),
	datad => VCC,
	cin => \rtc1|Add3~17\,
	combout => \rtc1|Add3~18_combout\,
	cout => \rtc1|Add3~19\);

-- Location: LCFF_X28_Y21_N19
\rtc1|minutes_l[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add3~18_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \rtc1|wrap~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|minutes_l\(9));

-- Location: LCCOMB_X28_Y21_N22
\rtc1|Add3~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add3~22_combout\ = (\rtc1|minutes_l\(11) & (!\rtc1|Add3~21\)) # (!\rtc1|minutes_l\(11) & ((\rtc1|Add3~21\) # (GND)))
-- \rtc1|Add3~23\ = CARRY((!\rtc1|Add3~21\) # (!\rtc1|minutes_l\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rtc1|minutes_l\(11),
	datad => VCC,
	cin => \rtc1|Add3~21\,
	combout => \rtc1|Add3~22_combout\,
	cout => \rtc1|Add3~23\);

-- Location: LCFF_X28_Y21_N23
\rtc1|minutes_l[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add3~22_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \rtc1|wrap~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|minutes_l\(11));

-- Location: LCFF_X28_Y21_N17
\rtc1|minutes_l[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add3~16_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \rtc1|wrap~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|minutes_l\(8));

-- Location: LCCOMB_X27_Y21_N8
\rtc1|Equal3~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Equal3~6_combout\ = (!\rtc1|minutes_l\(10) & (!\rtc1|minutes_l\(11) & (!\rtc1|minutes_l\(8) & !\rtc1|minutes_l\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|minutes_l\(10),
	datab => \rtc1|minutes_l\(11),
	datac => \rtc1|minutes_l\(8),
	datad => \rtc1|minutes_l\(9),
	combout => \rtc1|Equal3~6_combout\);

-- Location: LCCOMB_X28_Y21_N26
\rtc1|Add3~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add3~26_combout\ = (\rtc1|minutes_l\(13) & (!\rtc1|Add3~25\)) # (!\rtc1|minutes_l\(13) & ((\rtc1|Add3~25\) # (GND)))
-- \rtc1|Add3~27\ = CARRY((!\rtc1|Add3~25\) # (!\rtc1|minutes_l\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rtc1|minutes_l\(13),
	datad => VCC,
	cin => \rtc1|Add3~25\,
	combout => \rtc1|Add3~26_combout\,
	cout => \rtc1|Add3~27\);

-- Location: LCFF_X28_Y21_N27
\rtc1|minutes_l[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add3~26_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \rtc1|wrap~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|minutes_l\(13));

-- Location: LCCOMB_X28_Y21_N28
\rtc1|Add3~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add3~28_combout\ = (\rtc1|minutes_l\(14) & (\rtc1|Add3~27\ $ (GND))) # (!\rtc1|minutes_l\(14) & (!\rtc1|Add3~27\ & VCC))
-- \rtc1|Add3~29\ = CARRY((\rtc1|minutes_l\(14) & !\rtc1|Add3~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rtc1|minutes_l\(14),
	datad => VCC,
	cin => \rtc1|Add3~27\,
	combout => \rtc1|Add3~28_combout\,
	cout => \rtc1|Add3~29\);

-- Location: LCFF_X28_Y21_N29
\rtc1|minutes_l[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add3~28_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \rtc1|wrap~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|minutes_l\(14));

-- Location: LCCOMB_X28_Y21_N30
\rtc1|Add3~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add3~30_combout\ = (\rtc1|minutes_l\(15) & (!\rtc1|Add3~29\)) # (!\rtc1|minutes_l\(15) & ((\rtc1|Add3~29\) # (GND)))
-- \rtc1|Add3~31\ = CARRY((!\rtc1|Add3~29\) # (!\rtc1|minutes_l\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rtc1|minutes_l\(15),
	datad => VCC,
	cin => \rtc1|Add3~29\,
	combout => \rtc1|Add3~30_combout\,
	cout => \rtc1|Add3~31\);

-- Location: LCFF_X28_Y21_N31
\rtc1|minutes_l[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add3~30_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \rtc1|wrap~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|minutes_l\(15));

-- Location: LCCOMB_X28_Y20_N0
\rtc1|Add3~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add3~32_combout\ = (\rtc1|minutes_l\(16) & (\rtc1|Add3~31\ $ (GND))) # (!\rtc1|minutes_l\(16) & (!\rtc1|Add3~31\ & VCC))
-- \rtc1|Add3~33\ = CARRY((\rtc1|minutes_l\(16) & !\rtc1|Add3~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rtc1|minutes_l\(16),
	datad => VCC,
	cin => \rtc1|Add3~31\,
	combout => \rtc1|Add3~32_combout\,
	cout => \rtc1|Add3~33\);

-- Location: LCFF_X28_Y20_N1
\rtc1|minutes_l[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add3~32_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \rtc1|wrap~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|minutes_l\(16));

-- Location: LCCOMB_X28_Y20_N2
\rtc1|Add3~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add3~34_combout\ = (\rtc1|minutes_l\(17) & (!\rtc1|Add3~33\)) # (!\rtc1|minutes_l\(17) & ((\rtc1|Add3~33\) # (GND)))
-- \rtc1|Add3~35\ = CARRY((!\rtc1|Add3~33\) # (!\rtc1|minutes_l\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rtc1|minutes_l\(17),
	datad => VCC,
	cin => \rtc1|Add3~33\,
	combout => \rtc1|Add3~34_combout\,
	cout => \rtc1|Add3~35\);

-- Location: LCFF_X28_Y20_N3
\rtc1|minutes_l[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add3~34_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \rtc1|wrap~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|minutes_l\(17));

-- Location: LCCOMB_X28_Y20_N4
\rtc1|Add3~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add3~36_combout\ = (\rtc1|minutes_l\(18) & (\rtc1|Add3~35\ $ (GND))) # (!\rtc1|minutes_l\(18) & (!\rtc1|Add3~35\ & VCC))
-- \rtc1|Add3~37\ = CARRY((\rtc1|minutes_l\(18) & !\rtc1|Add3~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rtc1|minutes_l\(18),
	datad => VCC,
	cin => \rtc1|Add3~35\,
	combout => \rtc1|Add3~36_combout\,
	cout => \rtc1|Add3~37\);

-- Location: LCFF_X28_Y20_N5
\rtc1|minutes_l[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add3~36_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \rtc1|wrap~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|minutes_l\(18));

-- Location: LCCOMB_X28_Y20_N8
\rtc1|Add3~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add3~40_combout\ = (\rtc1|minutes_l\(20) & (\rtc1|Add3~39\ $ (GND))) # (!\rtc1|minutes_l\(20) & (!\rtc1|Add3~39\ & VCC))
-- \rtc1|Add3~41\ = CARRY((\rtc1|minutes_l\(20) & !\rtc1|Add3~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rtc1|minutes_l\(20),
	datad => VCC,
	cin => \rtc1|Add3~39\,
	combout => \rtc1|Add3~40_combout\,
	cout => \rtc1|Add3~41\);

-- Location: LCFF_X28_Y20_N9
\rtc1|minutes_l[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add3~40_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \rtc1|wrap~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|minutes_l\(20));

-- Location: LCCOMB_X28_Y20_N10
\rtc1|Add3~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add3~42_combout\ = (\rtc1|minutes_l\(21) & (!\rtc1|Add3~41\)) # (!\rtc1|minutes_l\(21) & ((\rtc1|Add3~41\) # (GND)))
-- \rtc1|Add3~43\ = CARRY((!\rtc1|Add3~41\) # (!\rtc1|minutes_l\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|minutes_l\(21),
	datad => VCC,
	cin => \rtc1|Add3~41\,
	combout => \rtc1|Add3~42_combout\,
	cout => \rtc1|Add3~43\);

-- Location: LCCOMB_X28_Y20_N14
\rtc1|Add3~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add3~46_combout\ = (\rtc1|minutes_l\(23) & (!\rtc1|Add3~45\)) # (!\rtc1|minutes_l\(23) & ((\rtc1|Add3~45\) # (GND)))
-- \rtc1|Add3~47\ = CARRY((!\rtc1|Add3~45\) # (!\rtc1|minutes_l\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rtc1|minutes_l\(23),
	datad => VCC,
	cin => \rtc1|Add3~45\,
	combout => \rtc1|Add3~46_combout\,
	cout => \rtc1|Add3~47\);

-- Location: LCFF_X28_Y20_N15
\rtc1|minutes_l[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add3~46_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \rtc1|wrap~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|minutes_l\(23));

-- Location: LCCOMB_X28_Y20_N16
\rtc1|Add3~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add3~48_combout\ = (\rtc1|minutes_l\(24) & (\rtc1|Add3~47\ $ (GND))) # (!\rtc1|minutes_l\(24) & (!\rtc1|Add3~47\ & VCC))
-- \rtc1|Add3~49\ = CARRY((\rtc1|minutes_l\(24) & !\rtc1|Add3~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|minutes_l\(24),
	datad => VCC,
	cin => \rtc1|Add3~47\,
	combout => \rtc1|Add3~48_combout\,
	cout => \rtc1|Add3~49\);

-- Location: LCCOMB_X28_Y20_N18
\rtc1|Add3~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add3~50_combout\ = (\rtc1|minutes_l\(25) & (!\rtc1|Add3~49\)) # (!\rtc1|minutes_l\(25) & ((\rtc1|Add3~49\) # (GND)))
-- \rtc1|Add3~51\ = CARRY((!\rtc1|Add3~49\) # (!\rtc1|minutes_l\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rtc1|minutes_l\(25),
	datad => VCC,
	cin => \rtc1|Add3~49\,
	combout => \rtc1|Add3~50_combout\,
	cout => \rtc1|Add3~51\);

-- Location: LCFF_X28_Y20_N19
\rtc1|minutes_l[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add3~50_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \rtc1|wrap~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|minutes_l\(25));

-- Location: LCCOMB_X28_Y20_N20
\rtc1|Add3~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add3~52_combout\ = (\rtc1|minutes_l\(26) & (\rtc1|Add3~51\ $ (GND))) # (!\rtc1|minutes_l\(26) & (!\rtc1|Add3~51\ & VCC))
-- \rtc1|Add3~53\ = CARRY((\rtc1|minutes_l\(26) & !\rtc1|Add3~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|minutes_l\(26),
	datad => VCC,
	cin => \rtc1|Add3~51\,
	combout => \rtc1|Add3~52_combout\,
	cout => \rtc1|Add3~53\);

-- Location: LCFF_X28_Y20_N21
\rtc1|minutes_l[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add3~52_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \rtc1|wrap~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|minutes_l\(26));

-- Location: LCFF_X28_Y20_N17
\rtc1|minutes_l[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add3~48_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \rtc1|wrap~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|minutes_l\(24));

-- Location: LCCOMB_X29_Y20_N2
\rtc1|Equal3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Equal3~1_combout\ = (!\rtc1|minutes_l\(27) & (!\rtc1|minutes_l\(25) & (!\rtc1|minutes_l\(26) & !\rtc1|minutes_l\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|minutes_l\(27),
	datab => \rtc1|minutes_l\(25),
	datac => \rtc1|minutes_l\(26),
	datad => \rtc1|minutes_l\(24),
	combout => \rtc1|Equal3~1_combout\);

-- Location: LCCOMB_X28_Y20_N22
\rtc1|Add3~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add3~54_combout\ = (\rtc1|minutes_l\(27) & (!\rtc1|Add3~53\)) # (!\rtc1|minutes_l\(27) & ((\rtc1|Add3~53\) # (GND)))
-- \rtc1|Add3~55\ = CARRY((!\rtc1|Add3~53\) # (!\rtc1|minutes_l\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rtc1|minutes_l\(27),
	datad => VCC,
	cin => \rtc1|Add3~53\,
	combout => \rtc1|Add3~54_combout\,
	cout => \rtc1|Add3~55\);

-- Location: LCFF_X28_Y20_N23
\rtc1|minutes_l[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add3~54_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \rtc1|wrap~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|minutes_l\(27));

-- Location: LCCOMB_X28_Y20_N26
\rtc1|Add3~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add3~58_combout\ = (\rtc1|minutes_l\(29) & (!\rtc1|Add3~57\)) # (!\rtc1|minutes_l\(29) & ((\rtc1|Add3~57\) # (GND)))
-- \rtc1|Add3~59\ = CARRY((!\rtc1|Add3~57\) # (!\rtc1|minutes_l\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rtc1|minutes_l\(29),
	datad => VCC,
	cin => \rtc1|Add3~57\,
	combout => \rtc1|Add3~58_combout\,
	cout => \rtc1|Add3~59\);

-- Location: LCFF_X28_Y20_N27
\rtc1|minutes_l[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add3~58_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \rtc1|wrap~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|minutes_l\(29));

-- Location: LCCOMB_X28_Y20_N28
\rtc1|Add3~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add3~60_combout\ = (\rtc1|minutes_l\(30) & (\rtc1|Add3~59\ $ (GND))) # (!\rtc1|minutes_l\(30) & (!\rtc1|Add3~59\ & VCC))
-- \rtc1|Add3~61\ = CARRY((\rtc1|minutes_l\(30) & !\rtc1|Add3~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rtc1|minutes_l\(30),
	datad => VCC,
	cin => \rtc1|Add3~59\,
	combout => \rtc1|Add3~60_combout\,
	cout => \rtc1|Add3~61\);

-- Location: LCFF_X28_Y20_N29
\rtc1|minutes_l[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add3~60_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \rtc1|wrap~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|minutes_l\(30));

-- Location: LCCOMB_X28_Y20_N30
\rtc1|Add3~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add3~62_combout\ = \rtc1|Add3~61\ $ (\rtc1|minutes_l\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \rtc1|minutes_l\(31),
	cin => \rtc1|Add3~61\,
	combout => \rtc1|Add3~62_combout\);

-- Location: LCFF_X28_Y20_N31
\rtc1|minutes_l[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add3~62_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \rtc1|wrap~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|minutes_l\(31));

-- Location: LCCOMB_X29_Y20_N24
\rtc1|Equal3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Equal3~0_combout\ = (!\rtc1|minutes_l\(28) & (!\rtc1|minutes_l\(30) & (!\rtc1|minutes_l\(31) & !\rtc1|minutes_l\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|minutes_l\(28),
	datab => \rtc1|minutes_l\(30),
	datac => \rtc1|minutes_l\(31),
	datad => \rtc1|minutes_l\(29),
	combout => \rtc1|Equal3~0_combout\);

-- Location: LCFF_X28_Y20_N11
\rtc1|minutes_l[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add3~42_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \rtc1|wrap~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|minutes_l\(21));

-- Location: LCCOMB_X29_Y20_N12
\rtc1|Equal3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Equal3~2_combout\ = (!\rtc1|minutes_l\(22) & (!\rtc1|minutes_l\(21) & (!\rtc1|minutes_l\(23) & !\rtc1|minutes_l\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|minutes_l\(22),
	datab => \rtc1|minutes_l\(21),
	datac => \rtc1|minutes_l\(23),
	datad => \rtc1|minutes_l\(20),
	combout => \rtc1|Equal3~2_combout\);

-- Location: LCCOMB_X29_Y20_N0
\rtc1|Equal3~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Equal3~4_combout\ = (\rtc1|Equal3~3_combout\ & (\rtc1|Equal3~1_combout\ & (\rtc1|Equal3~0_combout\ & \rtc1|Equal3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|Equal3~3_combout\,
	datab => \rtc1|Equal3~1_combout\,
	datac => \rtc1|Equal3~0_combout\,
	datad => \rtc1|Equal3~2_combout\,
	combout => \rtc1|Equal3~4_combout\);

-- Location: LCCOMB_X29_Y21_N24
\rtc1|Equal3~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Equal3~10_combout\ = (\rtc1|Equal3~5_combout\ & (\rtc1|Equal3~9_combout\ & (\rtc1|Equal3~6_combout\ & \rtc1|Equal3~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|Equal3~5_combout\,
	datab => \rtc1|Equal3~9_combout\,
	datac => \rtc1|Equal3~6_combout\,
	datad => \rtc1|Equal3~4_combout\,
	combout => \rtc1|Equal3~10_combout\);

-- Location: LCCOMB_X29_Y21_N4
\rtc1|cnt~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|cnt~14_combout\ = (\rtc1|Add3~2_combout\ & !\rtc1|Equal3~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|Add3~2_combout\,
	datac => \rtc1|Equal3~10_combout\,
	combout => \rtc1|cnt~14_combout\);

-- Location: LCFF_X29_Y21_N5
\rtc1|minutes_l[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|cnt~14_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \rtc1|wrap~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|minutes_l\(1));

-- Location: LCCOMB_X28_Y17_N0
\q0:2:seg7_6|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \q0:2:seg7_6|Mux6~0_combout\ = (\rtc1|minutes_l\(3) & (\rtc1|minutes_l\(0) & (\rtc1|minutes_l\(2) $ (\rtc1|minutes_l\(1))))) # (!\rtc1|minutes_l\(3) & (!\rtc1|minutes_l\(1) & (\rtc1|minutes_l\(0) $ (\rtc1|minutes_l\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|minutes_l\(0),
	datab => \rtc1|minutes_l\(3),
	datac => \rtc1|minutes_l\(2),
	datad => \rtc1|minutes_l\(1),
	combout => \q0:2:seg7_6|Mux6~0_combout\);

-- Location: LCCOMB_X28_Y17_N10
\q0:2:seg7_6|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \q0:2:seg7_6|Mux5~0_combout\ = (\rtc1|minutes_l\(3) & ((\rtc1|minutes_l\(0) & ((\rtc1|minutes_l\(1)))) # (!\rtc1|minutes_l\(0) & (\rtc1|minutes_l\(2))))) # (!\rtc1|minutes_l\(3) & (\rtc1|minutes_l\(2) & (\rtc1|minutes_l\(0) $ (\rtc1|minutes_l\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|minutes_l\(0),
	datab => \rtc1|minutes_l\(3),
	datac => \rtc1|minutes_l\(2),
	datad => \rtc1|minutes_l\(1),
	combout => \q0:2:seg7_6|Mux5~0_combout\);

-- Location: LCCOMB_X28_Y17_N12
\q0:2:seg7_6|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \q0:2:seg7_6|Mux4~0_combout\ = (\rtc1|minutes_l\(3) & (\rtc1|minutes_l\(2) & ((\rtc1|minutes_l\(1)) # (!\rtc1|minutes_l\(0))))) # (!\rtc1|minutes_l\(3) & (!\rtc1|minutes_l\(0) & (!\rtc1|minutes_l\(2) & \rtc1|minutes_l\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|minutes_l\(0),
	datab => \rtc1|minutes_l\(3),
	datac => \rtc1|minutes_l\(2),
	datad => \rtc1|minutes_l\(1),
	combout => \q0:2:seg7_6|Mux4~0_combout\);

-- Location: LCCOMB_X28_Y17_N6
\q0:2:seg7_6|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \q0:2:seg7_6|Mux3~0_combout\ = (\rtc1|minutes_l\(0) & ((\rtc1|minutes_l\(2) $ (!\rtc1|minutes_l\(1))))) # (!\rtc1|minutes_l\(0) & ((\rtc1|minutes_l\(3) & (!\rtc1|minutes_l\(2) & \rtc1|minutes_l\(1))) # (!\rtc1|minutes_l\(3) & (\rtc1|minutes_l\(2) & 
-- !\rtc1|minutes_l\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010000011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|minutes_l\(0),
	datab => \rtc1|minutes_l\(3),
	datac => \rtc1|minutes_l\(2),
	datad => \rtc1|minutes_l\(1),
	combout => \q0:2:seg7_6|Mux3~0_combout\);

-- Location: LCCOMB_X28_Y17_N8
\q0:2:seg7_6|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \q0:2:seg7_6|Mux2~0_combout\ = (\rtc1|minutes_l\(1) & (\rtc1|minutes_l\(0) & (!\rtc1|minutes_l\(3)))) # (!\rtc1|minutes_l\(1) & ((\rtc1|minutes_l\(2) & ((!\rtc1|minutes_l\(3)))) # (!\rtc1|minutes_l\(2) & (\rtc1|minutes_l\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|minutes_l\(0),
	datab => \rtc1|minutes_l\(3),
	datac => \rtc1|minutes_l\(2),
	datad => \rtc1|minutes_l\(1),
	combout => \q0:2:seg7_6|Mux2~0_combout\);

-- Location: LCCOMB_X28_Y17_N2
\q0:2:seg7_6|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \q0:2:seg7_6|Mux1~0_combout\ = (\rtc1|minutes_l\(0) & (\rtc1|minutes_l\(3) $ (((\rtc1|minutes_l\(1)) # (!\rtc1|minutes_l\(2)))))) # (!\rtc1|minutes_l\(0) & (!\rtc1|minutes_l\(3) & (!\rtc1|minutes_l\(2) & \rtc1|minutes_l\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|minutes_l\(0),
	datab => \rtc1|minutes_l\(3),
	datac => \rtc1|minutes_l\(2),
	datad => \rtc1|minutes_l\(1),
	combout => \q0:2:seg7_6|Mux1~0_combout\);

-- Location: LCCOMB_X28_Y17_N4
\q0:2:seg7_6|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \q0:2:seg7_6|Mux0~0_combout\ = (\rtc1|minutes_l\(0) & ((\rtc1|minutes_l\(3)) # (\rtc1|minutes_l\(2) $ (\rtc1|minutes_l\(1))))) # (!\rtc1|minutes_l\(0) & ((\rtc1|minutes_l\(1)) # (\rtc1|minutes_l\(3) $ (\rtc1|minutes_l\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|minutes_l\(0),
	datab => \rtc1|minutes_l\(3),
	datac => \rtc1|minutes_l\(2),
	datad => \rtc1|minutes_l\(1),
	combout => \q0:2:seg7_6|Mux0~0_combout\);

-- Location: LCCOMB_X20_Y23_N6
\rtc1|Add4~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add4~6_combout\ = (\rtc1|minutes_h\(3) & (!\rtc1|Add4~5\)) # (!\rtc1|minutes_h\(3) & ((\rtc1|Add4~5\) # (GND)))
-- \rtc1|Add4~7\ = CARRY((!\rtc1|Add4~5\) # (!\rtc1|minutes_h\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|minutes_h\(3),
	datad => VCC,
	cin => \rtc1|Add4~5\,
	combout => \rtc1|Add4~6_combout\,
	cout => \rtc1|Add4~7\);

-- Location: LCCOMB_X20_Y23_N8
\rtc1|Add4~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add4~8_combout\ = (\rtc1|minutes_h\(4) & (\rtc1|Add4~7\ $ (GND))) # (!\rtc1|minutes_h\(4) & (!\rtc1|Add4~7\ & VCC))
-- \rtc1|Add4~9\ = CARRY((\rtc1|minutes_h\(4) & !\rtc1|Add4~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rtc1|minutes_h\(4),
	datad => VCC,
	cin => \rtc1|Add4~7\,
	combout => \rtc1|Add4~8_combout\,
	cout => \rtc1|Add4~9\);

-- Location: LCCOMB_X29_Y21_N10
\rtc1|wrap~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|wrap~2_combout\ = (\rtc1|Equal2~10_combout\ & (\rtc1|Equal3~10_combout\ & \rtc1|wrap~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rtc1|Equal2~10_combout\,
	datac => \rtc1|Equal3~10_combout\,
	datad => \rtc1|wrap~0_combout\,
	combout => \rtc1|wrap~2_combout\);

-- Location: LCFF_X20_Y23_N9
\rtc1|minutes_h[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add4~8_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \rtc1|wrap~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|minutes_h\(4));

-- Location: LCCOMB_X20_Y23_N10
\rtc1|Add4~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add4~10_combout\ = (\rtc1|minutes_h\(5) & (!\rtc1|Add4~9\)) # (!\rtc1|minutes_h\(5) & ((\rtc1|Add4~9\) # (GND)))
-- \rtc1|Add4~11\ = CARRY((!\rtc1|Add4~9\) # (!\rtc1|minutes_h\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|minutes_h\(5),
	datad => VCC,
	cin => \rtc1|Add4~9\,
	combout => \rtc1|Add4~10_combout\,
	cout => \rtc1|Add4~11\);

-- Location: LCCOMB_X20_Y23_N14
\rtc1|Add4~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add4~14_combout\ = (\rtc1|minutes_h\(7) & (!\rtc1|Add4~13\)) # (!\rtc1|minutes_h\(7) & ((\rtc1|Add4~13\) # (GND)))
-- \rtc1|Add4~15\ = CARRY((!\rtc1|Add4~13\) # (!\rtc1|minutes_h\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rtc1|minutes_h\(7),
	datad => VCC,
	cin => \rtc1|Add4~13\,
	combout => \rtc1|Add4~14_combout\,
	cout => \rtc1|Add4~15\);

-- Location: LCFF_X20_Y23_N15
\rtc1|minutes_h[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add4~14_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \rtc1|wrap~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|minutes_h\(7));

-- Location: LCCOMB_X20_Y23_N18
\rtc1|Add4~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add4~18_combout\ = (\rtc1|minutes_h\(9) & (!\rtc1|Add4~17\)) # (!\rtc1|minutes_h\(9) & ((\rtc1|Add4~17\) # (GND)))
-- \rtc1|Add4~19\ = CARRY((!\rtc1|Add4~17\) # (!\rtc1|minutes_h\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rtc1|minutes_h\(9),
	datad => VCC,
	cin => \rtc1|Add4~17\,
	combout => \rtc1|Add4~18_combout\,
	cout => \rtc1|Add4~19\);

-- Location: LCFF_X20_Y23_N19
\rtc1|minutes_h[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add4~18_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \rtc1|wrap~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|minutes_h\(9));

-- Location: LCCOMB_X20_Y23_N22
\rtc1|Add4~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add4~22_combout\ = (\rtc1|minutes_h\(11) & (!\rtc1|Add4~21\)) # (!\rtc1|minutes_h\(11) & ((\rtc1|Add4~21\) # (GND)))
-- \rtc1|Add4~23\ = CARRY((!\rtc1|Add4~21\) # (!\rtc1|minutes_h\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rtc1|minutes_h\(11),
	datad => VCC,
	cin => \rtc1|Add4~21\,
	combout => \rtc1|Add4~22_combout\,
	cout => \rtc1|Add4~23\);

-- Location: LCFF_X20_Y23_N23
\rtc1|minutes_h[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add4~22_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \rtc1|wrap~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|minutes_h\(11));

-- Location: LCCOMB_X20_Y23_N26
\rtc1|Add4~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add4~26_combout\ = (\rtc1|minutes_h\(13) & (!\rtc1|Add4~25\)) # (!\rtc1|minutes_h\(13) & ((\rtc1|Add4~25\) # (GND)))
-- \rtc1|Add4~27\ = CARRY((!\rtc1|Add4~25\) # (!\rtc1|minutes_h\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rtc1|minutes_h\(13),
	datad => VCC,
	cin => \rtc1|Add4~25\,
	combout => \rtc1|Add4~26_combout\,
	cout => \rtc1|Add4~27\);

-- Location: LCFF_X20_Y23_N27
\rtc1|minutes_h[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add4~26_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \rtc1|wrap~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|minutes_h\(13));

-- Location: LCCOMB_X20_Y23_N28
\rtc1|Add4~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add4~28_combout\ = (\rtc1|minutes_h\(14) & (\rtc1|Add4~27\ $ (GND))) # (!\rtc1|minutes_h\(14) & (!\rtc1|Add4~27\ & VCC))
-- \rtc1|Add4~29\ = CARRY((\rtc1|minutes_h\(14) & !\rtc1|Add4~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rtc1|minutes_h\(14),
	datad => VCC,
	cin => \rtc1|Add4~27\,
	combout => \rtc1|Add4~28_combout\,
	cout => \rtc1|Add4~29\);

-- Location: LCFF_X20_Y23_N29
\rtc1|minutes_h[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add4~28_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \rtc1|wrap~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|minutes_h\(14));

-- Location: LCCOMB_X20_Y23_N30
\rtc1|Add4~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add4~30_combout\ = (\rtc1|minutes_h\(15) & (!\rtc1|Add4~29\)) # (!\rtc1|minutes_h\(15) & ((\rtc1|Add4~29\) # (GND)))
-- \rtc1|Add4~31\ = CARRY((!\rtc1|Add4~29\) # (!\rtc1|minutes_h\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rtc1|minutes_h\(15),
	datad => VCC,
	cin => \rtc1|Add4~29\,
	combout => \rtc1|Add4~30_combout\,
	cout => \rtc1|Add4~31\);

-- Location: LCFF_X20_Y23_N31
\rtc1|minutes_h[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add4~30_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \rtc1|wrap~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|minutes_h\(15));

-- Location: LCCOMB_X20_Y22_N0
\rtc1|Add4~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add4~32_combout\ = (\rtc1|minutes_h\(16) & (\rtc1|Add4~31\ $ (GND))) # (!\rtc1|minutes_h\(16) & (!\rtc1|Add4~31\ & VCC))
-- \rtc1|Add4~33\ = CARRY((\rtc1|minutes_h\(16) & !\rtc1|Add4~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rtc1|minutes_h\(16),
	datad => VCC,
	cin => \rtc1|Add4~31\,
	combout => \rtc1|Add4~32_combout\,
	cout => \rtc1|Add4~33\);

-- Location: LCFF_X20_Y22_N1
\rtc1|minutes_h[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add4~32_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \rtc1|wrap~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|minutes_h\(16));

-- Location: LCCOMB_X20_Y22_N2
\rtc1|Add4~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add4~34_combout\ = (\rtc1|minutes_h\(17) & (!\rtc1|Add4~33\)) # (!\rtc1|minutes_h\(17) & ((\rtc1|Add4~33\) # (GND)))
-- \rtc1|Add4~35\ = CARRY((!\rtc1|Add4~33\) # (!\rtc1|minutes_h\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rtc1|minutes_h\(17),
	datad => VCC,
	cin => \rtc1|Add4~33\,
	combout => \rtc1|Add4~34_combout\,
	cout => \rtc1|Add4~35\);

-- Location: LCFF_X20_Y22_N3
\rtc1|minutes_h[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add4~34_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \rtc1|wrap~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|minutes_h\(17));

-- Location: LCCOMB_X20_Y22_N4
\rtc1|Add4~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add4~36_combout\ = (\rtc1|minutes_h\(18) & (\rtc1|Add4~35\ $ (GND))) # (!\rtc1|minutes_h\(18) & (!\rtc1|Add4~35\ & VCC))
-- \rtc1|Add4~37\ = CARRY((\rtc1|minutes_h\(18) & !\rtc1|Add4~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rtc1|minutes_h\(18),
	datad => VCC,
	cin => \rtc1|Add4~35\,
	combout => \rtc1|Add4~36_combout\,
	cout => \rtc1|Add4~37\);

-- Location: LCFF_X20_Y22_N5
\rtc1|minutes_h[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add4~36_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \rtc1|wrap~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|minutes_h\(18));

-- Location: LCCOMB_X20_Y22_N6
\rtc1|Add4~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add4~38_combout\ = (\rtc1|minutes_h\(19) & (!\rtc1|Add4~37\)) # (!\rtc1|minutes_h\(19) & ((\rtc1|Add4~37\) # (GND)))
-- \rtc1|Add4~39\ = CARRY((!\rtc1|Add4~37\) # (!\rtc1|minutes_h\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|minutes_h\(19),
	datad => VCC,
	cin => \rtc1|Add4~37\,
	combout => \rtc1|Add4~38_combout\,
	cout => \rtc1|Add4~39\);

-- Location: LCCOMB_X20_Y22_N8
\rtc1|Add4~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add4~40_combout\ = (\rtc1|minutes_h\(20) & (\rtc1|Add4~39\ $ (GND))) # (!\rtc1|minutes_h\(20) & (!\rtc1|Add4~39\ & VCC))
-- \rtc1|Add4~41\ = CARRY((\rtc1|minutes_h\(20) & !\rtc1|Add4~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rtc1|minutes_h\(20),
	datad => VCC,
	cin => \rtc1|Add4~39\,
	combout => \rtc1|Add4~40_combout\,
	cout => \rtc1|Add4~41\);

-- Location: LCFF_X20_Y22_N9
\rtc1|minutes_h[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add4~40_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \rtc1|wrap~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|minutes_h\(20));

-- Location: LCCOMB_X20_Y22_N14
\rtc1|Add4~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add4~46_combout\ = (\rtc1|minutes_h\(23) & (!\rtc1|Add4~45\)) # (!\rtc1|minutes_h\(23) & ((\rtc1|Add4~45\) # (GND)))
-- \rtc1|Add4~47\ = CARRY((!\rtc1|Add4~45\) # (!\rtc1|minutes_h\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rtc1|minutes_h\(23),
	datad => VCC,
	cin => \rtc1|Add4~45\,
	combout => \rtc1|Add4~46_combout\,
	cout => \rtc1|Add4~47\);

-- Location: LCFF_X20_Y22_N15
\rtc1|minutes_h[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add4~46_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \rtc1|wrap~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|minutes_h\(23));

-- Location: LCCOMB_X20_Y22_N16
\rtc1|Add4~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add4~48_combout\ = (\rtc1|minutes_h\(24) & (\rtc1|Add4~47\ $ (GND))) # (!\rtc1|minutes_h\(24) & (!\rtc1|Add4~47\ & VCC))
-- \rtc1|Add4~49\ = CARRY((\rtc1|minutes_h\(24) & !\rtc1|Add4~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|minutes_h\(24),
	datad => VCC,
	cin => \rtc1|Add4~47\,
	combout => \rtc1|Add4~48_combout\,
	cout => \rtc1|Add4~49\);

-- Location: LCCOMB_X20_Y22_N18
\rtc1|Add4~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add4~50_combout\ = (\rtc1|minutes_h\(25) & (!\rtc1|Add4~49\)) # (!\rtc1|minutes_h\(25) & ((\rtc1|Add4~49\) # (GND)))
-- \rtc1|Add4~51\ = CARRY((!\rtc1|Add4~49\) # (!\rtc1|minutes_h\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rtc1|minutes_h\(25),
	datad => VCC,
	cin => \rtc1|Add4~49\,
	combout => \rtc1|Add4~50_combout\,
	cout => \rtc1|Add4~51\);

-- Location: LCFF_X20_Y22_N19
\rtc1|minutes_h[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add4~50_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \rtc1|wrap~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|minutes_h\(25));

-- Location: LCCOMB_X20_Y22_N20
\rtc1|Add4~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add4~52_combout\ = (\rtc1|minutes_h\(26) & (\rtc1|Add4~51\ $ (GND))) # (!\rtc1|minutes_h\(26) & (!\rtc1|Add4~51\ & VCC))
-- \rtc1|Add4~53\ = CARRY((\rtc1|minutes_h\(26) & !\rtc1|Add4~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|minutes_h\(26),
	datad => VCC,
	cin => \rtc1|Add4~51\,
	combout => \rtc1|Add4~52_combout\,
	cout => \rtc1|Add4~53\);

-- Location: LCFF_X20_Y22_N21
\rtc1|minutes_h[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add4~52_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \rtc1|wrap~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|minutes_h\(26));

-- Location: LCFF_X20_Y22_N17
\rtc1|minutes_h[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add4~48_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \rtc1|wrap~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|minutes_h\(24));

-- Location: LCCOMB_X19_Y22_N2
\rtc1|Equal4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Equal4~1_combout\ = (!\rtc1|minutes_h\(27) & (!\rtc1|minutes_h\(26) & (!\rtc1|minutes_h\(24) & !\rtc1|minutes_h\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|minutes_h\(27),
	datab => \rtc1|minutes_h\(26),
	datac => \rtc1|minutes_h\(24),
	datad => \rtc1|minutes_h\(25),
	combout => \rtc1|Equal4~1_combout\);

-- Location: LCCOMB_X20_Y22_N22
\rtc1|Add4~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add4~54_combout\ = (\rtc1|minutes_h\(27) & (!\rtc1|Add4~53\)) # (!\rtc1|minutes_h\(27) & ((\rtc1|Add4~53\) # (GND)))
-- \rtc1|Add4~55\ = CARRY((!\rtc1|Add4~53\) # (!\rtc1|minutes_h\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rtc1|minutes_h\(27),
	datad => VCC,
	cin => \rtc1|Add4~53\,
	combout => \rtc1|Add4~54_combout\,
	cout => \rtc1|Add4~55\);

-- Location: LCFF_X20_Y22_N23
\rtc1|minutes_h[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add4~54_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \rtc1|wrap~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|minutes_h\(27));

-- Location: LCCOMB_X20_Y22_N26
\rtc1|Add4~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add4~58_combout\ = (\rtc1|minutes_h\(29) & (!\rtc1|Add4~57\)) # (!\rtc1|minutes_h\(29) & ((\rtc1|Add4~57\) # (GND)))
-- \rtc1|Add4~59\ = CARRY((!\rtc1|Add4~57\) # (!\rtc1|minutes_h\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rtc1|minutes_h\(29),
	datad => VCC,
	cin => \rtc1|Add4~57\,
	combout => \rtc1|Add4~58_combout\,
	cout => \rtc1|Add4~59\);

-- Location: LCFF_X20_Y22_N27
\rtc1|minutes_h[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add4~58_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \rtc1|wrap~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|minutes_h\(29));

-- Location: LCCOMB_X20_Y22_N28
\rtc1|Add4~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add4~60_combout\ = (\rtc1|minutes_h\(30) & (\rtc1|Add4~59\ $ (GND))) # (!\rtc1|minutes_h\(30) & (!\rtc1|Add4~59\ & VCC))
-- \rtc1|Add4~61\ = CARRY((\rtc1|minutes_h\(30) & !\rtc1|Add4~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rtc1|minutes_h\(30),
	datad => VCC,
	cin => \rtc1|Add4~59\,
	combout => \rtc1|Add4~60_combout\,
	cout => \rtc1|Add4~61\);

-- Location: LCFF_X20_Y22_N29
\rtc1|minutes_h[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add4~60_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \rtc1|wrap~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|minutes_h\(30));

-- Location: LCCOMB_X20_Y22_N30
\rtc1|Add4~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add4~62_combout\ = \rtc1|Add4~61\ $ (\rtc1|minutes_h\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \rtc1|minutes_h\(31),
	cin => \rtc1|Add4~61\,
	combout => \rtc1|Add4~62_combout\);

-- Location: LCFF_X20_Y22_N31
\rtc1|minutes_h[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add4~62_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \rtc1|wrap~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|minutes_h\(31));

-- Location: LCCOMB_X19_Y22_N24
\rtc1|Equal4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Equal4~0_combout\ = (!\rtc1|minutes_h\(28) & (!\rtc1|minutes_h\(30) & (!\rtc1|minutes_h\(29) & !\rtc1|minutes_h\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|minutes_h\(28),
	datab => \rtc1|minutes_h\(30),
	datac => \rtc1|minutes_h\(29),
	datad => \rtc1|minutes_h\(31),
	combout => \rtc1|Equal4~0_combout\);

-- Location: LCFF_X20_Y22_N7
\rtc1|minutes_h[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add4~38_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \rtc1|wrap~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|minutes_h\(19));

-- Location: LCCOMB_X19_Y22_N6
\rtc1|Equal4~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Equal4~3_combout\ = (!\rtc1|minutes_h\(17) & (!\rtc1|minutes_h\(19) & (!\rtc1|minutes_h\(16) & !\rtc1|minutes_h\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|minutes_h\(17),
	datab => \rtc1|minutes_h\(19),
	datac => \rtc1|minutes_h\(16),
	datad => \rtc1|minutes_h\(18),
	combout => \rtc1|Equal4~3_combout\);

-- Location: LCCOMB_X19_Y22_N0
\rtc1|Equal4~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Equal4~4_combout\ = (\rtc1|Equal4~2_combout\ & (\rtc1|Equal4~1_combout\ & (\rtc1|Equal4~0_combout\ & \rtc1|Equal4~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|Equal4~2_combout\,
	datab => \rtc1|Equal4~1_combout\,
	datac => \rtc1|Equal4~0_combout\,
	datad => \rtc1|Equal4~3_combout\,
	combout => \rtc1|Equal4~4_combout\);

-- Location: LCCOMB_X20_Y23_N0
\rtc1|Add4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add4~0_combout\ = \rtc1|minutes_h\(0) $ (VCC)
-- \rtc1|Add4~1\ = CARRY(\rtc1|minutes_h\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rtc1|minutes_h\(0),
	datad => VCC,
	combout => \rtc1|Add4~0_combout\,
	cout => \rtc1|Add4~1\);

-- Location: LCFF_X20_Y23_N1
\rtc1|minutes_h[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add4~0_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \rtc1|wrap~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|minutes_h\(0));

-- Location: LCCOMB_X20_Y23_N2
\rtc1|Add4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add4~2_combout\ = (\rtc1|minutes_h\(1) & (!\rtc1|Add4~1\)) # (!\rtc1|minutes_h\(1) & ((\rtc1|Add4~1\) # (GND)))
-- \rtc1|Add4~3\ = CARRY((!\rtc1|Add4~1\) # (!\rtc1|minutes_h\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|minutes_h\(1),
	datad => VCC,
	cin => \rtc1|Add4~1\,
	combout => \rtc1|Add4~2_combout\,
	cout => \rtc1|Add4~3\);

-- Location: LCCOMB_X19_Y23_N0
\rtc1|cnt~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|cnt~16_combout\ = (!\rtc1|Equal4~10_combout\ & \rtc1|Add4~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rtc1|Equal4~10_combout\,
	datad => \rtc1|Add4~2_combout\,
	combout => \rtc1|cnt~16_combout\);

-- Location: LCFF_X19_Y23_N1
\rtc1|minutes_h[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|cnt~16_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \rtc1|wrap~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|minutes_h\(1));

-- Location: LCCOMB_X19_Y23_N20
\rtc1|Equal4~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Equal4~9_combout\ = (!\rtc1|minutes_h\(3) & (!\rtc1|minutes_h\(1) & (\rtc1|minutes_h\(0) & \rtc1|minutes_h\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|minutes_h\(3),
	datab => \rtc1|minutes_h\(1),
	datac => \rtc1|minutes_h\(0),
	datad => \rtc1|minutes_h\(2),
	combout => \rtc1|Equal4~9_combout\);

-- Location: LCFF_X20_Y23_N11
\rtc1|minutes_h[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add4~10_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \rtc1|wrap~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|minutes_h\(5));

-- Location: LCCOMB_X21_Y23_N16
\rtc1|Equal4~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Equal4~8_combout\ = (!\rtc1|minutes_h\(6) & (!\rtc1|minutes_h\(5) & (!\rtc1|minutes_h\(7) & !\rtc1|minutes_h\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|minutes_h\(6),
	datab => \rtc1|minutes_h\(5),
	datac => \rtc1|minutes_h\(7),
	datad => \rtc1|minutes_h\(4),
	combout => \rtc1|Equal4~8_combout\);

-- Location: LCCOMB_X19_Y23_N22
\rtc1|Equal4~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Equal4~10_combout\ = (\rtc1|Equal4~7_combout\ & (\rtc1|Equal4~4_combout\ & (\rtc1|Equal4~9_combout\ & \rtc1|Equal4~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|Equal4~7_combout\,
	datab => \rtc1|Equal4~4_combout\,
	datac => \rtc1|Equal4~9_combout\,
	datad => \rtc1|Equal4~8_combout\,
	combout => \rtc1|Equal4~10_combout\);

-- Location: LCCOMB_X20_Y23_N4
\rtc1|Add4~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add4~4_combout\ = (\rtc1|minutes_h\(2) & (\rtc1|Add4~3\ $ (GND))) # (!\rtc1|minutes_h\(2) & (!\rtc1|Add4~3\ & VCC))
-- \rtc1|Add4~5\ = CARRY((\rtc1|minutes_h\(2) & !\rtc1|Add4~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rtc1|minutes_h\(2),
	datad => VCC,
	cin => \rtc1|Add4~3\,
	combout => \rtc1|Add4~4_combout\,
	cout => \rtc1|Add4~5\);

-- Location: LCCOMB_X19_Y23_N18
\rtc1|cnt~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|cnt~17_combout\ = (!\rtc1|Equal4~10_combout\ & \rtc1|Add4~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rtc1|Equal4~10_combout\,
	datad => \rtc1|Add4~4_combout\,
	combout => \rtc1|cnt~17_combout\);

-- Location: LCFF_X19_Y23_N19
\rtc1|minutes_h[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|cnt~17_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \rtc1|wrap~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|minutes_h\(2));

-- Location: LCFF_X20_Y23_N7
\rtc1|minutes_h[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add4~6_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \rtc1|wrap~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|minutes_h\(3));

-- Location: LCCOMB_X19_Y23_N28
\q0:3:seg7_6|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \q0:3:seg7_6|Mux6~0_combout\ = (\rtc1|minutes_h\(3) & (\rtc1|minutes_h\(0) & (\rtc1|minutes_h\(1) $ (\rtc1|minutes_h\(2))))) # (!\rtc1|minutes_h\(3) & (!\rtc1|minutes_h\(1) & (\rtc1|minutes_h\(0) $ (\rtc1|minutes_h\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|minutes_h\(3),
	datab => \rtc1|minutes_h\(1),
	datac => \rtc1|minutes_h\(0),
	datad => \rtc1|minutes_h\(2),
	combout => \q0:3:seg7_6|Mux6~0_combout\);

-- Location: LCCOMB_X19_Y23_N6
\q0:3:seg7_6|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \q0:3:seg7_6|Mux5~0_combout\ = (\rtc1|minutes_h\(3) & ((\rtc1|minutes_h\(0) & (\rtc1|minutes_h\(1))) # (!\rtc1|minutes_h\(0) & ((\rtc1|minutes_h\(2)))))) # (!\rtc1|minutes_h\(3) & (\rtc1|minutes_h\(2) & (\rtc1|minutes_h\(1) $ (\rtc1|minutes_h\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|minutes_h\(3),
	datab => \rtc1|minutes_h\(1),
	datac => \rtc1|minutes_h\(0),
	datad => \rtc1|minutes_h\(2),
	combout => \q0:3:seg7_6|Mux5~0_combout\);

-- Location: LCCOMB_X19_Y23_N16
\q0:3:seg7_6|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \q0:3:seg7_6|Mux4~0_combout\ = (\rtc1|minutes_h\(3) & (\rtc1|minutes_h\(2) & ((\rtc1|minutes_h\(1)) # (!\rtc1|minutes_h\(0))))) # (!\rtc1|minutes_h\(3) & (\rtc1|minutes_h\(1) & (!\rtc1|minutes_h\(0) & !\rtc1|minutes_h\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|minutes_h\(3),
	datab => \rtc1|minutes_h\(1),
	datac => \rtc1|minutes_h\(0),
	datad => \rtc1|minutes_h\(2),
	combout => \q0:3:seg7_6|Mux4~0_combout\);

-- Location: LCCOMB_X19_Y23_N2
\q0:3:seg7_6|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \q0:3:seg7_6|Mux3~0_combout\ = (\rtc1|minutes_h\(0) & ((\rtc1|minutes_h\(1) $ (!\rtc1|minutes_h\(2))))) # (!\rtc1|minutes_h\(0) & ((\rtc1|minutes_h\(3) & (\rtc1|minutes_h\(1) & !\rtc1|minutes_h\(2))) # (!\rtc1|minutes_h\(3) & (!\rtc1|minutes_h\(1) & 
-- \rtc1|minutes_h\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|minutes_h\(3),
	datab => \rtc1|minutes_h\(1),
	datac => \rtc1|minutes_h\(0),
	datad => \rtc1|minutes_h\(2),
	combout => \q0:3:seg7_6|Mux3~0_combout\);

-- Location: LCCOMB_X19_Y23_N12
\q0:3:seg7_6|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \q0:3:seg7_6|Mux2~0_combout\ = (\rtc1|minutes_h\(1) & (!\rtc1|minutes_h\(3) & (\rtc1|minutes_h\(0)))) # (!\rtc1|minutes_h\(1) & ((\rtc1|minutes_h\(2) & (!\rtc1|minutes_h\(3))) # (!\rtc1|minutes_h\(2) & ((\rtc1|minutes_h\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|minutes_h\(3),
	datab => \rtc1|minutes_h\(1),
	datac => \rtc1|minutes_h\(0),
	datad => \rtc1|minutes_h\(2),
	combout => \q0:3:seg7_6|Mux2~0_combout\);

-- Location: LCCOMB_X19_Y23_N14
\q0:3:seg7_6|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \q0:3:seg7_6|Mux1~0_combout\ = (\rtc1|minutes_h\(1) & (!\rtc1|minutes_h\(3) & ((\rtc1|minutes_h\(0)) # (!\rtc1|minutes_h\(2))))) # (!\rtc1|minutes_h\(1) & (\rtc1|minutes_h\(0) & (\rtc1|minutes_h\(3) $ (!\rtc1|minutes_h\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|minutes_h\(3),
	datab => \rtc1|minutes_h\(1),
	datac => \rtc1|minutes_h\(0),
	datad => \rtc1|minutes_h\(2),
	combout => \q0:3:seg7_6|Mux1~0_combout\);

-- Location: LCCOMB_X19_Y23_N24
\q0:3:seg7_6|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \q0:3:seg7_6|Mux0~0_combout\ = (\rtc1|minutes_h\(0) & ((\rtc1|minutes_h\(3)) # (\rtc1|minutes_h\(1) $ (\rtc1|minutes_h\(2))))) # (!\rtc1|minutes_h\(0) & ((\rtc1|minutes_h\(1)) # (\rtc1|minutes_h\(3) $ (\rtc1|minutes_h\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|minutes_h\(3),
	datab => \rtc1|minutes_h\(1),
	datac => \rtc1|minutes_h\(0),
	datad => \rtc1|minutes_h\(2),
	combout => \q0:3:seg7_6|Mux0~0_combout\);

-- Location: LCCOMB_X21_Y21_N0
\rtc1|Add5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add5~0_combout\ = \rtc1|hours_l\(0) $ (VCC)
-- \rtc1|Add5~1\ = CARRY(\rtc1|hours_l\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rtc1|hours_l\(0),
	datad => VCC,
	combout => \rtc1|Add5~0_combout\,
	cout => \rtc1|Add5~1\);

-- Location: LCCOMB_X29_Y21_N20
\rtc1|wrap~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|wrap~3_combout\ = (\rtc1|Equal3~10_combout\ & (\rtc1|Equal2~10_combout\ & (\rtc1|Equal4~10_combout\ & \rtc1|wrap~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|Equal3~10_combout\,
	datab => \rtc1|Equal2~10_combout\,
	datac => \rtc1|Equal4~10_combout\,
	datad => \rtc1|wrap~0_combout\,
	combout => \rtc1|wrap~3_combout\);

-- Location: LCFF_X21_Y21_N1
\rtc1|hours_l[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add5~0_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \rtc1|wrap~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|hours_l\(0));

-- Location: LCCOMB_X21_Y21_N2
\rtc1|Add5~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add5~2_combout\ = (\rtc1|hours_l\(1) & (!\rtc1|Add5~1\)) # (!\rtc1|hours_l\(1) & ((\rtc1|Add5~1\) # (GND)))
-- \rtc1|Add5~3\ = CARRY((!\rtc1|Add5~1\) # (!\rtc1|hours_l\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|hours_l\(1),
	datad => VCC,
	cin => \rtc1|Add5~1\,
	combout => \rtc1|Add5~2_combout\,
	cout => \rtc1|Add5~3\);

-- Location: LCCOMB_X21_Y21_N4
\rtc1|Add5~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add5~4_combout\ = (\rtc1|hours_l\(2) & (\rtc1|Add5~3\ $ (GND))) # (!\rtc1|hours_l\(2) & (!\rtc1|Add5~3\ & VCC))
-- \rtc1|Add5~5\ = CARRY((\rtc1|hours_l\(2) & !\rtc1|Add5~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rtc1|hours_l\(2),
	datad => VCC,
	cin => \rtc1|Add5~3\,
	combout => \rtc1|Add5~4_combout\,
	cout => \rtc1|Add5~5\);

-- Location: LCFF_X21_Y21_N5
\rtc1|hours_l[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add5~4_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \rtc1|wrap~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|hours_l\(2));

-- Location: LCCOMB_X21_Y21_N6
\rtc1|Add5~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add5~6_combout\ = (\rtc1|hours_l\(3) & (!\rtc1|Add5~5\)) # (!\rtc1|hours_l\(3) & ((\rtc1|Add5~5\) # (GND)))
-- \rtc1|Add5~7\ = CARRY((!\rtc1|Add5~5\) # (!\rtc1|hours_l\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rtc1|hours_l\(3),
	datad => VCC,
	cin => \rtc1|Add5~5\,
	combout => \rtc1|Add5~6_combout\,
	cout => \rtc1|Add5~7\);

-- Location: LCCOMB_X20_Y21_N18
\rtc1|cnt~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|cnt~19_combout\ = (!\rtc1|Equal5~10_combout\ & \rtc1|Add5~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rtc1|Equal5~10_combout\,
	datad => \rtc1|Add5~6_combout\,
	combout => \rtc1|cnt~19_combout\);

-- Location: LCFF_X20_Y21_N19
\rtc1|hours_l[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|cnt~19_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \rtc1|wrap~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|hours_l\(3));

-- Location: LCCOMB_X21_Y21_N8
\rtc1|Add5~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add5~8_combout\ = (\rtc1|hours_l\(4) & (\rtc1|Add5~7\ $ (GND))) # (!\rtc1|hours_l\(4) & (!\rtc1|Add5~7\ & VCC))
-- \rtc1|Add5~9\ = CARRY((\rtc1|hours_l\(4) & !\rtc1|Add5~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rtc1|hours_l\(4),
	datad => VCC,
	cin => \rtc1|Add5~7\,
	combout => \rtc1|Add5~8_combout\,
	cout => \rtc1|Add5~9\);

-- Location: LCFF_X21_Y21_N9
\rtc1|hours_l[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add5~8_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \rtc1|wrap~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|hours_l\(4));

-- Location: LCCOMB_X21_Y21_N12
\rtc1|Add5~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add5~12_combout\ = (\rtc1|hours_l\(6) & (\rtc1|Add5~11\ $ (GND))) # (!\rtc1|hours_l\(6) & (!\rtc1|Add5~11\ & VCC))
-- \rtc1|Add5~13\ = CARRY((\rtc1|hours_l\(6) & !\rtc1|Add5~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|hours_l\(6),
	datad => VCC,
	cin => \rtc1|Add5~11\,
	combout => \rtc1|Add5~12_combout\,
	cout => \rtc1|Add5~13\);

-- Location: LCCOMB_X21_Y21_N14
\rtc1|Add5~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add5~14_combout\ = (\rtc1|hours_l\(7) & (!\rtc1|Add5~13\)) # (!\rtc1|hours_l\(7) & ((\rtc1|Add5~13\) # (GND)))
-- \rtc1|Add5~15\ = CARRY((!\rtc1|Add5~13\) # (!\rtc1|hours_l\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rtc1|hours_l\(7),
	datad => VCC,
	cin => \rtc1|Add5~13\,
	combout => \rtc1|Add5~14_combout\,
	cout => \rtc1|Add5~15\);

-- Location: LCFF_X21_Y21_N15
\rtc1|hours_l[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add5~14_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \rtc1|wrap~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|hours_l\(7));

-- Location: LCCOMB_X21_Y21_N16
\rtc1|Add5~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add5~16_combout\ = (\rtc1|hours_l\(8) & (\rtc1|Add5~15\ $ (GND))) # (!\rtc1|hours_l\(8) & (!\rtc1|Add5~15\ & VCC))
-- \rtc1|Add5~17\ = CARRY((\rtc1|hours_l\(8) & !\rtc1|Add5~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|hours_l\(8),
	datad => VCC,
	cin => \rtc1|Add5~15\,
	combout => \rtc1|Add5~16_combout\,
	cout => \rtc1|Add5~17\);

-- Location: LCCOMB_X21_Y21_N18
\rtc1|Add5~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add5~18_combout\ = (\rtc1|hours_l\(9) & (!\rtc1|Add5~17\)) # (!\rtc1|hours_l\(9) & ((\rtc1|Add5~17\) # (GND)))
-- \rtc1|Add5~19\ = CARRY((!\rtc1|Add5~17\) # (!\rtc1|hours_l\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rtc1|hours_l\(9),
	datad => VCC,
	cin => \rtc1|Add5~17\,
	combout => \rtc1|Add5~18_combout\,
	cout => \rtc1|Add5~19\);

-- Location: LCFF_X21_Y21_N19
\rtc1|hours_l[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add5~18_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \rtc1|wrap~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|hours_l\(9));

-- Location: LCCOMB_X21_Y21_N20
\rtc1|Add5~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add5~20_combout\ = (\rtc1|hours_l\(10) & (\rtc1|Add5~19\ $ (GND))) # (!\rtc1|hours_l\(10) & (!\rtc1|Add5~19\ & VCC))
-- \rtc1|Add5~21\ = CARRY((\rtc1|hours_l\(10) & !\rtc1|Add5~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|hours_l\(10),
	datad => VCC,
	cin => \rtc1|Add5~19\,
	combout => \rtc1|Add5~20_combout\,
	cout => \rtc1|Add5~21\);

-- Location: LCFF_X21_Y21_N21
\rtc1|hours_l[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add5~20_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \rtc1|wrap~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|hours_l\(10));

-- Location: LCFF_X21_Y21_N17
\rtc1|hours_l[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add5~16_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \rtc1|wrap~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|hours_l\(8));

-- Location: LCCOMB_X22_Y21_N8
\rtc1|Equal5~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Equal5~6_combout\ = (!\rtc1|hours_l\(11) & (!\rtc1|hours_l\(9) & (!\rtc1|hours_l\(10) & !\rtc1|hours_l\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|hours_l\(11),
	datab => \rtc1|hours_l\(9),
	datac => \rtc1|hours_l\(10),
	datad => \rtc1|hours_l\(8),
	combout => \rtc1|Equal5~6_combout\);

-- Location: LCFF_X21_Y21_N13
\rtc1|hours_l[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add5~12_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \rtc1|wrap~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|hours_l\(6));

-- Location: LCCOMB_X19_Y21_N0
\rtc1|Equal5~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Equal5~7_combout\ = (!\rtc1|hours_l\(5) & (!\rtc1|hours_l\(6) & (!\rtc1|hours_l\(7) & !\rtc1|hours_l\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|hours_l\(5),
	datab => \rtc1|hours_l\(6),
	datac => \rtc1|hours_l\(7),
	datad => \rtc1|hours_l\(4),
	combout => \rtc1|Equal5~7_combout\);

-- Location: LCCOMB_X20_Y21_N26
\rtc1|Equal5~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Equal5~8_combout\ = (!\rtc1|hours_l\(2) & (!\rtc1|hours_l\(1) & (\rtc1|hours_l\(0) & \rtc1|hours_l\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|hours_l\(2),
	datab => \rtc1|hours_l\(1),
	datac => \rtc1|hours_l\(0),
	datad => \rtc1|hours_l\(3),
	combout => \rtc1|Equal5~8_combout\);

-- Location: LCCOMB_X20_Y21_N20
\rtc1|Equal5~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Equal5~9_combout\ = (\rtc1|Equal5~7_combout\ & \rtc1|Equal5~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rtc1|Equal5~7_combout\,
	datad => \rtc1|Equal5~8_combout\,
	combout => \rtc1|Equal5~9_combout\);

-- Location: LCCOMB_X21_Y21_N22
\rtc1|Add5~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add5~22_combout\ = (\rtc1|hours_l\(11) & (!\rtc1|Add5~21\)) # (!\rtc1|hours_l\(11) & ((\rtc1|Add5~21\) # (GND)))
-- \rtc1|Add5~23\ = CARRY((!\rtc1|Add5~21\) # (!\rtc1|hours_l\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rtc1|hours_l\(11),
	datad => VCC,
	cin => \rtc1|Add5~21\,
	combout => \rtc1|Add5~22_combout\,
	cout => \rtc1|Add5~23\);

-- Location: LCFF_X21_Y21_N23
\rtc1|hours_l[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add5~22_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \rtc1|wrap~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|hours_l\(11));

-- Location: LCCOMB_X21_Y21_N26
\rtc1|Add5~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add5~26_combout\ = (\rtc1|hours_l\(13) & (!\rtc1|Add5~25\)) # (!\rtc1|hours_l\(13) & ((\rtc1|Add5~25\) # (GND)))
-- \rtc1|Add5~27\ = CARRY((!\rtc1|Add5~25\) # (!\rtc1|hours_l\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rtc1|hours_l\(13),
	datad => VCC,
	cin => \rtc1|Add5~25\,
	combout => \rtc1|Add5~26_combout\,
	cout => \rtc1|Add5~27\);

-- Location: LCFF_X21_Y21_N27
\rtc1|hours_l[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add5~26_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \rtc1|wrap~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|hours_l\(13));

-- Location: LCCOMB_X21_Y21_N28
\rtc1|Add5~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add5~28_combout\ = (\rtc1|hours_l\(14) & (\rtc1|Add5~27\ $ (GND))) # (!\rtc1|hours_l\(14) & (!\rtc1|Add5~27\ & VCC))
-- \rtc1|Add5~29\ = CARRY((\rtc1|hours_l\(14) & !\rtc1|Add5~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rtc1|hours_l\(14),
	datad => VCC,
	cin => \rtc1|Add5~27\,
	combout => \rtc1|Add5~28_combout\,
	cout => \rtc1|Add5~29\);

-- Location: LCFF_X21_Y21_N29
\rtc1|hours_l[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add5~28_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \rtc1|wrap~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|hours_l\(14));

-- Location: LCCOMB_X21_Y21_N30
\rtc1|Add5~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add5~30_combout\ = (\rtc1|hours_l\(15) & (!\rtc1|Add5~29\)) # (!\rtc1|hours_l\(15) & ((\rtc1|Add5~29\) # (GND)))
-- \rtc1|Add5~31\ = CARRY((!\rtc1|Add5~29\) # (!\rtc1|hours_l\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rtc1|hours_l\(15),
	datad => VCC,
	cin => \rtc1|Add5~29\,
	combout => \rtc1|Add5~30_combout\,
	cout => \rtc1|Add5~31\);

-- Location: LCFF_X21_Y21_N31
\rtc1|hours_l[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add5~30_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \rtc1|wrap~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|hours_l\(15));

-- Location: LCCOMB_X21_Y20_N0
\rtc1|Add5~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add5~32_combout\ = (\rtc1|hours_l\(16) & (\rtc1|Add5~31\ $ (GND))) # (!\rtc1|hours_l\(16) & (!\rtc1|Add5~31\ & VCC))
-- \rtc1|Add5~33\ = CARRY((\rtc1|hours_l\(16) & !\rtc1|Add5~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rtc1|hours_l\(16),
	datad => VCC,
	cin => \rtc1|Add5~31\,
	combout => \rtc1|Add5~32_combout\,
	cout => \rtc1|Add5~33\);

-- Location: LCFF_X21_Y20_N1
\rtc1|hours_l[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add5~32_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \rtc1|wrap~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|hours_l\(16));

-- Location: LCCOMB_X21_Y20_N2
\rtc1|Add5~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add5~34_combout\ = (\rtc1|hours_l\(17) & (!\rtc1|Add5~33\)) # (!\rtc1|hours_l\(17) & ((\rtc1|Add5~33\) # (GND)))
-- \rtc1|Add5~35\ = CARRY((!\rtc1|Add5~33\) # (!\rtc1|hours_l\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rtc1|hours_l\(17),
	datad => VCC,
	cin => \rtc1|Add5~33\,
	combout => \rtc1|Add5~34_combout\,
	cout => \rtc1|Add5~35\);

-- Location: LCFF_X21_Y20_N3
\rtc1|hours_l[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add5~34_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \rtc1|wrap~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|hours_l\(17));

-- Location: LCCOMB_X21_Y20_N4
\rtc1|Add5~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add5~36_combout\ = (\rtc1|hours_l\(18) & (\rtc1|Add5~35\ $ (GND))) # (!\rtc1|hours_l\(18) & (!\rtc1|Add5~35\ & VCC))
-- \rtc1|Add5~37\ = CARRY((\rtc1|hours_l\(18) & !\rtc1|Add5~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rtc1|hours_l\(18),
	datad => VCC,
	cin => \rtc1|Add5~35\,
	combout => \rtc1|Add5~36_combout\,
	cout => \rtc1|Add5~37\);

-- Location: LCFF_X21_Y20_N5
\rtc1|hours_l[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add5~36_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \rtc1|wrap~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|hours_l\(18));

-- Location: LCCOMB_X21_Y20_N6
\rtc1|Add5~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add5~38_combout\ = (\rtc1|hours_l\(19) & (!\rtc1|Add5~37\)) # (!\rtc1|hours_l\(19) & ((\rtc1|Add5~37\) # (GND)))
-- \rtc1|Add5~39\ = CARRY((!\rtc1|Add5~37\) # (!\rtc1|hours_l\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|hours_l\(19),
	datad => VCC,
	cin => \rtc1|Add5~37\,
	combout => \rtc1|Add5~38_combout\,
	cout => \rtc1|Add5~39\);

-- Location: LCCOMB_X21_Y20_N8
\rtc1|Add5~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add5~40_combout\ = (\rtc1|hours_l\(20) & (\rtc1|Add5~39\ $ (GND))) # (!\rtc1|hours_l\(20) & (!\rtc1|Add5~39\ & VCC))
-- \rtc1|Add5~41\ = CARRY((\rtc1|hours_l\(20) & !\rtc1|Add5~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rtc1|hours_l\(20),
	datad => VCC,
	cin => \rtc1|Add5~39\,
	combout => \rtc1|Add5~40_combout\,
	cout => \rtc1|Add5~41\);

-- Location: LCFF_X21_Y20_N9
\rtc1|hours_l[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add5~40_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \rtc1|wrap~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|hours_l\(20));

-- Location: LCCOMB_X21_Y20_N10
\rtc1|Add5~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add5~42_combout\ = (\rtc1|hours_l\(21) & (!\rtc1|Add5~41\)) # (!\rtc1|hours_l\(21) & ((\rtc1|Add5~41\) # (GND)))
-- \rtc1|Add5~43\ = CARRY((!\rtc1|Add5~41\) # (!\rtc1|hours_l\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|hours_l\(21),
	datad => VCC,
	cin => \rtc1|Add5~41\,
	combout => \rtc1|Add5~42_combout\,
	cout => \rtc1|Add5~43\);

-- Location: LCFF_X21_Y20_N11
\rtc1|hours_l[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add5~42_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \rtc1|wrap~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|hours_l\(21));

-- Location: LCCOMB_X21_Y20_N14
\rtc1|Add5~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add5~46_combout\ = (\rtc1|hours_l\(23) & (!\rtc1|Add5~45\)) # (!\rtc1|hours_l\(23) & ((\rtc1|Add5~45\) # (GND)))
-- \rtc1|Add5~47\ = CARRY((!\rtc1|Add5~45\) # (!\rtc1|hours_l\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rtc1|hours_l\(23),
	datad => VCC,
	cin => \rtc1|Add5~45\,
	combout => \rtc1|Add5~46_combout\,
	cout => \rtc1|Add5~47\);

-- Location: LCFF_X21_Y20_N15
\rtc1|hours_l[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add5~46_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \rtc1|wrap~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|hours_l\(23));

-- Location: LCCOMB_X20_Y20_N0
\rtc1|Equal5~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Equal5~2_combout\ = (!\rtc1|hours_l\(22) & (!\rtc1|hours_l\(20) & (!\rtc1|hours_l\(21) & !\rtc1|hours_l\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|hours_l\(22),
	datab => \rtc1|hours_l\(20),
	datac => \rtc1|hours_l\(21),
	datad => \rtc1|hours_l\(23),
	combout => \rtc1|Equal5~2_combout\);

-- Location: LCFF_X21_Y20_N7
\rtc1|hours_l[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add5~38_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \rtc1|wrap~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|hours_l\(19));

-- Location: LCCOMB_X22_Y20_N0
\rtc1|Equal5~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Equal5~3_combout\ = (!\rtc1|hours_l\(16) & (!\rtc1|hours_l\(18) & (!\rtc1|hours_l\(19) & !\rtc1|hours_l\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|hours_l\(16),
	datab => \rtc1|hours_l\(18),
	datac => \rtc1|hours_l\(19),
	datad => \rtc1|hours_l\(17),
	combout => \rtc1|Equal5~3_combout\);

-- Location: LCCOMB_X21_Y20_N16
\rtc1|Add5~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add5~48_combout\ = (\rtc1|hours_l\(24) & (\rtc1|Add5~47\ $ (GND))) # (!\rtc1|hours_l\(24) & (!\rtc1|Add5~47\ & VCC))
-- \rtc1|Add5~49\ = CARRY((\rtc1|hours_l\(24) & !\rtc1|Add5~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|hours_l\(24),
	datad => VCC,
	cin => \rtc1|Add5~47\,
	combout => \rtc1|Add5~48_combout\,
	cout => \rtc1|Add5~49\);

-- Location: LCCOMB_X21_Y20_N18
\rtc1|Add5~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add5~50_combout\ = (\rtc1|hours_l\(25) & (!\rtc1|Add5~49\)) # (!\rtc1|hours_l\(25) & ((\rtc1|Add5~49\) # (GND)))
-- \rtc1|Add5~51\ = CARRY((!\rtc1|Add5~49\) # (!\rtc1|hours_l\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rtc1|hours_l\(25),
	datad => VCC,
	cin => \rtc1|Add5~49\,
	combout => \rtc1|Add5~50_combout\,
	cout => \rtc1|Add5~51\);

-- Location: LCFF_X21_Y20_N19
\rtc1|hours_l[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add5~50_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \rtc1|wrap~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|hours_l\(25));

-- Location: LCFF_X21_Y20_N23
\rtc1|hours_l[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add5~54_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \rtc1|wrap~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|hours_l\(27));

-- Location: LCFF_X21_Y20_N17
\rtc1|hours_l[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add5~48_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \rtc1|wrap~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|hours_l\(24));

-- Location: LCCOMB_X20_Y21_N28
\rtc1|Equal5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Equal5~1_combout\ = (!\rtc1|hours_l\(26) & (!\rtc1|hours_l\(27) & (!\rtc1|hours_l\(24) & !\rtc1|hours_l\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|hours_l\(26),
	datab => \rtc1|hours_l\(27),
	datac => \rtc1|hours_l\(24),
	datad => \rtc1|hours_l\(25),
	combout => \rtc1|Equal5~1_combout\);

-- Location: LCCOMB_X20_Y21_N6
\rtc1|Equal5~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Equal5~4_combout\ = (\rtc1|Equal5~0_combout\ & (\rtc1|Equal5~2_combout\ & (\rtc1|Equal5~3_combout\ & \rtc1|Equal5~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|Equal5~0_combout\,
	datab => \rtc1|Equal5~2_combout\,
	datac => \rtc1|Equal5~3_combout\,
	datad => \rtc1|Equal5~1_combout\,
	combout => \rtc1|Equal5~4_combout\);

-- Location: LCCOMB_X20_Y21_N22
\rtc1|Equal5~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Equal5~10_combout\ = (\rtc1|Equal5~5_combout\ & (\rtc1|Equal5~6_combout\ & (\rtc1|Equal5~9_combout\ & \rtc1|Equal5~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|Equal5~5_combout\,
	datab => \rtc1|Equal5~6_combout\,
	datac => \rtc1|Equal5~9_combout\,
	datad => \rtc1|Equal5~4_combout\,
	combout => \rtc1|Equal5~10_combout\);

-- Location: LCCOMB_X20_Y21_N0
\rtc1|cnt~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|cnt~18_combout\ = (!\rtc1|Equal5~10_combout\ & \rtc1|Add5~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rtc1|Equal5~10_combout\,
	datad => \rtc1|Add5~2_combout\,
	combout => \rtc1|cnt~18_combout\);

-- Location: LCFF_X20_Y21_N1
\rtc1|hours_l[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|cnt~18_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \rtc1|wrap~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|hours_l\(1));

-- Location: LCCOMB_X20_Y21_N12
\q0:4:seg7_6|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \q0:4:seg7_6|Mux6~0_combout\ = (\rtc1|hours_l\(2) & (!\rtc1|hours_l\(1) & (\rtc1|hours_l\(0) $ (!\rtc1|hours_l\(3))))) # (!\rtc1|hours_l\(2) & (\rtc1|hours_l\(0) & (\rtc1|hours_l\(1) $ (!\rtc1|hours_l\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|hours_l\(2),
	datab => \rtc1|hours_l\(1),
	datac => \rtc1|hours_l\(0),
	datad => \rtc1|hours_l\(3),
	combout => \q0:4:seg7_6|Mux6~0_combout\);

-- Location: LCCOMB_X20_Y21_N30
\q0:4:seg7_6|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \q0:4:seg7_6|Mux5~0_combout\ = (\rtc1|hours_l\(1) & ((\rtc1|hours_l\(0) & ((\rtc1|hours_l\(3)))) # (!\rtc1|hours_l\(0) & (\rtc1|hours_l\(2))))) # (!\rtc1|hours_l\(1) & (\rtc1|hours_l\(2) & (\rtc1|hours_l\(0) $ (\rtc1|hours_l\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|hours_l\(2),
	datab => \rtc1|hours_l\(1),
	datac => \rtc1|hours_l\(0),
	datad => \rtc1|hours_l\(3),
	combout => \q0:4:seg7_6|Mux5~0_combout\);

-- Location: LCCOMB_X20_Y21_N16
\q0:4:seg7_6|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \q0:4:seg7_6|Mux4~0_combout\ = (\rtc1|hours_l\(2) & (\rtc1|hours_l\(3) & ((\rtc1|hours_l\(1)) # (!\rtc1|hours_l\(0))))) # (!\rtc1|hours_l\(2) & (\rtc1|hours_l\(1) & (!\rtc1|hours_l\(0) & !\rtc1|hours_l\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|hours_l\(2),
	datab => \rtc1|hours_l\(1),
	datac => \rtc1|hours_l\(0),
	datad => \rtc1|hours_l\(3),
	combout => \q0:4:seg7_6|Mux4~0_combout\);

-- Location: LCCOMB_X20_Y21_N2
\q0:4:seg7_6|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \q0:4:seg7_6|Mux3~0_combout\ = (\rtc1|hours_l\(0) & (\rtc1|hours_l\(2) $ ((!\rtc1|hours_l\(1))))) # (!\rtc1|hours_l\(0) & ((\rtc1|hours_l\(2) & (!\rtc1|hours_l\(1) & !\rtc1|hours_l\(3))) # (!\rtc1|hours_l\(2) & (\rtc1|hours_l\(1) & \rtc1|hours_l\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|hours_l\(2),
	datab => \rtc1|hours_l\(1),
	datac => \rtc1|hours_l\(0),
	datad => \rtc1|hours_l\(3),
	combout => \q0:4:seg7_6|Mux3~0_combout\);

-- Location: LCCOMB_X20_Y21_N4
\q0:4:seg7_6|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \q0:4:seg7_6|Mux2~0_combout\ = (\rtc1|hours_l\(1) & (((\rtc1|hours_l\(0) & !\rtc1|hours_l\(3))))) # (!\rtc1|hours_l\(1) & ((\rtc1|hours_l\(2) & ((!\rtc1|hours_l\(3)))) # (!\rtc1|hours_l\(2) & (\rtc1|hours_l\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|hours_l\(2),
	datab => \rtc1|hours_l\(1),
	datac => \rtc1|hours_l\(0),
	datad => \rtc1|hours_l\(3),
	combout => \q0:4:seg7_6|Mux2~0_combout\);

-- Location: LCCOMB_X20_Y21_N14
\q0:4:seg7_6|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \q0:4:seg7_6|Mux1~0_combout\ = (\rtc1|hours_l\(2) & (\rtc1|hours_l\(0) & (\rtc1|hours_l\(1) $ (\rtc1|hours_l\(3))))) # (!\rtc1|hours_l\(2) & (!\rtc1|hours_l\(3) & ((\rtc1|hours_l\(1)) # (\rtc1|hours_l\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|hours_l\(2),
	datab => \rtc1|hours_l\(1),
	datac => \rtc1|hours_l\(0),
	datad => \rtc1|hours_l\(3),
	combout => \q0:4:seg7_6|Mux1~0_combout\);

-- Location: LCCOMB_X20_Y21_N8
\q0:4:seg7_6|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \q0:4:seg7_6|Mux0~0_combout\ = (\rtc1|hours_l\(0) & ((\rtc1|hours_l\(3)) # (\rtc1|hours_l\(2) $ (\rtc1|hours_l\(1))))) # (!\rtc1|hours_l\(0) & ((\rtc1|hours_l\(1)) # (\rtc1|hours_l\(2) $ (\rtc1|hours_l\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110101101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|hours_l\(2),
	datab => \rtc1|hours_l\(1),
	datac => \rtc1|hours_l\(0),
	datad => \rtc1|hours_l\(3),
	combout => \q0:4:seg7_6|Mux0~0_combout\);

-- Location: LCCOMB_X18_Y24_N0
\rtc1|Add6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add6~0_combout\ = \rtc1|hours_h\(0) $ (VCC)
-- \rtc1|Add6~1\ = CARRY(\rtc1|hours_h\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rtc1|hours_h\(0),
	datad => VCC,
	combout => \rtc1|Add6~0_combout\,
	cout => \rtc1|Add6~1\);

-- Location: LCCOMB_X18_Y24_N6
\rtc1|Add6~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add6~6_combout\ = (\rtc1|hours_h\(3) & (!\rtc1|Add6~5\)) # (!\rtc1|hours_h\(3) & ((\rtc1|Add6~5\) # (GND)))
-- \rtc1|Add6~7\ = CARRY((!\rtc1|Add6~5\) # (!\rtc1|hours_h\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|hours_h\(3),
	datad => VCC,
	cin => \rtc1|Add6~5\,
	combout => \rtc1|Add6~6_combout\,
	cout => \rtc1|Add6~7\);

-- Location: LCCOMB_X18_Y24_N8
\rtc1|Add6~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add6~8_combout\ = (\rtc1|hours_h\(4) & (\rtc1|Add6~7\ $ (GND))) # (!\rtc1|hours_h\(4) & (!\rtc1|Add6~7\ & VCC))
-- \rtc1|Add6~9\ = CARRY((\rtc1|hours_h\(4) & !\rtc1|Add6~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rtc1|hours_h\(4),
	datad => VCC,
	cin => \rtc1|Add6~7\,
	combout => \rtc1|Add6~8_combout\,
	cout => \rtc1|Add6~9\);

-- Location: LCCOMB_X29_Y21_N14
\rtc1|wrap~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|wrap~4_combout\ = (\rtc1|Equal3~10_combout\ & (\rtc1|Equal5~10_combout\ & (\rtc1|Equal4~10_combout\ & \rtc1|wrap~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|Equal3~10_combout\,
	datab => \rtc1|Equal5~10_combout\,
	datac => \rtc1|Equal4~10_combout\,
	datad => \rtc1|wrap~1_combout\,
	combout => \rtc1|wrap~4_combout\);

-- Location: LCFF_X18_Y24_N9
\rtc1|hours_h[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add6~8_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \rtc1|wrap~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|hours_h\(4));

-- Location: LCCOMB_X18_Y24_N10
\rtc1|Add6~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add6~10_combout\ = (\rtc1|hours_h\(5) & (!\rtc1|Add6~9\)) # (!\rtc1|hours_h\(5) & ((\rtc1|Add6~9\) # (GND)))
-- \rtc1|Add6~11\ = CARRY((!\rtc1|Add6~9\) # (!\rtc1|hours_h\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|hours_h\(5),
	datad => VCC,
	cin => \rtc1|Add6~9\,
	combout => \rtc1|Add6~10_combout\,
	cout => \rtc1|Add6~11\);

-- Location: LCCOMB_X18_Y24_N14
\rtc1|Add6~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add6~14_combout\ = (\rtc1|hours_h\(7) & (!\rtc1|Add6~13\)) # (!\rtc1|hours_h\(7) & ((\rtc1|Add6~13\) # (GND)))
-- \rtc1|Add6~15\ = CARRY((!\rtc1|Add6~13\) # (!\rtc1|hours_h\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rtc1|hours_h\(7),
	datad => VCC,
	cin => \rtc1|Add6~13\,
	combout => \rtc1|Add6~14_combout\,
	cout => \rtc1|Add6~15\);

-- Location: LCFF_X18_Y24_N15
\rtc1|hours_h[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add6~14_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \rtc1|wrap~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|hours_h\(7));

-- Location: LCCOMB_X18_Y24_N18
\rtc1|Add6~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add6~18_combout\ = (\rtc1|hours_h\(9) & (!\rtc1|Add6~17\)) # (!\rtc1|hours_h\(9) & ((\rtc1|Add6~17\) # (GND)))
-- \rtc1|Add6~19\ = CARRY((!\rtc1|Add6~17\) # (!\rtc1|hours_h\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rtc1|hours_h\(9),
	datad => VCC,
	cin => \rtc1|Add6~17\,
	combout => \rtc1|Add6~18_combout\,
	cout => \rtc1|Add6~19\);

-- Location: LCFF_X18_Y24_N19
\rtc1|hours_h[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add6~18_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \rtc1|wrap~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|hours_h\(9));

-- Location: LCCOMB_X18_Y24_N22
\rtc1|Add6~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add6~22_combout\ = (\rtc1|hours_h\(11) & (!\rtc1|Add6~21\)) # (!\rtc1|hours_h\(11) & ((\rtc1|Add6~21\) # (GND)))
-- \rtc1|Add6~23\ = CARRY((!\rtc1|Add6~21\) # (!\rtc1|hours_h\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rtc1|hours_h\(11),
	datad => VCC,
	cin => \rtc1|Add6~21\,
	combout => \rtc1|Add6~22_combout\,
	cout => \rtc1|Add6~23\);

-- Location: LCFF_X18_Y24_N23
\rtc1|hours_h[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add6~22_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \rtc1|wrap~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|hours_h\(11));

-- Location: LCCOMB_X18_Y24_N24
\rtc1|Add6~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add6~24_combout\ = (\rtc1|hours_h\(12) & (\rtc1|Add6~23\ $ (GND))) # (!\rtc1|hours_h\(12) & (!\rtc1|Add6~23\ & VCC))
-- \rtc1|Add6~25\ = CARRY((\rtc1|hours_h\(12) & !\rtc1|Add6~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|hours_h\(12),
	datad => VCC,
	cin => \rtc1|Add6~23\,
	combout => \rtc1|Add6~24_combout\,
	cout => \rtc1|Add6~25\);

-- Location: LCCOMB_X18_Y24_N26
\rtc1|Add6~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add6~26_combout\ = (\rtc1|hours_h\(13) & (!\rtc1|Add6~25\)) # (!\rtc1|hours_h\(13) & ((\rtc1|Add6~25\) # (GND)))
-- \rtc1|Add6~27\ = CARRY((!\rtc1|Add6~25\) # (!\rtc1|hours_h\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rtc1|hours_h\(13),
	datad => VCC,
	cin => \rtc1|Add6~25\,
	combout => \rtc1|Add6~26_combout\,
	cout => \rtc1|Add6~27\);

-- Location: LCFF_X18_Y24_N27
\rtc1|hours_h[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add6~26_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \rtc1|wrap~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|hours_h\(13));

-- Location: LCCOMB_X18_Y24_N28
\rtc1|Add6~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add6~28_combout\ = (\rtc1|hours_h\(14) & (\rtc1|Add6~27\ $ (GND))) # (!\rtc1|hours_h\(14) & (!\rtc1|Add6~27\ & VCC))
-- \rtc1|Add6~29\ = CARRY((\rtc1|hours_h\(14) & !\rtc1|Add6~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rtc1|hours_h\(14),
	datad => VCC,
	cin => \rtc1|Add6~27\,
	combout => \rtc1|Add6~28_combout\,
	cout => \rtc1|Add6~29\);

-- Location: LCFF_X18_Y24_N29
\rtc1|hours_h[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add6~28_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \rtc1|wrap~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|hours_h\(14));

-- Location: LCCOMB_X18_Y24_N30
\rtc1|Add6~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add6~30_combout\ = (\rtc1|hours_h\(15) & (!\rtc1|Add6~29\)) # (!\rtc1|hours_h\(15) & ((\rtc1|Add6~29\) # (GND)))
-- \rtc1|Add6~31\ = CARRY((!\rtc1|Add6~29\) # (!\rtc1|hours_h\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rtc1|hours_h\(15),
	datad => VCC,
	cin => \rtc1|Add6~29\,
	combout => \rtc1|Add6~30_combout\,
	cout => \rtc1|Add6~31\);

-- Location: LCFF_X18_Y24_N31
\rtc1|hours_h[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add6~30_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \rtc1|wrap~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|hours_h\(15));

-- Location: LCFF_X18_Y24_N25
\rtc1|hours_h[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add6~24_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \rtc1|wrap~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|hours_h\(12));

-- Location: LCCOMB_X17_Y23_N2
\rtc1|Equal6~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Equal6~5_combout\ = (!\rtc1|hours_h\(13) & !\rtc1|hours_h\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rtc1|hours_h\(13),
	datad => \rtc1|hours_h\(12),
	combout => \rtc1|Equal6~5_combout\);

-- Location: LCCOMB_X17_Y23_N22
\rtc1|Equal6~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Equal6~7_combout\ = (\rtc1|Equal6~6_combout\ & (!\rtc1|hours_h\(15) & (!\rtc1|hours_h\(14) & \rtc1|Equal6~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|Equal6~6_combout\,
	datab => \rtc1|hours_h\(15),
	datac => \rtc1|hours_h\(14),
	datad => \rtc1|Equal6~5_combout\,
	combout => \rtc1|Equal6~7_combout\);

-- Location: LCCOMB_X18_Y23_N0
\rtc1|Add6~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add6~32_combout\ = (\rtc1|hours_h\(16) & (\rtc1|Add6~31\ $ (GND))) # (!\rtc1|hours_h\(16) & (!\rtc1|Add6~31\ & VCC))
-- \rtc1|Add6~33\ = CARRY((\rtc1|hours_h\(16) & !\rtc1|Add6~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rtc1|hours_h\(16),
	datad => VCC,
	cin => \rtc1|Add6~31\,
	combout => \rtc1|Add6~32_combout\,
	cout => \rtc1|Add6~33\);

-- Location: LCFF_X18_Y23_N1
\rtc1|hours_h[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add6~32_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \rtc1|wrap~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|hours_h\(16));

-- Location: LCCOMB_X18_Y23_N2
\rtc1|Add6~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add6~34_combout\ = (\rtc1|hours_h\(17) & (!\rtc1|Add6~33\)) # (!\rtc1|hours_h\(17) & ((\rtc1|Add6~33\) # (GND)))
-- \rtc1|Add6~35\ = CARRY((!\rtc1|Add6~33\) # (!\rtc1|hours_h\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rtc1|hours_h\(17),
	datad => VCC,
	cin => \rtc1|Add6~33\,
	combout => \rtc1|Add6~34_combout\,
	cout => \rtc1|Add6~35\);

-- Location: LCFF_X18_Y23_N3
\rtc1|hours_h[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add6~34_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \rtc1|wrap~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|hours_h\(17));

-- Location: LCCOMB_X18_Y23_N4
\rtc1|Add6~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add6~36_combout\ = (\rtc1|hours_h\(18) & (\rtc1|Add6~35\ $ (GND))) # (!\rtc1|hours_h\(18) & (!\rtc1|Add6~35\ & VCC))
-- \rtc1|Add6~37\ = CARRY((\rtc1|hours_h\(18) & !\rtc1|Add6~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rtc1|hours_h\(18),
	datad => VCC,
	cin => \rtc1|Add6~35\,
	combout => \rtc1|Add6~36_combout\,
	cout => \rtc1|Add6~37\);

-- Location: LCFF_X18_Y23_N5
\rtc1|hours_h[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add6~36_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \rtc1|wrap~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|hours_h\(18));

-- Location: LCCOMB_X18_Y23_N8
\rtc1|Add6~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add6~40_combout\ = (\rtc1|hours_h\(20) & (\rtc1|Add6~39\ $ (GND))) # (!\rtc1|hours_h\(20) & (!\rtc1|Add6~39\ & VCC))
-- \rtc1|Add6~41\ = CARRY((\rtc1|hours_h\(20) & !\rtc1|Add6~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rtc1|hours_h\(20),
	datad => VCC,
	cin => \rtc1|Add6~39\,
	combout => \rtc1|Add6~40_combout\,
	cout => \rtc1|Add6~41\);

-- Location: LCFF_X18_Y23_N9
\rtc1|hours_h[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add6~40_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \rtc1|wrap~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|hours_h\(20));

-- Location: LCCOMB_X18_Y23_N10
\rtc1|Add6~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add6~42_combout\ = (\rtc1|hours_h\(21) & (!\rtc1|Add6~41\)) # (!\rtc1|hours_h\(21) & ((\rtc1|Add6~41\) # (GND)))
-- \rtc1|Add6~43\ = CARRY((!\rtc1|Add6~41\) # (!\rtc1|hours_h\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|hours_h\(21),
	datad => VCC,
	cin => \rtc1|Add6~41\,
	combout => \rtc1|Add6~42_combout\,
	cout => \rtc1|Add6~43\);

-- Location: LCCOMB_X18_Y23_N12
\rtc1|Add6~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add6~44_combout\ = (\rtc1|hours_h\(22) & (\rtc1|Add6~43\ $ (GND))) # (!\rtc1|hours_h\(22) & (!\rtc1|Add6~43\ & VCC))
-- \rtc1|Add6~45\ = CARRY((\rtc1|hours_h\(22) & !\rtc1|Add6~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|hours_h\(22),
	datad => VCC,
	cin => \rtc1|Add6~43\,
	combout => \rtc1|Add6~44_combout\,
	cout => \rtc1|Add6~45\);

-- Location: LCFF_X18_Y23_N13
\rtc1|hours_h[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add6~44_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \rtc1|wrap~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|hours_h\(22));

-- Location: LCFF_X18_Y23_N11
\rtc1|hours_h[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add6~42_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \rtc1|wrap~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|hours_h\(21));

-- Location: LCCOMB_X17_Y23_N28
\rtc1|Equal6~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Equal6~2_combout\ = (!\rtc1|hours_h\(23) & (!\rtc1|hours_h\(22) & (!\rtc1|hours_h\(21) & !\rtc1|hours_h\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|hours_h\(23),
	datab => \rtc1|hours_h\(22),
	datac => \rtc1|hours_h\(21),
	datad => \rtc1|hours_h\(20),
	combout => \rtc1|Equal6~2_combout\);

-- Location: LCCOMB_X18_Y23_N14
\rtc1|Add6~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add6~46_combout\ = (\rtc1|hours_h\(23) & (!\rtc1|Add6~45\)) # (!\rtc1|hours_h\(23) & ((\rtc1|Add6~45\) # (GND)))
-- \rtc1|Add6~47\ = CARRY((!\rtc1|Add6~45\) # (!\rtc1|hours_h\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rtc1|hours_h\(23),
	datad => VCC,
	cin => \rtc1|Add6~45\,
	combout => \rtc1|Add6~46_combout\,
	cout => \rtc1|Add6~47\);

-- Location: LCFF_X18_Y23_N15
\rtc1|hours_h[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add6~46_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \rtc1|wrap~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|hours_h\(23));

-- Location: LCCOMB_X18_Y23_N16
\rtc1|Add6~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add6~48_combout\ = (\rtc1|hours_h\(24) & (\rtc1|Add6~47\ $ (GND))) # (!\rtc1|hours_h\(24) & (!\rtc1|Add6~47\ & VCC))
-- \rtc1|Add6~49\ = CARRY((\rtc1|hours_h\(24) & !\rtc1|Add6~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|hours_h\(24),
	datad => VCC,
	cin => \rtc1|Add6~47\,
	combout => \rtc1|Add6~48_combout\,
	cout => \rtc1|Add6~49\);

-- Location: LCCOMB_X18_Y23_N18
\rtc1|Add6~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add6~50_combout\ = (\rtc1|hours_h\(25) & (!\rtc1|Add6~49\)) # (!\rtc1|hours_h\(25) & ((\rtc1|Add6~49\) # (GND)))
-- \rtc1|Add6~51\ = CARRY((!\rtc1|Add6~49\) # (!\rtc1|hours_h\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rtc1|hours_h\(25),
	datad => VCC,
	cin => \rtc1|Add6~49\,
	combout => \rtc1|Add6~50_combout\,
	cout => \rtc1|Add6~51\);

-- Location: LCFF_X18_Y23_N19
\rtc1|hours_h[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add6~50_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \rtc1|wrap~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|hours_h\(25));

-- Location: LCCOMB_X18_Y23_N20
\rtc1|Add6~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add6~52_combout\ = (\rtc1|hours_h\(26) & (\rtc1|Add6~51\ $ (GND))) # (!\rtc1|hours_h\(26) & (!\rtc1|Add6~51\ & VCC))
-- \rtc1|Add6~53\ = CARRY((\rtc1|hours_h\(26) & !\rtc1|Add6~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|hours_h\(26),
	datad => VCC,
	cin => \rtc1|Add6~51\,
	combout => \rtc1|Add6~52_combout\,
	cout => \rtc1|Add6~53\);

-- Location: LCCOMB_X18_Y23_N22
\rtc1|Add6~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add6~54_combout\ = (\rtc1|hours_h\(27) & (!\rtc1|Add6~53\)) # (!\rtc1|hours_h\(27) & ((\rtc1|Add6~53\) # (GND)))
-- \rtc1|Add6~55\ = CARRY((!\rtc1|Add6~53\) # (!\rtc1|hours_h\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rtc1|hours_h\(27),
	datad => VCC,
	cin => \rtc1|Add6~53\,
	combout => \rtc1|Add6~54_combout\,
	cout => \rtc1|Add6~55\);

-- Location: LCFF_X18_Y23_N23
\rtc1|hours_h[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add6~54_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \rtc1|wrap~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|hours_h\(27));

-- Location: LCCOMB_X18_Y23_N26
\rtc1|Add6~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add6~58_combout\ = (\rtc1|hours_h\(29) & (!\rtc1|Add6~57\)) # (!\rtc1|hours_h\(29) & ((\rtc1|Add6~57\) # (GND)))
-- \rtc1|Add6~59\ = CARRY((!\rtc1|Add6~57\) # (!\rtc1|hours_h\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rtc1|hours_h\(29),
	datad => VCC,
	cin => \rtc1|Add6~57\,
	combout => \rtc1|Add6~58_combout\,
	cout => \rtc1|Add6~59\);

-- Location: LCFF_X18_Y23_N27
\rtc1|hours_h[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add6~58_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \rtc1|wrap~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|hours_h\(29));

-- Location: LCCOMB_X18_Y23_N28
\rtc1|Add6~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add6~60_combout\ = (\rtc1|hours_h\(30) & (\rtc1|Add6~59\ $ (GND))) # (!\rtc1|hours_h\(30) & (!\rtc1|Add6~59\ & VCC))
-- \rtc1|Add6~61\ = CARRY((\rtc1|hours_h\(30) & !\rtc1|Add6~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rtc1|hours_h\(30),
	datad => VCC,
	cin => \rtc1|Add6~59\,
	combout => \rtc1|Add6~60_combout\,
	cout => \rtc1|Add6~61\);

-- Location: LCFF_X18_Y23_N29
\rtc1|hours_h[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add6~60_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \rtc1|wrap~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|hours_h\(30));

-- Location: LCCOMB_X18_Y23_N30
\rtc1|Add6~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add6~62_combout\ = \rtc1|Add6~61\ $ (\rtc1|hours_h\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \rtc1|hours_h\(31),
	cin => \rtc1|Add6~61\,
	combout => \rtc1|Add6~62_combout\);

-- Location: LCFF_X18_Y23_N31
\rtc1|hours_h[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add6~62_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \rtc1|wrap~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|hours_h\(31));

-- Location: LCCOMB_X17_Y23_N24
\rtc1|Equal6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Equal6~0_combout\ = (!\rtc1|hours_h\(28) & (!\rtc1|hours_h\(31) & (!\rtc1|hours_h\(29) & !\rtc1|hours_h\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|hours_h\(28),
	datab => \rtc1|hours_h\(31),
	datac => \rtc1|hours_h\(29),
	datad => \rtc1|hours_h\(30),
	combout => \rtc1|Equal6~0_combout\);

-- Location: LCFF_X18_Y23_N21
\rtc1|hours_h[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add6~52_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \rtc1|wrap~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|hours_h\(26));

-- Location: LCFF_X18_Y23_N17
\rtc1|hours_h[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add6~48_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \rtc1|wrap~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|hours_h\(24));

-- Location: LCCOMB_X17_Y23_N10
\rtc1|Equal6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Equal6~1_combout\ = (!\rtc1|hours_h\(25) & (!\rtc1|hours_h\(27) & (!\rtc1|hours_h\(26) & !\rtc1|hours_h\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|hours_h\(25),
	datab => \rtc1|hours_h\(27),
	datac => \rtc1|hours_h\(26),
	datad => \rtc1|hours_h\(24),
	combout => \rtc1|Equal6~1_combout\);

-- Location: LCCOMB_X17_Y23_N8
\rtc1|Equal6~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Equal6~4_combout\ = (\rtc1|Equal6~3_combout\ & (\rtc1|Equal6~2_combout\ & (\rtc1|Equal6~0_combout\ & \rtc1|Equal6~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|Equal6~3_combout\,
	datab => \rtc1|Equal6~2_combout\,
	datac => \rtc1|Equal6~0_combout\,
	datad => \rtc1|Equal6~1_combout\,
	combout => \rtc1|Equal6~4_combout\);

-- Location: LCFF_X18_Y24_N11
\rtc1|hours_h[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add6~10_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \rtc1|wrap~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|hours_h\(5));

-- Location: LCCOMB_X17_Y23_N0
\rtc1|Equal6~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Equal6~8_combout\ = (!\rtc1|hours_h\(6) & (!\rtc1|hours_h\(7) & (!\rtc1|hours_h\(5) & !\rtc1|hours_h\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|hours_h\(6),
	datab => \rtc1|hours_h\(7),
	datac => \rtc1|hours_h\(5),
	datad => \rtc1|hours_h\(4),
	combout => \rtc1|Equal6~8_combout\);

-- Location: LCCOMB_X17_Y23_N26
\rtc1|Equal6~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Equal6~10_combout\ = (\rtc1|Equal6~9_combout\ & (\rtc1|Equal6~7_combout\ & (\rtc1|Equal6~4_combout\ & \rtc1|Equal6~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|Equal6~9_combout\,
	datab => \rtc1|Equal6~7_combout\,
	datac => \rtc1|Equal6~4_combout\,
	datad => \rtc1|Equal6~8_combout\,
	combout => \rtc1|Equal6~10_combout\);

-- Location: LCCOMB_X19_Y23_N26
\rtc1|cnt~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|cnt~20_combout\ = (\rtc1|Add6~0_combout\ & !\rtc1|Equal6~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rtc1|Add6~0_combout\,
	datad => \rtc1|Equal6~10_combout\,
	combout => \rtc1|cnt~20_combout\);

-- Location: LCFF_X19_Y23_N27
\rtc1|hours_h[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|cnt~20_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \rtc1|wrap~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|hours_h\(0));

-- Location: LCCOMB_X18_Y24_N2
\rtc1|Add6~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add6~2_combout\ = (\rtc1|hours_h\(1) & (!\rtc1|Add6~1\)) # (!\rtc1|hours_h\(1) & ((\rtc1|Add6~1\) # (GND)))
-- \rtc1|Add6~3\ = CARRY((!\rtc1|Add6~1\) # (!\rtc1|hours_h\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rtc1|hours_h\(1),
	datad => VCC,
	cin => \rtc1|Add6~1\,
	combout => \rtc1|Add6~2_combout\,
	cout => \rtc1|Add6~3\);

-- Location: LCCOMB_X19_Y23_N4
\rtc1|cnt~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|cnt~21_combout\ = (\rtc1|Add6~2_combout\ & !\rtc1|Equal6~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rtc1|Add6~2_combout\,
	datad => \rtc1|Equal6~10_combout\,
	combout => \rtc1|cnt~21_combout\);

-- Location: LCFF_X19_Y23_N5
\rtc1|hours_h[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|cnt~21_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \rtc1|wrap~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|hours_h\(1));

-- Location: LCCOMB_X18_Y24_N4
\rtc1|Add6~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtc1|Add6~4_combout\ = (\rtc1|hours_h\(2) & (\rtc1|Add6~3\ $ (GND))) # (!\rtc1|hours_h\(2) & (!\rtc1|Add6~3\ & VCC))
-- \rtc1|Add6~5\ = CARRY((\rtc1|hours_h\(2) & !\rtc1|Add6~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rtc1|hours_h\(2),
	datad => VCC,
	cin => \rtc1|Add6~3\,
	combout => \rtc1|Add6~4_combout\,
	cout => \rtc1|Add6~5\);

-- Location: LCFF_X18_Y24_N5
\rtc1|hours_h[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add6~4_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \rtc1|wrap~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|hours_h\(2));

-- Location: LCFF_X18_Y24_N7
\rtc1|hours_h[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rtc1|Add6~6_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \rtc1|wrap~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rtc1|hours_h\(3));

-- Location: LCCOMB_X1_Y24_N0
\q0:5:seg7_6|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \q0:5:seg7_6|Mux6~0_combout\ = (\rtc1|hours_h\(3) & (\rtc1|hours_h\(0) & (\rtc1|hours_h\(2) $ (\rtc1|hours_h\(1))))) # (!\rtc1|hours_h\(3) & (!\rtc1|hours_h\(1) & (\rtc1|hours_h\(2) $ (\rtc1|hours_h\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|hours_h\(3),
	datab => \rtc1|hours_h\(2),
	datac => \rtc1|hours_h\(1),
	datad => \rtc1|hours_h\(0),
	combout => \q0:5:seg7_6|Mux6~0_combout\);

-- Location: LCCOMB_X1_Y24_N2
\q0:5:seg7_6|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \q0:5:seg7_6|Mux5~0_combout\ = (\rtc1|hours_h\(3) & ((\rtc1|hours_h\(0) & ((\rtc1|hours_h\(1)))) # (!\rtc1|hours_h\(0) & (\rtc1|hours_h\(2))))) # (!\rtc1|hours_h\(3) & (\rtc1|hours_h\(2) & (\rtc1|hours_h\(1) $ (\rtc1|hours_h\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|hours_h\(3),
	datab => \rtc1|hours_h\(2),
	datac => \rtc1|hours_h\(1),
	datad => \rtc1|hours_h\(0),
	combout => \q0:5:seg7_6|Mux5~0_combout\);

-- Location: LCCOMB_X1_Y24_N20
\q0:5:seg7_6|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \q0:5:seg7_6|Mux4~0_combout\ = (\rtc1|hours_h\(3) & (\rtc1|hours_h\(2) & ((\rtc1|hours_h\(1)) # (!\rtc1|hours_h\(0))))) # (!\rtc1|hours_h\(3) & (!\rtc1|hours_h\(2) & (\rtc1|hours_h\(1) & !\rtc1|hours_h\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|hours_h\(3),
	datab => \rtc1|hours_h\(2),
	datac => \rtc1|hours_h\(1),
	datad => \rtc1|hours_h\(0),
	combout => \q0:5:seg7_6|Mux4~0_combout\);

-- Location: LCCOMB_X1_Y24_N14
\q0:5:seg7_6|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \q0:5:seg7_6|Mux3~0_combout\ = (\rtc1|hours_h\(0) & ((\rtc1|hours_h\(2) $ (!\rtc1|hours_h\(1))))) # (!\rtc1|hours_h\(0) & ((\rtc1|hours_h\(3) & (!\rtc1|hours_h\(2) & \rtc1|hours_h\(1))) # (!\rtc1|hours_h\(3) & (\rtc1|hours_h\(2) & !\rtc1|hours_h\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|hours_h\(3),
	datab => \rtc1|hours_h\(2),
	datac => \rtc1|hours_h\(1),
	datad => \rtc1|hours_h\(0),
	combout => \q0:5:seg7_6|Mux3~0_combout\);

-- Location: LCCOMB_X1_Y24_N16
\q0:5:seg7_6|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \q0:5:seg7_6|Mux2~0_combout\ = (\rtc1|hours_h\(1) & (!\rtc1|hours_h\(3) & ((\rtc1|hours_h\(0))))) # (!\rtc1|hours_h\(1) & ((\rtc1|hours_h\(2) & (!\rtc1|hours_h\(3))) # (!\rtc1|hours_h\(2) & ((\rtc1|hours_h\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|hours_h\(3),
	datab => \rtc1|hours_h\(2),
	datac => \rtc1|hours_h\(1),
	datad => \rtc1|hours_h\(0),
	combout => \q0:5:seg7_6|Mux2~0_combout\);

-- Location: LCCOMB_X1_Y24_N10
\q0:5:seg7_6|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \q0:5:seg7_6|Mux1~0_combout\ = (\rtc1|hours_h\(2) & (\rtc1|hours_h\(0) & (\rtc1|hours_h\(3) $ (\rtc1|hours_h\(1))))) # (!\rtc1|hours_h\(2) & (!\rtc1|hours_h\(3) & ((\rtc1|hours_h\(1)) # (\rtc1|hours_h\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|hours_h\(3),
	datab => \rtc1|hours_h\(2),
	datac => \rtc1|hours_h\(1),
	datad => \rtc1|hours_h\(0),
	combout => \q0:5:seg7_6|Mux1~0_combout\);

-- Location: LCCOMB_X1_Y24_N12
\q0:5:seg7_6|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \q0:5:seg7_6|Mux0~0_combout\ = (\rtc1|hours_h\(0) & ((\rtc1|hours_h\(3)) # (\rtc1|hours_h\(2) $ (\rtc1|hours_h\(1))))) # (!\rtc1|hours_h\(0) & ((\rtc1|hours_h\(1)) # (\rtc1|hours_h\(3) $ (\rtc1|hours_h\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111011110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtc1|hours_h\(3),
	datab => \rtc1|hours_h\(2),
	datac => \rtc1|hours_h\(1),
	datad => \rtc1|hours_h\(0),
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


