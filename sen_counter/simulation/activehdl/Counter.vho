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

-- DATE "02/03/2021 12:38:18"

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

ENTITY 	counter_top IS
    PORT (
	CLOCK_50 : IN std_logic;
	EXT_CLOCK : IN std_logic;
	KEY : IN std_logic_vector(3 DOWNTO 0);
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	HEX1 : OUT std_logic_vector(6 DOWNTO 0);
	HEX2 : OUT std_logic_vector(6 DOWNTO 0);
	HEX3 : OUT std_logic_vector(6 DOWNTO 0);
	HEX4 : OUT std_logic_vector(6 DOWNTO 0);
	HEX5 : OUT std_logic_vector(6 DOWNTO 0);
	HEX6 : OUT std_logic_vector(6 DOWNTO 0);
	HEX7 : OUT std_logic_vector(6 DOWNTO 0)
	);
END counter_top;

-- Design Ports Information
-- CLOCK_50	=>  Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_N23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_P23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_W26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_AF10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[1]	=>  Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[2]	=>  Location: PIN_AC12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[3]	=>  Location: PIN_AD11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[4]	=>  Location: PIN_AE11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[5]	=>  Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[6]	=>  Location: PIN_V13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[0]	=>  Location: PIN_V20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[1]	=>  Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[2]	=>  Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[3]	=>  Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[4]	=>  Location: PIN_AA24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[5]	=>  Location: PIN_AA23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[6]	=>  Location: PIN_AB24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
-- EXT_CLOCK	=>  Location: PIN_P26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF counter_top IS
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
SIGNAL ww_EXT_CLOCK : std_logic;
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX6 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX7 : std_logic_vector(6 DOWNTO 0);
SIGNAL \EXT_CLOCK~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \EXT_CLOCK~combout\ : std_logic;
SIGNAL \EXT_CLOCK~clkctrl_outclk\ : std_logic;
SIGNAL \cnt[0]~93_combout\ : std_logic;
SIGNAL \cnt[1]~32\ : std_logic;
SIGNAL \cnt[2]~33_combout\ : std_logic;
SIGNAL \cnt[1]~31_combout\ : std_logic;
SIGNAL \cnt[2]~34\ : std_logic;
SIGNAL \cnt[3]~35_combout\ : std_logic;
SIGNAL \seg7_lut|u0|WideOr6~0_combout\ : std_logic;
SIGNAL \seg7_lut|u0|WideOr5~0_combout\ : std_logic;
SIGNAL \seg7_lut|u0|WideOr4~0_combout\ : std_logic;
SIGNAL \seg7_lut|u0|WideOr3~0_combout\ : std_logic;
SIGNAL \seg7_lut|u0|WideOr2~0_combout\ : std_logic;
SIGNAL \seg7_lut|u0|WideOr1~0_combout\ : std_logic;
SIGNAL \seg7_lut|u0|WideOr0~0_combout\ : std_logic;
SIGNAL \cnt[3]~36\ : std_logic;
SIGNAL \cnt[4]~37_combout\ : std_logic;
SIGNAL \cnt[4]~38\ : std_logic;
SIGNAL \cnt[5]~40\ : std_logic;
SIGNAL \cnt[6]~41_combout\ : std_logic;
SIGNAL \cnt[5]~39_combout\ : std_logic;
SIGNAL \cnt[6]~42\ : std_logic;
SIGNAL \cnt[7]~43_combout\ : std_logic;
SIGNAL \seg7_lut|u1|WideOr6~0_combout\ : std_logic;
SIGNAL \seg7_lut|u1|WideOr5~0_combout\ : std_logic;
SIGNAL \seg7_lut|u1|WideOr4~0_combout\ : std_logic;
SIGNAL \seg7_lut|u1|WideOr3~0_combout\ : std_logic;
SIGNAL \seg7_lut|u1|WideOr2~0_combout\ : std_logic;
SIGNAL \seg7_lut|u1|WideOr1~0_combout\ : std_logic;
SIGNAL \seg7_lut|u1|WideOr0~0_combout\ : std_logic;
SIGNAL \cnt[7]~44\ : std_logic;
SIGNAL \cnt[8]~45_combout\ : std_logic;
SIGNAL \cnt[8]~46\ : std_logic;
SIGNAL \cnt[9]~47_combout\ : std_logic;
SIGNAL \cnt[9]~48\ : std_logic;
SIGNAL \cnt[10]~49_combout\ : std_logic;
SIGNAL \cnt[10]~50\ : std_logic;
SIGNAL \cnt[11]~51_combout\ : std_logic;
SIGNAL \seg7_lut|u2|WideOr6~0_combout\ : std_logic;
SIGNAL \seg7_lut|u2|WideOr5~0_combout\ : std_logic;
SIGNAL \seg7_lut|u2|WideOr4~0_combout\ : std_logic;
SIGNAL \seg7_lut|u2|WideOr3~0_combout\ : std_logic;
SIGNAL \seg7_lut|u2|WideOr2~0_combout\ : std_logic;
SIGNAL \seg7_lut|u2|WideOr1~0_combout\ : std_logic;
SIGNAL \seg7_lut|u2|WideOr0~0_combout\ : std_logic;
SIGNAL \cnt[11]~52\ : std_logic;
SIGNAL \cnt[12]~53_combout\ : std_logic;
SIGNAL \cnt[12]~54\ : std_logic;
SIGNAL \cnt[13]~55_combout\ : std_logic;
SIGNAL \cnt[13]~56\ : std_logic;
SIGNAL \cnt[14]~57_combout\ : std_logic;
SIGNAL \cnt[14]~58\ : std_logic;
SIGNAL \cnt[15]~59_combout\ : std_logic;
SIGNAL \seg7_lut|u3|WideOr6~0_combout\ : std_logic;
SIGNAL \seg7_lut|u3|WideOr5~0_combout\ : std_logic;
SIGNAL \seg7_lut|u3|WideOr4~0_combout\ : std_logic;
SIGNAL \seg7_lut|u3|WideOr3~0_combout\ : std_logic;
SIGNAL \seg7_lut|u3|WideOr2~0_combout\ : std_logic;
SIGNAL \seg7_lut|u3|WideOr1~0_combout\ : std_logic;
SIGNAL \seg7_lut|u3|WideOr0~0_combout\ : std_logic;
SIGNAL \cnt[15]~60\ : std_logic;
SIGNAL \cnt[16]~61_combout\ : std_logic;
SIGNAL \cnt[16]~62\ : std_logic;
SIGNAL \cnt[17]~63_combout\ : std_logic;
SIGNAL \cnt[17]~64\ : std_logic;
SIGNAL \cnt[18]~65_combout\ : std_logic;
SIGNAL \cnt[18]~66\ : std_logic;
SIGNAL \cnt[19]~67_combout\ : std_logic;
SIGNAL \seg7_lut|u4|WideOr6~0_combout\ : std_logic;
SIGNAL \seg7_lut|u4|WideOr5~0_combout\ : std_logic;
SIGNAL \seg7_lut|u4|WideOr4~0_combout\ : std_logic;
SIGNAL \seg7_lut|u4|WideOr3~0_combout\ : std_logic;
SIGNAL \seg7_lut|u4|WideOr2~0_combout\ : std_logic;
SIGNAL \seg7_lut|u4|WideOr1~0_combout\ : std_logic;
SIGNAL \seg7_lut|u4|WideOr0~0_combout\ : std_logic;
SIGNAL \cnt[19]~68\ : std_logic;
SIGNAL \cnt[20]~69_combout\ : std_logic;
SIGNAL \cnt[20]~70\ : std_logic;
SIGNAL \cnt[21]~72\ : std_logic;
SIGNAL \cnt[22]~73_combout\ : std_logic;
SIGNAL \cnt[21]~71_combout\ : std_logic;
SIGNAL \cnt[22]~74\ : std_logic;
SIGNAL \cnt[23]~75_combout\ : std_logic;
SIGNAL \seg7_lut|u5|WideOr6~0_combout\ : std_logic;
SIGNAL \seg7_lut|u5|WideOr5~0_combout\ : std_logic;
SIGNAL \seg7_lut|u5|WideOr4~0_combout\ : std_logic;
SIGNAL \seg7_lut|u5|WideOr3~0_combout\ : std_logic;
SIGNAL \seg7_lut|u5|WideOr2~0_combout\ : std_logic;
SIGNAL \seg7_lut|u5|WideOr1~0_combout\ : std_logic;
SIGNAL \seg7_lut|u5|WideOr0~0_combout\ : std_logic;
SIGNAL \cnt[23]~76\ : std_logic;
SIGNAL \cnt[24]~78\ : std_logic;
SIGNAL \cnt[25]~79_combout\ : std_logic;
SIGNAL \cnt[25]~80\ : std_logic;
SIGNAL \cnt[26]~82\ : std_logic;
SIGNAL \cnt[27]~83_combout\ : std_logic;
SIGNAL \cnt[24]~77_combout\ : std_logic;
SIGNAL \cnt[26]~81_combout\ : std_logic;
SIGNAL \seg7_lut|u6|WideOr6~0_combout\ : std_logic;
SIGNAL \seg7_lut|u6|WideOr5~0_combout\ : std_logic;
SIGNAL \seg7_lut|u6|WideOr4~0_combout\ : std_logic;
SIGNAL \seg7_lut|u6|WideOr3~0_combout\ : std_logic;
SIGNAL \seg7_lut|u6|WideOr2~0_combout\ : std_logic;
SIGNAL \seg7_lut|u6|WideOr1~0_combout\ : std_logic;
SIGNAL \seg7_lut|u6|WideOr0~0_combout\ : std_logic;
SIGNAL \cnt[27]~84\ : std_logic;
SIGNAL \cnt[28]~85_combout\ : std_logic;
SIGNAL \cnt[28]~86\ : std_logic;
SIGNAL \cnt[29]~87_combout\ : std_logic;
SIGNAL \cnt[29]~88\ : std_logic;
SIGNAL \cnt[30]~89_combout\ : std_logic;
SIGNAL \cnt[30]~90\ : std_logic;
SIGNAL \cnt[31]~91_combout\ : std_logic;
SIGNAL \seg7_lut|u7|WideOr6~0_combout\ : std_logic;
SIGNAL \seg7_lut|u7|WideOr5~0_combout\ : std_logic;
SIGNAL \seg7_lut|u7|WideOr4~0_combout\ : std_logic;
SIGNAL \seg7_lut|u7|WideOr3~0_combout\ : std_logic;
SIGNAL \seg7_lut|u7|WideOr2~0_combout\ : std_logic;
SIGNAL \seg7_lut|u7|WideOr1~0_combout\ : std_logic;
SIGNAL \seg7_lut|u7|WideOr0~0_combout\ : std_logic;
SIGNAL cnt : std_logic_vector(31 DOWNTO 0);
SIGNAL \KEY~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_KEY~combout\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \seg7_lut|u7|ALT_INV_WideOr0~0_combout\ : std_logic;
SIGNAL \seg7_lut|u6|ALT_INV_WideOr0~0_combout\ : std_logic;
SIGNAL \seg7_lut|u5|ALT_INV_WideOr0~0_combout\ : std_logic;
SIGNAL \seg7_lut|u4|ALT_INV_WideOr0~0_combout\ : std_logic;
SIGNAL \seg7_lut|u3|ALT_INV_WideOr0~0_combout\ : std_logic;
SIGNAL \seg7_lut|u2|ALT_INV_WideOr0~0_combout\ : std_logic;
SIGNAL \seg7_lut|u1|ALT_INV_WideOr0~0_combout\ : std_logic;
SIGNAL \seg7_lut|u0|ALT_INV_WideOr0~0_combout\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_EXT_CLOCK <= EXT_CLOCK;
ww_KEY <= KEY;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
HEX4 <= ww_HEX4;
HEX5 <= ww_HEX5;
HEX6 <= ww_HEX6;
HEX7 <= ww_HEX7;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\EXT_CLOCK~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \EXT_CLOCK~combout\);
\ALT_INV_KEY~combout\(0) <= NOT \KEY~combout\(0);
\seg7_lut|u7|ALT_INV_WideOr0~0_combout\ <= NOT \seg7_lut|u7|WideOr0~0_combout\;
\seg7_lut|u6|ALT_INV_WideOr0~0_combout\ <= NOT \seg7_lut|u6|WideOr0~0_combout\;
\seg7_lut|u5|ALT_INV_WideOr0~0_combout\ <= NOT \seg7_lut|u5|WideOr0~0_combout\;
\seg7_lut|u4|ALT_INV_WideOr0~0_combout\ <= NOT \seg7_lut|u4|WideOr0~0_combout\;
\seg7_lut|u3|ALT_INV_WideOr0~0_combout\ <= NOT \seg7_lut|u3|WideOr0~0_combout\;
\seg7_lut|u2|ALT_INV_WideOr0~0_combout\ <= NOT \seg7_lut|u2|WideOr0~0_combout\;
\seg7_lut|u1|ALT_INV_WideOr0~0_combout\ <= NOT \seg7_lut|u1|WideOr0~0_combout\;
\seg7_lut|u0|ALT_INV_WideOr0~0_combout\ <= NOT \seg7_lut|u0|WideOr0~0_combout\;

-- Location: PIN_P26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\EXT_CLOCK~I\ : cycloneii_io
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
	padio => ww_EXT_CLOCK,
	combout => \EXT_CLOCK~combout\);

-- Location: CLKCTRL_G7
\EXT_CLOCK~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \EXT_CLOCK~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \EXT_CLOCK~clkctrl_outclk\);

-- Location: LCCOMB_X28_Y11_N0
\cnt[0]~93\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt[0]~93_combout\ = !cnt(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => cnt(0),
	combout => \cnt[0]~93_combout\);

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

-- Location: LCFF_X28_Y11_N1
\cnt[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \EXT_CLOCK~clkctrl_outclk\,
	datain => \cnt[0]~93_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(0));

-- Location: LCCOMB_X28_Y11_N2
\cnt[1]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt[1]~31_combout\ = (cnt(1) & (cnt(0) $ (VCC))) # (!cnt(1) & (cnt(0) & VCC))
-- \cnt[1]~32\ = CARRY((cnt(1) & cnt(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(1),
	datab => cnt(0),
	datad => VCC,
	combout => \cnt[1]~31_combout\,
	cout => \cnt[1]~32\);

-- Location: LCCOMB_X28_Y11_N4
\cnt[2]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt[2]~33_combout\ = (cnt(2) & (!\cnt[1]~32\)) # (!cnt(2) & ((\cnt[1]~32\) # (GND)))
-- \cnt[2]~34\ = CARRY((!\cnt[1]~32\) # (!cnt(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(2),
	datad => VCC,
	cin => \cnt[1]~32\,
	combout => \cnt[2]~33_combout\,
	cout => \cnt[2]~34\);

-- Location: LCFF_X28_Y11_N5
\cnt[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \EXT_CLOCK~clkctrl_outclk\,
	datain => \cnt[2]~33_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(2));

-- Location: LCFF_X28_Y11_N3
\cnt[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \EXT_CLOCK~clkctrl_outclk\,
	datain => \cnt[1]~31_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(1));

-- Location: LCCOMB_X28_Y11_N6
\cnt[3]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt[3]~35_combout\ = (cnt(3) & (\cnt[2]~34\ $ (GND))) # (!cnt(3) & (!\cnt[2]~34\ & VCC))
-- \cnt[3]~36\ = CARRY((cnt(3) & !\cnt[2]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt(3),
	datad => VCC,
	cin => \cnt[2]~34\,
	combout => \cnt[3]~35_combout\,
	cout => \cnt[3]~36\);

-- Location: LCFF_X28_Y11_N7
\cnt[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \EXT_CLOCK~clkctrl_outclk\,
	datain => \cnt[3]~35_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(3));

-- Location: LCCOMB_X28_Y4_N0
\seg7_lut|u0|WideOr6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg7_lut|u0|WideOr6~0_combout\ = (cnt(2) & (!cnt(1) & (cnt(0) $ (!cnt(3))))) # (!cnt(2) & (cnt(0) & (cnt(1) $ (!cnt(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(0),
	datab => cnt(2),
	datac => cnt(1),
	datad => cnt(3),
	combout => \seg7_lut|u0|WideOr6~0_combout\);

-- Location: LCCOMB_X28_Y4_N2
\seg7_lut|u0|WideOr5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg7_lut|u0|WideOr5~0_combout\ = (cnt(1) & ((cnt(0) & ((cnt(3)))) # (!cnt(0) & (cnt(2))))) # (!cnt(1) & (cnt(2) & (cnt(0) $ (cnt(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(0),
	datab => cnt(2),
	datac => cnt(1),
	datad => cnt(3),
	combout => \seg7_lut|u0|WideOr5~0_combout\);

-- Location: LCCOMB_X28_Y4_N28
\seg7_lut|u0|WideOr4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg7_lut|u0|WideOr4~0_combout\ = (cnt(2) & (cnt(3) & ((cnt(1)) # (!cnt(0))))) # (!cnt(2) & (!cnt(0) & (cnt(1) & !cnt(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(0),
	datab => cnt(2),
	datac => cnt(1),
	datad => cnt(3),
	combout => \seg7_lut|u0|WideOr4~0_combout\);

-- Location: LCCOMB_X28_Y4_N10
\seg7_lut|u0|WideOr3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg7_lut|u0|WideOr3~0_combout\ = (cnt(0) & (cnt(2) $ ((!cnt(1))))) # (!cnt(0) & ((cnt(2) & (!cnt(1) & !cnt(3))) # (!cnt(2) & (cnt(1) & cnt(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(0),
	datab => cnt(2),
	datac => cnt(1),
	datad => cnt(3),
	combout => \seg7_lut|u0|WideOr3~0_combout\);

-- Location: LCCOMB_X28_Y4_N8
\seg7_lut|u0|WideOr2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg7_lut|u0|WideOr2~0_combout\ = (cnt(1) & (cnt(0) & ((!cnt(3))))) # (!cnt(1) & ((cnt(2) & ((!cnt(3)))) # (!cnt(2) & (cnt(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(0),
	datab => cnt(2),
	datac => cnt(1),
	datad => cnt(3),
	combout => \seg7_lut|u0|WideOr2~0_combout\);

-- Location: LCCOMB_X28_Y4_N22
\seg7_lut|u0|WideOr1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg7_lut|u0|WideOr1~0_combout\ = (cnt(0) & (cnt(3) $ (((cnt(1)) # (!cnt(2)))))) # (!cnt(0) & (!cnt(2) & (cnt(1) & !cnt(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(0),
	datab => cnt(2),
	datac => cnt(1),
	datad => cnt(3),
	combout => \seg7_lut|u0|WideOr1~0_combout\);

-- Location: LCCOMB_X28_Y4_N24
\seg7_lut|u0|WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg7_lut|u0|WideOr0~0_combout\ = (cnt(0) & ((cnt(3)) # (cnt(2) $ (cnt(1))))) # (!cnt(0) & ((cnt(1)) # (cnt(2) $ (cnt(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(0),
	datab => cnt(2),
	datac => cnt(1),
	datad => cnt(3),
	combout => \seg7_lut|u0|WideOr0~0_combout\);

-- Location: LCCOMB_X28_Y11_N8
\cnt[4]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt[4]~37_combout\ = (cnt(4) & (!\cnt[3]~36\)) # (!cnt(4) & ((\cnt[3]~36\) # (GND)))
-- \cnt[4]~38\ = CARRY((!\cnt[3]~36\) # (!cnt(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(4),
	datad => VCC,
	cin => \cnt[3]~36\,
	combout => \cnt[4]~37_combout\,
	cout => \cnt[4]~38\);

-- Location: LCFF_X28_Y11_N9
\cnt[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \EXT_CLOCK~clkctrl_outclk\,
	datain => \cnt[4]~37_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(4));

-- Location: LCCOMB_X28_Y11_N10
\cnt[5]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt[5]~39_combout\ = (cnt(5) & (\cnt[4]~38\ $ (GND))) # (!cnt(5) & (!\cnt[4]~38\ & VCC))
-- \cnt[5]~40\ = CARRY((cnt(5) & !\cnt[4]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt(5),
	datad => VCC,
	cin => \cnt[4]~38\,
	combout => \cnt[5]~39_combout\,
	cout => \cnt[5]~40\);

-- Location: LCCOMB_X28_Y11_N12
\cnt[6]~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt[6]~41_combout\ = (cnt(6) & (!\cnt[5]~40\)) # (!cnt(6) & ((\cnt[5]~40\) # (GND)))
-- \cnt[6]~42\ = CARRY((!\cnt[5]~40\) # (!cnt(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(6),
	datad => VCC,
	cin => \cnt[5]~40\,
	combout => \cnt[6]~41_combout\,
	cout => \cnt[6]~42\);

-- Location: LCFF_X28_Y11_N13
\cnt[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \EXT_CLOCK~clkctrl_outclk\,
	datain => \cnt[6]~41_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(6));

-- Location: LCFF_X28_Y11_N11
\cnt[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \EXT_CLOCK~clkctrl_outclk\,
	datain => \cnt[5]~39_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(5));

-- Location: LCCOMB_X28_Y11_N14
\cnt[7]~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt[7]~43_combout\ = (cnt(7) & (\cnt[6]~42\ $ (GND))) # (!cnt(7) & (!\cnt[6]~42\ & VCC))
-- \cnt[7]~44\ = CARRY((cnt(7) & !\cnt[6]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(7),
	datad => VCC,
	cin => \cnt[6]~42\,
	combout => \cnt[7]~43_combout\,
	cout => \cnt[7]~44\);

-- Location: LCFF_X28_Y11_N15
\cnt[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \EXT_CLOCK~clkctrl_outclk\,
	datain => \cnt[7]~43_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(7));

-- Location: LCCOMB_X64_Y4_N16
\seg7_lut|u1|WideOr6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg7_lut|u1|WideOr6~0_combout\ = (cnt(6) & (!cnt(5) & (cnt(7) $ (!cnt(4))))) # (!cnt(6) & (cnt(4) & (cnt(5) $ (!cnt(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(6),
	datab => cnt(5),
	datac => cnt(7),
	datad => cnt(4),
	combout => \seg7_lut|u1|WideOr6~0_combout\);

-- Location: LCCOMB_X64_Y4_N22
\seg7_lut|u1|WideOr5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg7_lut|u1|WideOr5~0_combout\ = (cnt(5) & ((cnt(4) & ((cnt(7)))) # (!cnt(4) & (cnt(6))))) # (!cnt(5) & (cnt(6) & (cnt(7) $ (cnt(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(6),
	datab => cnt(5),
	datac => cnt(7),
	datad => cnt(4),
	combout => \seg7_lut|u1|WideOr5~0_combout\);

-- Location: LCCOMB_X64_Y4_N0
\seg7_lut|u1|WideOr4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg7_lut|u1|WideOr4~0_combout\ = (cnt(6) & (cnt(7) & ((cnt(5)) # (!cnt(4))))) # (!cnt(6) & (cnt(5) & (!cnt(7) & !cnt(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(6),
	datab => cnt(5),
	datac => cnt(7),
	datad => cnt(4),
	combout => \seg7_lut|u1|WideOr4~0_combout\);

-- Location: LCCOMB_X64_Y4_N14
\seg7_lut|u1|WideOr3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg7_lut|u1|WideOr3~0_combout\ = (cnt(4) & (cnt(6) $ ((!cnt(5))))) # (!cnt(4) & ((cnt(6) & (!cnt(5) & !cnt(7))) # (!cnt(6) & (cnt(5) & cnt(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(6),
	datab => cnt(5),
	datac => cnt(7),
	datad => cnt(4),
	combout => \seg7_lut|u1|WideOr3~0_combout\);

-- Location: LCCOMB_X64_Y4_N12
\seg7_lut|u1|WideOr2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg7_lut|u1|WideOr2~0_combout\ = (cnt(5) & (((!cnt(7) & cnt(4))))) # (!cnt(5) & ((cnt(6) & (!cnt(7))) # (!cnt(6) & ((cnt(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(6),
	datab => cnt(5),
	datac => cnt(7),
	datad => cnt(4),
	combout => \seg7_lut|u1|WideOr2~0_combout\);

-- Location: LCCOMB_X64_Y4_N2
\seg7_lut|u1|WideOr1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg7_lut|u1|WideOr1~0_combout\ = (cnt(6) & (cnt(4) & (cnt(5) $ (cnt(7))))) # (!cnt(6) & (!cnt(7) & ((cnt(5)) # (cnt(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(6),
	datab => cnt(5),
	datac => cnt(7),
	datad => cnt(4),
	combout => \seg7_lut|u1|WideOr1~0_combout\);

-- Location: LCCOMB_X64_Y4_N24
\seg7_lut|u1|WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg7_lut|u1|WideOr0~0_combout\ = (cnt(4) & ((cnt(7)) # (cnt(6) $ (cnt(5))))) # (!cnt(4) & ((cnt(5)) # (cnt(6) $ (cnt(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(6),
	datab => cnt(5),
	datac => cnt(7),
	datad => cnt(4),
	combout => \seg7_lut|u1|WideOr0~0_combout\);

-- Location: LCCOMB_X28_Y11_N16
\cnt[8]~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt[8]~45_combout\ = (cnt(8) & (!\cnt[7]~44\)) # (!cnt(8) & ((\cnt[7]~44\) # (GND)))
-- \cnt[8]~46\ = CARRY((!\cnt[7]~44\) # (!cnt(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(8),
	datad => VCC,
	cin => \cnt[7]~44\,
	combout => \cnt[8]~45_combout\,
	cout => \cnt[8]~46\);

-- Location: LCFF_X28_Y11_N17
\cnt[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \EXT_CLOCK~clkctrl_outclk\,
	datain => \cnt[8]~45_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(8));

-- Location: LCCOMB_X28_Y11_N18
\cnt[9]~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt[9]~47_combout\ = (cnt(9) & (\cnt[8]~46\ $ (GND))) # (!cnt(9) & (!\cnt[8]~46\ & VCC))
-- \cnt[9]~48\ = CARRY((cnt(9) & !\cnt[8]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(9),
	datad => VCC,
	cin => \cnt[8]~46\,
	combout => \cnt[9]~47_combout\,
	cout => \cnt[9]~48\);

-- Location: LCFF_X28_Y11_N19
\cnt[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \EXT_CLOCK~clkctrl_outclk\,
	datain => \cnt[9]~47_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(9));

-- Location: LCCOMB_X28_Y11_N20
\cnt[10]~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt[10]~49_combout\ = (cnt(10) & (!\cnt[9]~48\)) # (!cnt(10) & ((\cnt[9]~48\) # (GND)))
-- \cnt[10]~50\ = CARRY((!\cnt[9]~48\) # (!cnt(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(10),
	datad => VCC,
	cin => \cnt[9]~48\,
	combout => \cnt[10]~49_combout\,
	cout => \cnt[10]~50\);

-- Location: LCFF_X28_Y11_N21
\cnt[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \EXT_CLOCK~clkctrl_outclk\,
	datain => \cnt[10]~49_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(10));

-- Location: LCCOMB_X28_Y11_N22
\cnt[11]~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt[11]~51_combout\ = (cnt(11) & (\cnt[10]~50\ $ (GND))) # (!cnt(11) & (!\cnt[10]~50\ & VCC))
-- \cnt[11]~52\ = CARRY((cnt(11) & !\cnt[10]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(11),
	datad => VCC,
	cin => \cnt[10]~50\,
	combout => \cnt[11]~51_combout\,
	cout => \cnt[11]~52\);

-- Location: LCFF_X28_Y11_N23
\cnt[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \EXT_CLOCK~clkctrl_outclk\,
	datain => \cnt[11]~51_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(11));

-- Location: LCCOMB_X64_Y7_N8
\seg7_lut|u2|WideOr6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg7_lut|u2|WideOr6~0_combout\ = (cnt(10) & (!cnt(9) & (cnt(8) $ (!cnt(11))))) # (!cnt(10) & (cnt(8) & (cnt(9) $ (!cnt(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(10),
	datab => cnt(9),
	datac => cnt(8),
	datad => cnt(11),
	combout => \seg7_lut|u2|WideOr6~0_combout\);

-- Location: LCCOMB_X64_Y7_N10
\seg7_lut|u2|WideOr5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg7_lut|u2|WideOr5~0_combout\ = (cnt(9) & ((cnt(8) & ((cnt(11)))) # (!cnt(8) & (cnt(10))))) # (!cnt(9) & (cnt(10) & (cnt(8) $ (cnt(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(10),
	datab => cnt(9),
	datac => cnt(8),
	datad => cnt(11),
	combout => \seg7_lut|u2|WideOr5~0_combout\);

-- Location: LCCOMB_X64_Y7_N16
\seg7_lut|u2|WideOr4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg7_lut|u2|WideOr4~0_combout\ = (cnt(10) & (cnt(11) & ((cnt(9)) # (!cnt(8))))) # (!cnt(10) & (cnt(9) & (!cnt(8) & !cnt(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(10),
	datab => cnt(9),
	datac => cnt(8),
	datad => cnt(11),
	combout => \seg7_lut|u2|WideOr4~0_combout\);

-- Location: LCCOMB_X64_Y7_N18
\seg7_lut|u2|WideOr3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg7_lut|u2|WideOr3~0_combout\ = (cnt(8) & (cnt(10) $ ((!cnt(9))))) # (!cnt(8) & ((cnt(10) & (!cnt(9) & !cnt(11))) # (!cnt(10) & (cnt(9) & cnt(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(10),
	datab => cnt(9),
	datac => cnt(8),
	datad => cnt(11),
	combout => \seg7_lut|u2|WideOr3~0_combout\);

-- Location: LCCOMB_X64_Y7_N12
\seg7_lut|u2|WideOr2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg7_lut|u2|WideOr2~0_combout\ = (cnt(9) & (((cnt(8) & !cnt(11))))) # (!cnt(9) & ((cnt(10) & ((!cnt(11)))) # (!cnt(10) & (cnt(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(10),
	datab => cnt(9),
	datac => cnt(8),
	datad => cnt(11),
	combout => \seg7_lut|u2|WideOr2~0_combout\);

-- Location: LCCOMB_X64_Y7_N30
\seg7_lut|u2|WideOr1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg7_lut|u2|WideOr1~0_combout\ = (cnt(10) & (cnt(8) & (cnt(9) $ (cnt(11))))) # (!cnt(10) & (!cnt(11) & ((cnt(9)) # (cnt(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(10),
	datab => cnt(9),
	datac => cnt(8),
	datad => cnt(11),
	combout => \seg7_lut|u2|WideOr1~0_combout\);

-- Location: LCCOMB_X64_Y7_N0
\seg7_lut|u2|WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg7_lut|u2|WideOr0~0_combout\ = (cnt(8) & ((cnt(11)) # (cnt(10) $ (cnt(9))))) # (!cnt(8) & ((cnt(9)) # (cnt(10) $ (cnt(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110101101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(10),
	datab => cnt(9),
	datac => cnt(8),
	datad => cnt(11),
	combout => \seg7_lut|u2|WideOr0~0_combout\);

-- Location: LCCOMB_X28_Y11_N24
\cnt[12]~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt[12]~53_combout\ = (cnt(12) & (!\cnt[11]~52\)) # (!cnt(12) & ((\cnt[11]~52\) # (GND)))
-- \cnt[12]~54\ = CARRY((!\cnt[11]~52\) # (!cnt(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(12),
	datad => VCC,
	cin => \cnt[11]~52\,
	combout => \cnt[12]~53_combout\,
	cout => \cnt[12]~54\);

-- Location: LCFF_X28_Y11_N25
\cnt[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \EXT_CLOCK~clkctrl_outclk\,
	datain => \cnt[12]~53_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(12));

-- Location: LCCOMB_X28_Y11_N26
\cnt[13]~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt[13]~55_combout\ = (cnt(13) & (\cnt[12]~54\ $ (GND))) # (!cnt(13) & (!\cnt[12]~54\ & VCC))
-- \cnt[13]~56\ = CARRY((cnt(13) & !\cnt[12]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(13),
	datad => VCC,
	cin => \cnt[12]~54\,
	combout => \cnt[13]~55_combout\,
	cout => \cnt[13]~56\);

-- Location: LCFF_X28_Y11_N27
\cnt[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \EXT_CLOCK~clkctrl_outclk\,
	datain => \cnt[13]~55_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(13));

-- Location: LCCOMB_X28_Y11_N28
\cnt[14]~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt[14]~57_combout\ = (cnt(14) & (!\cnt[13]~56\)) # (!cnt(14) & ((\cnt[13]~56\) # (GND)))
-- \cnt[14]~58\ = CARRY((!\cnt[13]~56\) # (!cnt(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(14),
	datad => VCC,
	cin => \cnt[13]~56\,
	combout => \cnt[14]~57_combout\,
	cout => \cnt[14]~58\);

-- Location: LCFF_X28_Y11_N29
\cnt[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \EXT_CLOCK~clkctrl_outclk\,
	datain => \cnt[14]~57_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(14));

-- Location: LCCOMB_X28_Y11_N30
\cnt[15]~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt[15]~59_combout\ = (cnt(15) & (\cnt[14]~58\ $ (GND))) # (!cnt(15) & (!\cnt[14]~58\ & VCC))
-- \cnt[15]~60\ = CARRY((cnt(15) & !\cnt[14]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(15),
	datad => VCC,
	cin => \cnt[14]~58\,
	combout => \cnt[15]~59_combout\,
	cout => \cnt[15]~60\);

-- Location: LCFF_X28_Y11_N31
\cnt[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \EXT_CLOCK~clkctrl_outclk\,
	datain => \cnt[15]~59_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(15));

-- Location: LCCOMB_X64_Y11_N24
\seg7_lut|u3|WideOr6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg7_lut|u3|WideOr6~0_combout\ = (cnt(14) & (!cnt(13) & (cnt(15) $ (!cnt(12))))) # (!cnt(14) & (cnt(12) & (cnt(13) $ (!cnt(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(13),
	datab => cnt(14),
	datac => cnt(15),
	datad => cnt(12),
	combout => \seg7_lut|u3|WideOr6~0_combout\);

-- Location: LCCOMB_X64_Y11_N6
\seg7_lut|u3|WideOr5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg7_lut|u3|WideOr5~0_combout\ = (cnt(13) & ((cnt(12) & ((cnt(15)))) # (!cnt(12) & (cnt(14))))) # (!cnt(13) & (cnt(14) & (cnt(15) $ (cnt(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(13),
	datab => cnt(14),
	datac => cnt(15),
	datad => cnt(12),
	combout => \seg7_lut|u3|WideOr5~0_combout\);

-- Location: LCCOMB_X64_Y11_N4
\seg7_lut|u3|WideOr4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg7_lut|u3|WideOr4~0_combout\ = (cnt(14) & (cnt(15) & ((cnt(13)) # (!cnt(12))))) # (!cnt(14) & (cnt(13) & (!cnt(15) & !cnt(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(13),
	datab => cnt(14),
	datac => cnt(15),
	datad => cnt(12),
	combout => \seg7_lut|u3|WideOr4~0_combout\);

-- Location: LCCOMB_X64_Y11_N22
\seg7_lut|u3|WideOr3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg7_lut|u3|WideOr3~0_combout\ = (cnt(12) & (cnt(13) $ ((!cnt(14))))) # (!cnt(12) & ((cnt(13) & (!cnt(14) & cnt(15))) # (!cnt(13) & (cnt(14) & !cnt(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(13),
	datab => cnt(14),
	datac => cnt(15),
	datad => cnt(12),
	combout => \seg7_lut|u3|WideOr3~0_combout\);

-- Location: LCCOMB_X64_Y11_N8
\seg7_lut|u3|WideOr2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg7_lut|u3|WideOr2~0_combout\ = (cnt(13) & (((!cnt(15) & cnt(12))))) # (!cnt(13) & ((cnt(14) & (!cnt(15))) # (!cnt(14) & ((cnt(12))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(13),
	datab => cnt(14),
	datac => cnt(15),
	datad => cnt(12),
	combout => \seg7_lut|u3|WideOr2~0_combout\);

-- Location: LCCOMB_X64_Y11_N18
\seg7_lut|u3|WideOr1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg7_lut|u3|WideOr1~0_combout\ = (cnt(13) & (!cnt(15) & ((cnt(12)) # (!cnt(14))))) # (!cnt(13) & (cnt(12) & (cnt(14) $ (!cnt(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(13),
	datab => cnt(14),
	datac => cnt(15),
	datad => cnt(12),
	combout => \seg7_lut|u3|WideOr1~0_combout\);

-- Location: LCCOMB_X64_Y11_N12
\seg7_lut|u3|WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg7_lut|u3|WideOr0~0_combout\ = (cnt(12) & ((cnt(15)) # (cnt(13) $ (cnt(14))))) # (!cnt(12) & ((cnt(13)) # (cnt(14) $ (cnt(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(13),
	datab => cnt(14),
	datac => cnt(15),
	datad => cnt(12),
	combout => \seg7_lut|u3|WideOr0~0_combout\);

-- Location: LCCOMB_X28_Y10_N0
\cnt[16]~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt[16]~61_combout\ = (cnt(16) & (!\cnt[15]~60\)) # (!cnt(16) & ((\cnt[15]~60\) # (GND)))
-- \cnt[16]~62\ = CARRY((!\cnt[15]~60\) # (!cnt(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(16),
	datad => VCC,
	cin => \cnt[15]~60\,
	combout => \cnt[16]~61_combout\,
	cout => \cnt[16]~62\);

-- Location: LCFF_X28_Y10_N1
\cnt[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \EXT_CLOCK~clkctrl_outclk\,
	datain => \cnt[16]~61_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(16));

-- Location: LCCOMB_X28_Y10_N2
\cnt[17]~63\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt[17]~63_combout\ = (cnt(17) & (\cnt[16]~62\ $ (GND))) # (!cnt(17) & (!\cnt[16]~62\ & VCC))
-- \cnt[17]~64\ = CARRY((cnt(17) & !\cnt[16]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(17),
	datad => VCC,
	cin => \cnt[16]~62\,
	combout => \cnt[17]~63_combout\,
	cout => \cnt[17]~64\);

-- Location: LCFF_X28_Y10_N3
\cnt[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \EXT_CLOCK~clkctrl_outclk\,
	datain => \cnt[17]~63_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(17));

-- Location: LCCOMB_X28_Y10_N4
\cnt[18]~65\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt[18]~65_combout\ = (cnt(18) & (!\cnt[17]~64\)) # (!cnt(18) & ((\cnt[17]~64\) # (GND)))
-- \cnt[18]~66\ = CARRY((!\cnt[17]~64\) # (!cnt(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(18),
	datad => VCC,
	cin => \cnt[17]~64\,
	combout => \cnt[18]~65_combout\,
	cout => \cnt[18]~66\);

-- Location: LCFF_X28_Y10_N5
\cnt[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \EXT_CLOCK~clkctrl_outclk\,
	datain => \cnt[18]~65_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(18));

-- Location: LCCOMB_X28_Y10_N6
\cnt[19]~67\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt[19]~67_combout\ = (cnt(19) & (\cnt[18]~66\ $ (GND))) # (!cnt(19) & (!\cnt[18]~66\ & VCC))
-- \cnt[19]~68\ = CARRY((cnt(19) & !\cnt[18]~66\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt(19),
	datad => VCC,
	cin => \cnt[18]~66\,
	combout => \cnt[19]~67_combout\,
	cout => \cnt[19]~68\);

-- Location: LCFF_X28_Y10_N7
\cnt[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \EXT_CLOCK~clkctrl_outclk\,
	datain => \cnt[19]~67_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(19));

-- Location: LCCOMB_X1_Y14_N16
\seg7_lut|u4|WideOr6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg7_lut|u4|WideOr6~0_combout\ = (cnt(19) & (cnt(16) & (cnt(18) $ (cnt(17))))) # (!cnt(19) & (!cnt(17) & (cnt(18) $ (cnt(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(19),
	datab => cnt(18),
	datac => cnt(16),
	datad => cnt(17),
	combout => \seg7_lut|u4|WideOr6~0_combout\);

-- Location: LCCOMB_X1_Y14_N22
\seg7_lut|u4|WideOr5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg7_lut|u4|WideOr5~0_combout\ = (cnt(19) & ((cnt(16) & ((cnt(17)))) # (!cnt(16) & (cnt(18))))) # (!cnt(19) & (cnt(18) & (cnt(16) $ (cnt(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(19),
	datab => cnt(18),
	datac => cnt(16),
	datad => cnt(17),
	combout => \seg7_lut|u4|WideOr5~0_combout\);

-- Location: LCCOMB_X1_Y14_N12
\seg7_lut|u4|WideOr4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg7_lut|u4|WideOr4~0_combout\ = (cnt(19) & (cnt(18) & ((cnt(17)) # (!cnt(16))))) # (!cnt(19) & (!cnt(18) & (!cnt(16) & cnt(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(19),
	datab => cnt(18),
	datac => cnt(16),
	datad => cnt(17),
	combout => \seg7_lut|u4|WideOr4~0_combout\);

-- Location: LCCOMB_X1_Y14_N30
\seg7_lut|u4|WideOr3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg7_lut|u4|WideOr3~0_combout\ = (cnt(16) & ((cnt(18) $ (!cnt(17))))) # (!cnt(16) & ((cnt(19) & (!cnt(18) & cnt(17))) # (!cnt(19) & (cnt(18) & !cnt(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001000110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(19),
	datab => cnt(18),
	datac => cnt(16),
	datad => cnt(17),
	combout => \seg7_lut|u4|WideOr3~0_combout\);

-- Location: LCCOMB_X1_Y14_N28
\seg7_lut|u4|WideOr2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg7_lut|u4|WideOr2~0_combout\ = (cnt(17) & (!cnt(19) & ((cnt(16))))) # (!cnt(17) & ((cnt(18) & (!cnt(19))) # (!cnt(18) & ((cnt(16))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(19),
	datab => cnt(18),
	datac => cnt(16),
	datad => cnt(17),
	combout => \seg7_lut|u4|WideOr2~0_combout\);

-- Location: LCCOMB_X1_Y14_N14
\seg7_lut|u4|WideOr1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg7_lut|u4|WideOr1~0_combout\ = (cnt(18) & (cnt(16) & (cnt(19) $ (cnt(17))))) # (!cnt(18) & (!cnt(19) & ((cnt(16)) # (cnt(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(19),
	datab => cnt(18),
	datac => cnt(16),
	datad => cnt(17),
	combout => \seg7_lut|u4|WideOr1~0_combout\);

-- Location: LCCOMB_X1_Y14_N0
\seg7_lut|u4|WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg7_lut|u4|WideOr0~0_combout\ = (cnt(16) & ((cnt(19)) # (cnt(18) $ (cnt(17))))) # (!cnt(16) & ((cnt(17)) # (cnt(19) $ (cnt(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(19),
	datab => cnt(18),
	datac => cnt(16),
	datad => cnt(17),
	combout => \seg7_lut|u4|WideOr0~0_combout\);

-- Location: LCCOMB_X28_Y10_N8
\cnt[20]~69\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt[20]~69_combout\ = (cnt(20) & (!\cnt[19]~68\)) # (!cnt(20) & ((\cnt[19]~68\) # (GND)))
-- \cnt[20]~70\ = CARRY((!\cnt[19]~68\) # (!cnt(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(20),
	datad => VCC,
	cin => \cnt[19]~68\,
	combout => \cnt[20]~69_combout\,
	cout => \cnt[20]~70\);

-- Location: LCFF_X28_Y10_N9
\cnt[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \EXT_CLOCK~clkctrl_outclk\,
	datain => \cnt[20]~69_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(20));

-- Location: LCCOMB_X28_Y10_N10
\cnt[21]~71\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt[21]~71_combout\ = (cnt(21) & (\cnt[20]~70\ $ (GND))) # (!cnt(21) & (!\cnt[20]~70\ & VCC))
-- \cnt[21]~72\ = CARRY((cnt(21) & !\cnt[20]~70\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt(21),
	datad => VCC,
	cin => \cnt[20]~70\,
	combout => \cnt[21]~71_combout\,
	cout => \cnt[21]~72\);

-- Location: LCCOMB_X28_Y10_N12
\cnt[22]~73\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt[22]~73_combout\ = (cnt(22) & (!\cnt[21]~72\)) # (!cnt(22) & ((\cnt[21]~72\) # (GND)))
-- \cnt[22]~74\ = CARRY((!\cnt[21]~72\) # (!cnt(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt(22),
	datad => VCC,
	cin => \cnt[21]~72\,
	combout => \cnt[22]~73_combout\,
	cout => \cnt[22]~74\);

-- Location: LCFF_X28_Y10_N13
\cnt[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \EXT_CLOCK~clkctrl_outclk\,
	datain => \cnt[22]~73_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(22));

-- Location: LCFF_X28_Y10_N11
\cnt[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \EXT_CLOCK~clkctrl_outclk\,
	datain => \cnt[21]~71_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(21));

-- Location: LCCOMB_X28_Y10_N14
\cnt[23]~75\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt[23]~75_combout\ = (cnt(23) & (\cnt[22]~74\ $ (GND))) # (!cnt(23) & (!\cnt[22]~74\ & VCC))
-- \cnt[23]~76\ = CARRY((cnt(23) & !\cnt[22]~74\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(23),
	datad => VCC,
	cin => \cnt[22]~74\,
	combout => \cnt[23]~75_combout\,
	cout => \cnt[23]~76\);

-- Location: LCFF_X28_Y10_N15
\cnt[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \EXT_CLOCK~clkctrl_outclk\,
	datain => \cnt[23]~75_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(23));

-- Location: LCCOMB_X1_Y15_N28
\seg7_lut|u5|WideOr6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg7_lut|u5|WideOr6~0_combout\ = (cnt(22) & (!cnt(21) & (cnt(20) $ (!cnt(23))))) # (!cnt(22) & (cnt(20) & (cnt(21) $ (!cnt(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(22),
	datab => cnt(21),
	datac => cnt(20),
	datad => cnt(23),
	combout => \seg7_lut|u5|WideOr6~0_combout\);

-- Location: LCCOMB_X1_Y15_N14
\seg7_lut|u5|WideOr5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg7_lut|u5|WideOr5~0_combout\ = (cnt(21) & ((cnt(20) & ((cnt(23)))) # (!cnt(20) & (cnt(22))))) # (!cnt(21) & (cnt(22) & (cnt(20) $ (cnt(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(22),
	datab => cnt(21),
	datac => cnt(20),
	datad => cnt(23),
	combout => \seg7_lut|u5|WideOr5~0_combout\);

-- Location: LCCOMB_X1_Y15_N20
\seg7_lut|u5|WideOr4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg7_lut|u5|WideOr4~0_combout\ = (cnt(22) & (cnt(23) & ((cnt(21)) # (!cnt(20))))) # (!cnt(22) & (cnt(21) & (!cnt(20) & !cnt(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(22),
	datab => cnt(21),
	datac => cnt(20),
	datad => cnt(23),
	combout => \seg7_lut|u5|WideOr4~0_combout\);

-- Location: LCCOMB_X1_Y15_N2
\seg7_lut|u5|WideOr3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg7_lut|u5|WideOr3~0_combout\ = (cnt(20) & (cnt(22) $ ((!cnt(21))))) # (!cnt(20) & ((cnt(22) & (!cnt(21) & !cnt(23))) # (!cnt(22) & (cnt(21) & cnt(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(22),
	datab => cnt(21),
	datac => cnt(20),
	datad => cnt(23),
	combout => \seg7_lut|u5|WideOr3~0_combout\);

-- Location: LCCOMB_X1_Y15_N0
\seg7_lut|u5|WideOr2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg7_lut|u5|WideOr2~0_combout\ = (cnt(21) & (((cnt(20) & !cnt(23))))) # (!cnt(21) & ((cnt(22) & ((!cnt(23)))) # (!cnt(22) & (cnt(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(22),
	datab => cnt(21),
	datac => cnt(20),
	datad => cnt(23),
	combout => \seg7_lut|u5|WideOr2~0_combout\);

-- Location: LCCOMB_X1_Y15_N26
\seg7_lut|u5|WideOr1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg7_lut|u5|WideOr1~0_combout\ = (cnt(22) & (cnt(20) & (cnt(21) $ (cnt(23))))) # (!cnt(22) & (!cnt(23) & ((cnt(21)) # (cnt(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(22),
	datab => cnt(21),
	datac => cnt(20),
	datad => cnt(23),
	combout => \seg7_lut|u5|WideOr1~0_combout\);

-- Location: LCCOMB_X1_Y15_N12
\seg7_lut|u5|WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg7_lut|u5|WideOr0~0_combout\ = (cnt(20) & ((cnt(23)) # (cnt(22) $ (cnt(21))))) # (!cnt(20) & ((cnt(21)) # (cnt(22) $ (cnt(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110101101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(22),
	datab => cnt(21),
	datac => cnt(20),
	datad => cnt(23),
	combout => \seg7_lut|u5|WideOr0~0_combout\);

-- Location: LCCOMB_X28_Y10_N16
\cnt[24]~77\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt[24]~77_combout\ = (cnt(24) & (!\cnt[23]~76\)) # (!cnt(24) & ((\cnt[23]~76\) # (GND)))
-- \cnt[24]~78\ = CARRY((!\cnt[23]~76\) # (!cnt(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt(24),
	datad => VCC,
	cin => \cnt[23]~76\,
	combout => \cnt[24]~77_combout\,
	cout => \cnt[24]~78\);

-- Location: LCCOMB_X28_Y10_N18
\cnt[25]~79\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt[25]~79_combout\ = (cnt(25) & (\cnt[24]~78\ $ (GND))) # (!cnt(25) & (!\cnt[24]~78\ & VCC))
-- \cnt[25]~80\ = CARRY((cnt(25) & !\cnt[24]~78\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(25),
	datad => VCC,
	cin => \cnt[24]~78\,
	combout => \cnt[25]~79_combout\,
	cout => \cnt[25]~80\);

-- Location: LCFF_X28_Y10_N19
\cnt[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \EXT_CLOCK~clkctrl_outclk\,
	datain => \cnt[25]~79_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(25));

-- Location: LCCOMB_X28_Y10_N20
\cnt[26]~81\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt[26]~81_combout\ = (cnt(26) & (!\cnt[25]~80\)) # (!cnt(26) & ((\cnt[25]~80\) # (GND)))
-- \cnt[26]~82\ = CARRY((!\cnt[25]~80\) # (!cnt(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt(26),
	datad => VCC,
	cin => \cnt[25]~80\,
	combout => \cnt[26]~81_combout\,
	cout => \cnt[26]~82\);

-- Location: LCCOMB_X28_Y10_N22
\cnt[27]~83\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt[27]~83_combout\ = (cnt(27) & (\cnt[26]~82\ $ (GND))) # (!cnt(27) & (!\cnt[26]~82\ & VCC))
-- \cnt[27]~84\ = CARRY((cnt(27) & !\cnt[26]~82\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(27),
	datad => VCC,
	cin => \cnt[26]~82\,
	combout => \cnt[27]~83_combout\,
	cout => \cnt[27]~84\);

-- Location: LCFF_X28_Y10_N23
\cnt[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \EXT_CLOCK~clkctrl_outclk\,
	datain => \cnt[27]~83_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(27));

-- Location: LCFF_X28_Y10_N17
\cnt[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \EXT_CLOCK~clkctrl_outclk\,
	datain => \cnt[24]~77_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(24));

-- Location: LCFF_X28_Y10_N21
\cnt[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \EXT_CLOCK~clkctrl_outclk\,
	datain => \cnt[26]~81_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(26));

-- Location: LCCOMB_X1_Y17_N12
\seg7_lut|u6|WideOr6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg7_lut|u6|WideOr6~0_combout\ = (cnt(27) & (cnt(24) & (cnt(26) $ (cnt(25))))) # (!cnt(27) & (!cnt(25) & (cnt(24) $ (cnt(26)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(27),
	datab => cnt(24),
	datac => cnt(26),
	datad => cnt(25),
	combout => \seg7_lut|u6|WideOr6~0_combout\);

-- Location: LCCOMB_X1_Y17_N14
\seg7_lut|u6|WideOr5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg7_lut|u6|WideOr5~0_combout\ = (cnt(27) & ((cnt(24) & ((cnt(25)))) # (!cnt(24) & (cnt(26))))) # (!cnt(27) & (cnt(26) & (cnt(24) $ (cnt(25)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(27),
	datab => cnt(24),
	datac => cnt(26),
	datad => cnt(25),
	combout => \seg7_lut|u6|WideOr5~0_combout\);

-- Location: LCCOMB_X1_Y17_N28
\seg7_lut|u6|WideOr4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg7_lut|u6|WideOr4~0_combout\ = (cnt(27) & (cnt(26) & ((cnt(25)) # (!cnt(24))))) # (!cnt(27) & (!cnt(24) & (!cnt(26) & cnt(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(27),
	datab => cnt(24),
	datac => cnt(26),
	datad => cnt(25),
	combout => \seg7_lut|u6|WideOr4~0_combout\);

-- Location: LCCOMB_X1_Y17_N6
\seg7_lut|u6|WideOr3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg7_lut|u6|WideOr3~0_combout\ = (cnt(24) & ((cnt(26) $ (!cnt(25))))) # (!cnt(24) & ((cnt(27) & (!cnt(26) & cnt(25))) # (!cnt(27) & (cnt(26) & !cnt(25)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001000011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(27),
	datab => cnt(24),
	datac => cnt(26),
	datad => cnt(25),
	combout => \seg7_lut|u6|WideOr3~0_combout\);

-- Location: LCCOMB_X1_Y17_N4
\seg7_lut|u6|WideOr2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg7_lut|u6|WideOr2~0_combout\ = (cnt(25) & (!cnt(27) & (cnt(24)))) # (!cnt(25) & ((cnt(26) & (!cnt(27))) # (!cnt(26) & ((cnt(24))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(27),
	datab => cnt(24),
	datac => cnt(26),
	datad => cnt(25),
	combout => \seg7_lut|u6|WideOr2~0_combout\);

-- Location: LCCOMB_X1_Y17_N10
\seg7_lut|u6|WideOr1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg7_lut|u6|WideOr1~0_combout\ = (cnt(24) & (cnt(27) $ (((cnt(25)) # (!cnt(26)))))) # (!cnt(24) & (!cnt(27) & (!cnt(26) & cnt(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(27),
	datab => cnt(24),
	datac => cnt(26),
	datad => cnt(25),
	combout => \seg7_lut|u6|WideOr1~0_combout\);

-- Location: LCCOMB_X1_Y17_N8
\seg7_lut|u6|WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg7_lut|u6|WideOr0~0_combout\ = (cnt(24) & ((cnt(27)) # (cnt(26) $ (cnt(25))))) # (!cnt(24) & ((cnt(25)) # (cnt(27) $ (cnt(26)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(27),
	datab => cnt(24),
	datac => cnt(26),
	datad => cnt(25),
	combout => \seg7_lut|u6|WideOr0~0_combout\);

-- Location: LCCOMB_X28_Y10_N24
\cnt[28]~85\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt[28]~85_combout\ = (cnt(28) & (!\cnt[27]~84\)) # (!cnt(28) & ((\cnt[27]~84\) # (GND)))
-- \cnt[28]~86\ = CARRY((!\cnt[27]~84\) # (!cnt(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt(28),
	datad => VCC,
	cin => \cnt[27]~84\,
	combout => \cnt[28]~85_combout\,
	cout => \cnt[28]~86\);

-- Location: LCFF_X28_Y10_N25
\cnt[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \EXT_CLOCK~clkctrl_outclk\,
	datain => \cnt[28]~85_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(28));

-- Location: LCCOMB_X28_Y10_N26
\cnt[29]~87\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt[29]~87_combout\ = (cnt(29) & (\cnt[28]~86\ $ (GND))) # (!cnt(29) & (!\cnt[28]~86\ & VCC))
-- \cnt[29]~88\ = CARRY((cnt(29) & !\cnt[28]~86\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(29),
	datad => VCC,
	cin => \cnt[28]~86\,
	combout => \cnt[29]~87_combout\,
	cout => \cnt[29]~88\);

-- Location: LCFF_X28_Y10_N27
\cnt[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \EXT_CLOCK~clkctrl_outclk\,
	datain => \cnt[29]~87_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(29));

-- Location: LCCOMB_X28_Y10_N28
\cnt[30]~89\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt[30]~89_combout\ = (cnt(30) & (!\cnt[29]~88\)) # (!cnt(30) & ((\cnt[29]~88\) # (GND)))
-- \cnt[30]~90\ = CARRY((!\cnt[29]~88\) # (!cnt(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(30),
	datad => VCC,
	cin => \cnt[29]~88\,
	combout => \cnt[30]~89_combout\,
	cout => \cnt[30]~90\);

-- Location: LCFF_X28_Y10_N29
\cnt[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \EXT_CLOCK~clkctrl_outclk\,
	datain => \cnt[30]~89_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(30));

-- Location: LCCOMB_X28_Y10_N30
\cnt[31]~91\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt[31]~91_combout\ = \cnt[30]~90\ $ (!cnt(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => cnt(31),
	cin => \cnt[30]~90\,
	combout => \cnt[31]~91_combout\);

-- Location: LCFF_X28_Y10_N31
\cnt[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \EXT_CLOCK~clkctrl_outclk\,
	datain => \cnt[31]~91_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(31));

-- Location: LCCOMB_X1_Y24_N12
\seg7_lut|u7|WideOr6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg7_lut|u7|WideOr6~0_combout\ = (cnt(31) & (cnt(28) & (cnt(29) $ (cnt(30))))) # (!cnt(31) & (!cnt(29) & (cnt(28) $ (cnt(30)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(28),
	datab => cnt(29),
	datac => cnt(31),
	datad => cnt(30),
	combout => \seg7_lut|u7|WideOr6~0_combout\);

-- Location: LCCOMB_X1_Y24_N30
\seg7_lut|u7|WideOr5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg7_lut|u7|WideOr5~0_combout\ = (cnt(29) & ((cnt(28) & (cnt(31))) # (!cnt(28) & ((cnt(30)))))) # (!cnt(29) & (cnt(30) & (cnt(28) $ (cnt(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(28),
	datab => cnt(29),
	datac => cnt(31),
	datad => cnt(30),
	combout => \seg7_lut|u7|WideOr5~0_combout\);

-- Location: LCCOMB_X1_Y24_N20
\seg7_lut|u7|WideOr4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg7_lut|u7|WideOr4~0_combout\ = (cnt(31) & (cnt(30) & ((cnt(29)) # (!cnt(28))))) # (!cnt(31) & (!cnt(28) & (cnt(29) & !cnt(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(28),
	datab => cnt(29),
	datac => cnt(31),
	datad => cnt(30),
	combout => \seg7_lut|u7|WideOr4~0_combout\);

-- Location: LCCOMB_X1_Y24_N14
\seg7_lut|u7|WideOr3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg7_lut|u7|WideOr3~0_combout\ = (cnt(28) & (cnt(29) $ (((!cnt(30)))))) # (!cnt(28) & ((cnt(29) & (cnt(31) & !cnt(30))) # (!cnt(29) & (!cnt(31) & cnt(30)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100101100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(28),
	datab => cnt(29),
	datac => cnt(31),
	datad => cnt(30),
	combout => \seg7_lut|u7|WideOr3~0_combout\);

-- Location: LCCOMB_X1_Y24_N28
\seg7_lut|u7|WideOr2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg7_lut|u7|WideOr2~0_combout\ = (cnt(29) & (cnt(28) & (!cnt(31)))) # (!cnt(29) & ((cnt(30) & ((!cnt(31)))) # (!cnt(30) & (cnt(28)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(28),
	datab => cnt(29),
	datac => cnt(31),
	datad => cnt(30),
	combout => \seg7_lut|u7|WideOr2~0_combout\);

-- Location: LCCOMB_X1_Y24_N10
\seg7_lut|u7|WideOr1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg7_lut|u7|WideOr1~0_combout\ = (cnt(28) & (cnt(31) $ (((cnt(29)) # (!cnt(30)))))) # (!cnt(28) & (cnt(29) & (!cnt(31) & !cnt(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(28),
	datab => cnt(29),
	datac => cnt(31),
	datad => cnt(30),
	combout => \seg7_lut|u7|WideOr1~0_combout\);

-- Location: LCCOMB_X1_Y24_N0
\seg7_lut|u7|WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg7_lut|u7|WideOr0~0_combout\ = (cnt(28) & ((cnt(31)) # (cnt(29) $ (cnt(30))))) # (!cnt(28) & ((cnt(29)) # (cnt(31) $ (cnt(30)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(28),
	datab => cnt(29),
	datac => cnt(31),
	datad => cnt(30),
	combout => \seg7_lut|u7|WideOr0~0_combout\);

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
	padio => ww_CLOCK_50);

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

-- Location: PIN_AF10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[0]~I\ : cycloneii_io
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
	datain => \seg7_lut|u0|WideOr6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(0));

-- Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[1]~I\ : cycloneii_io
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
	datain => \seg7_lut|u0|WideOr5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(1));

-- Location: PIN_AC12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[2]~I\ : cycloneii_io
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
	datain => \seg7_lut|u0|WideOr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(2));

-- Location: PIN_AD11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[3]~I\ : cycloneii_io
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
	datain => \seg7_lut|u0|WideOr3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(3));

-- Location: PIN_AE11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[4]~I\ : cycloneii_io
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
	datain => \seg7_lut|u0|WideOr2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(4));

-- Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[5]~I\ : cycloneii_io
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
	datain => \seg7_lut|u0|WideOr1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(5));

-- Location: PIN_V13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[6]~I\ : cycloneii_io
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
	datain => \seg7_lut|u0|ALT_INV_WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(6));

-- Location: PIN_V20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX1[0]~I\ : cycloneii_io
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
	datain => \seg7_lut|u1|WideOr6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(0));

-- Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX1[1]~I\ : cycloneii_io
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
	datain => \seg7_lut|u1|WideOr5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(1));

-- Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX1[2]~I\ : cycloneii_io
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
	datain => \seg7_lut|u1|WideOr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(2));

-- Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX1[3]~I\ : cycloneii_io
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
	datain => \seg7_lut|u1|WideOr3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(3));

-- Location: PIN_AA24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX1[4]~I\ : cycloneii_io
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
	datain => \seg7_lut|u1|WideOr2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(4));

-- Location: PIN_AA23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX1[5]~I\ : cycloneii_io
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
	datain => \seg7_lut|u1|WideOr1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(5));

-- Location: PIN_AB24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX1[6]~I\ : cycloneii_io
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
	datain => \seg7_lut|u1|ALT_INV_WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(6));

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
	datain => \seg7_lut|u2|WideOr6~0_combout\,
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
	datain => \seg7_lut|u2|WideOr5~0_combout\,
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
	datain => \seg7_lut|u2|WideOr4~0_combout\,
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
	datain => \seg7_lut|u2|WideOr3~0_combout\,
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
	datain => \seg7_lut|u2|WideOr2~0_combout\,
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
	datain => \seg7_lut|u2|WideOr1~0_combout\,
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
	datain => \seg7_lut|u2|ALT_INV_WideOr0~0_combout\,
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
	datain => \seg7_lut|u3|WideOr6~0_combout\,
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
	datain => \seg7_lut|u3|WideOr5~0_combout\,
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
	datain => \seg7_lut|u3|WideOr4~0_combout\,
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
	datain => \seg7_lut|u3|WideOr3~0_combout\,
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
	datain => \seg7_lut|u3|WideOr2~0_combout\,
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
	datain => \seg7_lut|u3|WideOr1~0_combout\,
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
	datain => \seg7_lut|u3|ALT_INV_WideOr0~0_combout\,
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
	datain => \seg7_lut|u4|WideOr6~0_combout\,
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
	datain => \seg7_lut|u4|WideOr5~0_combout\,
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
	datain => \seg7_lut|u4|WideOr4~0_combout\,
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
	datain => \seg7_lut|u4|WideOr3~0_combout\,
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
	datain => \seg7_lut|u4|WideOr2~0_combout\,
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
	datain => \seg7_lut|u4|WideOr1~0_combout\,
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
	datain => \seg7_lut|u4|ALT_INV_WideOr0~0_combout\,
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
	datain => \seg7_lut|u5|WideOr6~0_combout\,
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
	datain => \seg7_lut|u5|WideOr5~0_combout\,
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
	datain => \seg7_lut|u5|WideOr4~0_combout\,
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
	datain => \seg7_lut|u5|WideOr3~0_combout\,
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
	datain => \seg7_lut|u5|WideOr2~0_combout\,
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
	datain => \seg7_lut|u5|WideOr1~0_combout\,
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
	datain => \seg7_lut|u5|ALT_INV_WideOr0~0_combout\,
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
	datain => \seg7_lut|u6|WideOr6~0_combout\,
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
	datain => \seg7_lut|u6|WideOr5~0_combout\,
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
	datain => \seg7_lut|u6|WideOr4~0_combout\,
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
	datain => \seg7_lut|u6|WideOr3~0_combout\,
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
	datain => \seg7_lut|u6|WideOr2~0_combout\,
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
	datain => \seg7_lut|u6|WideOr1~0_combout\,
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
	datain => \seg7_lut|u6|ALT_INV_WideOr0~0_combout\,
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
	datain => \seg7_lut|u7|WideOr6~0_combout\,
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
	datain => \seg7_lut|u7|WideOr5~0_combout\,
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
	datain => \seg7_lut|u7|WideOr4~0_combout\,
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
	datain => \seg7_lut|u7|WideOr3~0_combout\,
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
	datain => \seg7_lut|u7|WideOr2~0_combout\,
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
	datain => \seg7_lut|u7|WideOr1~0_combout\,
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
	datain => \seg7_lut|u7|ALT_INV_WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX7(6));
END structure;


