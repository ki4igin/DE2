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

-- DATE "12/09/2020 20:03:37"

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

ENTITY 	filter IS
    PORT (
	clk : IN std_logic;
	reset_n : IN std_logic;
	data : IN std_logic_vector(15 DOWNTO 0);
	result : OUT std_logic_vector(15 DOWNTO 0)
	);
END filter;

-- Design Ports Information
-- result[0]	=>  Location: PIN_AE15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- result[1]	=>  Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- result[2]	=>  Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- result[3]	=>  Location: PIN_G14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- result[4]	=>  Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- result[5]	=>  Location: PIN_G13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- result[6]	=>  Location: PIN_AA14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- result[7]	=>  Location: PIN_Y13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- result[8]	=>  Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- result[9]	=>  Location: PIN_AC14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- result[10]	=>  Location: PIN_Y14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- result[11]	=>  Location: PIN_C15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- result[12]	=>  Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- result[13]	=>  Location: PIN_AD15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- result[14]	=>  Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- result[15]	=>  Location: PIN_AA13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clk	=>  Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reset_n	=>  Location: PIN_N1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data[2]	=>  Location: PIN_P23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data[1]	=>  Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data[0]	=>  Location: PIN_R25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data[3]	=>  Location: PIN_H15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data[4]	=>  Location: PIN_R20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data[5]	=>  Location: PIN_AC15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data[6]	=>  Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data[7]	=>  Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data[8]	=>  Location: PIN_P24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data[9]	=>  Location: PIN_M25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data[10]	=>  Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data[11]	=>  Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data[12]	=>  Location: PIN_N23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data[13]	=>  Location: PIN_T22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data[14]	=>  Location: PIN_Y15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data[15]	=>  Location: PIN_R24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF filter IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_reset_n : std_logic;
SIGNAL ww_data : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_result : std_logic_vector(15 DOWNTO 0);
SIGNAL \Mult7|auto_generated|mac_out2_DATAA_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \Mult7|auto_generated|mac_out2_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \Mult6|auto_generated|mac_out2_DATAA_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \Mult6|auto_generated|mac_out2_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \Mult9|auto_generated|mac_out2_DATAA_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \Mult9|auto_generated|mac_out2_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \Mult8|auto_generated|mac_out2_DATAA_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \Mult8|auto_generated|mac_out2_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \Mult1|auto_generated|mac_out2_DATAA_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \Mult1|auto_generated|mac_out2_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_out2_DATAA_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_out2_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \Mult2|auto_generated|mac_out2_DATAA_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \Mult2|auto_generated|mac_out2_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \Mult3|auto_generated|mac_out2_DATAA_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \Mult3|auto_generated|mac_out2_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \Mult4|auto_generated|mac_out2_DATAA_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \Mult4|auto_generated|mac_out2_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \Mult5|auto_generated|mac_out2_DATAA_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \Mult5|auto_generated|mac_out2_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \Mult7|auto_generated|mac_mult1_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult7|auto_generated|mac_mult1_DATAB_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult7|auto_generated|mac_mult1_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \Mult6|auto_generated|mac_mult1_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult6|auto_generated|mac_mult1_DATAB_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult6|auto_generated|mac_mult1_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \Mult9|auto_generated|mac_mult1_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult9|auto_generated|mac_mult1_DATAB_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult9|auto_generated|mac_mult1_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \Mult8|auto_generated|mac_mult1_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult8|auto_generated|mac_mult1_DATAB_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult8|auto_generated|mac_mult1_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \Mult1|auto_generated|mac_mult1_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult1|auto_generated|mac_mult1_DATAB_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult1|auto_generated|mac_mult1_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_mult1_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_mult1_DATAB_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_mult1_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \Mult2|auto_generated|mac_mult1_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult2|auto_generated|mac_mult1_DATAB_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult2|auto_generated|mac_mult1_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \Mult3|auto_generated|mac_mult1_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult3|auto_generated|mac_mult1_DATAB_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult3|auto_generated|mac_mult1_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \Mult4|auto_generated|mac_mult1_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult4|auto_generated|mac_mult1_DATAB_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult4|auto_generated|mac_mult1_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \Mult5|auto_generated|mac_mult1_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult5|auto_generated|mac_mult1_DATAB_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult5|auto_generated|mac_mult1_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \reset_n~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Mult7|auto_generated|mac_out2~dataout\ : std_logic;
SIGNAL \Mult7|auto_generated|mac_out2~DATAOUT1\ : std_logic;
SIGNAL \Mult7|auto_generated|mac_out2~DATAOUT2\ : std_logic;
SIGNAL \Mult7|auto_generated|mac_out2~DATAOUT3\ : std_logic;
SIGNAL \Mult7|auto_generated|mac_out2~DATAOUT6\ : std_logic;
SIGNAL \Mult7|auto_generated|mac_out2~DATAOUT8\ : std_logic;
SIGNAL \Mult7|auto_generated|mac_out2~DATAOUT12\ : std_logic;
SIGNAL \Mult7|auto_generated|mac_out2~DATAOUT14\ : std_logic;
SIGNAL \Mult7|auto_generated|mac_out2~DATAOUT15\ : std_logic;
SIGNAL \Mult7|auto_generated|mac_out2~DATAOUT18\ : std_logic;
SIGNAL \Mult7|auto_generated|mac_out2~DATAOUT20\ : std_logic;
SIGNAL \Mult7|auto_generated|mac_out2~DATAOUT22\ : std_logic;
SIGNAL \Mult7|auto_generated|mac_out2~DATAOUT23\ : std_logic;
SIGNAL \Mult7|auto_generated|mac_out2~DATAOUT24\ : std_logic;
SIGNAL \Mult7|auto_generated|mac_out2~DATAOUT25\ : std_logic;
SIGNAL \Mult7|auto_generated|mac_out2~DATAOUT26\ : std_logic;
SIGNAL \Mult7|auto_generated|mac_out2~DATAOUT27\ : std_logic;
SIGNAL \Mult7|auto_generated|mac_out2~DATAOUT28\ : std_logic;
SIGNAL \Mult7|auto_generated|mac_out2~DATAOUT29\ : std_logic;
SIGNAL \Mult7|auto_generated|mac_out2~0\ : std_logic;
SIGNAL \Mult7|auto_generated|mac_out2~1\ : std_logic;
SIGNAL \Mult7|auto_generated|mac_out2~2\ : std_logic;
SIGNAL \Mult7|auto_generated|mac_out2~3\ : std_logic;
SIGNAL \Mult7|auto_generated|mac_out2~4\ : std_logic;
SIGNAL \Mult7|auto_generated|mac_out2~5\ : std_logic;
SIGNAL \Mult6|auto_generated|mac_out2~dataout\ : std_logic;
SIGNAL \Mult6|auto_generated|mac_out2~DATAOUT4\ : std_logic;
SIGNAL \Mult6|auto_generated|mac_out2~DATAOUT5\ : std_logic;
SIGNAL \Mult6|auto_generated|mac_out2~DATAOUT7\ : std_logic;
SIGNAL \Mult6|auto_generated|mac_out2~DATAOUT9\ : std_logic;
SIGNAL \Mult6|auto_generated|mac_out2~DATAOUT10\ : std_logic;
SIGNAL \Mult6|auto_generated|mac_out2~DATAOUT11\ : std_logic;
SIGNAL \Mult6|auto_generated|mac_out2~DATAOUT13\ : std_logic;
SIGNAL \Mult6|auto_generated|mac_out2~DATAOUT16\ : std_logic;
SIGNAL \Mult6|auto_generated|mac_out2~DATAOUT17\ : std_logic;
SIGNAL \Mult6|auto_generated|mac_out2~DATAOUT19\ : std_logic;
SIGNAL \Mult6|auto_generated|mac_out2~DATAOUT21\ : std_logic;
SIGNAL \Mult6|auto_generated|mac_out2~DATAOUT28\ : std_logic;
SIGNAL \Mult6|auto_generated|mac_out2~DATAOUT29\ : std_logic;
SIGNAL \Mult6|auto_generated|mac_out2~0\ : std_logic;
SIGNAL \Mult6|auto_generated|mac_out2~1\ : std_logic;
SIGNAL \Mult6|auto_generated|mac_out2~2\ : std_logic;
SIGNAL \Mult6|auto_generated|mac_out2~3\ : std_logic;
SIGNAL \Mult6|auto_generated|mac_out2~4\ : std_logic;
SIGNAL \Mult6|auto_generated|mac_out2~5\ : std_logic;
SIGNAL \Add5~2_combout\ : std_logic;
SIGNAL \Add5~4_combout\ : std_logic;
SIGNAL \Add5~6_combout\ : std_logic;
SIGNAL \Add5~8_combout\ : std_logic;
SIGNAL \Add5~12_combout\ : std_logic;
SIGNAL \Add5~14_combout\ : std_logic;
SIGNAL \Add5~16_combout\ : std_logic;
SIGNAL \Add5~24_combout\ : std_logic;
SIGNAL \Add5~26_combout\ : std_logic;
SIGNAL \Add5~28_combout\ : std_logic;
SIGNAL \Add5~30_combout\ : std_logic;
SIGNAL \Add5~34_combout\ : std_logic;
SIGNAL \Mult9|auto_generated|mac_out2~dataout\ : std_logic;
SIGNAL \Mult9|auto_generated|mac_out2~DATAOUT1\ : std_logic;
SIGNAL \Mult9|auto_generated|mac_out2~DATAOUT5\ : std_logic;
SIGNAL \Mult9|auto_generated|mac_out2~DATAOUT7\ : std_logic;
SIGNAL \Mult9|auto_generated|mac_out2~DATAOUT10\ : std_logic;
SIGNAL \Mult9|auto_generated|mac_out2~DATAOUT11\ : std_logic;
SIGNAL \Mult9|auto_generated|mac_out2~DATAOUT13\ : std_logic;
SIGNAL \Mult9|auto_generated|mac_out2~DATAOUT15\ : std_logic;
SIGNAL \Mult9|auto_generated|mac_out2~DATAOUT17\ : std_logic;
SIGNAL \Mult9|auto_generated|mac_out2~DATAOUT18\ : std_logic;
SIGNAL \Mult9|auto_generated|mac_out2~DATAOUT20\ : std_logic;
SIGNAL \Mult9|auto_generated|mac_out2~DATAOUT21\ : std_logic;
SIGNAL \Mult9|auto_generated|mac_out2~DATAOUT22\ : std_logic;
SIGNAL \Mult9|auto_generated|mac_out2~DATAOUT23\ : std_logic;
SIGNAL \Mult9|auto_generated|mac_out2~DATAOUT24\ : std_logic;
SIGNAL \Mult9|auto_generated|mac_out2~DATAOUT25\ : std_logic;
SIGNAL \Mult9|auto_generated|mac_out2~DATAOUT26\ : std_logic;
SIGNAL \Mult9|auto_generated|mac_out2~DATAOUT27\ : std_logic;
SIGNAL \Mult9|auto_generated|mac_out2~DATAOUT28\ : std_logic;
SIGNAL \Mult9|auto_generated|mac_out2~0\ : std_logic;
SIGNAL \Mult9|auto_generated|mac_out2~1\ : std_logic;
SIGNAL \Mult9|auto_generated|mac_out2~2\ : std_logic;
SIGNAL \Mult9|auto_generated|mac_out2~3\ : std_logic;
SIGNAL \Mult9|auto_generated|mac_out2~4\ : std_logic;
SIGNAL \Mult9|auto_generated|mac_out2~5\ : std_logic;
SIGNAL \Mult9|auto_generated|mac_out2~6\ : std_logic;
SIGNAL \Mult8|auto_generated|mac_out2~dataout\ : std_logic;
SIGNAL \Mult8|auto_generated|mac_out2~DATAOUT1\ : std_logic;
SIGNAL \Mult8|auto_generated|mac_out2~DATAOUT2\ : std_logic;
SIGNAL \Mult8|auto_generated|mac_out2~DATAOUT3\ : std_logic;
SIGNAL \Mult8|auto_generated|mac_out2~DATAOUT4\ : std_logic;
SIGNAL \Mult8|auto_generated|mac_out2~DATAOUT6\ : std_logic;
SIGNAL \Mult8|auto_generated|mac_out2~DATAOUT8\ : std_logic;
SIGNAL \Mult8|auto_generated|mac_out2~DATAOUT9\ : std_logic;
SIGNAL \Mult8|auto_generated|mac_out2~DATAOUT12\ : std_logic;
SIGNAL \Mult8|auto_generated|mac_out2~DATAOUT14\ : std_logic;
SIGNAL \Mult8|auto_generated|mac_out2~DATAOUT16\ : std_logic;
SIGNAL \Mult8|auto_generated|mac_out2~DATAOUT19\ : std_logic;
SIGNAL \Mult8|auto_generated|mac_out2~DATAOUT20\ : std_logic;
SIGNAL \Mult8|auto_generated|mac_out2~DATAOUT21\ : std_logic;
SIGNAL \Mult8|auto_generated|mac_out2~DATAOUT22\ : std_logic;
SIGNAL \Mult8|auto_generated|mac_out2~DATAOUT23\ : std_logic;
SIGNAL \Mult8|auto_generated|mac_out2~DATAOUT24\ : std_logic;
SIGNAL \Mult8|auto_generated|mac_out2~DATAOUT25\ : std_logic;
SIGNAL \Mult8|auto_generated|mac_out2~DATAOUT26\ : std_logic;
SIGNAL \Mult8|auto_generated|mac_out2~DATAOUT27\ : std_logic;
SIGNAL \Mult8|auto_generated|mac_out2~DATAOUT28\ : std_logic;
SIGNAL \Mult8|auto_generated|mac_out2~DATAOUT29\ : std_logic;
SIGNAL \Mult8|auto_generated|mac_out2~0\ : std_logic;
SIGNAL \Mult8|auto_generated|mac_out2~1\ : std_logic;
SIGNAL \Mult8|auto_generated|mac_out2~2\ : std_logic;
SIGNAL \Mult8|auto_generated|mac_out2~3\ : std_logic;
SIGNAL \Mult8|auto_generated|mac_out2~4\ : std_logic;
SIGNAL \Mult8|auto_generated|mac_out2~5\ : std_logic;
SIGNAL \Add7~2_combout\ : std_logic;
SIGNAL \Add7~8_combout\ : std_logic;
SIGNAL \Add7~16_combout\ : std_logic;
SIGNAL \Add7~18_combout\ : std_logic;
SIGNAL \Add7~22_combout\ : std_logic;
SIGNAL \Add7~24_combout\ : std_logic;
SIGNAL \Add7~30_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~dataout\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~DATAOUT1\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~DATAOUT5\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~DATAOUT6\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~DATAOUT7\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~DATAOUT8\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~DATAOUT9\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~DATAOUT10\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~DATAOUT13\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~DATAOUT14\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~DATAOUT15\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~DATAOUT16\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~DATAOUT17\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~DATAOUT18\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~DATAOUT20\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~DATAOUT22\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~DATAOUT23\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~0\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~1\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~2\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~3\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~4\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~5\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~dataout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT1\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT2\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT3\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT4\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT11\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT12\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT19\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT21\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT24\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT25\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT26\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT27\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT28\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT29\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~0\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~1\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~2\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~3\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~4\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~5\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \Add0~32_combout\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out2~dataout\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out2~DATAOUT1\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out2~DATAOUT2\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out2~DATAOUT5\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out2~DATAOUT6\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out2~DATAOUT7\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out2~DATAOUT8\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out2~DATAOUT11\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out2~DATAOUT12\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out2~DATAOUT13\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out2~DATAOUT14\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out2~DATAOUT15\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out2~DATAOUT18\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out2~DATAOUT21\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out2~DATAOUT23\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out2~DATAOUT27\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out2~DATAOUT28\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out2~DATAOUT29\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out2~0\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out2~1\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out2~2\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out2~3\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out2~4\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out2~5\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;
SIGNAL \Add1~20_combout\ : std_logic;
SIGNAL \Add1~30_combout\ : std_logic;
SIGNAL \Add1~32_combout\ : std_logic;
SIGNAL \Add1~34_combout\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_out2~dataout\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_out2~DATAOUT1\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_out2~DATAOUT2\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_out2~DATAOUT3\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_out2~DATAOUT8\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_out2~DATAOUT9\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_out2~DATAOUT11\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_out2~DATAOUT12\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_out2~DATAOUT13\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_out2~DATAOUT14\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_out2~DATAOUT18\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_out2~DATAOUT19\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_out2~DATAOUT24\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_out2~DATAOUT25\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_out2~DATAOUT27\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_out2~DATAOUT28\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_out2~DATAOUT29\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_out2~DATAOUT30\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_out2~0\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_out2~1\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_out2~2\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_out2~3\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_out2~4\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \Add2~2_combout\ : std_logic;
SIGNAL \Add2~6_combout\ : std_logic;
SIGNAL \Add2~14_combout\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_out2~dataout\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_out2~DATAOUT1\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_out2~DATAOUT2\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_out2~DATAOUT3\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_out2~DATAOUT5\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_out2~DATAOUT6\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_out2~DATAOUT7\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_out2~DATAOUT9\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_out2~DATAOUT10\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_out2~DATAOUT11\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_out2~DATAOUT12\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_out2~DATAOUT13\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_out2~DATAOUT14\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_out2~DATAOUT15\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_out2~DATAOUT16\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_out2~DATAOUT17\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_out2~DATAOUT18\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_out2~DATAOUT19\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_out2~DATAOUT20\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_out2~DATAOUT21\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_out2~DATAOUT23\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_out2~DATAOUT24\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_out2~DATAOUT25\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_out2~DATAOUT26\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_out2~DATAOUT27\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_out2~DATAOUT28\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_out2~DATAOUT29\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_out2~DATAOUT30\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_out2~0\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_out2~1\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_out2~2\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_out2~3\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_out2~4\ : std_logic;
SIGNAL \Add3~2_combout\ : std_logic;
SIGNAL \Add3~4_combout\ : std_logic;
SIGNAL \Add3~6_combout\ : std_logic;
SIGNAL \Add3~16_combout\ : std_logic;
SIGNAL \Add3~20_combout\ : std_logic;
SIGNAL \Add3~26_combout\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_out2~dataout\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_out2~DATAOUT1\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_out2~DATAOUT5\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_out2~DATAOUT6\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_out2~DATAOUT7\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_out2~DATAOUT8\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_out2~DATAOUT10\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_out2~DATAOUT12\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_out2~DATAOUT13\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_out2~DATAOUT15\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_out2~DATAOUT16\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_out2~DATAOUT17\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_out2~DATAOUT21\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_out2~DATAOUT22\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_out2~DATAOUT23\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_out2~DATAOUT24\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_out2~DATAOUT26\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_out2~DATAOUT27\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_out2~DATAOUT28\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_out2~DATAOUT29\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_out2~0\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_out2~1\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_out2~2\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_out2~3\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_out2~4\ : std_logic;
SIGNAL \Add4~0_combout\ : std_logic;
SIGNAL \Add4~4_combout\ : std_logic;
SIGNAL \Add4~6_combout\ : std_logic;
SIGNAL \Add4~10_combout\ : std_logic;
SIGNAL \Add4~12_combout\ : std_logic;
SIGNAL \Add4~14_combout\ : std_logic;
SIGNAL \Add4~20_combout\ : std_logic;
SIGNAL \Add4~26_combout\ : std_logic;
SIGNAL \Add4~28_combout\ : std_logic;
SIGNAL \Add4~32_combout\ : std_logic;
SIGNAL \Add6~0_combout\ : std_logic;
SIGNAL \Add6~10_combout\ : std_logic;
SIGNAL \Add6~18_combout\ : std_logic;
SIGNAL \Add6~20_combout\ : std_logic;
SIGNAL \Add6~22_combout\ : std_logic;
SIGNAL \Add6~32_combout\ : std_logic;
SIGNAL \Add7~34_combout\ : std_logic;
SIGNAL \Add3~34_combout\ : std_logic;
SIGNAL \Add6~36_combout\ : std_logic;
SIGNAL \Add5~38_combout\ : std_logic;
SIGNAL \Add7~37\ : std_logic;
SIGNAL \Add0~36_combout\ : std_logic;
SIGNAL \Add3~36_combout\ : std_logic;
SIGNAL \Add4~36_combout\ : std_logic;
SIGNAL \Add5~40_combout\ : std_logic;
SIGNAL \Add7~38_combout\ : std_logic;
SIGNAL \Add7~39\ : std_logic;
SIGNAL \Add0~38_combout\ : std_logic;
SIGNAL \Add1~40_combout\ : std_logic;
SIGNAL \Add3~38_combout\ : std_logic;
SIGNAL \Add7~40_combout\ : std_logic;
SIGNAL \Add7~41\ : std_logic;
SIGNAL \Add1~42_combout\ : std_logic;
SIGNAL \Add6~42_combout\ : std_logic;
SIGNAL \Add5~44_combout\ : std_logic;
SIGNAL \Add7~42_combout\ : std_logic;
SIGNAL \Add7~43\ : std_logic;
SIGNAL \Add0~42_combout\ : std_logic;
SIGNAL \Add1~44_combout\ : std_logic;
SIGNAL \Add2~42_combout\ : std_logic;
SIGNAL \Add5~46_combout\ : std_logic;
SIGNAL \Add7~44_combout\ : std_logic;
SIGNAL \Add7~45\ : std_logic;
SIGNAL \Add1~46_combout\ : std_logic;
SIGNAL \Add5~48_combout\ : std_logic;
SIGNAL \Add7~46_combout\ : std_logic;
SIGNAL \Add7~47\ : std_logic;
SIGNAL \Add0~46_combout\ : std_logic;
SIGNAL \Add7~48_combout\ : std_logic;
SIGNAL \Add7~49\ : std_logic;
SIGNAL \Add0~48_combout\ : std_logic;
SIGNAL \Add3~48_combout\ : std_logic;
SIGNAL \Add6~50_combout\ : std_logic;
SIGNAL \Add7~50_combout\ : std_logic;
SIGNAL \Add7~51\ : std_logic;
SIGNAL \Add0~50_combout\ : std_logic;
SIGNAL \Add1~52_combout\ : std_logic;
SIGNAL \Add6~52_combout\ : std_logic;
SIGNAL \Add5~55\ : std_logic;
SIGNAL \Add7~52_combout\ : std_logic;
SIGNAL \Add7~53\ : std_logic;
SIGNAL \Add6~54_combout\ : std_logic;
SIGNAL \Add5~56_combout\ : std_logic;
SIGNAL \Add5~57\ : std_logic;
SIGNAL \Add7~54_combout\ : std_logic;
SIGNAL \Add7~55\ : std_logic;
SIGNAL \Add5~58_combout\ : std_logic;
SIGNAL \Add5~59\ : std_logic;
SIGNAL \Add7~56_combout\ : std_logic;
SIGNAL \Add7~57\ : std_logic;
SIGNAL \Add5~60_combout\ : std_logic;
SIGNAL \Add7~58_combout\ : std_logic;
SIGNAL \Add1~61\ : std_logic;
SIGNAL \Add3~58_combout\ : std_logic;
SIGNAL \Add1~62_combout\ : std_logic;
SIGNAL \Add2~60_combout\ : std_logic;
SIGNAL \Add4~60_combout\ : std_logic;
SIGNAL \data_pipeline[9][0]~_Duplicate_1_regout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \reset_n~combout\ : std_logic;
SIGNAL \reset_n~clkctrl_outclk\ : std_logic;
SIGNAL \data_pipeline[0][0]~_Duplicate_1_regout\ : std_logic;
SIGNAL \data_pipeline[1][0]~_Duplicate_1_regout\ : std_logic;
SIGNAL \data_pipeline[2][0]~_Duplicate_1_regout\ : std_logic;
SIGNAL \data_pipeline[3][0]~_Duplicate_1_regout\ : std_logic;
SIGNAL \data_pipeline[4][0]~_Duplicate_1_regout\ : std_logic;
SIGNAL \data_pipeline[5][0]~_Duplicate_1_regout\ : std_logic;
SIGNAL \data_pipeline[6][0]~_Duplicate_1_regout\ : std_logic;
SIGNAL \data_pipeline[7][0]~_Duplicate_1_regout\ : std_logic;
SIGNAL \data_pipeline[0][1]~_Duplicate_1_regout\ : std_logic;
SIGNAL \data_pipeline[1][1]~_Duplicate_1_regout\ : std_logic;
SIGNAL \data_pipeline[2][1]~_Duplicate_1_regout\ : std_logic;
SIGNAL \data_pipeline[3][1]~_Duplicate_1_regout\ : std_logic;
SIGNAL \data_pipeline[4][1]~_Duplicate_1_regout\ : std_logic;
SIGNAL \data_pipeline[5][1]~_Duplicate_1_regout\ : std_logic;
SIGNAL \data_pipeline[6][1]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \data_pipeline[6][1]~_Duplicate_1_regout\ : std_logic;
SIGNAL \data_pipeline[7][1]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \data_pipeline[7][1]~_Duplicate_1_regout\ : std_logic;
SIGNAL \data_pipeline[0][2]~_Duplicate_1_regout\ : std_logic;
SIGNAL \data_pipeline[1][2]~_Duplicate_1_regout\ : std_logic;
SIGNAL \data_pipeline[2][2]~_Duplicate_1_regout\ : std_logic;
SIGNAL \data_pipeline[3][2]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \data_pipeline[3][2]~_Duplicate_1_regout\ : std_logic;
SIGNAL \data_pipeline[4][2]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \data_pipeline[4][2]~_Duplicate_1_regout\ : std_logic;
SIGNAL \data_pipeline[5][2]~_Duplicate_1_regout\ : std_logic;
SIGNAL \data_pipeline[6][2]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \data_pipeline[6][2]~_Duplicate_1_regout\ : std_logic;
SIGNAL \data_pipeline[7][2]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \data_pipeline[7][2]~_Duplicate_1_regout\ : std_logic;
SIGNAL \data_pipeline[0][3]~_Duplicate_1_regout\ : std_logic;
SIGNAL \data_pipeline[1][3]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \data_pipeline[1][3]~_Duplicate_1_regout\ : std_logic;
SIGNAL \data_pipeline[2][3]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \data_pipeline[2][3]~_Duplicate_1_regout\ : std_logic;
SIGNAL \data_pipeline[3][3]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \data_pipeline[3][3]~_Duplicate_1_regout\ : std_logic;
SIGNAL \data_pipeline[4][3]~_Duplicate_1_regout\ : std_logic;
SIGNAL \data_pipeline[5][3]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \data_pipeline[5][3]~_Duplicate_1_regout\ : std_logic;
SIGNAL \data_pipeline[6][3]~_Duplicate_1_regout\ : std_logic;
SIGNAL \data_pipeline[7][3]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \data_pipeline[7][3]~_Duplicate_1_regout\ : std_logic;
SIGNAL \data_pipeline[0][4]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \data_pipeline[0][4]~_Duplicate_1_regout\ : std_logic;
SIGNAL \data_pipeline[1][4]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \data_pipeline[1][4]~_Duplicate_1_regout\ : std_logic;
SIGNAL \data_pipeline[2][4]~_Duplicate_1_regout\ : std_logic;
SIGNAL \data_pipeline[3][4]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \data_pipeline[3][4]~_Duplicate_1_regout\ : std_logic;
SIGNAL \data_pipeline[4][4]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \data_pipeline[4][4]~_Duplicate_1_regout\ : std_logic;
SIGNAL \data_pipeline[5][4]~_Duplicate_1_regout\ : std_logic;
SIGNAL \data_pipeline[6][4]~_Duplicate_1_regout\ : std_logic;
SIGNAL \data_pipeline[7][4]~_Duplicate_1_regout\ : std_logic;
SIGNAL \data_pipeline[0][5]~_Duplicate_1_regout\ : std_logic;
SIGNAL \data_pipeline[1][5]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \data_pipeline[1][5]~_Duplicate_1_regout\ : std_logic;
SIGNAL \data_pipeline[2][5]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \data_pipeline[2][5]~_Duplicate_1_regout\ : std_logic;
SIGNAL \data_pipeline[3][5]~_Duplicate_1_regout\ : std_logic;
SIGNAL \data_pipeline[4][5]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \data_pipeline[4][5]~_Duplicate_1_regout\ : std_logic;
SIGNAL \data_pipeline[5][5]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \data_pipeline[5][5]~_Duplicate_1_regout\ : std_logic;
SIGNAL \data_pipeline[6][5]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \data_pipeline[6][5]~_Duplicate_1_regout\ : std_logic;
SIGNAL \data_pipeline[7][5]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \data_pipeline[7][5]~_Duplicate_1_regout\ : std_logic;
SIGNAL \data_pipeline[0][6]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \data_pipeline[0][6]~_Duplicate_1_regout\ : std_logic;
SIGNAL \data_pipeline[1][6]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \data_pipeline[1][6]~_Duplicate_1_regout\ : std_logic;
SIGNAL \data_pipeline[2][6]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \data_pipeline[2][6]~_Duplicate_1_regout\ : std_logic;
SIGNAL \data_pipeline[3][6]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \data_pipeline[3][6]~_Duplicate_1_regout\ : std_logic;
SIGNAL \data_pipeline[4][6]~_Duplicate_1_regout\ : std_logic;
SIGNAL \data_pipeline[5][6]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \data_pipeline[5][6]~_Duplicate_1_regout\ : std_logic;
SIGNAL \data_pipeline[6][6]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \data_pipeline[6][6]~_Duplicate_1_regout\ : std_logic;
SIGNAL \data_pipeline[7][6]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \data_pipeline[7][6]~_Duplicate_1_regout\ : std_logic;
SIGNAL \data_pipeline[0][7]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \data_pipeline[0][7]~_Duplicate_1_regout\ : std_logic;
SIGNAL \data_pipeline[1][7]~_Duplicate_1_regout\ : std_logic;
SIGNAL \data_pipeline[2][7]~_Duplicate_1_regout\ : std_logic;
SIGNAL \data_pipeline[3][7]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \data_pipeline[3][7]~_Duplicate_1_regout\ : std_logic;
SIGNAL \data_pipeline[4][7]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \data_pipeline[4][7]~_Duplicate_1_regout\ : std_logic;
SIGNAL \data_pipeline[5][7]~_Duplicate_1_regout\ : std_logic;
SIGNAL \data_pipeline[6][7]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \data_pipeline[6][7]~_Duplicate_1_regout\ : std_logic;
SIGNAL \data_pipeline[7][7]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \data_pipeline[7][7]~_Duplicate_1_regout\ : std_logic;
SIGNAL \data_pipeline[0][8]~_Duplicate_1_regout\ : std_logic;
SIGNAL \data_pipeline[1][8]~_Duplicate_1_regout\ : std_logic;
SIGNAL \data_pipeline[2][8]~_Duplicate_1_regout\ : std_logic;
SIGNAL \data_pipeline[3][8]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \data_pipeline[3][8]~_Duplicate_1_regout\ : std_logic;
SIGNAL \data_pipeline[4][8]~_Duplicate_1_regout\ : std_logic;
SIGNAL \data_pipeline[5][8]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \data_pipeline[5][8]~_Duplicate_1_regout\ : std_logic;
SIGNAL \data_pipeline[6][8]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \data_pipeline[6][8]~_Duplicate_1_regout\ : std_logic;
SIGNAL \data_pipeline[7][8]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \data_pipeline[7][8]~_Duplicate_1_regout\ : std_logic;
SIGNAL \data_pipeline[0][9]~_Duplicate_1_regout\ : std_logic;
SIGNAL \data_pipeline[1][9]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \data_pipeline[1][9]~_Duplicate_1_regout\ : std_logic;
SIGNAL \data_pipeline[2][9]~_Duplicate_1_regout\ : std_logic;
SIGNAL \data_pipeline[3][9]~_Duplicate_1_regout\ : std_logic;
SIGNAL \data_pipeline[4][9]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \data_pipeline[4][9]~_Duplicate_1_regout\ : std_logic;
SIGNAL \data_pipeline[5][9]~_Duplicate_1_regout\ : std_logic;
SIGNAL \data_pipeline[6][9]~_Duplicate_1_regout\ : std_logic;
SIGNAL \data_pipeline[7][9]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \data_pipeline[7][9]~_Duplicate_1_regout\ : std_logic;
SIGNAL \data_pipeline[0][10]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \data_pipeline[0][10]~_Duplicate_1_regout\ : std_logic;
SIGNAL \data_pipeline[1][10]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \data_pipeline[1][10]~_Duplicate_1_regout\ : std_logic;
SIGNAL \data_pipeline[2][10]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \data_pipeline[2][10]~_Duplicate_1_regout\ : std_logic;
SIGNAL \data_pipeline[3][10]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \data_pipeline[3][10]~_Duplicate_1_regout\ : std_logic;
SIGNAL \data_pipeline[4][10]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \data_pipeline[4][10]~_Duplicate_1_regout\ : std_logic;
SIGNAL \data_pipeline[5][10]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \data_pipeline[5][10]~_Duplicate_1_regout\ : std_logic;
SIGNAL \data_pipeline[6][10]~_Duplicate_1_regout\ : std_logic;
SIGNAL \data_pipeline[7][10]~_Duplicate_1_regout\ : std_logic;
SIGNAL \data_pipeline[0][11]~_Duplicate_1_regout\ : std_logic;
SIGNAL \data_pipeline[1][11]~_Duplicate_1_regout\ : std_logic;
SIGNAL \data_pipeline[2][11]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \data_pipeline[2][11]~_Duplicate_1_regout\ : std_logic;
SIGNAL \data_pipeline[3][11]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \data_pipeline[3][11]~_Duplicate_1_regout\ : std_logic;
SIGNAL \data_pipeline[4][11]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \data_pipeline[4][11]~_Duplicate_1_regout\ : std_logic;
SIGNAL \data_pipeline[5][11]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \data_pipeline[5][11]~_Duplicate_1_regout\ : std_logic;
SIGNAL \data_pipeline[6][11]~_Duplicate_1_regout\ : std_logic;
SIGNAL \data_pipeline[7][11]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \data_pipeline[7][11]~_Duplicate_1_regout\ : std_logic;
SIGNAL \data_pipeline[0][12]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \data_pipeline[0][12]~_Duplicate_1_regout\ : std_logic;
SIGNAL \data_pipeline[1][12]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \data_pipeline[1][12]~_Duplicate_1_regout\ : std_logic;
SIGNAL \data_pipeline[2][12]~_Duplicate_1_regout\ : std_logic;
SIGNAL \data_pipeline[3][12]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \data_pipeline[3][12]~_Duplicate_1_regout\ : std_logic;
SIGNAL \data_pipeline[4][12]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \data_pipeline[4][12]~_Duplicate_1_regout\ : std_logic;
SIGNAL \data_pipeline[5][12]~_Duplicate_1_regout\ : std_logic;
SIGNAL \data_pipeline[6][12]~_Duplicate_1_regout\ : std_logic;
SIGNAL \data_pipeline[7][12]~_Duplicate_1_regout\ : std_logic;
SIGNAL \data_pipeline[0][13]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \data_pipeline[0][13]~_Duplicate_1_regout\ : std_logic;
SIGNAL \data_pipeline[1][13]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \data_pipeline[1][13]~_Duplicate_1_regout\ : std_logic;
SIGNAL \data_pipeline[2][13]~_Duplicate_1_regout\ : std_logic;
SIGNAL \data_pipeline[3][13]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \data_pipeline[3][13]~_Duplicate_1_regout\ : std_logic;
SIGNAL \data_pipeline[4][13]~_Duplicate_1_regout\ : std_logic;
SIGNAL \data_pipeline[5][13]~_Duplicate_1_regout\ : std_logic;
SIGNAL \data_pipeline[6][13]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \data_pipeline[6][13]~_Duplicate_1_regout\ : std_logic;
SIGNAL \data_pipeline[7][13]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \data_pipeline[7][13]~_Duplicate_1_regout\ : std_logic;
SIGNAL \data_pipeline[0][14]~_Duplicate_1_regout\ : std_logic;
SIGNAL \data_pipeline[1][14]~_Duplicate_1_regout\ : std_logic;
SIGNAL \data_pipeline[2][14]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \data_pipeline[2][14]~_Duplicate_1_regout\ : std_logic;
SIGNAL \data_pipeline[3][14]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \data_pipeline[3][14]~_Duplicate_1_regout\ : std_logic;
SIGNAL \data_pipeline[4][14]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \data_pipeline[4][14]~_Duplicate_1_regout\ : std_logic;
SIGNAL \data_pipeline[5][14]~_Duplicate_1_regout\ : std_logic;
SIGNAL \data_pipeline[6][14]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \data_pipeline[6][14]~_Duplicate_1_regout\ : std_logic;
SIGNAL \data_pipeline[7][14]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \data_pipeline[7][14]~_Duplicate_1_regout\ : std_logic;
SIGNAL \data_pipeline[0][15]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \data_pipeline[0][15]~_Duplicate_1_regout\ : std_logic;
SIGNAL \data_pipeline[1][15]~_Duplicate_1_regout\ : std_logic;
SIGNAL \data_pipeline[2][15]~_Duplicate_1_regout\ : std_logic;
SIGNAL \data_pipeline[3][15]~_Duplicate_1_regout\ : std_logic;
SIGNAL \data_pipeline[4][15]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \data_pipeline[4][15]~_Duplicate_1_regout\ : std_logic;
SIGNAL \data_pipeline[5][15]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \data_pipeline[5][15]~_Duplicate_1_regout\ : std_logic;
SIGNAL \data_pipeline[6][15]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \data_pipeline[6][15]~_Duplicate_1_regout\ : std_logic;
SIGNAL \data_pipeline[7][15]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \data_pipeline[7][15]~_Duplicate_1_regout\ : std_logic;
SIGNAL \Mult8|auto_generated|mac_mult1~dataout\ : std_logic;
SIGNAL \Mult8|auto_generated|mac_mult1~DATAOUT1\ : std_logic;
SIGNAL \Mult8|auto_generated|mac_mult1~DATAOUT2\ : std_logic;
SIGNAL \Mult8|auto_generated|mac_mult1~DATAOUT3\ : std_logic;
SIGNAL \Mult8|auto_generated|mac_mult1~DATAOUT4\ : std_logic;
SIGNAL \Mult8|auto_generated|mac_mult1~DATAOUT5\ : std_logic;
SIGNAL \Mult8|auto_generated|mac_mult1~DATAOUT6\ : std_logic;
SIGNAL \Mult8|auto_generated|mac_mult1~DATAOUT7\ : std_logic;
SIGNAL \Mult8|auto_generated|mac_mult1~DATAOUT8\ : std_logic;
SIGNAL \Mult8|auto_generated|mac_mult1~DATAOUT9\ : std_logic;
SIGNAL \Mult8|auto_generated|mac_mult1~DATAOUT10\ : std_logic;
SIGNAL \Mult8|auto_generated|mac_mult1~DATAOUT11\ : std_logic;
SIGNAL \Mult8|auto_generated|mac_mult1~DATAOUT12\ : std_logic;
SIGNAL \Mult8|auto_generated|mac_mult1~DATAOUT13\ : std_logic;
SIGNAL \Mult8|auto_generated|mac_mult1~DATAOUT14\ : std_logic;
SIGNAL \Mult8|auto_generated|mac_mult1~DATAOUT15\ : std_logic;
SIGNAL \Mult8|auto_generated|mac_mult1~DATAOUT16\ : std_logic;
SIGNAL \Mult8|auto_generated|mac_mult1~DATAOUT17\ : std_logic;
SIGNAL \Mult8|auto_generated|mac_mult1~DATAOUT18\ : std_logic;
SIGNAL \Mult8|auto_generated|mac_mult1~DATAOUT19\ : std_logic;
SIGNAL \Mult8|auto_generated|mac_mult1~DATAOUT20\ : std_logic;
SIGNAL \Mult8|auto_generated|mac_mult1~DATAOUT21\ : std_logic;
SIGNAL \Mult8|auto_generated|mac_mult1~DATAOUT22\ : std_logic;
SIGNAL \Mult8|auto_generated|mac_mult1~DATAOUT23\ : std_logic;
SIGNAL \Mult8|auto_generated|mac_mult1~DATAOUT24\ : std_logic;
SIGNAL \Mult8|auto_generated|mac_mult1~DATAOUT25\ : std_logic;
SIGNAL \Mult8|auto_generated|mac_mult1~DATAOUT26\ : std_logic;
SIGNAL \Mult8|auto_generated|mac_mult1~DATAOUT27\ : std_logic;
SIGNAL \Mult8|auto_generated|mac_mult1~DATAOUT28\ : std_logic;
SIGNAL \Mult8|auto_generated|mac_mult1~DATAOUT29\ : std_logic;
SIGNAL \Mult8|auto_generated|mac_mult1~0\ : std_logic;
SIGNAL \Mult8|auto_generated|mac_mult1~1\ : std_logic;
SIGNAL \Mult8|auto_generated|mac_mult1~2\ : std_logic;
SIGNAL \Mult8|auto_generated|mac_mult1~3\ : std_logic;
SIGNAL \Mult8|auto_generated|mac_mult1~4\ : std_logic;
SIGNAL \Mult8|auto_generated|mac_mult1~5\ : std_logic;
SIGNAL \Mult8|auto_generated|mac_out2~DATAOUT17\ : std_logic;
SIGNAL \data_pipeline[8][0]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \data_pipeline[8][0]~_Duplicate_1_regout\ : std_logic;
SIGNAL \data_pipeline[8][1]~_Duplicate_1_regout\ : std_logic;
SIGNAL \data_pipeline[8][2]~_Duplicate_1_regout\ : std_logic;
SIGNAL \data_pipeline[8][3]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \data_pipeline[8][3]~_Duplicate_1_regout\ : std_logic;
SIGNAL \data_pipeline[8][4]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \data_pipeline[8][4]~_Duplicate_1_regout\ : std_logic;
SIGNAL \data_pipeline[8][5]~_Duplicate_1_regout\ : std_logic;
SIGNAL \data_pipeline[8][6]~_Duplicate_1_regout\ : std_logic;
SIGNAL \data_pipeline[8][7]~_Duplicate_1_regout\ : std_logic;
SIGNAL \data_pipeline[8][8]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \data_pipeline[8][8]~_Duplicate_1_regout\ : std_logic;
SIGNAL \data_pipeline[8][9]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \data_pipeline[8][9]~_Duplicate_1_regout\ : std_logic;
SIGNAL \data_pipeline[8][10]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \data_pipeline[8][10]~_Duplicate_1_regout\ : std_logic;
SIGNAL \data_pipeline[8][11]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \data_pipeline[8][11]~_Duplicate_1_regout\ : std_logic;
SIGNAL \data_pipeline[8][12]~_Duplicate_1_regout\ : std_logic;
SIGNAL \data_pipeline[8][13]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \data_pipeline[8][13]~_Duplicate_1_regout\ : std_logic;
SIGNAL \data_pipeline[8][14]~_Duplicate_1_regout\ : std_logic;
SIGNAL \data_pipeline[8][15]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \data_pipeline[8][15]~_Duplicate_1_regout\ : std_logic;
SIGNAL \Mult9|auto_generated|mac_mult1~dataout\ : std_logic;
SIGNAL \Mult9|auto_generated|mac_mult1~DATAOUT1\ : std_logic;
SIGNAL \Mult9|auto_generated|mac_mult1~DATAOUT2\ : std_logic;
SIGNAL \Mult9|auto_generated|mac_mult1~DATAOUT3\ : std_logic;
SIGNAL \Mult9|auto_generated|mac_mult1~DATAOUT4\ : std_logic;
SIGNAL \Mult9|auto_generated|mac_mult1~DATAOUT5\ : std_logic;
SIGNAL \Mult9|auto_generated|mac_mult1~DATAOUT6\ : std_logic;
SIGNAL \Mult9|auto_generated|mac_mult1~DATAOUT7\ : std_logic;
SIGNAL \Mult9|auto_generated|mac_mult1~DATAOUT8\ : std_logic;
SIGNAL \Mult9|auto_generated|mac_mult1~DATAOUT9\ : std_logic;
SIGNAL \Mult9|auto_generated|mac_mult1~DATAOUT10\ : std_logic;
SIGNAL \Mult9|auto_generated|mac_mult1~DATAOUT11\ : std_logic;
SIGNAL \Mult9|auto_generated|mac_mult1~DATAOUT12\ : std_logic;
SIGNAL \Mult9|auto_generated|mac_mult1~DATAOUT13\ : std_logic;
SIGNAL \Mult9|auto_generated|mac_mult1~DATAOUT14\ : std_logic;
SIGNAL \Mult9|auto_generated|mac_mult1~DATAOUT15\ : std_logic;
SIGNAL \Mult9|auto_generated|mac_mult1~DATAOUT16\ : std_logic;
SIGNAL \Mult9|auto_generated|mac_mult1~DATAOUT17\ : std_logic;
SIGNAL \Mult9|auto_generated|mac_mult1~DATAOUT18\ : std_logic;
SIGNAL \Mult9|auto_generated|mac_mult1~DATAOUT19\ : std_logic;
SIGNAL \Mult9|auto_generated|mac_mult1~DATAOUT20\ : std_logic;
SIGNAL \Mult9|auto_generated|mac_mult1~DATAOUT21\ : std_logic;
SIGNAL \Mult9|auto_generated|mac_mult1~DATAOUT22\ : std_logic;
SIGNAL \Mult9|auto_generated|mac_mult1~DATAOUT23\ : std_logic;
SIGNAL \Mult9|auto_generated|mac_mult1~DATAOUT24\ : std_logic;
SIGNAL \Mult9|auto_generated|mac_mult1~DATAOUT25\ : std_logic;
SIGNAL \Mult9|auto_generated|mac_mult1~DATAOUT26\ : std_logic;
SIGNAL \Mult9|auto_generated|mac_mult1~DATAOUT27\ : std_logic;
SIGNAL \Mult9|auto_generated|mac_mult1~DATAOUT28\ : std_logic;
SIGNAL \Mult9|auto_generated|mac_mult1~0\ : std_logic;
SIGNAL \Mult9|auto_generated|mac_mult1~1\ : std_logic;
SIGNAL \Mult9|auto_generated|mac_mult1~2\ : std_logic;
SIGNAL \Mult9|auto_generated|mac_mult1~3\ : std_logic;
SIGNAL \Mult9|auto_generated|mac_mult1~4\ : std_logic;
SIGNAL \Mult9|auto_generated|mac_mult1~5\ : std_logic;
SIGNAL \Mult9|auto_generated|mac_mult1~6\ : std_logic;
SIGNAL \Mult9|auto_generated|mac_out2~DATAOUT16\ : std_logic;
SIGNAL \Mult8|auto_generated|mac_out2~DATAOUT15\ : std_logic;
SIGNAL \Mult9|auto_generated|mac_out2~DATAOUT14\ : std_logic;
SIGNAL \Mult8|auto_generated|mac_out2~DATAOUT13\ : std_logic;
SIGNAL \Mult9|auto_generated|mac_out2~DATAOUT12\ : std_logic;
SIGNAL \Mult8|auto_generated|mac_out2~DATAOUT11\ : std_logic;
SIGNAL \Mult8|auto_generated|mac_out2~DATAOUT10\ : std_logic;
SIGNAL \Mult9|auto_generated|mac_out2~DATAOUT9\ : std_logic;
SIGNAL \Mult9|auto_generated|mac_out2~DATAOUT8\ : std_logic;
SIGNAL \Mult8|auto_generated|mac_out2~DATAOUT7\ : std_logic;
SIGNAL \Mult9|auto_generated|mac_out2~DATAOUT6\ : std_logic;
SIGNAL \Mult8|auto_generated|mac_out2~DATAOUT5\ : std_logic;
SIGNAL \Mult9|auto_generated|mac_out2~DATAOUT4\ : std_logic;
SIGNAL \Mult9|auto_generated|mac_out2~DATAOUT3\ : std_logic;
SIGNAL \Mult9|auto_generated|mac_out2~DATAOUT2\ : std_logic;
SIGNAL \data_pipeline[9][1]~_Duplicate_1_regout\ : std_logic;
SIGNAL \Add7~1\ : std_logic;
SIGNAL \Add7~3\ : std_logic;
SIGNAL \Add7~5\ : std_logic;
SIGNAL \Add7~7\ : std_logic;
SIGNAL \Add7~9\ : std_logic;
SIGNAL \Add7~11\ : std_logic;
SIGNAL \Add7~13\ : std_logic;
SIGNAL \Add7~15\ : std_logic;
SIGNAL \Add7~17\ : std_logic;
SIGNAL \Add7~19\ : std_logic;
SIGNAL \Add7~21\ : std_logic;
SIGNAL \Add7~23\ : std_logic;
SIGNAL \Add7~25\ : std_logic;
SIGNAL \Add7~27\ : std_logic;
SIGNAL \Add7~29\ : std_logic;
SIGNAL \Add7~31\ : std_logic;
SIGNAL \Add7~32_combout\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_mult1~dataout\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_mult1~DATAOUT1\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_mult1~DATAOUT2\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_mult1~DATAOUT3\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_mult1~DATAOUT4\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_mult1~DATAOUT5\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_mult1~DATAOUT6\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_mult1~DATAOUT7\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_mult1~DATAOUT8\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_mult1~DATAOUT9\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_mult1~DATAOUT10\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_mult1~DATAOUT11\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_mult1~DATAOUT12\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_mult1~DATAOUT13\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_mult1~DATAOUT14\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_mult1~DATAOUT15\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_mult1~DATAOUT16\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_mult1~DATAOUT17\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_mult1~DATAOUT18\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_mult1~DATAOUT19\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_mult1~DATAOUT20\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_mult1~DATAOUT21\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_mult1~DATAOUT22\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_mult1~DATAOUT23\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_mult1~DATAOUT24\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_mult1~DATAOUT25\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_mult1~DATAOUT26\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_mult1~DATAOUT27\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_mult1~DATAOUT28\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_mult1~DATAOUT29\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_mult1~DATAOUT30\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_mult1~0\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_mult1~1\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_mult1~2\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_mult1~3\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_mult1~4\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_out2~DATAOUT16\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_out2~DATAOUT15\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~dataout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT1\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT2\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT3\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT4\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT5\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT6\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT7\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT8\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT9\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT10\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT11\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT12\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT13\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT14\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT15\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT16\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT17\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT18\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT19\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT20\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT21\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT22\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT23\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT24\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT25\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT26\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT27\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT28\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT29\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~0\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~1\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~2\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~3\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~4\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~5\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT14\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT13\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~dataout\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT1\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT2\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT3\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT4\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT5\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT6\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT7\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT8\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT9\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT10\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT11\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT12\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT13\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT14\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT15\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT16\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT17\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT18\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT19\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT20\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT21\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT22\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT23\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT24\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT25\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT26\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT27\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT28\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT29\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~0\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~1\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~2\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~3\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~4\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~5\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~DATAOUT12\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~DATAOUT11\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT10\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT9\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT8\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT7\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT6\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT5\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~DATAOUT4\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~DATAOUT3\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~DATAOUT2\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~21\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult1~dataout\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult1~DATAOUT1\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult1~DATAOUT2\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult1~DATAOUT3\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult1~DATAOUT4\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult1~DATAOUT5\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult1~DATAOUT6\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult1~DATAOUT7\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult1~DATAOUT8\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult1~DATAOUT9\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult1~DATAOUT10\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult1~DATAOUT11\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult1~DATAOUT12\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult1~DATAOUT13\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult1~DATAOUT14\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult1~DATAOUT15\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult1~DATAOUT16\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult1~DATAOUT17\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult1~DATAOUT18\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult1~DATAOUT19\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult1~DATAOUT20\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult1~DATAOUT21\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult1~DATAOUT22\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult1~DATAOUT23\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult1~DATAOUT24\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult1~DATAOUT25\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult1~DATAOUT26\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult1~DATAOUT27\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult1~DATAOUT28\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult1~DATAOUT29\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult1~0\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult1~1\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult1~2\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult1~3\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult1~4\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult1~5\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out2~DATAOUT10\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out2~DATAOUT9\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out2~DATAOUT4\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out2~DATAOUT3\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~13\ : std_logic;
SIGNAL \Add1~15\ : std_logic;
SIGNAL \Add1~17\ : std_logic;
SIGNAL \Add1~19\ : std_logic;
SIGNAL \Add1~21\ : std_logic;
SIGNAL \Add1~23\ : std_logic;
SIGNAL \Add1~25\ : std_logic;
SIGNAL \Add1~27\ : std_logic;
SIGNAL \Add1~28_combout\ : std_logic;
SIGNAL \Add1~26_combout\ : std_logic;
SIGNAL \Add1~24_combout\ : std_logic;
SIGNAL \Add1~22_combout\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_out2~DATAOUT10\ : std_logic;
SIGNAL \Add1~18_combout\ : std_logic;
SIGNAL \Add1~16_combout\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_out2~DATAOUT7\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_out2~DATAOUT6\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_out2~DATAOUT5\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_out2~DATAOUT4\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \Add2~1\ : std_logic;
SIGNAL \Add2~3\ : std_logic;
SIGNAL \Add2~5\ : std_logic;
SIGNAL \Add2~7\ : std_logic;
SIGNAL \Add2~9\ : std_logic;
SIGNAL \Add2~11\ : std_logic;
SIGNAL \Add2~13\ : std_logic;
SIGNAL \Add2~15\ : std_logic;
SIGNAL \Add2~17\ : std_logic;
SIGNAL \Add2~19\ : std_logic;
SIGNAL \Add2~21\ : std_logic;
SIGNAL \Add2~23\ : std_logic;
SIGNAL \Add2~25\ : std_logic;
SIGNAL \Add2~27\ : std_logic;
SIGNAL \Add2~29\ : std_logic;
SIGNAL \Add2~30_combout\ : std_logic;
SIGNAL \Add2~28_combout\ : std_logic;
SIGNAL \Add2~26_combout\ : std_logic;
SIGNAL \Add2~24_combout\ : std_logic;
SIGNAL \Add2~22_combout\ : std_logic;
SIGNAL \Add2~20_combout\ : std_logic;
SIGNAL \Add2~18_combout\ : std_logic;
SIGNAL \Add2~16_combout\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_mult1~dataout\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_mult1~DATAOUT1\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_mult1~DATAOUT2\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_mult1~DATAOUT3\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_mult1~DATAOUT4\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_mult1~DATAOUT5\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_mult1~DATAOUT6\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_mult1~DATAOUT7\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_mult1~DATAOUT8\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_mult1~DATAOUT9\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_mult1~DATAOUT10\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_mult1~DATAOUT11\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_mult1~DATAOUT12\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_mult1~DATAOUT13\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_mult1~DATAOUT14\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_mult1~DATAOUT15\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_mult1~DATAOUT16\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_mult1~DATAOUT17\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_mult1~DATAOUT18\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_mult1~DATAOUT19\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_mult1~DATAOUT20\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_mult1~DATAOUT21\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_mult1~DATAOUT22\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_mult1~DATAOUT23\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_mult1~DATAOUT24\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_mult1~DATAOUT25\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_mult1~DATAOUT26\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_mult1~DATAOUT27\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_mult1~DATAOUT28\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_mult1~DATAOUT29\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_mult1~DATAOUT30\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_mult1~0\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_mult1~1\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_mult1~2\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_mult1~3\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_mult1~4\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_out2~DATAOUT8\ : std_logic;
SIGNAL \Add2~12_combout\ : std_logic;
SIGNAL \Add2~10_combout\ : std_logic;
SIGNAL \Add2~8_combout\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_out2~DATAOUT4\ : std_logic;
SIGNAL \Add2~4_combout\ : std_logic;
SIGNAL \Add3~1\ : std_logic;
SIGNAL \Add3~3\ : std_logic;
SIGNAL \Add3~5\ : std_logic;
SIGNAL \Add3~7\ : std_logic;
SIGNAL \Add3~9\ : std_logic;
SIGNAL \Add3~11\ : std_logic;
SIGNAL \Add3~13\ : std_logic;
SIGNAL \Add3~15\ : std_logic;
SIGNAL \Add3~17\ : std_logic;
SIGNAL \Add3~19\ : std_logic;
SIGNAL \Add3~21\ : std_logic;
SIGNAL \Add3~23\ : std_logic;
SIGNAL \Add3~25\ : std_logic;
SIGNAL \Add3~27\ : std_logic;
SIGNAL \Add3~29\ : std_logic;
SIGNAL \Add3~30_combout\ : std_logic;
SIGNAL \Add3~28_combout\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_mult1~dataout\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_mult1~DATAOUT1\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_mult1~DATAOUT2\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_mult1~DATAOUT3\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_mult1~DATAOUT4\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_mult1~DATAOUT5\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_mult1~DATAOUT6\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_mult1~DATAOUT7\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_mult1~DATAOUT8\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_mult1~DATAOUT9\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_mult1~DATAOUT10\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_mult1~DATAOUT11\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_mult1~DATAOUT12\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_mult1~DATAOUT13\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_mult1~DATAOUT14\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_mult1~DATAOUT15\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_mult1~DATAOUT16\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_mult1~DATAOUT17\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_mult1~DATAOUT18\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_mult1~DATAOUT19\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_mult1~DATAOUT20\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_mult1~DATAOUT21\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_mult1~DATAOUT22\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_mult1~DATAOUT23\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_mult1~DATAOUT24\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_mult1~DATAOUT25\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_mult1~DATAOUT26\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_mult1~DATAOUT27\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_mult1~DATAOUT28\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_mult1~DATAOUT29\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_mult1~DATAOUT30\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_mult1~0\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_mult1~1\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_mult1~2\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_mult1~3\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_mult1~4\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_out2~DATAOUT14\ : std_logic;
SIGNAL \Add3~24_combout\ : std_logic;
SIGNAL \Add3~22_combout\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_out2~DATAOUT11\ : std_logic;
SIGNAL \Add3~18_combout\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_out2~DATAOUT9\ : std_logic;
SIGNAL \Add3~14_combout\ : std_logic;
SIGNAL \Add3~12_combout\ : std_logic;
SIGNAL \Add3~10_combout\ : std_logic;
SIGNAL \Add3~8_combout\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_out2~DATAOUT4\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_out2~DATAOUT3\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_out2~DATAOUT2\ : std_logic;
SIGNAL \Add3~0_combout\ : std_logic;
SIGNAL \Add4~1\ : std_logic;
SIGNAL \Add4~3\ : std_logic;
SIGNAL \Add4~5\ : std_logic;
SIGNAL \Add4~7\ : std_logic;
SIGNAL \Add4~9\ : std_logic;
SIGNAL \Add4~11\ : std_logic;
SIGNAL \Add4~13\ : std_logic;
SIGNAL \Add4~15\ : std_logic;
SIGNAL \Add4~17\ : std_logic;
SIGNAL \Add4~19\ : std_logic;
SIGNAL \Add4~21\ : std_logic;
SIGNAL \Add4~23\ : std_logic;
SIGNAL \Add4~25\ : std_logic;
SIGNAL \Add4~27\ : std_logic;
SIGNAL \Add4~29\ : std_logic;
SIGNAL \Add4~30_combout\ : std_logic;
SIGNAL \Add7~28_combout\ : std_logic;
SIGNAL \Add7~26_combout\ : std_logic;
SIGNAL \Add4~24_combout\ : std_logic;
SIGNAL \Add4~22_combout\ : std_logic;
SIGNAL \Add7~20_combout\ : std_logic;
SIGNAL \Add4~18_combout\ : std_logic;
SIGNAL \Add4~16_combout\ : std_logic;
SIGNAL \Add7~14_combout\ : std_logic;
SIGNAL \Add7~12_combout\ : std_logic;
SIGNAL \Add7~10_combout\ : std_logic;
SIGNAL \Add4~8_combout\ : std_logic;
SIGNAL \Add7~6_combout\ : std_logic;
SIGNAL \Add7~4_combout\ : std_logic;
SIGNAL \Add4~2_combout\ : std_logic;
SIGNAL \Add7~0_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \Add6~1\ : std_logic;
SIGNAL \Add6~3\ : std_logic;
SIGNAL \Add6~5\ : std_logic;
SIGNAL \Add6~7\ : std_logic;
SIGNAL \Add6~9\ : std_logic;
SIGNAL \Add6~11\ : std_logic;
SIGNAL \Add6~13\ : std_logic;
SIGNAL \Add6~15\ : std_logic;
SIGNAL \Add6~17\ : std_logic;
SIGNAL \Add6~19\ : std_logic;
SIGNAL \Add6~21\ : std_logic;
SIGNAL \Add6~23\ : std_logic;
SIGNAL \Add6~25\ : std_logic;
SIGNAL \Add6~27\ : std_logic;
SIGNAL \Add6~29\ : std_logic;
SIGNAL \Add6~31\ : std_logic;
SIGNAL \Add6~33\ : std_logic;
SIGNAL \Add6~34_combout\ : std_logic;
SIGNAL \Mult7|auto_generated|mac_mult1~dataout\ : std_logic;
SIGNAL \Mult7|auto_generated|mac_mult1~DATAOUT1\ : std_logic;
SIGNAL \Mult7|auto_generated|mac_mult1~DATAOUT2\ : std_logic;
SIGNAL \Mult7|auto_generated|mac_mult1~DATAOUT3\ : std_logic;
SIGNAL \Mult7|auto_generated|mac_mult1~DATAOUT4\ : std_logic;
SIGNAL \Mult7|auto_generated|mac_mult1~DATAOUT5\ : std_logic;
SIGNAL \Mult7|auto_generated|mac_mult1~DATAOUT6\ : std_logic;
SIGNAL \Mult7|auto_generated|mac_mult1~DATAOUT7\ : std_logic;
SIGNAL \Mult7|auto_generated|mac_mult1~DATAOUT8\ : std_logic;
SIGNAL \Mult7|auto_generated|mac_mult1~DATAOUT9\ : std_logic;
SIGNAL \Mult7|auto_generated|mac_mult1~DATAOUT10\ : std_logic;
SIGNAL \Mult7|auto_generated|mac_mult1~DATAOUT11\ : std_logic;
SIGNAL \Mult7|auto_generated|mac_mult1~DATAOUT12\ : std_logic;
SIGNAL \Mult7|auto_generated|mac_mult1~DATAOUT13\ : std_logic;
SIGNAL \Mult7|auto_generated|mac_mult1~DATAOUT14\ : std_logic;
SIGNAL \Mult7|auto_generated|mac_mult1~DATAOUT15\ : std_logic;
SIGNAL \Mult7|auto_generated|mac_mult1~DATAOUT16\ : std_logic;
SIGNAL \Mult7|auto_generated|mac_mult1~DATAOUT17\ : std_logic;
SIGNAL \Mult7|auto_generated|mac_mult1~DATAOUT18\ : std_logic;
SIGNAL \Mult7|auto_generated|mac_mult1~DATAOUT19\ : std_logic;
SIGNAL \Mult7|auto_generated|mac_mult1~DATAOUT20\ : std_logic;
SIGNAL \Mult7|auto_generated|mac_mult1~DATAOUT21\ : std_logic;
SIGNAL \Mult7|auto_generated|mac_mult1~DATAOUT22\ : std_logic;
SIGNAL \Mult7|auto_generated|mac_mult1~DATAOUT23\ : std_logic;
SIGNAL \Mult7|auto_generated|mac_mult1~DATAOUT24\ : std_logic;
SIGNAL \Mult7|auto_generated|mac_mult1~DATAOUT25\ : std_logic;
SIGNAL \Mult7|auto_generated|mac_mult1~DATAOUT26\ : std_logic;
SIGNAL \Mult7|auto_generated|mac_mult1~DATAOUT27\ : std_logic;
SIGNAL \Mult7|auto_generated|mac_mult1~DATAOUT28\ : std_logic;
SIGNAL \Mult7|auto_generated|mac_mult1~DATAOUT29\ : std_logic;
SIGNAL \Mult7|auto_generated|mac_mult1~0\ : std_logic;
SIGNAL \Mult7|auto_generated|mac_mult1~1\ : std_logic;
SIGNAL \Mult7|auto_generated|mac_mult1~2\ : std_logic;
SIGNAL \Mult7|auto_generated|mac_mult1~3\ : std_logic;
SIGNAL \Mult7|auto_generated|mac_mult1~4\ : std_logic;
SIGNAL \Mult7|auto_generated|mac_mult1~5\ : std_logic;
SIGNAL \Mult7|auto_generated|mac_out2~DATAOUT16\ : std_logic;
SIGNAL \Mult6|auto_generated|mac_mult1~dataout\ : std_logic;
SIGNAL \Mult6|auto_generated|mac_mult1~DATAOUT1\ : std_logic;
SIGNAL \Mult6|auto_generated|mac_mult1~DATAOUT2\ : std_logic;
SIGNAL \Mult6|auto_generated|mac_mult1~DATAOUT3\ : std_logic;
SIGNAL \Mult6|auto_generated|mac_mult1~DATAOUT4\ : std_logic;
SIGNAL \Mult6|auto_generated|mac_mult1~DATAOUT5\ : std_logic;
SIGNAL \Mult6|auto_generated|mac_mult1~DATAOUT6\ : std_logic;
SIGNAL \Mult6|auto_generated|mac_mult1~DATAOUT7\ : std_logic;
SIGNAL \Mult6|auto_generated|mac_mult1~DATAOUT8\ : std_logic;
SIGNAL \Mult6|auto_generated|mac_mult1~DATAOUT9\ : std_logic;
SIGNAL \Mult6|auto_generated|mac_mult1~DATAOUT10\ : std_logic;
SIGNAL \Mult6|auto_generated|mac_mult1~DATAOUT11\ : std_logic;
SIGNAL \Mult6|auto_generated|mac_mult1~DATAOUT12\ : std_logic;
SIGNAL \Mult6|auto_generated|mac_mult1~DATAOUT13\ : std_logic;
SIGNAL \Mult6|auto_generated|mac_mult1~DATAOUT14\ : std_logic;
SIGNAL \Mult6|auto_generated|mac_mult1~DATAOUT15\ : std_logic;
SIGNAL \Mult6|auto_generated|mac_mult1~DATAOUT16\ : std_logic;
SIGNAL \Mult6|auto_generated|mac_mult1~DATAOUT17\ : std_logic;
SIGNAL \Mult6|auto_generated|mac_mult1~DATAOUT18\ : std_logic;
SIGNAL \Mult6|auto_generated|mac_mult1~DATAOUT19\ : std_logic;
SIGNAL \Mult6|auto_generated|mac_mult1~DATAOUT20\ : std_logic;
SIGNAL \Mult6|auto_generated|mac_mult1~DATAOUT21\ : std_logic;
SIGNAL \Mult6|auto_generated|mac_mult1~DATAOUT22\ : std_logic;
SIGNAL \Mult6|auto_generated|mac_mult1~DATAOUT23\ : std_logic;
SIGNAL \Mult6|auto_generated|mac_mult1~DATAOUT24\ : std_logic;
SIGNAL \Mult6|auto_generated|mac_mult1~DATAOUT25\ : std_logic;
SIGNAL \Mult6|auto_generated|mac_mult1~DATAOUT26\ : std_logic;
SIGNAL \Mult6|auto_generated|mac_mult1~DATAOUT27\ : std_logic;
SIGNAL \Mult6|auto_generated|mac_mult1~DATAOUT28\ : std_logic;
SIGNAL \Mult6|auto_generated|mac_mult1~DATAOUT29\ : std_logic;
SIGNAL \Mult6|auto_generated|mac_mult1~0\ : std_logic;
SIGNAL \Mult6|auto_generated|mac_mult1~1\ : std_logic;
SIGNAL \Mult6|auto_generated|mac_mult1~2\ : std_logic;
SIGNAL \Mult6|auto_generated|mac_mult1~3\ : std_logic;
SIGNAL \Mult6|auto_generated|mac_mult1~4\ : std_logic;
SIGNAL \Mult6|auto_generated|mac_mult1~5\ : std_logic;
SIGNAL \Mult6|auto_generated|mac_out2~DATAOUT15\ : std_logic;
SIGNAL \Mult6|auto_generated|mac_out2~DATAOUT14\ : std_logic;
SIGNAL \Mult7|auto_generated|mac_out2~DATAOUT13\ : std_logic;
SIGNAL \Mult6|auto_generated|mac_out2~DATAOUT12\ : std_logic;
SIGNAL \Mult7|auto_generated|mac_out2~DATAOUT11\ : std_logic;
SIGNAL \Mult7|auto_generated|mac_out2~DATAOUT10\ : std_logic;
SIGNAL \Mult7|auto_generated|mac_out2~DATAOUT9\ : std_logic;
SIGNAL \Mult6|auto_generated|mac_out2~DATAOUT8\ : std_logic;
SIGNAL \Mult7|auto_generated|mac_out2~DATAOUT7\ : std_logic;
SIGNAL \Mult6|auto_generated|mac_out2~DATAOUT6\ : std_logic;
SIGNAL \Mult7|auto_generated|mac_out2~DATAOUT5\ : std_logic;
SIGNAL \Mult7|auto_generated|mac_out2~DATAOUT4\ : std_logic;
SIGNAL \Mult6|auto_generated|mac_out2~DATAOUT3\ : std_logic;
SIGNAL \Mult6|auto_generated|mac_out2~DATAOUT2\ : std_logic;
SIGNAL \Mult6|auto_generated|mac_out2~DATAOUT1\ : std_logic;
SIGNAL \Add5~1\ : std_logic;
SIGNAL \Add5~3\ : std_logic;
SIGNAL \Add5~5\ : std_logic;
SIGNAL \Add5~7\ : std_logic;
SIGNAL \Add5~9\ : std_logic;
SIGNAL \Add5~11\ : std_logic;
SIGNAL \Add5~13\ : std_logic;
SIGNAL \Add5~15\ : std_logic;
SIGNAL \Add5~17\ : std_logic;
SIGNAL \Add5~19\ : std_logic;
SIGNAL \Add5~21\ : std_logic;
SIGNAL \Add5~23\ : std_logic;
SIGNAL \Add5~25\ : std_logic;
SIGNAL \Add5~27\ : std_logic;
SIGNAL \Add5~29\ : std_logic;
SIGNAL \Add5~31\ : std_logic;
SIGNAL \Add5~32_combout\ : std_logic;
SIGNAL \Add6~30_combout\ : std_logic;
SIGNAL \Add6~28_combout\ : std_logic;
SIGNAL \Add6~26_combout\ : std_logic;
SIGNAL \Add6~24_combout\ : std_logic;
SIGNAL \Add5~22_combout\ : std_logic;
SIGNAL \Add5~20_combout\ : std_logic;
SIGNAL \Add5~18_combout\ : std_logic;
SIGNAL \Add6~16_combout\ : std_logic;
SIGNAL \Add6~14_combout\ : std_logic;
SIGNAL \Add6~12_combout\ : std_logic;
SIGNAL \Add5~10_combout\ : std_logic;
SIGNAL \Add6~8_combout\ : std_logic;
SIGNAL \Add6~6_combout\ : std_logic;
SIGNAL \Add6~4_combout\ : std_logic;
SIGNAL \Add6~2_combout\ : std_logic;
SIGNAL \Add5~0_combout\ : std_logic;
SIGNAL \result[0]~17_cout\ : std_logic;
SIGNAL \result[0]~19_cout\ : std_logic;
SIGNAL \result[0]~21_cout\ : std_logic;
SIGNAL \result[0]~23_cout\ : std_logic;
SIGNAL \result[0]~25_cout\ : std_logic;
SIGNAL \result[0]~27_cout\ : std_logic;
SIGNAL \result[0]~29_cout\ : std_logic;
SIGNAL \result[0]~31_cout\ : std_logic;
SIGNAL \result[0]~33_cout\ : std_logic;
SIGNAL \result[0]~35_cout\ : std_logic;
SIGNAL \result[0]~37_cout\ : std_logic;
SIGNAL \result[0]~39_cout\ : std_logic;
SIGNAL \result[0]~41_cout\ : std_logic;
SIGNAL \result[0]~43_cout\ : std_logic;
SIGNAL \result[0]~45_cout\ : std_logic;
SIGNAL \result[0]~47_cout\ : std_logic;
SIGNAL \result[0]~49_cout\ : std_logic;
SIGNAL \result[0]~50_combout\ : std_logic;
SIGNAL \result[0]~reg0_regout\ : std_logic;
SIGNAL \Mult6|auto_generated|mac_out2~DATAOUT18\ : std_logic;
SIGNAL \Mult7|auto_generated|mac_out2~DATAOUT17\ : std_logic;
SIGNAL \Add5~33\ : std_logic;
SIGNAL \Add5~35\ : std_logic;
SIGNAL \Add5~36_combout\ : std_logic;
SIGNAL \result[0]~51\ : std_logic;
SIGNAL \result[1]~52_combout\ : std_logic;
SIGNAL \result[1]~reg0_regout\ : std_logic;
SIGNAL \Mult9|auto_generated|mac_out2~DATAOUT19\ : std_logic;
SIGNAL \Mult8|auto_generated|mac_out2~DATAOUT18\ : std_logic;
SIGNAL \Add7~33\ : std_logic;
SIGNAL \Add7~35\ : std_logic;
SIGNAL \Add7~36_combout\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_out2~DATAOUT18\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_out2~DATAOUT17\ : std_logic;
SIGNAL \Add2~31\ : std_logic;
SIGNAL \Add2~32_combout\ : std_logic;
SIGNAL \Add3~31\ : std_logic;
SIGNAL \Add3~32_combout\ : std_logic;
SIGNAL \Add4~31\ : std_logic;
SIGNAL \Add4~33\ : std_logic;
SIGNAL \Add4~34_combout\ : std_logic;
SIGNAL \Add6~35\ : std_logic;
SIGNAL \Add6~37\ : std_logic;
SIGNAL \Add6~38_combout\ : std_logic;
SIGNAL \result[1]~53\ : std_logic;
SIGNAL \result[2]~54_combout\ : std_logic;
SIGNAL \result[2]~reg0_regout\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_out2~DATAOUT20\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_out2~DATAOUT19\ : std_logic;
SIGNAL \Add4~35\ : std_logic;
SIGNAL \Add4~37\ : std_logic;
SIGNAL \Add4~38_combout\ : std_logic;
SIGNAL \Add6~39\ : std_logic;
SIGNAL \Add6~40_combout\ : std_logic;
SIGNAL \result[2]~55\ : std_logic;
SIGNAL \result[3]~56_combout\ : std_logic;
SIGNAL \result[3]~reg0_regout\ : std_logic;
SIGNAL \Mult7|auto_generated|mac_out2~DATAOUT21\ : std_logic;
SIGNAL \Mult6|auto_generated|mac_out2~DATAOUT20\ : std_logic;
SIGNAL \Mult7|auto_generated|mac_out2~DATAOUT19\ : std_logic;
SIGNAL \Add5~37\ : std_logic;
SIGNAL \Add5~39\ : std_logic;
SIGNAL \Add5~41\ : std_logic;
SIGNAL \Add5~42_combout\ : std_logic;
SIGNAL \result[3]~57\ : std_logic;
SIGNAL \result[4]~58_combout\ : std_logic;
SIGNAL \result[4]~reg0_regout\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_out2~DATAOUT22\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_out2~DATAOUT21\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_out2~DATAOUT20\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out2~DATAOUT19\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT18\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT17\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT16\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT15\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~29\ : std_logic;
SIGNAL \Add0~31\ : std_logic;
SIGNAL \Add0~33\ : std_logic;
SIGNAL \Add0~34_combout\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out2~DATAOUT17\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out2~DATAOUT16\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \Add1~29\ : std_logic;
SIGNAL \Add1~31\ : std_logic;
SIGNAL \Add1~33\ : std_logic;
SIGNAL \Add1~35\ : std_logic;
SIGNAL \Add1~37\ : std_logic;
SIGNAL \Add1~38_combout\ : std_logic;
SIGNAL \Add1~36_combout\ : std_logic;
SIGNAL \Add2~33\ : std_logic;
SIGNAL \Add2~35\ : std_logic;
SIGNAL \Add2~37\ : std_logic;
SIGNAL \Add2~39\ : std_logic;
SIGNAL \Add2~40_combout\ : std_logic;
SIGNAL \Add2~38_combout\ : std_logic;
SIGNAL \Add2~36_combout\ : std_logic;
SIGNAL \Add2~34_combout\ : std_logic;
SIGNAL \Add3~33\ : std_logic;
SIGNAL \Add3~35\ : std_logic;
SIGNAL \Add3~37\ : std_logic;
SIGNAL \Add3~39\ : std_logic;
SIGNAL \Add3~41\ : std_logic;
SIGNAL \Add3~42_combout\ : std_logic;
SIGNAL \Add3~40_combout\ : std_logic;
SIGNAL \Add4~39\ : std_logic;
SIGNAL \Add4~41\ : std_logic;
SIGNAL \Add4~42_combout\ : std_logic;
SIGNAL \Add4~40_combout\ : std_logic;
SIGNAL \Add6~41\ : std_logic;
SIGNAL \Add6~43\ : std_logic;
SIGNAL \Add6~44_combout\ : std_logic;
SIGNAL \result[4]~59\ : std_logic;
SIGNAL \result[5]~60_combout\ : std_logic;
SIGNAL \result[5]~reg0_regout\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_out2~DATAOUT23\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_out2~DATAOUT22\ : std_logic;
SIGNAL \Add2~41\ : std_logic;
SIGNAL \Add2~43\ : std_logic;
SIGNAL \Add2~44_combout\ : std_logic;
SIGNAL \Add3~43\ : std_logic;
SIGNAL \Add3~44_combout\ : std_logic;
SIGNAL \Add4~43\ : std_logic;
SIGNAL \Add4~44_combout\ : std_logic;
SIGNAL \Add6~45\ : std_logic;
SIGNAL \Add6~46_combout\ : std_logic;
SIGNAL \result[5]~61\ : std_logic;
SIGNAL \result[6]~62_combout\ : std_logic;
SIGNAL \result[6]~reg0_regout\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out2~DATAOUT24\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT23\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT22\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~DATAOUT21\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT20\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~DATAOUT19\ : std_logic;
SIGNAL \Add0~35\ : std_logic;
SIGNAL \Add0~37\ : std_logic;
SIGNAL \Add0~39\ : std_logic;
SIGNAL \Add0~41\ : std_logic;
SIGNAL \Add0~43\ : std_logic;
SIGNAL \Add0~44_combout\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out2~DATAOUT22\ : std_logic;
SIGNAL \Add0~40_combout\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out2~DATAOUT20\ : std_logic;
SIGNAL \Add1~39\ : std_logic;
SIGNAL \Add1~41\ : std_logic;
SIGNAL \Add1~43\ : std_logic;
SIGNAL \Add1~45\ : std_logic;
SIGNAL \Add1~47\ : std_logic;
SIGNAL \Add1~48_combout\ : std_logic;
SIGNAL \Add2~45\ : std_logic;
SIGNAL \Add2~46_combout\ : std_logic;
SIGNAL \Add3~45\ : std_logic;
SIGNAL \Add3~46_combout\ : std_logic;
SIGNAL \Add4~45\ : std_logic;
SIGNAL \Add4~46_combout\ : std_logic;
SIGNAL \Add6~47\ : std_logic;
SIGNAL \Add6~48_combout\ : std_logic;
SIGNAL \result[6]~63\ : std_logic;
SIGNAL \result[7]~64_combout\ : std_logic;
SIGNAL \result[7]~reg0_regout\ : std_logic;
SIGNAL \Mult6|auto_generated|mac_out2~DATAOUT25\ : std_logic;
SIGNAL \Mult6|auto_generated|mac_out2~DATAOUT24\ : std_logic;
SIGNAL \Mult6|auto_generated|mac_out2~DATAOUT23\ : std_logic;
SIGNAL \Mult6|auto_generated|mac_out2~DATAOUT22\ : std_logic;
SIGNAL \Add5~43\ : std_logic;
SIGNAL \Add5~45\ : std_logic;
SIGNAL \Add5~47\ : std_logic;
SIGNAL \Add5~49\ : std_logic;
SIGNAL \Add5~50_combout\ : std_logic;
SIGNAL \result[7]~65\ : std_logic;
SIGNAL \result[8]~66_combout\ : std_logic;
SIGNAL \result[8]~reg0_regout\ : std_logic;
SIGNAL \Mult6|auto_generated|mac_out2~DATAOUT26\ : std_logic;
SIGNAL \Add5~51\ : std_logic;
SIGNAL \Add5~52_combout\ : std_logic;
SIGNAL \result[8]~67\ : std_logic;
SIGNAL \result[9]~68_combout\ : std_logic;
SIGNAL \result[9]~reg0_regout\ : std_logic;
SIGNAL \Mult6|auto_generated|mac_out2~DATAOUT27\ : std_logic;
SIGNAL \Add5~53\ : std_logic;
SIGNAL \Add5~54_combout\ : std_logic;
SIGNAL \result[9]~69\ : std_logic;
SIGNAL \result[10]~70_combout\ : std_logic;
SIGNAL \result[10]~reg0_regout\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~DATAOUT28\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~DATAOUT27\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~DATAOUT26\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~DATAOUT25\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~DATAOUT24\ : std_logic;
SIGNAL \Add0~45\ : std_logic;
SIGNAL \Add0~47\ : std_logic;
SIGNAL \Add0~49\ : std_logic;
SIGNAL \Add0~51\ : std_logic;
SIGNAL \Add0~53\ : std_logic;
SIGNAL \Add0~54_combout\ : std_logic;
SIGNAL \Add0~52_combout\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out2~DATAOUT26\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out2~DATAOUT25\ : std_logic;
SIGNAL \Add1~49\ : std_logic;
SIGNAL \Add1~51\ : std_logic;
SIGNAL \Add1~53\ : std_logic;
SIGNAL \Add1~55\ : std_logic;
SIGNAL \Add1~56_combout\ : std_logic;
SIGNAL \Add1~54_combout\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_out2~DATAOUT26\ : std_logic;
SIGNAL \Add1~50_combout\ : std_logic;
SIGNAL \Add2~47\ : std_logic;
SIGNAL \Add2~49\ : std_logic;
SIGNAL \Add2~51\ : std_logic;
SIGNAL \Add2~53\ : std_logic;
SIGNAL \Add2~54_combout\ : std_logic;
SIGNAL \Add2~52_combout\ : std_logic;
SIGNAL \Add2~50_combout\ : std_logic;
SIGNAL \Add2~48_combout\ : std_logic;
SIGNAL \Add3~47\ : std_logic;
SIGNAL \Add3~49\ : std_logic;
SIGNAL \Add3~51\ : std_logic;
SIGNAL \Add3~53\ : std_logic;
SIGNAL \Add3~54_combout\ : std_logic;
SIGNAL \Add3~52_combout\ : std_logic;
SIGNAL \Add3~50_combout\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_out2~DATAOUT25\ : std_logic;
SIGNAL \Add4~47\ : std_logic;
SIGNAL \Add4~49\ : std_logic;
SIGNAL \Add4~51\ : std_logic;
SIGNAL \Add4~53\ : std_logic;
SIGNAL \Add4~54_combout\ : std_logic;
SIGNAL \Add4~52_combout\ : std_logic;
SIGNAL \Add4~50_combout\ : std_logic;
SIGNAL \Add4~48_combout\ : std_logic;
SIGNAL \Add6~49\ : std_logic;
SIGNAL \Add6~51\ : std_logic;
SIGNAL \Add6~53\ : std_logic;
SIGNAL \Add6~55\ : std_logic;
SIGNAL \Add6~56_combout\ : std_logic;
SIGNAL \result[10]~71\ : std_logic;
SIGNAL \result[11]~72_combout\ : std_logic;
SIGNAL \result[11]~reg0_regout\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~DATAOUT29\ : std_logic;
SIGNAL \Add0~55\ : std_logic;
SIGNAL \Add0~56_combout\ : std_logic;
SIGNAL \Add1~57\ : std_logic;
SIGNAL \Add1~58_combout\ : std_logic;
SIGNAL \Add2~55\ : std_logic;
SIGNAL \Add2~56_combout\ : std_logic;
SIGNAL \Add3~55\ : std_logic;
SIGNAL \Add3~56_combout\ : std_logic;
SIGNAL \Add4~55\ : std_logic;
SIGNAL \Add4~56_combout\ : std_logic;
SIGNAL \Add6~57\ : std_logic;
SIGNAL \Add6~58_combout\ : std_logic;
SIGNAL \result[11]~73\ : std_logic;
SIGNAL \result[12]~74_combout\ : std_logic;
SIGNAL \result[12]~reg0_regout\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_out2~DATAOUT30\ : std_logic;
SIGNAL \Add4~57\ : std_logic;
SIGNAL \Add4~58_combout\ : std_logic;
SIGNAL \Add6~59\ : std_logic;
SIGNAL \Add6~60_combout\ : std_logic;
SIGNAL \result[12]~75\ : std_logic;
SIGNAL \result[13]~76_combout\ : std_logic;
SIGNAL \result[13]~reg0_regout\ : std_logic;
SIGNAL \Add6~61\ : std_logic;
SIGNAL \Add6~62_combout\ : std_logic;
SIGNAL \result[13]~77\ : std_logic;
SIGNAL \result[14]~78_combout\ : std_logic;
SIGNAL \result[14]~reg0_regout\ : std_logic;
SIGNAL \Add0~57\ : std_logic;
SIGNAL \Add0~58_combout\ : std_logic;
SIGNAL \Add1~59\ : std_logic;
SIGNAL \Add1~60_combout\ : std_logic;
SIGNAL \Add2~57\ : std_logic;
SIGNAL \Add2~59\ : std_logic;
SIGNAL \Add2~61\ : std_logic;
SIGNAL \Add2~62_combout\ : std_logic;
SIGNAL \Add2~58_combout\ : std_logic;
SIGNAL \Add3~57\ : std_logic;
SIGNAL \Add3~59\ : std_logic;
SIGNAL \Add3~61\ : std_logic;
SIGNAL \Add3~62_combout\ : std_logic;
SIGNAL \Add3~60_combout\ : std_logic;
SIGNAL \Add4~59\ : std_logic;
SIGNAL \Add4~61\ : std_logic;
SIGNAL \Add4~62_combout\ : std_logic;
SIGNAL \Add6~63\ : std_logic;
SIGNAL \Add6~64_combout\ : std_logic;
SIGNAL \result[14]~79\ : std_logic;
SIGNAL \result[15]~80_combout\ : std_logic;
SIGNAL \result[15]~reg0_regout\ : std_logic;
SIGNAL \data~combout\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \ALT_INV_reset_n~clkctrl_outclk\ : std_logic;

BEGIN

ww_clk <= clk;
ww_reset_n <= reset_n;
ww_data <= data;
result <= ww_result;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Mult7|auto_generated|mac_out2_DATAA_bus\ <= (\Mult7|auto_generated|mac_mult1~DATAOUT29\ & \Mult7|auto_generated|mac_mult1~DATAOUT28\ & \Mult7|auto_generated|mac_mult1~DATAOUT27\ & \Mult7|auto_generated|mac_mult1~DATAOUT26\ & 
\Mult7|auto_generated|mac_mult1~DATAOUT25\ & \Mult7|auto_generated|mac_mult1~DATAOUT24\ & \Mult7|auto_generated|mac_mult1~DATAOUT23\ & \Mult7|auto_generated|mac_mult1~DATAOUT22\ & \Mult7|auto_generated|mac_mult1~DATAOUT21\ & 
\Mult7|auto_generated|mac_mult1~DATAOUT20\ & \Mult7|auto_generated|mac_mult1~DATAOUT19\ & \Mult7|auto_generated|mac_mult1~DATAOUT18\ & \Mult7|auto_generated|mac_mult1~DATAOUT17\ & \Mult7|auto_generated|mac_mult1~DATAOUT16\ & 
\Mult7|auto_generated|mac_mult1~DATAOUT15\ & \Mult7|auto_generated|mac_mult1~DATAOUT14\ & \Mult7|auto_generated|mac_mult1~DATAOUT13\ & \Mult7|auto_generated|mac_mult1~DATAOUT12\ & \Mult7|auto_generated|mac_mult1~DATAOUT11\ & 
\Mult7|auto_generated|mac_mult1~DATAOUT10\ & \Mult7|auto_generated|mac_mult1~DATAOUT9\ & \Mult7|auto_generated|mac_mult1~DATAOUT8\ & \Mult7|auto_generated|mac_mult1~DATAOUT7\ & \Mult7|auto_generated|mac_mult1~DATAOUT6\ & 
\Mult7|auto_generated|mac_mult1~DATAOUT5\ & \Mult7|auto_generated|mac_mult1~DATAOUT4\ & \Mult7|auto_generated|mac_mult1~DATAOUT3\ & \Mult7|auto_generated|mac_mult1~DATAOUT2\ & \Mult7|auto_generated|mac_mult1~DATAOUT1\ & 
\Mult7|auto_generated|mac_mult1~dataout\ & \Mult7|auto_generated|mac_mult1~5\ & \Mult7|auto_generated|mac_mult1~4\ & \Mult7|auto_generated|mac_mult1~3\ & \Mult7|auto_generated|mac_mult1~2\ & \Mult7|auto_generated|mac_mult1~1\ & 
\Mult7|auto_generated|mac_mult1~0\);

\Mult7|auto_generated|mac_out2~0\ <= \Mult7|auto_generated|mac_out2_DATAOUT_bus\(0);
\Mult7|auto_generated|mac_out2~1\ <= \Mult7|auto_generated|mac_out2_DATAOUT_bus\(1);
\Mult7|auto_generated|mac_out2~2\ <= \Mult7|auto_generated|mac_out2_DATAOUT_bus\(2);
\Mult7|auto_generated|mac_out2~3\ <= \Mult7|auto_generated|mac_out2_DATAOUT_bus\(3);
\Mult7|auto_generated|mac_out2~4\ <= \Mult7|auto_generated|mac_out2_DATAOUT_bus\(4);
\Mult7|auto_generated|mac_out2~5\ <= \Mult7|auto_generated|mac_out2_DATAOUT_bus\(5);
\Mult7|auto_generated|mac_out2~dataout\ <= \Mult7|auto_generated|mac_out2_DATAOUT_bus\(6);
\Mult7|auto_generated|mac_out2~DATAOUT1\ <= \Mult7|auto_generated|mac_out2_DATAOUT_bus\(7);
\Mult7|auto_generated|mac_out2~DATAOUT2\ <= \Mult7|auto_generated|mac_out2_DATAOUT_bus\(8);
\Mult7|auto_generated|mac_out2~DATAOUT3\ <= \Mult7|auto_generated|mac_out2_DATAOUT_bus\(9);
\Mult7|auto_generated|mac_out2~DATAOUT4\ <= \Mult7|auto_generated|mac_out2_DATAOUT_bus\(10);
\Mult7|auto_generated|mac_out2~DATAOUT5\ <= \Mult7|auto_generated|mac_out2_DATAOUT_bus\(11);
\Mult7|auto_generated|mac_out2~DATAOUT6\ <= \Mult7|auto_generated|mac_out2_DATAOUT_bus\(12);
\Mult7|auto_generated|mac_out2~DATAOUT7\ <= \Mult7|auto_generated|mac_out2_DATAOUT_bus\(13);
\Mult7|auto_generated|mac_out2~DATAOUT8\ <= \Mult7|auto_generated|mac_out2_DATAOUT_bus\(14);
\Mult7|auto_generated|mac_out2~DATAOUT9\ <= \Mult7|auto_generated|mac_out2_DATAOUT_bus\(15);
\Mult7|auto_generated|mac_out2~DATAOUT10\ <= \Mult7|auto_generated|mac_out2_DATAOUT_bus\(16);
\Mult7|auto_generated|mac_out2~DATAOUT11\ <= \Mult7|auto_generated|mac_out2_DATAOUT_bus\(17);
\Mult7|auto_generated|mac_out2~DATAOUT12\ <= \Mult7|auto_generated|mac_out2_DATAOUT_bus\(18);
\Mult7|auto_generated|mac_out2~DATAOUT13\ <= \Mult7|auto_generated|mac_out2_DATAOUT_bus\(19);
\Mult7|auto_generated|mac_out2~DATAOUT14\ <= \Mult7|auto_generated|mac_out2_DATAOUT_bus\(20);
\Mult7|auto_generated|mac_out2~DATAOUT15\ <= \Mult7|auto_generated|mac_out2_DATAOUT_bus\(21);
\Mult7|auto_generated|mac_out2~DATAOUT16\ <= \Mult7|auto_generated|mac_out2_DATAOUT_bus\(22);
\Mult7|auto_generated|mac_out2~DATAOUT17\ <= \Mult7|auto_generated|mac_out2_DATAOUT_bus\(23);
\Mult7|auto_generated|mac_out2~DATAOUT18\ <= \Mult7|auto_generated|mac_out2_DATAOUT_bus\(24);
\Mult7|auto_generated|mac_out2~DATAOUT19\ <= \Mult7|auto_generated|mac_out2_DATAOUT_bus\(25);
\Mult7|auto_generated|mac_out2~DATAOUT20\ <= \Mult7|auto_generated|mac_out2_DATAOUT_bus\(26);
\Mult7|auto_generated|mac_out2~DATAOUT21\ <= \Mult7|auto_generated|mac_out2_DATAOUT_bus\(27);
\Mult7|auto_generated|mac_out2~DATAOUT22\ <= \Mult7|auto_generated|mac_out2_DATAOUT_bus\(28);
\Mult7|auto_generated|mac_out2~DATAOUT23\ <= \Mult7|auto_generated|mac_out2_DATAOUT_bus\(29);
\Mult7|auto_generated|mac_out2~DATAOUT24\ <= \Mult7|auto_generated|mac_out2_DATAOUT_bus\(30);
\Mult7|auto_generated|mac_out2~DATAOUT25\ <= \Mult7|auto_generated|mac_out2_DATAOUT_bus\(31);
\Mult7|auto_generated|mac_out2~DATAOUT26\ <= \Mult7|auto_generated|mac_out2_DATAOUT_bus\(32);
\Mult7|auto_generated|mac_out2~DATAOUT27\ <= \Mult7|auto_generated|mac_out2_DATAOUT_bus\(33);
\Mult7|auto_generated|mac_out2~DATAOUT28\ <= \Mult7|auto_generated|mac_out2_DATAOUT_bus\(34);
\Mult7|auto_generated|mac_out2~DATAOUT29\ <= \Mult7|auto_generated|mac_out2_DATAOUT_bus\(35);

\Mult6|auto_generated|mac_out2_DATAA_bus\ <= (\Mult6|auto_generated|mac_mult1~DATAOUT29\ & \Mult6|auto_generated|mac_mult1~DATAOUT28\ & \Mult6|auto_generated|mac_mult1~DATAOUT27\ & \Mult6|auto_generated|mac_mult1~DATAOUT26\ & 
\Mult6|auto_generated|mac_mult1~DATAOUT25\ & \Mult6|auto_generated|mac_mult1~DATAOUT24\ & \Mult6|auto_generated|mac_mult1~DATAOUT23\ & \Mult6|auto_generated|mac_mult1~DATAOUT22\ & \Mult6|auto_generated|mac_mult1~DATAOUT21\ & 
\Mult6|auto_generated|mac_mult1~DATAOUT20\ & \Mult6|auto_generated|mac_mult1~DATAOUT19\ & \Mult6|auto_generated|mac_mult1~DATAOUT18\ & \Mult6|auto_generated|mac_mult1~DATAOUT17\ & \Mult6|auto_generated|mac_mult1~DATAOUT16\ & 
\Mult6|auto_generated|mac_mult1~DATAOUT15\ & \Mult6|auto_generated|mac_mult1~DATAOUT14\ & \Mult6|auto_generated|mac_mult1~DATAOUT13\ & \Mult6|auto_generated|mac_mult1~DATAOUT12\ & \Mult6|auto_generated|mac_mult1~DATAOUT11\ & 
\Mult6|auto_generated|mac_mult1~DATAOUT10\ & \Mult6|auto_generated|mac_mult1~DATAOUT9\ & \Mult6|auto_generated|mac_mult1~DATAOUT8\ & \Mult6|auto_generated|mac_mult1~DATAOUT7\ & \Mult6|auto_generated|mac_mult1~DATAOUT6\ & 
\Mult6|auto_generated|mac_mult1~DATAOUT5\ & \Mult6|auto_generated|mac_mult1~DATAOUT4\ & \Mult6|auto_generated|mac_mult1~DATAOUT3\ & \Mult6|auto_generated|mac_mult1~DATAOUT2\ & \Mult6|auto_generated|mac_mult1~DATAOUT1\ & 
\Mult6|auto_generated|mac_mult1~dataout\ & \Mult6|auto_generated|mac_mult1~5\ & \Mult6|auto_generated|mac_mult1~4\ & \Mult6|auto_generated|mac_mult1~3\ & \Mult6|auto_generated|mac_mult1~2\ & \Mult6|auto_generated|mac_mult1~1\ & 
\Mult6|auto_generated|mac_mult1~0\);

\Mult6|auto_generated|mac_out2~0\ <= \Mult6|auto_generated|mac_out2_DATAOUT_bus\(0);
\Mult6|auto_generated|mac_out2~1\ <= \Mult6|auto_generated|mac_out2_DATAOUT_bus\(1);
\Mult6|auto_generated|mac_out2~2\ <= \Mult6|auto_generated|mac_out2_DATAOUT_bus\(2);
\Mult6|auto_generated|mac_out2~3\ <= \Mult6|auto_generated|mac_out2_DATAOUT_bus\(3);
\Mult6|auto_generated|mac_out2~4\ <= \Mult6|auto_generated|mac_out2_DATAOUT_bus\(4);
\Mult6|auto_generated|mac_out2~5\ <= \Mult6|auto_generated|mac_out2_DATAOUT_bus\(5);
\Mult6|auto_generated|mac_out2~dataout\ <= \Mult6|auto_generated|mac_out2_DATAOUT_bus\(6);
\Mult6|auto_generated|mac_out2~DATAOUT1\ <= \Mult6|auto_generated|mac_out2_DATAOUT_bus\(7);
\Mult6|auto_generated|mac_out2~DATAOUT2\ <= \Mult6|auto_generated|mac_out2_DATAOUT_bus\(8);
\Mult6|auto_generated|mac_out2~DATAOUT3\ <= \Mult6|auto_generated|mac_out2_DATAOUT_bus\(9);
\Mult6|auto_generated|mac_out2~DATAOUT4\ <= \Mult6|auto_generated|mac_out2_DATAOUT_bus\(10);
\Mult6|auto_generated|mac_out2~DATAOUT5\ <= \Mult6|auto_generated|mac_out2_DATAOUT_bus\(11);
\Mult6|auto_generated|mac_out2~DATAOUT6\ <= \Mult6|auto_generated|mac_out2_DATAOUT_bus\(12);
\Mult6|auto_generated|mac_out2~DATAOUT7\ <= \Mult6|auto_generated|mac_out2_DATAOUT_bus\(13);
\Mult6|auto_generated|mac_out2~DATAOUT8\ <= \Mult6|auto_generated|mac_out2_DATAOUT_bus\(14);
\Mult6|auto_generated|mac_out2~DATAOUT9\ <= \Mult6|auto_generated|mac_out2_DATAOUT_bus\(15);
\Mult6|auto_generated|mac_out2~DATAOUT10\ <= \Mult6|auto_generated|mac_out2_DATAOUT_bus\(16);
\Mult6|auto_generated|mac_out2~DATAOUT11\ <= \Mult6|auto_generated|mac_out2_DATAOUT_bus\(17);
\Mult6|auto_generated|mac_out2~DATAOUT12\ <= \Mult6|auto_generated|mac_out2_DATAOUT_bus\(18);
\Mult6|auto_generated|mac_out2~DATAOUT13\ <= \Mult6|auto_generated|mac_out2_DATAOUT_bus\(19);
\Mult6|auto_generated|mac_out2~DATAOUT14\ <= \Mult6|auto_generated|mac_out2_DATAOUT_bus\(20);
\Mult6|auto_generated|mac_out2~DATAOUT15\ <= \Mult6|auto_generated|mac_out2_DATAOUT_bus\(21);
\Mult6|auto_generated|mac_out2~DATAOUT16\ <= \Mult6|auto_generated|mac_out2_DATAOUT_bus\(22);
\Mult6|auto_generated|mac_out2~DATAOUT17\ <= \Mult6|auto_generated|mac_out2_DATAOUT_bus\(23);
\Mult6|auto_generated|mac_out2~DATAOUT18\ <= \Mult6|auto_generated|mac_out2_DATAOUT_bus\(24);
\Mult6|auto_generated|mac_out2~DATAOUT19\ <= \Mult6|auto_generated|mac_out2_DATAOUT_bus\(25);
\Mult6|auto_generated|mac_out2~DATAOUT20\ <= \Mult6|auto_generated|mac_out2_DATAOUT_bus\(26);
\Mult6|auto_generated|mac_out2~DATAOUT21\ <= \Mult6|auto_generated|mac_out2_DATAOUT_bus\(27);
\Mult6|auto_generated|mac_out2~DATAOUT22\ <= \Mult6|auto_generated|mac_out2_DATAOUT_bus\(28);
\Mult6|auto_generated|mac_out2~DATAOUT23\ <= \Mult6|auto_generated|mac_out2_DATAOUT_bus\(29);
\Mult6|auto_generated|mac_out2~DATAOUT24\ <= \Mult6|auto_generated|mac_out2_DATAOUT_bus\(30);
\Mult6|auto_generated|mac_out2~DATAOUT25\ <= \Mult6|auto_generated|mac_out2_DATAOUT_bus\(31);
\Mult6|auto_generated|mac_out2~DATAOUT26\ <= \Mult6|auto_generated|mac_out2_DATAOUT_bus\(32);
\Mult6|auto_generated|mac_out2~DATAOUT27\ <= \Mult6|auto_generated|mac_out2_DATAOUT_bus\(33);
\Mult6|auto_generated|mac_out2~DATAOUT28\ <= \Mult6|auto_generated|mac_out2_DATAOUT_bus\(34);
\Mult6|auto_generated|mac_out2~DATAOUT29\ <= \Mult6|auto_generated|mac_out2_DATAOUT_bus\(35);

\Mult9|auto_generated|mac_out2_DATAA_bus\ <= (\Mult9|auto_generated|mac_mult1~DATAOUT28\ & \Mult9|auto_generated|mac_mult1~DATAOUT27\ & \Mult9|auto_generated|mac_mult1~DATAOUT26\ & \Mult9|auto_generated|mac_mult1~DATAOUT25\ & 
\Mult9|auto_generated|mac_mult1~DATAOUT24\ & \Mult9|auto_generated|mac_mult1~DATAOUT23\ & \Mult9|auto_generated|mac_mult1~DATAOUT22\ & \Mult9|auto_generated|mac_mult1~DATAOUT21\ & \Mult9|auto_generated|mac_mult1~DATAOUT20\ & 
\Mult9|auto_generated|mac_mult1~DATAOUT19\ & \Mult9|auto_generated|mac_mult1~DATAOUT18\ & \Mult9|auto_generated|mac_mult1~DATAOUT17\ & \Mult9|auto_generated|mac_mult1~DATAOUT16\ & \Mult9|auto_generated|mac_mult1~DATAOUT15\ & 
\Mult9|auto_generated|mac_mult1~DATAOUT14\ & \Mult9|auto_generated|mac_mult1~DATAOUT13\ & \Mult9|auto_generated|mac_mult1~DATAOUT12\ & \Mult9|auto_generated|mac_mult1~DATAOUT11\ & \Mult9|auto_generated|mac_mult1~DATAOUT10\ & 
\Mult9|auto_generated|mac_mult1~DATAOUT9\ & \Mult9|auto_generated|mac_mult1~DATAOUT8\ & \Mult9|auto_generated|mac_mult1~DATAOUT7\ & \Mult9|auto_generated|mac_mult1~DATAOUT6\ & \Mult9|auto_generated|mac_mult1~DATAOUT5\ & 
\Mult9|auto_generated|mac_mult1~DATAOUT4\ & \Mult9|auto_generated|mac_mult1~DATAOUT3\ & \Mult9|auto_generated|mac_mult1~DATAOUT2\ & \Mult9|auto_generated|mac_mult1~DATAOUT1\ & \Mult9|auto_generated|mac_mult1~dataout\ & \Mult9|auto_generated|mac_mult1~6\
& \Mult9|auto_generated|mac_mult1~5\ & \Mult9|auto_generated|mac_mult1~4\ & \Mult9|auto_generated|mac_mult1~3\ & \Mult9|auto_generated|mac_mult1~2\ & \Mult9|auto_generated|mac_mult1~1\ & \Mult9|auto_generated|mac_mult1~0\);

\Mult9|auto_generated|mac_out2~0\ <= \Mult9|auto_generated|mac_out2_DATAOUT_bus\(0);
\Mult9|auto_generated|mac_out2~1\ <= \Mult9|auto_generated|mac_out2_DATAOUT_bus\(1);
\Mult9|auto_generated|mac_out2~2\ <= \Mult9|auto_generated|mac_out2_DATAOUT_bus\(2);
\Mult9|auto_generated|mac_out2~3\ <= \Mult9|auto_generated|mac_out2_DATAOUT_bus\(3);
\Mult9|auto_generated|mac_out2~4\ <= \Mult9|auto_generated|mac_out2_DATAOUT_bus\(4);
\Mult9|auto_generated|mac_out2~5\ <= \Mult9|auto_generated|mac_out2_DATAOUT_bus\(5);
\Mult9|auto_generated|mac_out2~6\ <= \Mult9|auto_generated|mac_out2_DATAOUT_bus\(6);
\Mult9|auto_generated|mac_out2~dataout\ <= \Mult9|auto_generated|mac_out2_DATAOUT_bus\(7);
\Mult9|auto_generated|mac_out2~DATAOUT1\ <= \Mult9|auto_generated|mac_out2_DATAOUT_bus\(8);
\Mult9|auto_generated|mac_out2~DATAOUT2\ <= \Mult9|auto_generated|mac_out2_DATAOUT_bus\(9);
\Mult9|auto_generated|mac_out2~DATAOUT3\ <= \Mult9|auto_generated|mac_out2_DATAOUT_bus\(10);
\Mult9|auto_generated|mac_out2~DATAOUT4\ <= \Mult9|auto_generated|mac_out2_DATAOUT_bus\(11);
\Mult9|auto_generated|mac_out2~DATAOUT5\ <= \Mult9|auto_generated|mac_out2_DATAOUT_bus\(12);
\Mult9|auto_generated|mac_out2~DATAOUT6\ <= \Mult9|auto_generated|mac_out2_DATAOUT_bus\(13);
\Mult9|auto_generated|mac_out2~DATAOUT7\ <= \Mult9|auto_generated|mac_out2_DATAOUT_bus\(14);
\Mult9|auto_generated|mac_out2~DATAOUT8\ <= \Mult9|auto_generated|mac_out2_DATAOUT_bus\(15);
\Mult9|auto_generated|mac_out2~DATAOUT9\ <= \Mult9|auto_generated|mac_out2_DATAOUT_bus\(16);
\Mult9|auto_generated|mac_out2~DATAOUT10\ <= \Mult9|auto_generated|mac_out2_DATAOUT_bus\(17);
\Mult9|auto_generated|mac_out2~DATAOUT11\ <= \Mult9|auto_generated|mac_out2_DATAOUT_bus\(18);
\Mult9|auto_generated|mac_out2~DATAOUT12\ <= \Mult9|auto_generated|mac_out2_DATAOUT_bus\(19);
\Mult9|auto_generated|mac_out2~DATAOUT13\ <= \Mult9|auto_generated|mac_out2_DATAOUT_bus\(20);
\Mult9|auto_generated|mac_out2~DATAOUT14\ <= \Mult9|auto_generated|mac_out2_DATAOUT_bus\(21);
\Mult9|auto_generated|mac_out2~DATAOUT15\ <= \Mult9|auto_generated|mac_out2_DATAOUT_bus\(22);
\Mult9|auto_generated|mac_out2~DATAOUT16\ <= \Mult9|auto_generated|mac_out2_DATAOUT_bus\(23);
\Mult9|auto_generated|mac_out2~DATAOUT17\ <= \Mult9|auto_generated|mac_out2_DATAOUT_bus\(24);
\Mult9|auto_generated|mac_out2~DATAOUT18\ <= \Mult9|auto_generated|mac_out2_DATAOUT_bus\(25);
\Mult9|auto_generated|mac_out2~DATAOUT19\ <= \Mult9|auto_generated|mac_out2_DATAOUT_bus\(26);
\Mult9|auto_generated|mac_out2~DATAOUT20\ <= \Mult9|auto_generated|mac_out2_DATAOUT_bus\(27);
\Mult9|auto_generated|mac_out2~DATAOUT21\ <= \Mult9|auto_generated|mac_out2_DATAOUT_bus\(28);
\Mult9|auto_generated|mac_out2~DATAOUT22\ <= \Mult9|auto_generated|mac_out2_DATAOUT_bus\(29);
\Mult9|auto_generated|mac_out2~DATAOUT23\ <= \Mult9|auto_generated|mac_out2_DATAOUT_bus\(30);
\Mult9|auto_generated|mac_out2~DATAOUT24\ <= \Mult9|auto_generated|mac_out2_DATAOUT_bus\(31);
\Mult9|auto_generated|mac_out2~DATAOUT25\ <= \Mult9|auto_generated|mac_out2_DATAOUT_bus\(32);
\Mult9|auto_generated|mac_out2~DATAOUT26\ <= \Mult9|auto_generated|mac_out2_DATAOUT_bus\(33);
\Mult9|auto_generated|mac_out2~DATAOUT27\ <= \Mult9|auto_generated|mac_out2_DATAOUT_bus\(34);
\Mult9|auto_generated|mac_out2~DATAOUT28\ <= \Mult9|auto_generated|mac_out2_DATAOUT_bus\(35);

\Mult8|auto_generated|mac_out2_DATAA_bus\ <= (\Mult8|auto_generated|mac_mult1~DATAOUT29\ & \Mult8|auto_generated|mac_mult1~DATAOUT28\ & \Mult8|auto_generated|mac_mult1~DATAOUT27\ & \Mult8|auto_generated|mac_mult1~DATAOUT26\ & 
\Mult8|auto_generated|mac_mult1~DATAOUT25\ & \Mult8|auto_generated|mac_mult1~DATAOUT24\ & \Mult8|auto_generated|mac_mult1~DATAOUT23\ & \Mult8|auto_generated|mac_mult1~DATAOUT22\ & \Mult8|auto_generated|mac_mult1~DATAOUT21\ & 
\Mult8|auto_generated|mac_mult1~DATAOUT20\ & \Mult8|auto_generated|mac_mult1~DATAOUT19\ & \Mult8|auto_generated|mac_mult1~DATAOUT18\ & \Mult8|auto_generated|mac_mult1~DATAOUT17\ & \Mult8|auto_generated|mac_mult1~DATAOUT16\ & 
\Mult8|auto_generated|mac_mult1~DATAOUT15\ & \Mult8|auto_generated|mac_mult1~DATAOUT14\ & \Mult8|auto_generated|mac_mult1~DATAOUT13\ & \Mult8|auto_generated|mac_mult1~DATAOUT12\ & \Mult8|auto_generated|mac_mult1~DATAOUT11\ & 
\Mult8|auto_generated|mac_mult1~DATAOUT10\ & \Mult8|auto_generated|mac_mult1~DATAOUT9\ & \Mult8|auto_generated|mac_mult1~DATAOUT8\ & \Mult8|auto_generated|mac_mult1~DATAOUT7\ & \Mult8|auto_generated|mac_mult1~DATAOUT6\ & 
\Mult8|auto_generated|mac_mult1~DATAOUT5\ & \Mult8|auto_generated|mac_mult1~DATAOUT4\ & \Mult8|auto_generated|mac_mult1~DATAOUT3\ & \Mult8|auto_generated|mac_mult1~DATAOUT2\ & \Mult8|auto_generated|mac_mult1~DATAOUT1\ & 
\Mult8|auto_generated|mac_mult1~dataout\ & \Mult8|auto_generated|mac_mult1~5\ & \Mult8|auto_generated|mac_mult1~4\ & \Mult8|auto_generated|mac_mult1~3\ & \Mult8|auto_generated|mac_mult1~2\ & \Mult8|auto_generated|mac_mult1~1\ & 
\Mult8|auto_generated|mac_mult1~0\);

\Mult8|auto_generated|mac_out2~0\ <= \Mult8|auto_generated|mac_out2_DATAOUT_bus\(0);
\Mult8|auto_generated|mac_out2~1\ <= \Mult8|auto_generated|mac_out2_DATAOUT_bus\(1);
\Mult8|auto_generated|mac_out2~2\ <= \Mult8|auto_generated|mac_out2_DATAOUT_bus\(2);
\Mult8|auto_generated|mac_out2~3\ <= \Mult8|auto_generated|mac_out2_DATAOUT_bus\(3);
\Mult8|auto_generated|mac_out2~4\ <= \Mult8|auto_generated|mac_out2_DATAOUT_bus\(4);
\Mult8|auto_generated|mac_out2~5\ <= \Mult8|auto_generated|mac_out2_DATAOUT_bus\(5);
\Mult8|auto_generated|mac_out2~dataout\ <= \Mult8|auto_generated|mac_out2_DATAOUT_bus\(6);
\Mult8|auto_generated|mac_out2~DATAOUT1\ <= \Mult8|auto_generated|mac_out2_DATAOUT_bus\(7);
\Mult8|auto_generated|mac_out2~DATAOUT2\ <= \Mult8|auto_generated|mac_out2_DATAOUT_bus\(8);
\Mult8|auto_generated|mac_out2~DATAOUT3\ <= \Mult8|auto_generated|mac_out2_DATAOUT_bus\(9);
\Mult8|auto_generated|mac_out2~DATAOUT4\ <= \Mult8|auto_generated|mac_out2_DATAOUT_bus\(10);
\Mult8|auto_generated|mac_out2~DATAOUT5\ <= \Mult8|auto_generated|mac_out2_DATAOUT_bus\(11);
\Mult8|auto_generated|mac_out2~DATAOUT6\ <= \Mult8|auto_generated|mac_out2_DATAOUT_bus\(12);
\Mult8|auto_generated|mac_out2~DATAOUT7\ <= \Mult8|auto_generated|mac_out2_DATAOUT_bus\(13);
\Mult8|auto_generated|mac_out2~DATAOUT8\ <= \Mult8|auto_generated|mac_out2_DATAOUT_bus\(14);
\Mult8|auto_generated|mac_out2~DATAOUT9\ <= \Mult8|auto_generated|mac_out2_DATAOUT_bus\(15);
\Mult8|auto_generated|mac_out2~DATAOUT10\ <= \Mult8|auto_generated|mac_out2_DATAOUT_bus\(16);
\Mult8|auto_generated|mac_out2~DATAOUT11\ <= \Mult8|auto_generated|mac_out2_DATAOUT_bus\(17);
\Mult8|auto_generated|mac_out2~DATAOUT12\ <= \Mult8|auto_generated|mac_out2_DATAOUT_bus\(18);
\Mult8|auto_generated|mac_out2~DATAOUT13\ <= \Mult8|auto_generated|mac_out2_DATAOUT_bus\(19);
\Mult8|auto_generated|mac_out2~DATAOUT14\ <= \Mult8|auto_generated|mac_out2_DATAOUT_bus\(20);
\Mult8|auto_generated|mac_out2~DATAOUT15\ <= \Mult8|auto_generated|mac_out2_DATAOUT_bus\(21);
\Mult8|auto_generated|mac_out2~DATAOUT16\ <= \Mult8|auto_generated|mac_out2_DATAOUT_bus\(22);
\Mult8|auto_generated|mac_out2~DATAOUT17\ <= \Mult8|auto_generated|mac_out2_DATAOUT_bus\(23);
\Mult8|auto_generated|mac_out2~DATAOUT18\ <= \Mult8|auto_generated|mac_out2_DATAOUT_bus\(24);
\Mult8|auto_generated|mac_out2~DATAOUT19\ <= \Mult8|auto_generated|mac_out2_DATAOUT_bus\(25);
\Mult8|auto_generated|mac_out2~DATAOUT20\ <= \Mult8|auto_generated|mac_out2_DATAOUT_bus\(26);
\Mult8|auto_generated|mac_out2~DATAOUT21\ <= \Mult8|auto_generated|mac_out2_DATAOUT_bus\(27);
\Mult8|auto_generated|mac_out2~DATAOUT22\ <= \Mult8|auto_generated|mac_out2_DATAOUT_bus\(28);
\Mult8|auto_generated|mac_out2~DATAOUT23\ <= \Mult8|auto_generated|mac_out2_DATAOUT_bus\(29);
\Mult8|auto_generated|mac_out2~DATAOUT24\ <= \Mult8|auto_generated|mac_out2_DATAOUT_bus\(30);
\Mult8|auto_generated|mac_out2~DATAOUT25\ <= \Mult8|auto_generated|mac_out2_DATAOUT_bus\(31);
\Mult8|auto_generated|mac_out2~DATAOUT26\ <= \Mult8|auto_generated|mac_out2_DATAOUT_bus\(32);
\Mult8|auto_generated|mac_out2~DATAOUT27\ <= \Mult8|auto_generated|mac_out2_DATAOUT_bus\(33);
\Mult8|auto_generated|mac_out2~DATAOUT28\ <= \Mult8|auto_generated|mac_out2_DATAOUT_bus\(34);
\Mult8|auto_generated|mac_out2~DATAOUT29\ <= \Mult8|auto_generated|mac_out2_DATAOUT_bus\(35);

\Mult1|auto_generated|mac_out2_DATAA_bus\ <= (\Mult1|auto_generated|mac_mult1~DATAOUT29\ & \Mult1|auto_generated|mac_mult1~DATAOUT28\ & \Mult1|auto_generated|mac_mult1~DATAOUT27\ & \Mult1|auto_generated|mac_mult1~DATAOUT26\ & 
\Mult1|auto_generated|mac_mult1~DATAOUT25\ & \Mult1|auto_generated|mac_mult1~DATAOUT24\ & \Mult1|auto_generated|mac_mult1~DATAOUT23\ & \Mult1|auto_generated|mac_mult1~DATAOUT22\ & \Mult1|auto_generated|mac_mult1~DATAOUT21\ & 
\Mult1|auto_generated|mac_mult1~DATAOUT20\ & \Mult1|auto_generated|mac_mult1~DATAOUT19\ & \Mult1|auto_generated|mac_mult1~DATAOUT18\ & \Mult1|auto_generated|mac_mult1~DATAOUT17\ & \Mult1|auto_generated|mac_mult1~DATAOUT16\ & 
\Mult1|auto_generated|mac_mult1~DATAOUT15\ & \Mult1|auto_generated|mac_mult1~DATAOUT14\ & \Mult1|auto_generated|mac_mult1~DATAOUT13\ & \Mult1|auto_generated|mac_mult1~DATAOUT12\ & \Mult1|auto_generated|mac_mult1~DATAOUT11\ & 
\Mult1|auto_generated|mac_mult1~DATAOUT10\ & \Mult1|auto_generated|mac_mult1~DATAOUT9\ & \Mult1|auto_generated|mac_mult1~DATAOUT8\ & \Mult1|auto_generated|mac_mult1~DATAOUT7\ & \Mult1|auto_generated|mac_mult1~DATAOUT6\ & 
\Mult1|auto_generated|mac_mult1~DATAOUT5\ & \Mult1|auto_generated|mac_mult1~DATAOUT4\ & \Mult1|auto_generated|mac_mult1~DATAOUT3\ & \Mult1|auto_generated|mac_mult1~DATAOUT2\ & \Mult1|auto_generated|mac_mult1~DATAOUT1\ & 
\Mult1|auto_generated|mac_mult1~dataout\ & \Mult1|auto_generated|mac_mult1~5\ & \Mult1|auto_generated|mac_mult1~4\ & \Mult1|auto_generated|mac_mult1~3\ & \Mult1|auto_generated|mac_mult1~2\ & \Mult1|auto_generated|mac_mult1~1\ & 
\Mult1|auto_generated|mac_mult1~0\);

\Mult1|auto_generated|mac_out2~0\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(0);
\Mult1|auto_generated|mac_out2~1\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(1);
\Mult1|auto_generated|mac_out2~2\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(2);
\Mult1|auto_generated|mac_out2~3\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(3);
\Mult1|auto_generated|mac_out2~4\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(4);
\Mult1|auto_generated|mac_out2~5\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(5);
\Mult1|auto_generated|mac_out2~dataout\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(6);
\Mult1|auto_generated|mac_out2~DATAOUT1\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(7);
\Mult1|auto_generated|mac_out2~DATAOUT2\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(8);
\Mult1|auto_generated|mac_out2~DATAOUT3\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(9);
\Mult1|auto_generated|mac_out2~DATAOUT4\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(10);
\Mult1|auto_generated|mac_out2~DATAOUT5\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(11);
\Mult1|auto_generated|mac_out2~DATAOUT6\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(12);
\Mult1|auto_generated|mac_out2~DATAOUT7\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(13);
\Mult1|auto_generated|mac_out2~DATAOUT8\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(14);
\Mult1|auto_generated|mac_out2~DATAOUT9\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(15);
\Mult1|auto_generated|mac_out2~DATAOUT10\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(16);
\Mult1|auto_generated|mac_out2~DATAOUT11\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(17);
\Mult1|auto_generated|mac_out2~DATAOUT12\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(18);
\Mult1|auto_generated|mac_out2~DATAOUT13\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(19);
\Mult1|auto_generated|mac_out2~DATAOUT14\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(20);
\Mult1|auto_generated|mac_out2~DATAOUT15\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(21);
\Mult1|auto_generated|mac_out2~DATAOUT16\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(22);
\Mult1|auto_generated|mac_out2~DATAOUT17\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(23);
\Mult1|auto_generated|mac_out2~DATAOUT18\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(24);
\Mult1|auto_generated|mac_out2~DATAOUT19\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(25);
\Mult1|auto_generated|mac_out2~DATAOUT20\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(26);
\Mult1|auto_generated|mac_out2~DATAOUT21\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(27);
\Mult1|auto_generated|mac_out2~DATAOUT22\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(28);
\Mult1|auto_generated|mac_out2~DATAOUT23\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(29);
\Mult1|auto_generated|mac_out2~DATAOUT24\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(30);
\Mult1|auto_generated|mac_out2~DATAOUT25\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(31);
\Mult1|auto_generated|mac_out2~DATAOUT26\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(32);
\Mult1|auto_generated|mac_out2~DATAOUT27\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(33);
\Mult1|auto_generated|mac_out2~DATAOUT28\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(34);
\Mult1|auto_generated|mac_out2~DATAOUT29\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(35);

\Mult0|auto_generated|mac_out2_DATAA_bus\ <= (\Mult0|auto_generated|mac_mult1~DATAOUT29\ & \Mult0|auto_generated|mac_mult1~DATAOUT28\ & \Mult0|auto_generated|mac_mult1~DATAOUT27\ & \Mult0|auto_generated|mac_mult1~DATAOUT26\ & 
\Mult0|auto_generated|mac_mult1~DATAOUT25\ & \Mult0|auto_generated|mac_mult1~DATAOUT24\ & \Mult0|auto_generated|mac_mult1~DATAOUT23\ & \Mult0|auto_generated|mac_mult1~DATAOUT22\ & \Mult0|auto_generated|mac_mult1~DATAOUT21\ & 
\Mult0|auto_generated|mac_mult1~DATAOUT20\ & \Mult0|auto_generated|mac_mult1~DATAOUT19\ & \Mult0|auto_generated|mac_mult1~DATAOUT18\ & \Mult0|auto_generated|mac_mult1~DATAOUT17\ & \Mult0|auto_generated|mac_mult1~DATAOUT16\ & 
\Mult0|auto_generated|mac_mult1~DATAOUT15\ & \Mult0|auto_generated|mac_mult1~DATAOUT14\ & \Mult0|auto_generated|mac_mult1~DATAOUT13\ & \Mult0|auto_generated|mac_mult1~DATAOUT12\ & \Mult0|auto_generated|mac_mult1~DATAOUT11\ & 
\Mult0|auto_generated|mac_mult1~DATAOUT10\ & \Mult0|auto_generated|mac_mult1~DATAOUT9\ & \Mult0|auto_generated|mac_mult1~DATAOUT8\ & \Mult0|auto_generated|mac_mult1~DATAOUT7\ & \Mult0|auto_generated|mac_mult1~DATAOUT6\ & 
\Mult0|auto_generated|mac_mult1~DATAOUT5\ & \Mult0|auto_generated|mac_mult1~DATAOUT4\ & \Mult0|auto_generated|mac_mult1~DATAOUT3\ & \Mult0|auto_generated|mac_mult1~DATAOUT2\ & \Mult0|auto_generated|mac_mult1~DATAOUT1\ & 
\Mult0|auto_generated|mac_mult1~dataout\ & \Mult0|auto_generated|mac_mult1~5\ & \Mult0|auto_generated|mac_mult1~4\ & \Mult0|auto_generated|mac_mult1~3\ & \Mult0|auto_generated|mac_mult1~2\ & \Mult0|auto_generated|mac_mult1~1\ & 
\Mult0|auto_generated|mac_mult1~0\);

\Mult0|auto_generated|mac_out2~0\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(0);
\Mult0|auto_generated|mac_out2~1\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(1);
\Mult0|auto_generated|mac_out2~2\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(2);
\Mult0|auto_generated|mac_out2~3\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(3);
\Mult0|auto_generated|mac_out2~4\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(4);
\Mult0|auto_generated|mac_out2~5\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(5);
\Mult0|auto_generated|mac_out2~dataout\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(6);
\Mult0|auto_generated|mac_out2~DATAOUT1\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(7);
\Mult0|auto_generated|mac_out2~DATAOUT2\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(8);
\Mult0|auto_generated|mac_out2~DATAOUT3\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(9);
\Mult0|auto_generated|mac_out2~DATAOUT4\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(10);
\Mult0|auto_generated|mac_out2~DATAOUT5\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(11);
\Mult0|auto_generated|mac_out2~DATAOUT6\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(12);
\Mult0|auto_generated|mac_out2~DATAOUT7\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(13);
\Mult0|auto_generated|mac_out2~DATAOUT8\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(14);
\Mult0|auto_generated|mac_out2~DATAOUT9\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(15);
\Mult0|auto_generated|mac_out2~DATAOUT10\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(16);
\Mult0|auto_generated|mac_out2~DATAOUT11\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(17);
\Mult0|auto_generated|mac_out2~DATAOUT12\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(18);
\Mult0|auto_generated|mac_out2~DATAOUT13\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(19);
\Mult0|auto_generated|mac_out2~DATAOUT14\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(20);
\Mult0|auto_generated|mac_out2~DATAOUT15\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(21);
\Mult0|auto_generated|mac_out2~DATAOUT16\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(22);
\Mult0|auto_generated|mac_out2~DATAOUT17\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(23);
\Mult0|auto_generated|mac_out2~DATAOUT18\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(24);
\Mult0|auto_generated|mac_out2~DATAOUT19\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(25);
\Mult0|auto_generated|mac_out2~DATAOUT20\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(26);
\Mult0|auto_generated|mac_out2~DATAOUT21\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(27);
\Mult0|auto_generated|mac_out2~DATAOUT22\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(28);
\Mult0|auto_generated|mac_out2~DATAOUT23\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(29);
\Mult0|auto_generated|mac_out2~DATAOUT24\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(30);
\Mult0|auto_generated|mac_out2~DATAOUT25\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(31);
\Mult0|auto_generated|mac_out2~DATAOUT26\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(32);
\Mult0|auto_generated|mac_out2~DATAOUT27\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(33);
\Mult0|auto_generated|mac_out2~DATAOUT28\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(34);
\Mult0|auto_generated|mac_out2~DATAOUT29\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(35);

\Mult2|auto_generated|mac_out2_DATAA_bus\ <= (\Mult2|auto_generated|mac_mult1~DATAOUT29\ & \Mult2|auto_generated|mac_mult1~DATAOUT28\ & \Mult2|auto_generated|mac_mult1~DATAOUT27\ & \Mult2|auto_generated|mac_mult1~DATAOUT26\ & 
\Mult2|auto_generated|mac_mult1~DATAOUT25\ & \Mult2|auto_generated|mac_mult1~DATAOUT24\ & \Mult2|auto_generated|mac_mult1~DATAOUT23\ & \Mult2|auto_generated|mac_mult1~DATAOUT22\ & \Mult2|auto_generated|mac_mult1~DATAOUT21\ & 
\Mult2|auto_generated|mac_mult1~DATAOUT20\ & \Mult2|auto_generated|mac_mult1~DATAOUT19\ & \Mult2|auto_generated|mac_mult1~DATAOUT18\ & \Mult2|auto_generated|mac_mult1~DATAOUT17\ & \Mult2|auto_generated|mac_mult1~DATAOUT16\ & 
\Mult2|auto_generated|mac_mult1~DATAOUT15\ & \Mult2|auto_generated|mac_mult1~DATAOUT14\ & \Mult2|auto_generated|mac_mult1~DATAOUT13\ & \Mult2|auto_generated|mac_mult1~DATAOUT12\ & \Mult2|auto_generated|mac_mult1~DATAOUT11\ & 
\Mult2|auto_generated|mac_mult1~DATAOUT10\ & \Mult2|auto_generated|mac_mult1~DATAOUT9\ & \Mult2|auto_generated|mac_mult1~DATAOUT8\ & \Mult2|auto_generated|mac_mult1~DATAOUT7\ & \Mult2|auto_generated|mac_mult1~DATAOUT6\ & 
\Mult2|auto_generated|mac_mult1~DATAOUT5\ & \Mult2|auto_generated|mac_mult1~DATAOUT4\ & \Mult2|auto_generated|mac_mult1~DATAOUT3\ & \Mult2|auto_generated|mac_mult1~DATAOUT2\ & \Mult2|auto_generated|mac_mult1~DATAOUT1\ & 
\Mult2|auto_generated|mac_mult1~dataout\ & \Mult2|auto_generated|mac_mult1~5\ & \Mult2|auto_generated|mac_mult1~4\ & \Mult2|auto_generated|mac_mult1~3\ & \Mult2|auto_generated|mac_mult1~2\ & \Mult2|auto_generated|mac_mult1~1\ & 
\Mult2|auto_generated|mac_mult1~0\);

\Mult2|auto_generated|mac_out2~0\ <= \Mult2|auto_generated|mac_out2_DATAOUT_bus\(0);
\Mult2|auto_generated|mac_out2~1\ <= \Mult2|auto_generated|mac_out2_DATAOUT_bus\(1);
\Mult2|auto_generated|mac_out2~2\ <= \Mult2|auto_generated|mac_out2_DATAOUT_bus\(2);
\Mult2|auto_generated|mac_out2~3\ <= \Mult2|auto_generated|mac_out2_DATAOUT_bus\(3);
\Mult2|auto_generated|mac_out2~4\ <= \Mult2|auto_generated|mac_out2_DATAOUT_bus\(4);
\Mult2|auto_generated|mac_out2~5\ <= \Mult2|auto_generated|mac_out2_DATAOUT_bus\(5);
\Mult2|auto_generated|mac_out2~dataout\ <= \Mult2|auto_generated|mac_out2_DATAOUT_bus\(6);
\Mult2|auto_generated|mac_out2~DATAOUT1\ <= \Mult2|auto_generated|mac_out2_DATAOUT_bus\(7);
\Mult2|auto_generated|mac_out2~DATAOUT2\ <= \Mult2|auto_generated|mac_out2_DATAOUT_bus\(8);
\Mult2|auto_generated|mac_out2~DATAOUT3\ <= \Mult2|auto_generated|mac_out2_DATAOUT_bus\(9);
\Mult2|auto_generated|mac_out2~DATAOUT4\ <= \Mult2|auto_generated|mac_out2_DATAOUT_bus\(10);
\Mult2|auto_generated|mac_out2~DATAOUT5\ <= \Mult2|auto_generated|mac_out2_DATAOUT_bus\(11);
\Mult2|auto_generated|mac_out2~DATAOUT6\ <= \Mult2|auto_generated|mac_out2_DATAOUT_bus\(12);
\Mult2|auto_generated|mac_out2~DATAOUT7\ <= \Mult2|auto_generated|mac_out2_DATAOUT_bus\(13);
\Mult2|auto_generated|mac_out2~DATAOUT8\ <= \Mult2|auto_generated|mac_out2_DATAOUT_bus\(14);
\Mult2|auto_generated|mac_out2~DATAOUT9\ <= \Mult2|auto_generated|mac_out2_DATAOUT_bus\(15);
\Mult2|auto_generated|mac_out2~DATAOUT10\ <= \Mult2|auto_generated|mac_out2_DATAOUT_bus\(16);
\Mult2|auto_generated|mac_out2~DATAOUT11\ <= \Mult2|auto_generated|mac_out2_DATAOUT_bus\(17);
\Mult2|auto_generated|mac_out2~DATAOUT12\ <= \Mult2|auto_generated|mac_out2_DATAOUT_bus\(18);
\Mult2|auto_generated|mac_out2~DATAOUT13\ <= \Mult2|auto_generated|mac_out2_DATAOUT_bus\(19);
\Mult2|auto_generated|mac_out2~DATAOUT14\ <= \Mult2|auto_generated|mac_out2_DATAOUT_bus\(20);
\Mult2|auto_generated|mac_out2~DATAOUT15\ <= \Mult2|auto_generated|mac_out2_DATAOUT_bus\(21);
\Mult2|auto_generated|mac_out2~DATAOUT16\ <= \Mult2|auto_generated|mac_out2_DATAOUT_bus\(22);
\Mult2|auto_generated|mac_out2~DATAOUT17\ <= \Mult2|auto_generated|mac_out2_DATAOUT_bus\(23);
\Mult2|auto_generated|mac_out2~DATAOUT18\ <= \Mult2|auto_generated|mac_out2_DATAOUT_bus\(24);
\Mult2|auto_generated|mac_out2~DATAOUT19\ <= \Mult2|auto_generated|mac_out2_DATAOUT_bus\(25);
\Mult2|auto_generated|mac_out2~DATAOUT20\ <= \Mult2|auto_generated|mac_out2_DATAOUT_bus\(26);
\Mult2|auto_generated|mac_out2~DATAOUT21\ <= \Mult2|auto_generated|mac_out2_DATAOUT_bus\(27);
\Mult2|auto_generated|mac_out2~DATAOUT22\ <= \Mult2|auto_generated|mac_out2_DATAOUT_bus\(28);
\Mult2|auto_generated|mac_out2~DATAOUT23\ <= \Mult2|auto_generated|mac_out2_DATAOUT_bus\(29);
\Mult2|auto_generated|mac_out2~DATAOUT24\ <= \Mult2|auto_generated|mac_out2_DATAOUT_bus\(30);
\Mult2|auto_generated|mac_out2~DATAOUT25\ <= \Mult2|auto_generated|mac_out2_DATAOUT_bus\(31);
\Mult2|auto_generated|mac_out2~DATAOUT26\ <= \Mult2|auto_generated|mac_out2_DATAOUT_bus\(32);
\Mult2|auto_generated|mac_out2~DATAOUT27\ <= \Mult2|auto_generated|mac_out2_DATAOUT_bus\(33);
\Mult2|auto_generated|mac_out2~DATAOUT28\ <= \Mult2|auto_generated|mac_out2_DATAOUT_bus\(34);
\Mult2|auto_generated|mac_out2~DATAOUT29\ <= \Mult2|auto_generated|mac_out2_DATAOUT_bus\(35);

\Mult3|auto_generated|mac_out2_DATAA_bus\ <= (\Mult3|auto_generated|mac_mult1~DATAOUT30\ & \Mult3|auto_generated|mac_mult1~DATAOUT29\ & \Mult3|auto_generated|mac_mult1~DATAOUT28\ & \Mult3|auto_generated|mac_mult1~DATAOUT27\ & 
\Mult3|auto_generated|mac_mult1~DATAOUT26\ & \Mult3|auto_generated|mac_mult1~DATAOUT25\ & \Mult3|auto_generated|mac_mult1~DATAOUT24\ & \Mult3|auto_generated|mac_mult1~DATAOUT23\ & \Mult3|auto_generated|mac_mult1~DATAOUT22\ & 
\Mult3|auto_generated|mac_mult1~DATAOUT21\ & \Mult3|auto_generated|mac_mult1~DATAOUT20\ & \Mult3|auto_generated|mac_mult1~DATAOUT19\ & \Mult3|auto_generated|mac_mult1~DATAOUT18\ & \Mult3|auto_generated|mac_mult1~DATAOUT17\ & 
\Mult3|auto_generated|mac_mult1~DATAOUT16\ & \Mult3|auto_generated|mac_mult1~DATAOUT15\ & \Mult3|auto_generated|mac_mult1~DATAOUT14\ & \Mult3|auto_generated|mac_mult1~DATAOUT13\ & \Mult3|auto_generated|mac_mult1~DATAOUT12\ & 
\Mult3|auto_generated|mac_mult1~DATAOUT11\ & \Mult3|auto_generated|mac_mult1~DATAOUT10\ & \Mult3|auto_generated|mac_mult1~DATAOUT9\ & \Mult3|auto_generated|mac_mult1~DATAOUT8\ & \Mult3|auto_generated|mac_mult1~DATAOUT7\ & 
\Mult3|auto_generated|mac_mult1~DATAOUT6\ & \Mult3|auto_generated|mac_mult1~DATAOUT5\ & \Mult3|auto_generated|mac_mult1~DATAOUT4\ & \Mult3|auto_generated|mac_mult1~DATAOUT3\ & \Mult3|auto_generated|mac_mult1~DATAOUT2\ & 
\Mult3|auto_generated|mac_mult1~DATAOUT1\ & \Mult3|auto_generated|mac_mult1~dataout\ & \Mult3|auto_generated|mac_mult1~4\ & \Mult3|auto_generated|mac_mult1~3\ & \Mult3|auto_generated|mac_mult1~2\ & \Mult3|auto_generated|mac_mult1~1\ & 
\Mult3|auto_generated|mac_mult1~0\);

\Mult3|auto_generated|mac_out2~0\ <= \Mult3|auto_generated|mac_out2_DATAOUT_bus\(0);
\Mult3|auto_generated|mac_out2~1\ <= \Mult3|auto_generated|mac_out2_DATAOUT_bus\(1);
\Mult3|auto_generated|mac_out2~2\ <= \Mult3|auto_generated|mac_out2_DATAOUT_bus\(2);
\Mult3|auto_generated|mac_out2~3\ <= \Mult3|auto_generated|mac_out2_DATAOUT_bus\(3);
\Mult3|auto_generated|mac_out2~4\ <= \Mult3|auto_generated|mac_out2_DATAOUT_bus\(4);
\Mult3|auto_generated|mac_out2~dataout\ <= \Mult3|auto_generated|mac_out2_DATAOUT_bus\(5);
\Mult3|auto_generated|mac_out2~DATAOUT1\ <= \Mult3|auto_generated|mac_out2_DATAOUT_bus\(6);
\Mult3|auto_generated|mac_out2~DATAOUT2\ <= \Mult3|auto_generated|mac_out2_DATAOUT_bus\(7);
\Mult3|auto_generated|mac_out2~DATAOUT3\ <= \Mult3|auto_generated|mac_out2_DATAOUT_bus\(8);
\Mult3|auto_generated|mac_out2~DATAOUT4\ <= \Mult3|auto_generated|mac_out2_DATAOUT_bus\(9);
\Mult3|auto_generated|mac_out2~DATAOUT5\ <= \Mult3|auto_generated|mac_out2_DATAOUT_bus\(10);
\Mult3|auto_generated|mac_out2~DATAOUT6\ <= \Mult3|auto_generated|mac_out2_DATAOUT_bus\(11);
\Mult3|auto_generated|mac_out2~DATAOUT7\ <= \Mult3|auto_generated|mac_out2_DATAOUT_bus\(12);
\Mult3|auto_generated|mac_out2~DATAOUT8\ <= \Mult3|auto_generated|mac_out2_DATAOUT_bus\(13);
\Mult3|auto_generated|mac_out2~DATAOUT9\ <= \Mult3|auto_generated|mac_out2_DATAOUT_bus\(14);
\Mult3|auto_generated|mac_out2~DATAOUT10\ <= \Mult3|auto_generated|mac_out2_DATAOUT_bus\(15);
\Mult3|auto_generated|mac_out2~DATAOUT11\ <= \Mult3|auto_generated|mac_out2_DATAOUT_bus\(16);
\Mult3|auto_generated|mac_out2~DATAOUT12\ <= \Mult3|auto_generated|mac_out2_DATAOUT_bus\(17);
\Mult3|auto_generated|mac_out2~DATAOUT13\ <= \Mult3|auto_generated|mac_out2_DATAOUT_bus\(18);
\Mult3|auto_generated|mac_out2~DATAOUT14\ <= \Mult3|auto_generated|mac_out2_DATAOUT_bus\(19);
\Mult3|auto_generated|mac_out2~DATAOUT15\ <= \Mult3|auto_generated|mac_out2_DATAOUT_bus\(20);
\Mult3|auto_generated|mac_out2~DATAOUT16\ <= \Mult3|auto_generated|mac_out2_DATAOUT_bus\(21);
\Mult3|auto_generated|mac_out2~DATAOUT17\ <= \Mult3|auto_generated|mac_out2_DATAOUT_bus\(22);
\Mult3|auto_generated|mac_out2~DATAOUT18\ <= \Mult3|auto_generated|mac_out2_DATAOUT_bus\(23);
\Mult3|auto_generated|mac_out2~DATAOUT19\ <= \Mult3|auto_generated|mac_out2_DATAOUT_bus\(24);
\Mult3|auto_generated|mac_out2~DATAOUT20\ <= \Mult3|auto_generated|mac_out2_DATAOUT_bus\(25);
\Mult3|auto_generated|mac_out2~DATAOUT21\ <= \Mult3|auto_generated|mac_out2_DATAOUT_bus\(26);
\Mult3|auto_generated|mac_out2~DATAOUT22\ <= \Mult3|auto_generated|mac_out2_DATAOUT_bus\(27);
\Mult3|auto_generated|mac_out2~DATAOUT23\ <= \Mult3|auto_generated|mac_out2_DATAOUT_bus\(28);
\Mult3|auto_generated|mac_out2~DATAOUT24\ <= \Mult3|auto_generated|mac_out2_DATAOUT_bus\(29);
\Mult3|auto_generated|mac_out2~DATAOUT25\ <= \Mult3|auto_generated|mac_out2_DATAOUT_bus\(30);
\Mult3|auto_generated|mac_out2~DATAOUT26\ <= \Mult3|auto_generated|mac_out2_DATAOUT_bus\(31);
\Mult3|auto_generated|mac_out2~DATAOUT27\ <= \Mult3|auto_generated|mac_out2_DATAOUT_bus\(32);
\Mult3|auto_generated|mac_out2~DATAOUT28\ <= \Mult3|auto_generated|mac_out2_DATAOUT_bus\(33);
\Mult3|auto_generated|mac_out2~DATAOUT29\ <= \Mult3|auto_generated|mac_out2_DATAOUT_bus\(34);
\Mult3|auto_generated|mac_out2~DATAOUT30\ <= \Mult3|auto_generated|mac_out2_DATAOUT_bus\(35);

\Mult4|auto_generated|mac_out2_DATAA_bus\ <= (\Mult4|auto_generated|mac_mult1~DATAOUT30\ & \Mult4|auto_generated|mac_mult1~DATAOUT29\ & \Mult4|auto_generated|mac_mult1~DATAOUT28\ & \Mult4|auto_generated|mac_mult1~DATAOUT27\ & 
\Mult4|auto_generated|mac_mult1~DATAOUT26\ & \Mult4|auto_generated|mac_mult1~DATAOUT25\ & \Mult4|auto_generated|mac_mult1~DATAOUT24\ & \Mult4|auto_generated|mac_mult1~DATAOUT23\ & \Mult4|auto_generated|mac_mult1~DATAOUT22\ & 
\Mult4|auto_generated|mac_mult1~DATAOUT21\ & \Mult4|auto_generated|mac_mult1~DATAOUT20\ & \Mult4|auto_generated|mac_mult1~DATAOUT19\ & \Mult4|auto_generated|mac_mult1~DATAOUT18\ & \Mult4|auto_generated|mac_mult1~DATAOUT17\ & 
\Mult4|auto_generated|mac_mult1~DATAOUT16\ & \Mult4|auto_generated|mac_mult1~DATAOUT15\ & \Mult4|auto_generated|mac_mult1~DATAOUT14\ & \Mult4|auto_generated|mac_mult1~DATAOUT13\ & \Mult4|auto_generated|mac_mult1~DATAOUT12\ & 
\Mult4|auto_generated|mac_mult1~DATAOUT11\ & \Mult4|auto_generated|mac_mult1~DATAOUT10\ & \Mult4|auto_generated|mac_mult1~DATAOUT9\ & \Mult4|auto_generated|mac_mult1~DATAOUT8\ & \Mult4|auto_generated|mac_mult1~DATAOUT7\ & 
\Mult4|auto_generated|mac_mult1~DATAOUT6\ & \Mult4|auto_generated|mac_mult1~DATAOUT5\ & \Mult4|auto_generated|mac_mult1~DATAOUT4\ & \Mult4|auto_generated|mac_mult1~DATAOUT3\ & \Mult4|auto_generated|mac_mult1~DATAOUT2\ & 
\Mult4|auto_generated|mac_mult1~DATAOUT1\ & \Mult4|auto_generated|mac_mult1~dataout\ & \Mult4|auto_generated|mac_mult1~4\ & \Mult4|auto_generated|mac_mult1~3\ & \Mult4|auto_generated|mac_mult1~2\ & \Mult4|auto_generated|mac_mult1~1\ & 
\Mult4|auto_generated|mac_mult1~0\);

\Mult4|auto_generated|mac_out2~0\ <= \Mult4|auto_generated|mac_out2_DATAOUT_bus\(0);
\Mult4|auto_generated|mac_out2~1\ <= \Mult4|auto_generated|mac_out2_DATAOUT_bus\(1);
\Mult4|auto_generated|mac_out2~2\ <= \Mult4|auto_generated|mac_out2_DATAOUT_bus\(2);
\Mult4|auto_generated|mac_out2~3\ <= \Mult4|auto_generated|mac_out2_DATAOUT_bus\(3);
\Mult4|auto_generated|mac_out2~4\ <= \Mult4|auto_generated|mac_out2_DATAOUT_bus\(4);
\Mult4|auto_generated|mac_out2~dataout\ <= \Mult4|auto_generated|mac_out2_DATAOUT_bus\(5);
\Mult4|auto_generated|mac_out2~DATAOUT1\ <= \Mult4|auto_generated|mac_out2_DATAOUT_bus\(6);
\Mult4|auto_generated|mac_out2~DATAOUT2\ <= \Mult4|auto_generated|mac_out2_DATAOUT_bus\(7);
\Mult4|auto_generated|mac_out2~DATAOUT3\ <= \Mult4|auto_generated|mac_out2_DATAOUT_bus\(8);
\Mult4|auto_generated|mac_out2~DATAOUT4\ <= \Mult4|auto_generated|mac_out2_DATAOUT_bus\(9);
\Mult4|auto_generated|mac_out2~DATAOUT5\ <= \Mult4|auto_generated|mac_out2_DATAOUT_bus\(10);
\Mult4|auto_generated|mac_out2~DATAOUT6\ <= \Mult4|auto_generated|mac_out2_DATAOUT_bus\(11);
\Mult4|auto_generated|mac_out2~DATAOUT7\ <= \Mult4|auto_generated|mac_out2_DATAOUT_bus\(12);
\Mult4|auto_generated|mac_out2~DATAOUT8\ <= \Mult4|auto_generated|mac_out2_DATAOUT_bus\(13);
\Mult4|auto_generated|mac_out2~DATAOUT9\ <= \Mult4|auto_generated|mac_out2_DATAOUT_bus\(14);
\Mult4|auto_generated|mac_out2~DATAOUT10\ <= \Mult4|auto_generated|mac_out2_DATAOUT_bus\(15);
\Mult4|auto_generated|mac_out2~DATAOUT11\ <= \Mult4|auto_generated|mac_out2_DATAOUT_bus\(16);
\Mult4|auto_generated|mac_out2~DATAOUT12\ <= \Mult4|auto_generated|mac_out2_DATAOUT_bus\(17);
\Mult4|auto_generated|mac_out2~DATAOUT13\ <= \Mult4|auto_generated|mac_out2_DATAOUT_bus\(18);
\Mult4|auto_generated|mac_out2~DATAOUT14\ <= \Mult4|auto_generated|mac_out2_DATAOUT_bus\(19);
\Mult4|auto_generated|mac_out2~DATAOUT15\ <= \Mult4|auto_generated|mac_out2_DATAOUT_bus\(20);
\Mult4|auto_generated|mac_out2~DATAOUT16\ <= \Mult4|auto_generated|mac_out2_DATAOUT_bus\(21);
\Mult4|auto_generated|mac_out2~DATAOUT17\ <= \Mult4|auto_generated|mac_out2_DATAOUT_bus\(22);
\Mult4|auto_generated|mac_out2~DATAOUT18\ <= \Mult4|auto_generated|mac_out2_DATAOUT_bus\(23);
\Mult4|auto_generated|mac_out2~DATAOUT19\ <= \Mult4|auto_generated|mac_out2_DATAOUT_bus\(24);
\Mult4|auto_generated|mac_out2~DATAOUT20\ <= \Mult4|auto_generated|mac_out2_DATAOUT_bus\(25);
\Mult4|auto_generated|mac_out2~DATAOUT21\ <= \Mult4|auto_generated|mac_out2_DATAOUT_bus\(26);
\Mult4|auto_generated|mac_out2~DATAOUT22\ <= \Mult4|auto_generated|mac_out2_DATAOUT_bus\(27);
\Mult4|auto_generated|mac_out2~DATAOUT23\ <= \Mult4|auto_generated|mac_out2_DATAOUT_bus\(28);
\Mult4|auto_generated|mac_out2~DATAOUT24\ <= \Mult4|auto_generated|mac_out2_DATAOUT_bus\(29);
\Mult4|auto_generated|mac_out2~DATAOUT25\ <= \Mult4|auto_generated|mac_out2_DATAOUT_bus\(30);
\Mult4|auto_generated|mac_out2~DATAOUT26\ <= \Mult4|auto_generated|mac_out2_DATAOUT_bus\(31);
\Mult4|auto_generated|mac_out2~DATAOUT27\ <= \Mult4|auto_generated|mac_out2_DATAOUT_bus\(32);
\Mult4|auto_generated|mac_out2~DATAOUT28\ <= \Mult4|auto_generated|mac_out2_DATAOUT_bus\(33);
\Mult4|auto_generated|mac_out2~DATAOUT29\ <= \Mult4|auto_generated|mac_out2_DATAOUT_bus\(34);
\Mult4|auto_generated|mac_out2~DATAOUT30\ <= \Mult4|auto_generated|mac_out2_DATAOUT_bus\(35);

\Mult5|auto_generated|mac_out2_DATAA_bus\ <= (\Mult5|auto_generated|mac_mult1~DATAOUT30\ & \Mult5|auto_generated|mac_mult1~DATAOUT29\ & \Mult5|auto_generated|mac_mult1~DATAOUT28\ & \Mult5|auto_generated|mac_mult1~DATAOUT27\ & 
\Mult5|auto_generated|mac_mult1~DATAOUT26\ & \Mult5|auto_generated|mac_mult1~DATAOUT25\ & \Mult5|auto_generated|mac_mult1~DATAOUT24\ & \Mult5|auto_generated|mac_mult1~DATAOUT23\ & \Mult5|auto_generated|mac_mult1~DATAOUT22\ & 
\Mult5|auto_generated|mac_mult1~DATAOUT21\ & \Mult5|auto_generated|mac_mult1~DATAOUT20\ & \Mult5|auto_generated|mac_mult1~DATAOUT19\ & \Mult5|auto_generated|mac_mult1~DATAOUT18\ & \Mult5|auto_generated|mac_mult1~DATAOUT17\ & 
\Mult5|auto_generated|mac_mult1~DATAOUT16\ & \Mult5|auto_generated|mac_mult1~DATAOUT15\ & \Mult5|auto_generated|mac_mult1~DATAOUT14\ & \Mult5|auto_generated|mac_mult1~DATAOUT13\ & \Mult5|auto_generated|mac_mult1~DATAOUT12\ & 
\Mult5|auto_generated|mac_mult1~DATAOUT11\ & \Mult5|auto_generated|mac_mult1~DATAOUT10\ & \Mult5|auto_generated|mac_mult1~DATAOUT9\ & \Mult5|auto_generated|mac_mult1~DATAOUT8\ & \Mult5|auto_generated|mac_mult1~DATAOUT7\ & 
\Mult5|auto_generated|mac_mult1~DATAOUT6\ & \Mult5|auto_generated|mac_mult1~DATAOUT5\ & \Mult5|auto_generated|mac_mult1~DATAOUT4\ & \Mult5|auto_generated|mac_mult1~DATAOUT3\ & \Mult5|auto_generated|mac_mult1~DATAOUT2\ & 
\Mult5|auto_generated|mac_mult1~DATAOUT1\ & \Mult5|auto_generated|mac_mult1~dataout\ & \Mult5|auto_generated|mac_mult1~4\ & \Mult5|auto_generated|mac_mult1~3\ & \Mult5|auto_generated|mac_mult1~2\ & \Mult5|auto_generated|mac_mult1~1\ & 
\Mult5|auto_generated|mac_mult1~0\);

\Mult5|auto_generated|mac_out2~0\ <= \Mult5|auto_generated|mac_out2_DATAOUT_bus\(0);
\Mult5|auto_generated|mac_out2~1\ <= \Mult5|auto_generated|mac_out2_DATAOUT_bus\(1);
\Mult5|auto_generated|mac_out2~2\ <= \Mult5|auto_generated|mac_out2_DATAOUT_bus\(2);
\Mult5|auto_generated|mac_out2~3\ <= \Mult5|auto_generated|mac_out2_DATAOUT_bus\(3);
\Mult5|auto_generated|mac_out2~4\ <= \Mult5|auto_generated|mac_out2_DATAOUT_bus\(4);
\Mult5|auto_generated|mac_out2~dataout\ <= \Mult5|auto_generated|mac_out2_DATAOUT_bus\(5);
\Mult5|auto_generated|mac_out2~DATAOUT1\ <= \Mult5|auto_generated|mac_out2_DATAOUT_bus\(6);
\Mult5|auto_generated|mac_out2~DATAOUT2\ <= \Mult5|auto_generated|mac_out2_DATAOUT_bus\(7);
\Mult5|auto_generated|mac_out2~DATAOUT3\ <= \Mult5|auto_generated|mac_out2_DATAOUT_bus\(8);
\Mult5|auto_generated|mac_out2~DATAOUT4\ <= \Mult5|auto_generated|mac_out2_DATAOUT_bus\(9);
\Mult5|auto_generated|mac_out2~DATAOUT5\ <= \Mult5|auto_generated|mac_out2_DATAOUT_bus\(10);
\Mult5|auto_generated|mac_out2~DATAOUT6\ <= \Mult5|auto_generated|mac_out2_DATAOUT_bus\(11);
\Mult5|auto_generated|mac_out2~DATAOUT7\ <= \Mult5|auto_generated|mac_out2_DATAOUT_bus\(12);
\Mult5|auto_generated|mac_out2~DATAOUT8\ <= \Mult5|auto_generated|mac_out2_DATAOUT_bus\(13);
\Mult5|auto_generated|mac_out2~DATAOUT9\ <= \Mult5|auto_generated|mac_out2_DATAOUT_bus\(14);
\Mult5|auto_generated|mac_out2~DATAOUT10\ <= \Mult5|auto_generated|mac_out2_DATAOUT_bus\(15);
\Mult5|auto_generated|mac_out2~DATAOUT11\ <= \Mult5|auto_generated|mac_out2_DATAOUT_bus\(16);
\Mult5|auto_generated|mac_out2~DATAOUT12\ <= \Mult5|auto_generated|mac_out2_DATAOUT_bus\(17);
\Mult5|auto_generated|mac_out2~DATAOUT13\ <= \Mult5|auto_generated|mac_out2_DATAOUT_bus\(18);
\Mult5|auto_generated|mac_out2~DATAOUT14\ <= \Mult5|auto_generated|mac_out2_DATAOUT_bus\(19);
\Mult5|auto_generated|mac_out2~DATAOUT15\ <= \Mult5|auto_generated|mac_out2_DATAOUT_bus\(20);
\Mult5|auto_generated|mac_out2~DATAOUT16\ <= \Mult5|auto_generated|mac_out2_DATAOUT_bus\(21);
\Mult5|auto_generated|mac_out2~DATAOUT17\ <= \Mult5|auto_generated|mac_out2_DATAOUT_bus\(22);
\Mult5|auto_generated|mac_out2~DATAOUT18\ <= \Mult5|auto_generated|mac_out2_DATAOUT_bus\(23);
\Mult5|auto_generated|mac_out2~DATAOUT19\ <= \Mult5|auto_generated|mac_out2_DATAOUT_bus\(24);
\Mult5|auto_generated|mac_out2~DATAOUT20\ <= \Mult5|auto_generated|mac_out2_DATAOUT_bus\(25);
\Mult5|auto_generated|mac_out2~DATAOUT21\ <= \Mult5|auto_generated|mac_out2_DATAOUT_bus\(26);
\Mult5|auto_generated|mac_out2~DATAOUT22\ <= \Mult5|auto_generated|mac_out2_DATAOUT_bus\(27);
\Mult5|auto_generated|mac_out2~DATAOUT23\ <= \Mult5|auto_generated|mac_out2_DATAOUT_bus\(28);
\Mult5|auto_generated|mac_out2~DATAOUT24\ <= \Mult5|auto_generated|mac_out2_DATAOUT_bus\(29);
\Mult5|auto_generated|mac_out2~DATAOUT25\ <= \Mult5|auto_generated|mac_out2_DATAOUT_bus\(30);
\Mult5|auto_generated|mac_out2~DATAOUT26\ <= \Mult5|auto_generated|mac_out2_DATAOUT_bus\(31);
\Mult5|auto_generated|mac_out2~DATAOUT27\ <= \Mult5|auto_generated|mac_out2_DATAOUT_bus\(32);
\Mult5|auto_generated|mac_out2~DATAOUT28\ <= \Mult5|auto_generated|mac_out2_DATAOUT_bus\(33);
\Mult5|auto_generated|mac_out2~DATAOUT29\ <= \Mult5|auto_generated|mac_out2_DATAOUT_bus\(34);
\Mult5|auto_generated|mac_out2~DATAOUT30\ <= \Mult5|auto_generated|mac_out2_DATAOUT_bus\(35);

\Mult7|auto_generated|mac_mult1_DATAA_bus\ <= (\data_pipeline[6][15]~_Duplicate_1_regout\ & \data_pipeline[6][14]~_Duplicate_1_regout\ & \data_pipeline[6][13]~_Duplicate_1_regout\ & \data_pipeline[6][12]~_Duplicate_1_regout\ & 
\data_pipeline[6][11]~_Duplicate_1_regout\ & \data_pipeline[6][10]~_Duplicate_1_regout\ & \data_pipeline[6][9]~_Duplicate_1_regout\ & \data_pipeline[6][8]~_Duplicate_1_regout\ & \data_pipeline[6][7]~_Duplicate_1_regout\ & 
\data_pipeline[6][6]~_Duplicate_1_regout\ & \data_pipeline[6][5]~_Duplicate_1_regout\ & \data_pipeline[6][4]~_Duplicate_1_regout\ & \data_pipeline[6][3]~_Duplicate_1_regout\ & \data_pipeline[6][2]~_Duplicate_1_regout\ & 
\data_pipeline[6][1]~_Duplicate_1_regout\ & \data_pipeline[6][0]~_Duplicate_1_regout\ & gnd & gnd);

\Mult7|auto_generated|mac_mult1_DATAB_bus\ <= (vcc & vcc & gnd & gnd & gnd & gnd & gnd & vcc & gnd & vcc & gnd & vcc & vcc & vcc & gnd & gnd & gnd & gnd);

\Mult7|auto_generated|mac_mult1~0\ <= \Mult7|auto_generated|mac_mult1_DATAOUT_bus\(0);
\Mult7|auto_generated|mac_mult1~1\ <= \Mult7|auto_generated|mac_mult1_DATAOUT_bus\(1);
\Mult7|auto_generated|mac_mult1~2\ <= \Mult7|auto_generated|mac_mult1_DATAOUT_bus\(2);
\Mult7|auto_generated|mac_mult1~3\ <= \Mult7|auto_generated|mac_mult1_DATAOUT_bus\(3);
\Mult7|auto_generated|mac_mult1~4\ <= \Mult7|auto_generated|mac_mult1_DATAOUT_bus\(4);
\Mult7|auto_generated|mac_mult1~5\ <= \Mult7|auto_generated|mac_mult1_DATAOUT_bus\(5);
\Mult7|auto_generated|mac_mult1~dataout\ <= \Mult7|auto_generated|mac_mult1_DATAOUT_bus\(6);
\Mult7|auto_generated|mac_mult1~DATAOUT1\ <= \Mult7|auto_generated|mac_mult1_DATAOUT_bus\(7);
\Mult7|auto_generated|mac_mult1~DATAOUT2\ <= \Mult7|auto_generated|mac_mult1_DATAOUT_bus\(8);
\Mult7|auto_generated|mac_mult1~DATAOUT3\ <= \Mult7|auto_generated|mac_mult1_DATAOUT_bus\(9);
\Mult7|auto_generated|mac_mult1~DATAOUT4\ <= \Mult7|auto_generated|mac_mult1_DATAOUT_bus\(10);
\Mult7|auto_generated|mac_mult1~DATAOUT5\ <= \Mult7|auto_generated|mac_mult1_DATAOUT_bus\(11);
\Mult7|auto_generated|mac_mult1~DATAOUT6\ <= \Mult7|auto_generated|mac_mult1_DATAOUT_bus\(12);
\Mult7|auto_generated|mac_mult1~DATAOUT7\ <= \Mult7|auto_generated|mac_mult1_DATAOUT_bus\(13);
\Mult7|auto_generated|mac_mult1~DATAOUT8\ <= \Mult7|auto_generated|mac_mult1_DATAOUT_bus\(14);
\Mult7|auto_generated|mac_mult1~DATAOUT9\ <= \Mult7|auto_generated|mac_mult1_DATAOUT_bus\(15);
\Mult7|auto_generated|mac_mult1~DATAOUT10\ <= \Mult7|auto_generated|mac_mult1_DATAOUT_bus\(16);
\Mult7|auto_generated|mac_mult1~DATAOUT11\ <= \Mult7|auto_generated|mac_mult1_DATAOUT_bus\(17);
\Mult7|auto_generated|mac_mult1~DATAOUT12\ <= \Mult7|auto_generated|mac_mult1_DATAOUT_bus\(18);
\Mult7|auto_generated|mac_mult1~DATAOUT13\ <= \Mult7|auto_generated|mac_mult1_DATAOUT_bus\(19);
\Mult7|auto_generated|mac_mult1~DATAOUT14\ <= \Mult7|auto_generated|mac_mult1_DATAOUT_bus\(20);
\Mult7|auto_generated|mac_mult1~DATAOUT15\ <= \Mult7|auto_generated|mac_mult1_DATAOUT_bus\(21);
\Mult7|auto_generated|mac_mult1~DATAOUT16\ <= \Mult7|auto_generated|mac_mult1_DATAOUT_bus\(22);
\Mult7|auto_generated|mac_mult1~DATAOUT17\ <= \Mult7|auto_generated|mac_mult1_DATAOUT_bus\(23);
\Mult7|auto_generated|mac_mult1~DATAOUT18\ <= \Mult7|auto_generated|mac_mult1_DATAOUT_bus\(24);
\Mult7|auto_generated|mac_mult1~DATAOUT19\ <= \Mult7|auto_generated|mac_mult1_DATAOUT_bus\(25);
\Mult7|auto_generated|mac_mult1~DATAOUT20\ <= \Mult7|auto_generated|mac_mult1_DATAOUT_bus\(26);
\Mult7|auto_generated|mac_mult1~DATAOUT21\ <= \Mult7|auto_generated|mac_mult1_DATAOUT_bus\(27);
\Mult7|auto_generated|mac_mult1~DATAOUT22\ <= \Mult7|auto_generated|mac_mult1_DATAOUT_bus\(28);
\Mult7|auto_generated|mac_mult1~DATAOUT23\ <= \Mult7|auto_generated|mac_mult1_DATAOUT_bus\(29);
\Mult7|auto_generated|mac_mult1~DATAOUT24\ <= \Mult7|auto_generated|mac_mult1_DATAOUT_bus\(30);
\Mult7|auto_generated|mac_mult1~DATAOUT25\ <= \Mult7|auto_generated|mac_mult1_DATAOUT_bus\(31);
\Mult7|auto_generated|mac_mult1~DATAOUT26\ <= \Mult7|auto_generated|mac_mult1_DATAOUT_bus\(32);
\Mult7|auto_generated|mac_mult1~DATAOUT27\ <= \Mult7|auto_generated|mac_mult1_DATAOUT_bus\(33);
\Mult7|auto_generated|mac_mult1~DATAOUT28\ <= \Mult7|auto_generated|mac_mult1_DATAOUT_bus\(34);
\Mult7|auto_generated|mac_mult1~DATAOUT29\ <= \Mult7|auto_generated|mac_mult1_DATAOUT_bus\(35);

\Mult6|auto_generated|mac_mult1_DATAA_bus\ <= (\data_pipeline[5][15]~_Duplicate_1_regout\ & \data_pipeline[5][14]~_Duplicate_1_regout\ & \data_pipeline[5][13]~_Duplicate_1_regout\ & \data_pipeline[5][12]~_Duplicate_1_regout\ & 
\data_pipeline[5][11]~_Duplicate_1_regout\ & \data_pipeline[5][10]~_Duplicate_1_regout\ & \data_pipeline[5][9]~_Duplicate_1_regout\ & \data_pipeline[5][8]~_Duplicate_1_regout\ & \data_pipeline[5][7]~_Duplicate_1_regout\ & 
\data_pipeline[5][6]~_Duplicate_1_regout\ & \data_pipeline[5][5]~_Duplicate_1_regout\ & \data_pipeline[5][4]~_Duplicate_1_regout\ & \data_pipeline[5][3]~_Duplicate_1_regout\ & \data_pipeline[5][2]~_Duplicate_1_regout\ & 
\data_pipeline[5][1]~_Duplicate_1_regout\ & \data_pipeline[5][0]~_Duplicate_1_regout\ & gnd & gnd);

\Mult6|auto_generated|mac_mult1_DATAB_bus\ <= (vcc & vcc & vcc & gnd & gnd & vcc & vcc & vcc & gnd & vcc & gnd & gnd & vcc & vcc & gnd & gnd & gnd & gnd);

\Mult6|auto_generated|mac_mult1~0\ <= \Mult6|auto_generated|mac_mult1_DATAOUT_bus\(0);
\Mult6|auto_generated|mac_mult1~1\ <= \Mult6|auto_generated|mac_mult1_DATAOUT_bus\(1);
\Mult6|auto_generated|mac_mult1~2\ <= \Mult6|auto_generated|mac_mult1_DATAOUT_bus\(2);
\Mult6|auto_generated|mac_mult1~3\ <= \Mult6|auto_generated|mac_mult1_DATAOUT_bus\(3);
\Mult6|auto_generated|mac_mult1~4\ <= \Mult6|auto_generated|mac_mult1_DATAOUT_bus\(4);
\Mult6|auto_generated|mac_mult1~5\ <= \Mult6|auto_generated|mac_mult1_DATAOUT_bus\(5);
\Mult6|auto_generated|mac_mult1~dataout\ <= \Mult6|auto_generated|mac_mult1_DATAOUT_bus\(6);
\Mult6|auto_generated|mac_mult1~DATAOUT1\ <= \Mult6|auto_generated|mac_mult1_DATAOUT_bus\(7);
\Mult6|auto_generated|mac_mult1~DATAOUT2\ <= \Mult6|auto_generated|mac_mult1_DATAOUT_bus\(8);
\Mult6|auto_generated|mac_mult1~DATAOUT3\ <= \Mult6|auto_generated|mac_mult1_DATAOUT_bus\(9);
\Mult6|auto_generated|mac_mult1~DATAOUT4\ <= \Mult6|auto_generated|mac_mult1_DATAOUT_bus\(10);
\Mult6|auto_generated|mac_mult1~DATAOUT5\ <= \Mult6|auto_generated|mac_mult1_DATAOUT_bus\(11);
\Mult6|auto_generated|mac_mult1~DATAOUT6\ <= \Mult6|auto_generated|mac_mult1_DATAOUT_bus\(12);
\Mult6|auto_generated|mac_mult1~DATAOUT7\ <= \Mult6|auto_generated|mac_mult1_DATAOUT_bus\(13);
\Mult6|auto_generated|mac_mult1~DATAOUT8\ <= \Mult6|auto_generated|mac_mult1_DATAOUT_bus\(14);
\Mult6|auto_generated|mac_mult1~DATAOUT9\ <= \Mult6|auto_generated|mac_mult1_DATAOUT_bus\(15);
\Mult6|auto_generated|mac_mult1~DATAOUT10\ <= \Mult6|auto_generated|mac_mult1_DATAOUT_bus\(16);
\Mult6|auto_generated|mac_mult1~DATAOUT11\ <= \Mult6|auto_generated|mac_mult1_DATAOUT_bus\(17);
\Mult6|auto_generated|mac_mult1~DATAOUT12\ <= \Mult6|auto_generated|mac_mult1_DATAOUT_bus\(18);
\Mult6|auto_generated|mac_mult1~DATAOUT13\ <= \Mult6|auto_generated|mac_mult1_DATAOUT_bus\(19);
\Mult6|auto_generated|mac_mult1~DATAOUT14\ <= \Mult6|auto_generated|mac_mult1_DATAOUT_bus\(20);
\Mult6|auto_generated|mac_mult1~DATAOUT15\ <= \Mult6|auto_generated|mac_mult1_DATAOUT_bus\(21);
\Mult6|auto_generated|mac_mult1~DATAOUT16\ <= \Mult6|auto_generated|mac_mult1_DATAOUT_bus\(22);
\Mult6|auto_generated|mac_mult1~DATAOUT17\ <= \Mult6|auto_generated|mac_mult1_DATAOUT_bus\(23);
\Mult6|auto_generated|mac_mult1~DATAOUT18\ <= \Mult6|auto_generated|mac_mult1_DATAOUT_bus\(24);
\Mult6|auto_generated|mac_mult1~DATAOUT19\ <= \Mult6|auto_generated|mac_mult1_DATAOUT_bus\(25);
\Mult6|auto_generated|mac_mult1~DATAOUT20\ <= \Mult6|auto_generated|mac_mult1_DATAOUT_bus\(26);
\Mult6|auto_generated|mac_mult1~DATAOUT21\ <= \Mult6|auto_generated|mac_mult1_DATAOUT_bus\(27);
\Mult6|auto_generated|mac_mult1~DATAOUT22\ <= \Mult6|auto_generated|mac_mult1_DATAOUT_bus\(28);
\Mult6|auto_generated|mac_mult1~DATAOUT23\ <= \Mult6|auto_generated|mac_mult1_DATAOUT_bus\(29);
\Mult6|auto_generated|mac_mult1~DATAOUT24\ <= \Mult6|auto_generated|mac_mult1_DATAOUT_bus\(30);
\Mult6|auto_generated|mac_mult1~DATAOUT25\ <= \Mult6|auto_generated|mac_mult1_DATAOUT_bus\(31);
\Mult6|auto_generated|mac_mult1~DATAOUT26\ <= \Mult6|auto_generated|mac_mult1_DATAOUT_bus\(32);
\Mult6|auto_generated|mac_mult1~DATAOUT27\ <= \Mult6|auto_generated|mac_mult1_DATAOUT_bus\(33);
\Mult6|auto_generated|mac_mult1~DATAOUT28\ <= \Mult6|auto_generated|mac_mult1_DATAOUT_bus\(34);
\Mult6|auto_generated|mac_mult1~DATAOUT29\ <= \Mult6|auto_generated|mac_mult1_DATAOUT_bus\(35);

\Mult9|auto_generated|mac_mult1_DATAA_bus\ <= (\data_pipeline[8][15]~_Duplicate_1_regout\ & \data_pipeline[8][14]~_Duplicate_1_regout\ & \data_pipeline[8][13]~_Duplicate_1_regout\ & \data_pipeline[8][12]~_Duplicate_1_regout\ & 
\data_pipeline[8][11]~_Duplicate_1_regout\ & \data_pipeline[8][10]~_Duplicate_1_regout\ & \data_pipeline[8][9]~_Duplicate_1_regout\ & \data_pipeline[8][8]~_Duplicate_1_regout\ & \data_pipeline[8][7]~_Duplicate_1_regout\ & 
\data_pipeline[8][6]~_Duplicate_1_regout\ & \data_pipeline[8][5]~_Duplicate_1_regout\ & \data_pipeline[8][4]~_Duplicate_1_regout\ & \data_pipeline[8][3]~_Duplicate_1_regout\ & \data_pipeline[8][2]~_Duplicate_1_regout\ & 
\data_pipeline[8][1]~_Duplicate_1_regout\ & \data_pipeline[8][0]~_Duplicate_1_regout\ & gnd & gnd);

\Mult9|auto_generated|mac_mult1_DATAB_bus\ <= (vcc & vcc & gnd & vcc & vcc & gnd & vcc & vcc & gnd & vcc & vcc & gnd & vcc & gnd & gnd & gnd & gnd & gnd);

\Mult9|auto_generated|mac_mult1~0\ <= \Mult9|auto_generated|mac_mult1_DATAOUT_bus\(0);
\Mult9|auto_generated|mac_mult1~1\ <= \Mult9|auto_generated|mac_mult1_DATAOUT_bus\(1);
\Mult9|auto_generated|mac_mult1~2\ <= \Mult9|auto_generated|mac_mult1_DATAOUT_bus\(2);
\Mult9|auto_generated|mac_mult1~3\ <= \Mult9|auto_generated|mac_mult1_DATAOUT_bus\(3);
\Mult9|auto_generated|mac_mult1~4\ <= \Mult9|auto_generated|mac_mult1_DATAOUT_bus\(4);
\Mult9|auto_generated|mac_mult1~5\ <= \Mult9|auto_generated|mac_mult1_DATAOUT_bus\(5);
\Mult9|auto_generated|mac_mult1~6\ <= \Mult9|auto_generated|mac_mult1_DATAOUT_bus\(6);
\Mult9|auto_generated|mac_mult1~dataout\ <= \Mult9|auto_generated|mac_mult1_DATAOUT_bus\(7);
\Mult9|auto_generated|mac_mult1~DATAOUT1\ <= \Mult9|auto_generated|mac_mult1_DATAOUT_bus\(8);
\Mult9|auto_generated|mac_mult1~DATAOUT2\ <= \Mult9|auto_generated|mac_mult1_DATAOUT_bus\(9);
\Mult9|auto_generated|mac_mult1~DATAOUT3\ <= \Mult9|auto_generated|mac_mult1_DATAOUT_bus\(10);
\Mult9|auto_generated|mac_mult1~DATAOUT4\ <= \Mult9|auto_generated|mac_mult1_DATAOUT_bus\(11);
\Mult9|auto_generated|mac_mult1~DATAOUT5\ <= \Mult9|auto_generated|mac_mult1_DATAOUT_bus\(12);
\Mult9|auto_generated|mac_mult1~DATAOUT6\ <= \Mult9|auto_generated|mac_mult1_DATAOUT_bus\(13);
\Mult9|auto_generated|mac_mult1~DATAOUT7\ <= \Mult9|auto_generated|mac_mult1_DATAOUT_bus\(14);
\Mult9|auto_generated|mac_mult1~DATAOUT8\ <= \Mult9|auto_generated|mac_mult1_DATAOUT_bus\(15);
\Mult9|auto_generated|mac_mult1~DATAOUT9\ <= \Mult9|auto_generated|mac_mult1_DATAOUT_bus\(16);
\Mult9|auto_generated|mac_mult1~DATAOUT10\ <= \Mult9|auto_generated|mac_mult1_DATAOUT_bus\(17);
\Mult9|auto_generated|mac_mult1~DATAOUT11\ <= \Mult9|auto_generated|mac_mult1_DATAOUT_bus\(18);
\Mult9|auto_generated|mac_mult1~DATAOUT12\ <= \Mult9|auto_generated|mac_mult1_DATAOUT_bus\(19);
\Mult9|auto_generated|mac_mult1~DATAOUT13\ <= \Mult9|auto_generated|mac_mult1_DATAOUT_bus\(20);
\Mult9|auto_generated|mac_mult1~DATAOUT14\ <= \Mult9|auto_generated|mac_mult1_DATAOUT_bus\(21);
\Mult9|auto_generated|mac_mult1~DATAOUT15\ <= \Mult9|auto_generated|mac_mult1_DATAOUT_bus\(22);
\Mult9|auto_generated|mac_mult1~DATAOUT16\ <= \Mult9|auto_generated|mac_mult1_DATAOUT_bus\(23);
\Mult9|auto_generated|mac_mult1~DATAOUT17\ <= \Mult9|auto_generated|mac_mult1_DATAOUT_bus\(24);
\Mult9|auto_generated|mac_mult1~DATAOUT18\ <= \Mult9|auto_generated|mac_mult1_DATAOUT_bus\(25);
\Mult9|auto_generated|mac_mult1~DATAOUT19\ <= \Mult9|auto_generated|mac_mult1_DATAOUT_bus\(26);
\Mult9|auto_generated|mac_mult1~DATAOUT20\ <= \Mult9|auto_generated|mac_mult1_DATAOUT_bus\(27);
\Mult9|auto_generated|mac_mult1~DATAOUT21\ <= \Mult9|auto_generated|mac_mult1_DATAOUT_bus\(28);
\Mult9|auto_generated|mac_mult1~DATAOUT22\ <= \Mult9|auto_generated|mac_mult1_DATAOUT_bus\(29);
\Mult9|auto_generated|mac_mult1~DATAOUT23\ <= \Mult9|auto_generated|mac_mult1_DATAOUT_bus\(30);
\Mult9|auto_generated|mac_mult1~DATAOUT24\ <= \Mult9|auto_generated|mac_mult1_DATAOUT_bus\(31);
\Mult9|auto_generated|mac_mult1~DATAOUT25\ <= \Mult9|auto_generated|mac_mult1_DATAOUT_bus\(32);
\Mult9|auto_generated|mac_mult1~DATAOUT26\ <= \Mult9|auto_generated|mac_mult1_DATAOUT_bus\(33);
\Mult9|auto_generated|mac_mult1~DATAOUT27\ <= \Mult9|auto_generated|mac_mult1_DATAOUT_bus\(34);
\Mult9|auto_generated|mac_mult1~DATAOUT28\ <= \Mult9|auto_generated|mac_mult1_DATAOUT_bus\(35);

\Mult8|auto_generated|mac_mult1_DATAA_bus\ <= (\data_pipeline[7][15]~_Duplicate_1_regout\ & \data_pipeline[7][14]~_Duplicate_1_regout\ & \data_pipeline[7][13]~_Duplicate_1_regout\ & \data_pipeline[7][12]~_Duplicate_1_regout\ & 
\data_pipeline[7][11]~_Duplicate_1_regout\ & \data_pipeline[7][10]~_Duplicate_1_regout\ & \data_pipeline[7][9]~_Duplicate_1_regout\ & \data_pipeline[7][8]~_Duplicate_1_regout\ & \data_pipeline[7][7]~_Duplicate_1_regout\ & 
\data_pipeline[7][6]~_Duplicate_1_regout\ & \data_pipeline[7][5]~_Duplicate_1_regout\ & \data_pipeline[7][4]~_Duplicate_1_regout\ & \data_pipeline[7][3]~_Duplicate_1_regout\ & \data_pipeline[7][2]~_Duplicate_1_regout\ & 
\data_pipeline[7][1]~_Duplicate_1_regout\ & \data_pipeline[7][0]~_Duplicate_1_regout\ & gnd & gnd);

\Mult8|auto_generated|mac_mult1_DATAB_bus\ <= (vcc & gnd & gnd & vcc & gnd & vcc & vcc & vcc & gnd & vcc & gnd & gnd & vcc & gnd & gnd & gnd & gnd & gnd);

\Mult8|auto_generated|mac_mult1~0\ <= \Mult8|auto_generated|mac_mult1_DATAOUT_bus\(0);
\Mult8|auto_generated|mac_mult1~1\ <= \Mult8|auto_generated|mac_mult1_DATAOUT_bus\(1);
\Mult8|auto_generated|mac_mult1~2\ <= \Mult8|auto_generated|mac_mult1_DATAOUT_bus\(2);
\Mult8|auto_generated|mac_mult1~3\ <= \Mult8|auto_generated|mac_mult1_DATAOUT_bus\(3);
\Mult8|auto_generated|mac_mult1~4\ <= \Mult8|auto_generated|mac_mult1_DATAOUT_bus\(4);
\Mult8|auto_generated|mac_mult1~5\ <= \Mult8|auto_generated|mac_mult1_DATAOUT_bus\(5);
\Mult8|auto_generated|mac_mult1~dataout\ <= \Mult8|auto_generated|mac_mult1_DATAOUT_bus\(6);
\Mult8|auto_generated|mac_mult1~DATAOUT1\ <= \Mult8|auto_generated|mac_mult1_DATAOUT_bus\(7);
\Mult8|auto_generated|mac_mult1~DATAOUT2\ <= \Mult8|auto_generated|mac_mult1_DATAOUT_bus\(8);
\Mult8|auto_generated|mac_mult1~DATAOUT3\ <= \Mult8|auto_generated|mac_mult1_DATAOUT_bus\(9);
\Mult8|auto_generated|mac_mult1~DATAOUT4\ <= \Mult8|auto_generated|mac_mult1_DATAOUT_bus\(10);
\Mult8|auto_generated|mac_mult1~DATAOUT5\ <= \Mult8|auto_generated|mac_mult1_DATAOUT_bus\(11);
\Mult8|auto_generated|mac_mult1~DATAOUT6\ <= \Mult8|auto_generated|mac_mult1_DATAOUT_bus\(12);
\Mult8|auto_generated|mac_mult1~DATAOUT7\ <= \Mult8|auto_generated|mac_mult1_DATAOUT_bus\(13);
\Mult8|auto_generated|mac_mult1~DATAOUT8\ <= \Mult8|auto_generated|mac_mult1_DATAOUT_bus\(14);
\Mult8|auto_generated|mac_mult1~DATAOUT9\ <= \Mult8|auto_generated|mac_mult1_DATAOUT_bus\(15);
\Mult8|auto_generated|mac_mult1~DATAOUT10\ <= \Mult8|auto_generated|mac_mult1_DATAOUT_bus\(16);
\Mult8|auto_generated|mac_mult1~DATAOUT11\ <= \Mult8|auto_generated|mac_mult1_DATAOUT_bus\(17);
\Mult8|auto_generated|mac_mult1~DATAOUT12\ <= \Mult8|auto_generated|mac_mult1_DATAOUT_bus\(18);
\Mult8|auto_generated|mac_mult1~DATAOUT13\ <= \Mult8|auto_generated|mac_mult1_DATAOUT_bus\(19);
\Mult8|auto_generated|mac_mult1~DATAOUT14\ <= \Mult8|auto_generated|mac_mult1_DATAOUT_bus\(20);
\Mult8|auto_generated|mac_mult1~DATAOUT15\ <= \Mult8|auto_generated|mac_mult1_DATAOUT_bus\(21);
\Mult8|auto_generated|mac_mult1~DATAOUT16\ <= \Mult8|auto_generated|mac_mult1_DATAOUT_bus\(22);
\Mult8|auto_generated|mac_mult1~DATAOUT17\ <= \Mult8|auto_generated|mac_mult1_DATAOUT_bus\(23);
\Mult8|auto_generated|mac_mult1~DATAOUT18\ <= \Mult8|auto_generated|mac_mult1_DATAOUT_bus\(24);
\Mult8|auto_generated|mac_mult1~DATAOUT19\ <= \Mult8|auto_generated|mac_mult1_DATAOUT_bus\(25);
\Mult8|auto_generated|mac_mult1~DATAOUT20\ <= \Mult8|auto_generated|mac_mult1_DATAOUT_bus\(26);
\Mult8|auto_generated|mac_mult1~DATAOUT21\ <= \Mult8|auto_generated|mac_mult1_DATAOUT_bus\(27);
\Mult8|auto_generated|mac_mult1~DATAOUT22\ <= \Mult8|auto_generated|mac_mult1_DATAOUT_bus\(28);
\Mult8|auto_generated|mac_mult1~DATAOUT23\ <= \Mult8|auto_generated|mac_mult1_DATAOUT_bus\(29);
\Mult8|auto_generated|mac_mult1~DATAOUT24\ <= \Mult8|auto_generated|mac_mult1_DATAOUT_bus\(30);
\Mult8|auto_generated|mac_mult1~DATAOUT25\ <= \Mult8|auto_generated|mac_mult1_DATAOUT_bus\(31);
\Mult8|auto_generated|mac_mult1~DATAOUT26\ <= \Mult8|auto_generated|mac_mult1_DATAOUT_bus\(32);
\Mult8|auto_generated|mac_mult1~DATAOUT27\ <= \Mult8|auto_generated|mac_mult1_DATAOUT_bus\(33);
\Mult8|auto_generated|mac_mult1~DATAOUT28\ <= \Mult8|auto_generated|mac_mult1_DATAOUT_bus\(34);
\Mult8|auto_generated|mac_mult1~DATAOUT29\ <= \Mult8|auto_generated|mac_mult1_DATAOUT_bus\(35);

\Mult1|auto_generated|mac_mult1_DATAA_bus\ <= (\data_pipeline[0][15]~_Duplicate_1_regout\ & \data_pipeline[0][14]~_Duplicate_1_regout\ & \data_pipeline[0][13]~_Duplicate_1_regout\ & \data_pipeline[0][12]~_Duplicate_1_regout\ & 
\data_pipeline[0][11]~_Duplicate_1_regout\ & \data_pipeline[0][10]~_Duplicate_1_regout\ & \data_pipeline[0][9]~_Duplicate_1_regout\ & \data_pipeline[0][8]~_Duplicate_1_regout\ & \data_pipeline[0][7]~_Duplicate_1_regout\ & 
\data_pipeline[0][6]~_Duplicate_1_regout\ & \data_pipeline[0][5]~_Duplicate_1_regout\ & \data_pipeline[0][4]~_Duplicate_1_regout\ & \data_pipeline[0][3]~_Duplicate_1_regout\ & \data_pipeline[0][2]~_Duplicate_1_regout\ & 
\data_pipeline[0][1]~_Duplicate_1_regout\ & \data_pipeline[0][0]~_Duplicate_1_regout\ & gnd & gnd);

\Mult1|auto_generated|mac_mult1_DATAB_bus\ <= (vcc & vcc & gnd & gnd & gnd & gnd & gnd & vcc & gnd & vcc & gnd & vcc & vcc & vcc & gnd & gnd & gnd & gnd);

\Mult1|auto_generated|mac_mult1~0\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(0);
\Mult1|auto_generated|mac_mult1~1\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(1);
\Mult1|auto_generated|mac_mult1~2\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(2);
\Mult1|auto_generated|mac_mult1~3\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(3);
\Mult1|auto_generated|mac_mult1~4\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(4);
\Mult1|auto_generated|mac_mult1~5\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(5);
\Mult1|auto_generated|mac_mult1~dataout\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(6);
\Mult1|auto_generated|mac_mult1~DATAOUT1\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(7);
\Mult1|auto_generated|mac_mult1~DATAOUT2\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(8);
\Mult1|auto_generated|mac_mult1~DATAOUT3\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(9);
\Mult1|auto_generated|mac_mult1~DATAOUT4\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(10);
\Mult1|auto_generated|mac_mult1~DATAOUT5\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(11);
\Mult1|auto_generated|mac_mult1~DATAOUT6\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(12);
\Mult1|auto_generated|mac_mult1~DATAOUT7\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(13);
\Mult1|auto_generated|mac_mult1~DATAOUT8\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(14);
\Mult1|auto_generated|mac_mult1~DATAOUT9\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(15);
\Mult1|auto_generated|mac_mult1~DATAOUT10\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(16);
\Mult1|auto_generated|mac_mult1~DATAOUT11\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(17);
\Mult1|auto_generated|mac_mult1~DATAOUT12\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(18);
\Mult1|auto_generated|mac_mult1~DATAOUT13\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(19);
\Mult1|auto_generated|mac_mult1~DATAOUT14\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(20);
\Mult1|auto_generated|mac_mult1~DATAOUT15\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(21);
\Mult1|auto_generated|mac_mult1~DATAOUT16\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(22);
\Mult1|auto_generated|mac_mult1~DATAOUT17\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(23);
\Mult1|auto_generated|mac_mult1~DATAOUT18\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(24);
\Mult1|auto_generated|mac_mult1~DATAOUT19\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(25);
\Mult1|auto_generated|mac_mult1~DATAOUT20\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(26);
\Mult1|auto_generated|mac_mult1~DATAOUT21\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(27);
\Mult1|auto_generated|mac_mult1~DATAOUT22\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(28);
\Mult1|auto_generated|mac_mult1~DATAOUT23\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(29);
\Mult1|auto_generated|mac_mult1~DATAOUT24\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(30);
\Mult1|auto_generated|mac_mult1~DATAOUT25\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(31);
\Mult1|auto_generated|mac_mult1~DATAOUT26\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(32);
\Mult1|auto_generated|mac_mult1~DATAOUT27\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(33);
\Mult1|auto_generated|mac_mult1~DATAOUT28\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(34);
\Mult1|auto_generated|mac_mult1~DATAOUT29\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(35);

\Mult0|auto_generated|mac_mult1_DATAA_bus\ <= (\data~combout\(15) & \data~combout\(14) & \data~combout\(13) & \data~combout\(12) & \data~combout\(11) & \data~combout\(10) & \data~combout\(9) & \data~combout\(8) & \data~combout\(7) & 
\data~combout\(6) & \data~combout\(5) & \data~combout\(4) & \data~combout\(3) & \data~combout\(2) & \data~combout\(1) & \data~combout\(0) & gnd & gnd);

\Mult0|auto_generated|mac_mult1_DATAB_bus\ <= (vcc & gnd & gnd & vcc & gnd & vcc & vcc & vcc & gnd & vcc & gnd & gnd & vcc & gnd & gnd & gnd & gnd & gnd);

\Mult0|auto_generated|mac_mult1~0\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(0);
\Mult0|auto_generated|mac_mult1~1\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(1);
\Mult0|auto_generated|mac_mult1~2\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(2);
\Mult0|auto_generated|mac_mult1~3\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(3);
\Mult0|auto_generated|mac_mult1~4\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(4);
\Mult0|auto_generated|mac_mult1~5\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(5);
\Mult0|auto_generated|mac_mult1~dataout\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(6);
\Mult0|auto_generated|mac_mult1~DATAOUT1\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(7);
\Mult0|auto_generated|mac_mult1~DATAOUT2\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(8);
\Mult0|auto_generated|mac_mult1~DATAOUT3\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(9);
\Mult0|auto_generated|mac_mult1~DATAOUT4\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(10);
\Mult0|auto_generated|mac_mult1~DATAOUT5\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(11);
\Mult0|auto_generated|mac_mult1~DATAOUT6\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(12);
\Mult0|auto_generated|mac_mult1~DATAOUT7\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(13);
\Mult0|auto_generated|mac_mult1~DATAOUT8\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(14);
\Mult0|auto_generated|mac_mult1~DATAOUT9\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(15);
\Mult0|auto_generated|mac_mult1~DATAOUT10\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(16);
\Mult0|auto_generated|mac_mult1~DATAOUT11\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(17);
\Mult0|auto_generated|mac_mult1~DATAOUT12\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(18);
\Mult0|auto_generated|mac_mult1~DATAOUT13\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(19);
\Mult0|auto_generated|mac_mult1~DATAOUT14\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(20);
\Mult0|auto_generated|mac_mult1~DATAOUT15\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(21);
\Mult0|auto_generated|mac_mult1~DATAOUT16\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(22);
\Mult0|auto_generated|mac_mult1~DATAOUT17\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(23);
\Mult0|auto_generated|mac_mult1~DATAOUT18\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(24);
\Mult0|auto_generated|mac_mult1~DATAOUT19\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(25);
\Mult0|auto_generated|mac_mult1~DATAOUT20\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(26);
\Mult0|auto_generated|mac_mult1~DATAOUT21\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(27);
\Mult0|auto_generated|mac_mult1~DATAOUT22\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(28);
\Mult0|auto_generated|mac_mult1~DATAOUT23\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(29);
\Mult0|auto_generated|mac_mult1~DATAOUT24\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(30);
\Mult0|auto_generated|mac_mult1~DATAOUT25\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(31);
\Mult0|auto_generated|mac_mult1~DATAOUT26\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(32);
\Mult0|auto_generated|mac_mult1~DATAOUT27\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(33);
\Mult0|auto_generated|mac_mult1~DATAOUT28\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(34);
\Mult0|auto_generated|mac_mult1~DATAOUT29\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(35);

\Mult2|auto_generated|mac_mult1_DATAA_bus\ <= (\data_pipeline[1][15]~_Duplicate_1_regout\ & \data_pipeline[1][14]~_Duplicate_1_regout\ & \data_pipeline[1][13]~_Duplicate_1_regout\ & \data_pipeline[1][12]~_Duplicate_1_regout\ & 
\data_pipeline[1][11]~_Duplicate_1_regout\ & \data_pipeline[1][10]~_Duplicate_1_regout\ & \data_pipeline[1][9]~_Duplicate_1_regout\ & \data_pipeline[1][8]~_Duplicate_1_regout\ & \data_pipeline[1][7]~_Duplicate_1_regout\ & 
\data_pipeline[1][6]~_Duplicate_1_regout\ & \data_pipeline[1][5]~_Duplicate_1_regout\ & \data_pipeline[1][4]~_Duplicate_1_regout\ & \data_pipeline[1][3]~_Duplicate_1_regout\ & \data_pipeline[1][2]~_Duplicate_1_regout\ & 
\data_pipeline[1][1]~_Duplicate_1_regout\ & \data_pipeline[1][0]~_Duplicate_1_regout\ & gnd & gnd);

\Mult2|auto_generated|mac_mult1_DATAB_bus\ <= (vcc & vcc & vcc & gnd & gnd & vcc & vcc & vcc & gnd & vcc & gnd & gnd & vcc & vcc & gnd & gnd & gnd & gnd);

\Mult2|auto_generated|mac_mult1~0\ <= \Mult2|auto_generated|mac_mult1_DATAOUT_bus\(0);
\Mult2|auto_generated|mac_mult1~1\ <= \Mult2|auto_generated|mac_mult1_DATAOUT_bus\(1);
\Mult2|auto_generated|mac_mult1~2\ <= \Mult2|auto_generated|mac_mult1_DATAOUT_bus\(2);
\Mult2|auto_generated|mac_mult1~3\ <= \Mult2|auto_generated|mac_mult1_DATAOUT_bus\(3);
\Mult2|auto_generated|mac_mult1~4\ <= \Mult2|auto_generated|mac_mult1_DATAOUT_bus\(4);
\Mult2|auto_generated|mac_mult1~5\ <= \Mult2|auto_generated|mac_mult1_DATAOUT_bus\(5);
\Mult2|auto_generated|mac_mult1~dataout\ <= \Mult2|auto_generated|mac_mult1_DATAOUT_bus\(6);
\Mult2|auto_generated|mac_mult1~DATAOUT1\ <= \Mult2|auto_generated|mac_mult1_DATAOUT_bus\(7);
\Mult2|auto_generated|mac_mult1~DATAOUT2\ <= \Mult2|auto_generated|mac_mult1_DATAOUT_bus\(8);
\Mult2|auto_generated|mac_mult1~DATAOUT3\ <= \Mult2|auto_generated|mac_mult1_DATAOUT_bus\(9);
\Mult2|auto_generated|mac_mult1~DATAOUT4\ <= \Mult2|auto_generated|mac_mult1_DATAOUT_bus\(10);
\Mult2|auto_generated|mac_mult1~DATAOUT5\ <= \Mult2|auto_generated|mac_mult1_DATAOUT_bus\(11);
\Mult2|auto_generated|mac_mult1~DATAOUT6\ <= \Mult2|auto_generated|mac_mult1_DATAOUT_bus\(12);
\Mult2|auto_generated|mac_mult1~DATAOUT7\ <= \Mult2|auto_generated|mac_mult1_DATAOUT_bus\(13);
\Mult2|auto_generated|mac_mult1~DATAOUT8\ <= \Mult2|auto_generated|mac_mult1_DATAOUT_bus\(14);
\Mult2|auto_generated|mac_mult1~DATAOUT9\ <= \Mult2|auto_generated|mac_mult1_DATAOUT_bus\(15);
\Mult2|auto_generated|mac_mult1~DATAOUT10\ <= \Mult2|auto_generated|mac_mult1_DATAOUT_bus\(16);
\Mult2|auto_generated|mac_mult1~DATAOUT11\ <= \Mult2|auto_generated|mac_mult1_DATAOUT_bus\(17);
\Mult2|auto_generated|mac_mult1~DATAOUT12\ <= \Mult2|auto_generated|mac_mult1_DATAOUT_bus\(18);
\Mult2|auto_generated|mac_mult1~DATAOUT13\ <= \Mult2|auto_generated|mac_mult1_DATAOUT_bus\(19);
\Mult2|auto_generated|mac_mult1~DATAOUT14\ <= \Mult2|auto_generated|mac_mult1_DATAOUT_bus\(20);
\Mult2|auto_generated|mac_mult1~DATAOUT15\ <= \Mult2|auto_generated|mac_mult1_DATAOUT_bus\(21);
\Mult2|auto_generated|mac_mult1~DATAOUT16\ <= \Mult2|auto_generated|mac_mult1_DATAOUT_bus\(22);
\Mult2|auto_generated|mac_mult1~DATAOUT17\ <= \Mult2|auto_generated|mac_mult1_DATAOUT_bus\(23);
\Mult2|auto_generated|mac_mult1~DATAOUT18\ <= \Mult2|auto_generated|mac_mult1_DATAOUT_bus\(24);
\Mult2|auto_generated|mac_mult1~DATAOUT19\ <= \Mult2|auto_generated|mac_mult1_DATAOUT_bus\(25);
\Mult2|auto_generated|mac_mult1~DATAOUT20\ <= \Mult2|auto_generated|mac_mult1_DATAOUT_bus\(26);
\Mult2|auto_generated|mac_mult1~DATAOUT21\ <= \Mult2|auto_generated|mac_mult1_DATAOUT_bus\(27);
\Mult2|auto_generated|mac_mult1~DATAOUT22\ <= \Mult2|auto_generated|mac_mult1_DATAOUT_bus\(28);
\Mult2|auto_generated|mac_mult1~DATAOUT23\ <= \Mult2|auto_generated|mac_mult1_DATAOUT_bus\(29);
\Mult2|auto_generated|mac_mult1~DATAOUT24\ <= \Mult2|auto_generated|mac_mult1_DATAOUT_bus\(30);
\Mult2|auto_generated|mac_mult1~DATAOUT25\ <= \Mult2|auto_generated|mac_mult1_DATAOUT_bus\(31);
\Mult2|auto_generated|mac_mult1~DATAOUT26\ <= \Mult2|auto_generated|mac_mult1_DATAOUT_bus\(32);
\Mult2|auto_generated|mac_mult1~DATAOUT27\ <= \Mult2|auto_generated|mac_mult1_DATAOUT_bus\(33);
\Mult2|auto_generated|mac_mult1~DATAOUT28\ <= \Mult2|auto_generated|mac_mult1_DATAOUT_bus\(34);
\Mult2|auto_generated|mac_mult1~DATAOUT29\ <= \Mult2|auto_generated|mac_mult1_DATAOUT_bus\(35);

\Mult3|auto_generated|mac_mult1_DATAA_bus\ <= (\data_pipeline[2][15]~_Duplicate_1_regout\ & \data_pipeline[2][14]~_Duplicate_1_regout\ & \data_pipeline[2][13]~_Duplicate_1_regout\ & \data_pipeline[2][12]~_Duplicate_1_regout\ & 
\data_pipeline[2][11]~_Duplicate_1_regout\ & \data_pipeline[2][10]~_Duplicate_1_regout\ & \data_pipeline[2][9]~_Duplicate_1_regout\ & \data_pipeline[2][8]~_Duplicate_1_regout\ & \data_pipeline[2][7]~_Duplicate_1_regout\ & 
\data_pipeline[2][6]~_Duplicate_1_regout\ & \data_pipeline[2][5]~_Duplicate_1_regout\ & \data_pipeline[2][4]~_Duplicate_1_regout\ & \data_pipeline[2][3]~_Duplicate_1_regout\ & \data_pipeline[2][2]~_Duplicate_1_regout\ & 
\data_pipeline[2][1]~_Duplicate_1_regout\ & \data_pipeline[2][0]~_Duplicate_1_regout\ & gnd & gnd);

\Mult3|auto_generated|mac_mult1_DATAB_bus\ <= (vcc & gnd & gnd & gnd & gnd & gnd & gnd & vcc & gnd & vcc & gnd & vcc & vcc & vcc & gnd & gnd & gnd & gnd);

\Mult3|auto_generated|mac_mult1~0\ <= \Mult3|auto_generated|mac_mult1_DATAOUT_bus\(0);
\Mult3|auto_generated|mac_mult1~1\ <= \Mult3|auto_generated|mac_mult1_DATAOUT_bus\(1);
\Mult3|auto_generated|mac_mult1~2\ <= \Mult3|auto_generated|mac_mult1_DATAOUT_bus\(2);
\Mult3|auto_generated|mac_mult1~3\ <= \Mult3|auto_generated|mac_mult1_DATAOUT_bus\(3);
\Mult3|auto_generated|mac_mult1~4\ <= \Mult3|auto_generated|mac_mult1_DATAOUT_bus\(4);
\Mult3|auto_generated|mac_mult1~dataout\ <= \Mult3|auto_generated|mac_mult1_DATAOUT_bus\(5);
\Mult3|auto_generated|mac_mult1~DATAOUT1\ <= \Mult3|auto_generated|mac_mult1_DATAOUT_bus\(6);
\Mult3|auto_generated|mac_mult1~DATAOUT2\ <= \Mult3|auto_generated|mac_mult1_DATAOUT_bus\(7);
\Mult3|auto_generated|mac_mult1~DATAOUT3\ <= \Mult3|auto_generated|mac_mult1_DATAOUT_bus\(8);
\Mult3|auto_generated|mac_mult1~DATAOUT4\ <= \Mult3|auto_generated|mac_mult1_DATAOUT_bus\(9);
\Mult3|auto_generated|mac_mult1~DATAOUT5\ <= \Mult3|auto_generated|mac_mult1_DATAOUT_bus\(10);
\Mult3|auto_generated|mac_mult1~DATAOUT6\ <= \Mult3|auto_generated|mac_mult1_DATAOUT_bus\(11);
\Mult3|auto_generated|mac_mult1~DATAOUT7\ <= \Mult3|auto_generated|mac_mult1_DATAOUT_bus\(12);
\Mult3|auto_generated|mac_mult1~DATAOUT8\ <= \Mult3|auto_generated|mac_mult1_DATAOUT_bus\(13);
\Mult3|auto_generated|mac_mult1~DATAOUT9\ <= \Mult3|auto_generated|mac_mult1_DATAOUT_bus\(14);
\Mult3|auto_generated|mac_mult1~DATAOUT10\ <= \Mult3|auto_generated|mac_mult1_DATAOUT_bus\(15);
\Mult3|auto_generated|mac_mult1~DATAOUT11\ <= \Mult3|auto_generated|mac_mult1_DATAOUT_bus\(16);
\Mult3|auto_generated|mac_mult1~DATAOUT12\ <= \Mult3|auto_generated|mac_mult1_DATAOUT_bus\(17);
\Mult3|auto_generated|mac_mult1~DATAOUT13\ <= \Mult3|auto_generated|mac_mult1_DATAOUT_bus\(18);
\Mult3|auto_generated|mac_mult1~DATAOUT14\ <= \Mult3|auto_generated|mac_mult1_DATAOUT_bus\(19);
\Mult3|auto_generated|mac_mult1~DATAOUT15\ <= \Mult3|auto_generated|mac_mult1_DATAOUT_bus\(20);
\Mult3|auto_generated|mac_mult1~DATAOUT16\ <= \Mult3|auto_generated|mac_mult1_DATAOUT_bus\(21);
\Mult3|auto_generated|mac_mult1~DATAOUT17\ <= \Mult3|auto_generated|mac_mult1_DATAOUT_bus\(22);
\Mult3|auto_generated|mac_mult1~DATAOUT18\ <= \Mult3|auto_generated|mac_mult1_DATAOUT_bus\(23);
\Mult3|auto_generated|mac_mult1~DATAOUT19\ <= \Mult3|auto_generated|mac_mult1_DATAOUT_bus\(24);
\Mult3|auto_generated|mac_mult1~DATAOUT20\ <= \Mult3|auto_generated|mac_mult1_DATAOUT_bus\(25);
\Mult3|auto_generated|mac_mult1~DATAOUT21\ <= \Mult3|auto_generated|mac_mult1_DATAOUT_bus\(26);
\Mult3|auto_generated|mac_mult1~DATAOUT22\ <= \Mult3|auto_generated|mac_mult1_DATAOUT_bus\(27);
\Mult3|auto_generated|mac_mult1~DATAOUT23\ <= \Mult3|auto_generated|mac_mult1_DATAOUT_bus\(28);
\Mult3|auto_generated|mac_mult1~DATAOUT24\ <= \Mult3|auto_generated|mac_mult1_DATAOUT_bus\(29);
\Mult3|auto_generated|mac_mult1~DATAOUT25\ <= \Mult3|auto_generated|mac_mult1_DATAOUT_bus\(30);
\Mult3|auto_generated|mac_mult1~DATAOUT26\ <= \Mult3|auto_generated|mac_mult1_DATAOUT_bus\(31);
\Mult3|auto_generated|mac_mult1~DATAOUT27\ <= \Mult3|auto_generated|mac_mult1_DATAOUT_bus\(32);
\Mult3|auto_generated|mac_mult1~DATAOUT28\ <= \Mult3|auto_generated|mac_mult1_DATAOUT_bus\(33);
\Mult3|auto_generated|mac_mult1~DATAOUT29\ <= \Mult3|auto_generated|mac_mult1_DATAOUT_bus\(34);
\Mult3|auto_generated|mac_mult1~DATAOUT30\ <= \Mult3|auto_generated|mac_mult1_DATAOUT_bus\(35);

\Mult4|auto_generated|mac_mult1_DATAA_bus\ <= (\data_pipeline[3][15]~_Duplicate_1_regout\ & \data_pipeline[3][14]~_Duplicate_1_regout\ & \data_pipeline[3][13]~_Duplicate_1_regout\ & \data_pipeline[3][12]~_Duplicate_1_regout\ & 
\data_pipeline[3][11]~_Duplicate_1_regout\ & \data_pipeline[3][10]~_Duplicate_1_regout\ & \data_pipeline[3][9]~_Duplicate_1_regout\ & \data_pipeline[3][8]~_Duplicate_1_regout\ & \data_pipeline[3][7]~_Duplicate_1_regout\ & 
\data_pipeline[3][6]~_Duplicate_1_regout\ & \data_pipeline[3][5]~_Duplicate_1_regout\ & \data_pipeline[3][4]~_Duplicate_1_regout\ & \data_pipeline[3][3]~_Duplicate_1_regout\ & \data_pipeline[3][2]~_Duplicate_1_regout\ & 
\data_pipeline[3][1]~_Duplicate_1_regout\ & \data_pipeline[3][0]~_Duplicate_1_regout\ & gnd & gnd);

\Mult4|auto_generated|mac_mult1_DATAB_bus\ <= (vcc & gnd & gnd & gnd & gnd & vcc & vcc & gnd & gnd & vcc & vcc & vcc & gnd & vcc & gnd & gnd & gnd & gnd);

\Mult4|auto_generated|mac_mult1~0\ <= \Mult4|auto_generated|mac_mult1_DATAOUT_bus\(0);
\Mult4|auto_generated|mac_mult1~1\ <= \Mult4|auto_generated|mac_mult1_DATAOUT_bus\(1);
\Mult4|auto_generated|mac_mult1~2\ <= \Mult4|auto_generated|mac_mult1_DATAOUT_bus\(2);
\Mult4|auto_generated|mac_mult1~3\ <= \Mult4|auto_generated|mac_mult1_DATAOUT_bus\(3);
\Mult4|auto_generated|mac_mult1~4\ <= \Mult4|auto_generated|mac_mult1_DATAOUT_bus\(4);
\Mult4|auto_generated|mac_mult1~dataout\ <= \Mult4|auto_generated|mac_mult1_DATAOUT_bus\(5);
\Mult4|auto_generated|mac_mult1~DATAOUT1\ <= \Mult4|auto_generated|mac_mult1_DATAOUT_bus\(6);
\Mult4|auto_generated|mac_mult1~DATAOUT2\ <= \Mult4|auto_generated|mac_mult1_DATAOUT_bus\(7);
\Mult4|auto_generated|mac_mult1~DATAOUT3\ <= \Mult4|auto_generated|mac_mult1_DATAOUT_bus\(8);
\Mult4|auto_generated|mac_mult1~DATAOUT4\ <= \Mult4|auto_generated|mac_mult1_DATAOUT_bus\(9);
\Mult4|auto_generated|mac_mult1~DATAOUT5\ <= \Mult4|auto_generated|mac_mult1_DATAOUT_bus\(10);
\Mult4|auto_generated|mac_mult1~DATAOUT6\ <= \Mult4|auto_generated|mac_mult1_DATAOUT_bus\(11);
\Mult4|auto_generated|mac_mult1~DATAOUT7\ <= \Mult4|auto_generated|mac_mult1_DATAOUT_bus\(12);
\Mult4|auto_generated|mac_mult1~DATAOUT8\ <= \Mult4|auto_generated|mac_mult1_DATAOUT_bus\(13);
\Mult4|auto_generated|mac_mult1~DATAOUT9\ <= \Mult4|auto_generated|mac_mult1_DATAOUT_bus\(14);
\Mult4|auto_generated|mac_mult1~DATAOUT10\ <= \Mult4|auto_generated|mac_mult1_DATAOUT_bus\(15);
\Mult4|auto_generated|mac_mult1~DATAOUT11\ <= \Mult4|auto_generated|mac_mult1_DATAOUT_bus\(16);
\Mult4|auto_generated|mac_mult1~DATAOUT12\ <= \Mult4|auto_generated|mac_mult1_DATAOUT_bus\(17);
\Mult4|auto_generated|mac_mult1~DATAOUT13\ <= \Mult4|auto_generated|mac_mult1_DATAOUT_bus\(18);
\Mult4|auto_generated|mac_mult1~DATAOUT14\ <= \Mult4|auto_generated|mac_mult1_DATAOUT_bus\(19);
\Mult4|auto_generated|mac_mult1~DATAOUT15\ <= \Mult4|auto_generated|mac_mult1_DATAOUT_bus\(20);
\Mult4|auto_generated|mac_mult1~DATAOUT16\ <= \Mult4|auto_generated|mac_mult1_DATAOUT_bus\(21);
\Mult4|auto_generated|mac_mult1~DATAOUT17\ <= \Mult4|auto_generated|mac_mult1_DATAOUT_bus\(22);
\Mult4|auto_generated|mac_mult1~DATAOUT18\ <= \Mult4|auto_generated|mac_mult1_DATAOUT_bus\(23);
\Mult4|auto_generated|mac_mult1~DATAOUT19\ <= \Mult4|auto_generated|mac_mult1_DATAOUT_bus\(24);
\Mult4|auto_generated|mac_mult1~DATAOUT20\ <= \Mult4|auto_generated|mac_mult1_DATAOUT_bus\(25);
\Mult4|auto_generated|mac_mult1~DATAOUT21\ <= \Mult4|auto_generated|mac_mult1_DATAOUT_bus\(26);
\Mult4|auto_generated|mac_mult1~DATAOUT22\ <= \Mult4|auto_generated|mac_mult1_DATAOUT_bus\(27);
\Mult4|auto_generated|mac_mult1~DATAOUT23\ <= \Mult4|auto_generated|mac_mult1_DATAOUT_bus\(28);
\Mult4|auto_generated|mac_mult1~DATAOUT24\ <= \Mult4|auto_generated|mac_mult1_DATAOUT_bus\(29);
\Mult4|auto_generated|mac_mult1~DATAOUT25\ <= \Mult4|auto_generated|mac_mult1_DATAOUT_bus\(30);
\Mult4|auto_generated|mac_mult1~DATAOUT26\ <= \Mult4|auto_generated|mac_mult1_DATAOUT_bus\(31);
\Mult4|auto_generated|mac_mult1~DATAOUT27\ <= \Mult4|auto_generated|mac_mult1_DATAOUT_bus\(32);
\Mult4|auto_generated|mac_mult1~DATAOUT28\ <= \Mult4|auto_generated|mac_mult1_DATAOUT_bus\(33);
\Mult4|auto_generated|mac_mult1~DATAOUT29\ <= \Mult4|auto_generated|mac_mult1_DATAOUT_bus\(34);
\Mult4|auto_generated|mac_mult1~DATAOUT30\ <= \Mult4|auto_generated|mac_mult1_DATAOUT_bus\(35);

\Mult5|auto_generated|mac_mult1_DATAA_bus\ <= (\data_pipeline[4][15]~_Duplicate_1_regout\ & \data_pipeline[4][14]~_Duplicate_1_regout\ & \data_pipeline[4][13]~_Duplicate_1_regout\ & \data_pipeline[4][12]~_Duplicate_1_regout\ & 
\data_pipeline[4][11]~_Duplicate_1_regout\ & \data_pipeline[4][10]~_Duplicate_1_regout\ & \data_pipeline[4][9]~_Duplicate_1_regout\ & \data_pipeline[4][8]~_Duplicate_1_regout\ & \data_pipeline[4][7]~_Duplicate_1_regout\ & 
\data_pipeline[4][6]~_Duplicate_1_regout\ & \data_pipeline[4][5]~_Duplicate_1_regout\ & \data_pipeline[4][4]~_Duplicate_1_regout\ & \data_pipeline[4][3]~_Duplicate_1_regout\ & \data_pipeline[4][2]~_Duplicate_1_regout\ & 
\data_pipeline[4][1]~_Duplicate_1_regout\ & \data_pipeline[4][0]~_Duplicate_1_regout\ & gnd & gnd);

\Mult5|auto_generated|mac_mult1_DATAB_bus\ <= (vcc & gnd & gnd & gnd & gnd & gnd & gnd & vcc & gnd & vcc & gnd & vcc & vcc & vcc & gnd & gnd & gnd & gnd);

\Mult5|auto_generated|mac_mult1~0\ <= \Mult5|auto_generated|mac_mult1_DATAOUT_bus\(0);
\Mult5|auto_generated|mac_mult1~1\ <= \Mult5|auto_generated|mac_mult1_DATAOUT_bus\(1);
\Mult5|auto_generated|mac_mult1~2\ <= \Mult5|auto_generated|mac_mult1_DATAOUT_bus\(2);
\Mult5|auto_generated|mac_mult1~3\ <= \Mult5|auto_generated|mac_mult1_DATAOUT_bus\(3);
\Mult5|auto_generated|mac_mult1~4\ <= \Mult5|auto_generated|mac_mult1_DATAOUT_bus\(4);
\Mult5|auto_generated|mac_mult1~dataout\ <= \Mult5|auto_generated|mac_mult1_DATAOUT_bus\(5);
\Mult5|auto_generated|mac_mult1~DATAOUT1\ <= \Mult5|auto_generated|mac_mult1_DATAOUT_bus\(6);
\Mult5|auto_generated|mac_mult1~DATAOUT2\ <= \Mult5|auto_generated|mac_mult1_DATAOUT_bus\(7);
\Mult5|auto_generated|mac_mult1~DATAOUT3\ <= \Mult5|auto_generated|mac_mult1_DATAOUT_bus\(8);
\Mult5|auto_generated|mac_mult1~DATAOUT4\ <= \Mult5|auto_generated|mac_mult1_DATAOUT_bus\(9);
\Mult5|auto_generated|mac_mult1~DATAOUT5\ <= \Mult5|auto_generated|mac_mult1_DATAOUT_bus\(10);
\Mult5|auto_generated|mac_mult1~DATAOUT6\ <= \Mult5|auto_generated|mac_mult1_DATAOUT_bus\(11);
\Mult5|auto_generated|mac_mult1~DATAOUT7\ <= \Mult5|auto_generated|mac_mult1_DATAOUT_bus\(12);
\Mult5|auto_generated|mac_mult1~DATAOUT8\ <= \Mult5|auto_generated|mac_mult1_DATAOUT_bus\(13);
\Mult5|auto_generated|mac_mult1~DATAOUT9\ <= \Mult5|auto_generated|mac_mult1_DATAOUT_bus\(14);
\Mult5|auto_generated|mac_mult1~DATAOUT10\ <= \Mult5|auto_generated|mac_mult1_DATAOUT_bus\(15);
\Mult5|auto_generated|mac_mult1~DATAOUT11\ <= \Mult5|auto_generated|mac_mult1_DATAOUT_bus\(16);
\Mult5|auto_generated|mac_mult1~DATAOUT12\ <= \Mult5|auto_generated|mac_mult1_DATAOUT_bus\(17);
\Mult5|auto_generated|mac_mult1~DATAOUT13\ <= \Mult5|auto_generated|mac_mult1_DATAOUT_bus\(18);
\Mult5|auto_generated|mac_mult1~DATAOUT14\ <= \Mult5|auto_generated|mac_mult1_DATAOUT_bus\(19);
\Mult5|auto_generated|mac_mult1~DATAOUT15\ <= \Mult5|auto_generated|mac_mult1_DATAOUT_bus\(20);
\Mult5|auto_generated|mac_mult1~DATAOUT16\ <= \Mult5|auto_generated|mac_mult1_DATAOUT_bus\(21);
\Mult5|auto_generated|mac_mult1~DATAOUT17\ <= \Mult5|auto_generated|mac_mult1_DATAOUT_bus\(22);
\Mult5|auto_generated|mac_mult1~DATAOUT18\ <= \Mult5|auto_generated|mac_mult1_DATAOUT_bus\(23);
\Mult5|auto_generated|mac_mult1~DATAOUT19\ <= \Mult5|auto_generated|mac_mult1_DATAOUT_bus\(24);
\Mult5|auto_generated|mac_mult1~DATAOUT20\ <= \Mult5|auto_generated|mac_mult1_DATAOUT_bus\(25);
\Mult5|auto_generated|mac_mult1~DATAOUT21\ <= \Mult5|auto_generated|mac_mult1_DATAOUT_bus\(26);
\Mult5|auto_generated|mac_mult1~DATAOUT22\ <= \Mult5|auto_generated|mac_mult1_DATAOUT_bus\(27);
\Mult5|auto_generated|mac_mult1~DATAOUT23\ <= \Mult5|auto_generated|mac_mult1_DATAOUT_bus\(28);
\Mult5|auto_generated|mac_mult1~DATAOUT24\ <= \Mult5|auto_generated|mac_mult1_DATAOUT_bus\(29);
\Mult5|auto_generated|mac_mult1~DATAOUT25\ <= \Mult5|auto_generated|mac_mult1_DATAOUT_bus\(30);
\Mult5|auto_generated|mac_mult1~DATAOUT26\ <= \Mult5|auto_generated|mac_mult1_DATAOUT_bus\(31);
\Mult5|auto_generated|mac_mult1~DATAOUT27\ <= \Mult5|auto_generated|mac_mult1_DATAOUT_bus\(32);
\Mult5|auto_generated|mac_mult1~DATAOUT28\ <= \Mult5|auto_generated|mac_mult1_DATAOUT_bus\(33);
\Mult5|auto_generated|mac_mult1~DATAOUT29\ <= \Mult5|auto_generated|mac_mult1_DATAOUT_bus\(34);
\Mult5|auto_generated|mac_mult1~DATAOUT30\ <= \Mult5|auto_generated|mac_mult1_DATAOUT_bus\(35);

\reset_n~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \reset_n~combout\);

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);
\ALT_INV_reset_n~clkctrl_outclk\ <= NOT \reset_n~clkctrl_outclk\;

-- Location: DSPOUT_X39_Y16_N2
\Mult7|auto_generated|mac_out2\ : cycloneii_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 36,
	output_clock => "none")
-- pragma translate_on
PORT MAP (
	dataa => \Mult7|auto_generated|mac_out2_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \Mult7|auto_generated|mac_out2_DATAOUT_bus\);

-- Location: DSPOUT_X39_Y15_N2
\Mult6|auto_generated|mac_out2\ : cycloneii_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 36,
	output_clock => "none")
-- pragma translate_on
PORT MAP (
	dataa => \Mult6|auto_generated|mac_out2_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \Mult6|auto_generated|mac_out2_DATAOUT_bus\);

-- Location: LCCOMB_X38_Y16_N4
\Add5~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add5~2_combout\ = (\Mult7|auto_generated|mac_out2~DATAOUT1\ & ((\Mult6|auto_generated|mac_out2~DATAOUT1\ & (\Add5~1\ & VCC)) # (!\Mult6|auto_generated|mac_out2~DATAOUT1\ & (!\Add5~1\)))) # (!\Mult7|auto_generated|mac_out2~DATAOUT1\ & 
-- ((\Mult6|auto_generated|mac_out2~DATAOUT1\ & (!\Add5~1\)) # (!\Mult6|auto_generated|mac_out2~DATAOUT1\ & ((\Add5~1\) # (GND)))))
-- \Add5~3\ = CARRY((\Mult7|auto_generated|mac_out2~DATAOUT1\ & (!\Mult6|auto_generated|mac_out2~DATAOUT1\ & !\Add5~1\)) # (!\Mult7|auto_generated|mac_out2~DATAOUT1\ & ((!\Add5~1\) # (!\Mult6|auto_generated|mac_out2~DATAOUT1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult7|auto_generated|mac_out2~DATAOUT1\,
	datab => \Mult6|auto_generated|mac_out2~DATAOUT1\,
	datad => VCC,
	cin => \Add5~1\,
	combout => \Add5~2_combout\,
	cout => \Add5~3\);

-- Location: LCCOMB_X38_Y16_N6
\Add5~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add5~4_combout\ = ((\Mult7|auto_generated|mac_out2~DATAOUT2\ $ (\Mult6|auto_generated|mac_out2~DATAOUT2\ $ (!\Add5~3\)))) # (GND)
-- \Add5~5\ = CARRY((\Mult7|auto_generated|mac_out2~DATAOUT2\ & ((\Mult6|auto_generated|mac_out2~DATAOUT2\) # (!\Add5~3\))) # (!\Mult7|auto_generated|mac_out2~DATAOUT2\ & (\Mult6|auto_generated|mac_out2~DATAOUT2\ & !\Add5~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult7|auto_generated|mac_out2~DATAOUT2\,
	datab => \Mult6|auto_generated|mac_out2~DATAOUT2\,
	datad => VCC,
	cin => \Add5~3\,
	combout => \Add5~4_combout\,
	cout => \Add5~5\);

-- Location: LCCOMB_X38_Y16_N8
\Add5~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add5~6_combout\ = (\Mult7|auto_generated|mac_out2~DATAOUT3\ & ((\Mult6|auto_generated|mac_out2~DATAOUT3\ & (\Add5~5\ & VCC)) # (!\Mult6|auto_generated|mac_out2~DATAOUT3\ & (!\Add5~5\)))) # (!\Mult7|auto_generated|mac_out2~DATAOUT3\ & 
-- ((\Mult6|auto_generated|mac_out2~DATAOUT3\ & (!\Add5~5\)) # (!\Mult6|auto_generated|mac_out2~DATAOUT3\ & ((\Add5~5\) # (GND)))))
-- \Add5~7\ = CARRY((\Mult7|auto_generated|mac_out2~DATAOUT3\ & (!\Mult6|auto_generated|mac_out2~DATAOUT3\ & !\Add5~5\)) # (!\Mult7|auto_generated|mac_out2~DATAOUT3\ & ((!\Add5~5\) # (!\Mult6|auto_generated|mac_out2~DATAOUT3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult7|auto_generated|mac_out2~DATAOUT3\,
	datab => \Mult6|auto_generated|mac_out2~DATAOUT3\,
	datad => VCC,
	cin => \Add5~5\,
	combout => \Add5~6_combout\,
	cout => \Add5~7\);

-- Location: LCCOMB_X38_Y16_N10
\Add5~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add5~8_combout\ = ((\Mult6|auto_generated|mac_out2~DATAOUT4\ $ (\Mult7|auto_generated|mac_out2~DATAOUT4\ $ (!\Add5~7\)))) # (GND)
-- \Add5~9\ = CARRY((\Mult6|auto_generated|mac_out2~DATAOUT4\ & ((\Mult7|auto_generated|mac_out2~DATAOUT4\) # (!\Add5~7\))) # (!\Mult6|auto_generated|mac_out2~DATAOUT4\ & (\Mult7|auto_generated|mac_out2~DATAOUT4\ & !\Add5~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult6|auto_generated|mac_out2~DATAOUT4\,
	datab => \Mult7|auto_generated|mac_out2~DATAOUT4\,
	datad => VCC,
	cin => \Add5~7\,
	combout => \Add5~8_combout\,
	cout => \Add5~9\);

-- Location: LCCOMB_X38_Y16_N14
\Add5~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add5~12_combout\ = ((\Mult7|auto_generated|mac_out2~DATAOUT6\ $ (\Mult6|auto_generated|mac_out2~DATAOUT6\ $ (!\Add5~11\)))) # (GND)
-- \Add5~13\ = CARRY((\Mult7|auto_generated|mac_out2~DATAOUT6\ & ((\Mult6|auto_generated|mac_out2~DATAOUT6\) # (!\Add5~11\))) # (!\Mult7|auto_generated|mac_out2~DATAOUT6\ & (\Mult6|auto_generated|mac_out2~DATAOUT6\ & !\Add5~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult7|auto_generated|mac_out2~DATAOUT6\,
	datab => \Mult6|auto_generated|mac_out2~DATAOUT6\,
	datad => VCC,
	cin => \Add5~11\,
	combout => \Add5~12_combout\,
	cout => \Add5~13\);

-- Location: LCCOMB_X38_Y16_N16
\Add5~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add5~14_combout\ = (\Mult6|auto_generated|mac_out2~DATAOUT7\ & ((\Mult7|auto_generated|mac_out2~DATAOUT7\ & (\Add5~13\ & VCC)) # (!\Mult7|auto_generated|mac_out2~DATAOUT7\ & (!\Add5~13\)))) # (!\Mult6|auto_generated|mac_out2~DATAOUT7\ & 
-- ((\Mult7|auto_generated|mac_out2~DATAOUT7\ & (!\Add5~13\)) # (!\Mult7|auto_generated|mac_out2~DATAOUT7\ & ((\Add5~13\) # (GND)))))
-- \Add5~15\ = CARRY((\Mult6|auto_generated|mac_out2~DATAOUT7\ & (!\Mult7|auto_generated|mac_out2~DATAOUT7\ & !\Add5~13\)) # (!\Mult6|auto_generated|mac_out2~DATAOUT7\ & ((!\Add5~13\) # (!\Mult7|auto_generated|mac_out2~DATAOUT7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult6|auto_generated|mac_out2~DATAOUT7\,
	datab => \Mult7|auto_generated|mac_out2~DATAOUT7\,
	datad => VCC,
	cin => \Add5~13\,
	combout => \Add5~14_combout\,
	cout => \Add5~15\);

-- Location: LCCOMB_X38_Y16_N18
\Add5~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add5~16_combout\ = ((\Mult7|auto_generated|mac_out2~DATAOUT8\ $ (\Mult6|auto_generated|mac_out2~DATAOUT8\ $ (!\Add5~15\)))) # (GND)
-- \Add5~17\ = CARRY((\Mult7|auto_generated|mac_out2~DATAOUT8\ & ((\Mult6|auto_generated|mac_out2~DATAOUT8\) # (!\Add5~15\))) # (!\Mult7|auto_generated|mac_out2~DATAOUT8\ & (\Mult6|auto_generated|mac_out2~DATAOUT8\ & !\Add5~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult7|auto_generated|mac_out2~DATAOUT8\,
	datab => \Mult6|auto_generated|mac_out2~DATAOUT8\,
	datad => VCC,
	cin => \Add5~15\,
	combout => \Add5~16_combout\,
	cout => \Add5~17\);

-- Location: LCCOMB_X38_Y16_N26
\Add5~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add5~24_combout\ = ((\Mult7|auto_generated|mac_out2~DATAOUT12\ $ (\Mult6|auto_generated|mac_out2~DATAOUT12\ $ (!\Add5~23\)))) # (GND)
-- \Add5~25\ = CARRY((\Mult7|auto_generated|mac_out2~DATAOUT12\ & ((\Mult6|auto_generated|mac_out2~DATAOUT12\) # (!\Add5~23\))) # (!\Mult7|auto_generated|mac_out2~DATAOUT12\ & (\Mult6|auto_generated|mac_out2~DATAOUT12\ & !\Add5~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult7|auto_generated|mac_out2~DATAOUT12\,
	datab => \Mult6|auto_generated|mac_out2~DATAOUT12\,
	datad => VCC,
	cin => \Add5~23\,
	combout => \Add5~24_combout\,
	cout => \Add5~25\);

-- Location: LCCOMB_X38_Y16_N28
\Add5~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add5~26_combout\ = (\Mult6|auto_generated|mac_out2~DATAOUT13\ & ((\Mult7|auto_generated|mac_out2~DATAOUT13\ & (\Add5~25\ & VCC)) # (!\Mult7|auto_generated|mac_out2~DATAOUT13\ & (!\Add5~25\)))) # (!\Mult6|auto_generated|mac_out2~DATAOUT13\ & 
-- ((\Mult7|auto_generated|mac_out2~DATAOUT13\ & (!\Add5~25\)) # (!\Mult7|auto_generated|mac_out2~DATAOUT13\ & ((\Add5~25\) # (GND)))))
-- \Add5~27\ = CARRY((\Mult6|auto_generated|mac_out2~DATAOUT13\ & (!\Mult7|auto_generated|mac_out2~DATAOUT13\ & !\Add5~25\)) # (!\Mult6|auto_generated|mac_out2~DATAOUT13\ & ((!\Add5~25\) # (!\Mult7|auto_generated|mac_out2~DATAOUT13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult6|auto_generated|mac_out2~DATAOUT13\,
	datab => \Mult7|auto_generated|mac_out2~DATAOUT13\,
	datad => VCC,
	cin => \Add5~25\,
	combout => \Add5~26_combout\,
	cout => \Add5~27\);

-- Location: LCCOMB_X38_Y16_N30
\Add5~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add5~28_combout\ = ((\Mult7|auto_generated|mac_out2~DATAOUT14\ $ (\Mult6|auto_generated|mac_out2~DATAOUT14\ $ (!\Add5~27\)))) # (GND)
-- \Add5~29\ = CARRY((\Mult7|auto_generated|mac_out2~DATAOUT14\ & ((\Mult6|auto_generated|mac_out2~DATAOUT14\) # (!\Add5~27\))) # (!\Mult7|auto_generated|mac_out2~DATAOUT14\ & (\Mult6|auto_generated|mac_out2~DATAOUT14\ & !\Add5~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult7|auto_generated|mac_out2~DATAOUT14\,
	datab => \Mult6|auto_generated|mac_out2~DATAOUT14\,
	datad => VCC,
	cin => \Add5~27\,
	combout => \Add5~28_combout\,
	cout => \Add5~29\);

-- Location: LCCOMB_X38_Y15_N0
\Add5~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add5~30_combout\ = (\Mult7|auto_generated|mac_out2~DATAOUT15\ & ((\Mult6|auto_generated|mac_out2~DATAOUT15\ & (\Add5~29\ & VCC)) # (!\Mult6|auto_generated|mac_out2~DATAOUT15\ & (!\Add5~29\)))) # (!\Mult7|auto_generated|mac_out2~DATAOUT15\ & 
-- ((\Mult6|auto_generated|mac_out2~DATAOUT15\ & (!\Add5~29\)) # (!\Mult6|auto_generated|mac_out2~DATAOUT15\ & ((\Add5~29\) # (GND)))))
-- \Add5~31\ = CARRY((\Mult7|auto_generated|mac_out2~DATAOUT15\ & (!\Mult6|auto_generated|mac_out2~DATAOUT15\ & !\Add5~29\)) # (!\Mult7|auto_generated|mac_out2~DATAOUT15\ & ((!\Add5~29\) # (!\Mult6|auto_generated|mac_out2~DATAOUT15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult7|auto_generated|mac_out2~DATAOUT15\,
	datab => \Mult6|auto_generated|mac_out2~DATAOUT15\,
	datad => VCC,
	cin => \Add5~29\,
	combout => \Add5~30_combout\,
	cout => \Add5~31\);

-- Location: LCCOMB_X38_Y15_N4
\Add5~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add5~34_combout\ = (\Mult6|auto_generated|mac_out2~DATAOUT17\ & ((\Mult7|auto_generated|mac_out2~DATAOUT17\ & (\Add5~33\ & VCC)) # (!\Mult7|auto_generated|mac_out2~DATAOUT17\ & (!\Add5~33\)))) # (!\Mult6|auto_generated|mac_out2~DATAOUT17\ & 
-- ((\Mult7|auto_generated|mac_out2~DATAOUT17\ & (!\Add5~33\)) # (!\Mult7|auto_generated|mac_out2~DATAOUT17\ & ((\Add5~33\) # (GND)))))
-- \Add5~35\ = CARRY((\Mult6|auto_generated|mac_out2~DATAOUT17\ & (!\Mult7|auto_generated|mac_out2~DATAOUT17\ & !\Add5~33\)) # (!\Mult6|auto_generated|mac_out2~DATAOUT17\ & ((!\Add5~33\) # (!\Mult7|auto_generated|mac_out2~DATAOUT17\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult6|auto_generated|mac_out2~DATAOUT17\,
	datab => \Mult7|auto_generated|mac_out2~DATAOUT17\,
	datad => VCC,
	cin => \Add5~33\,
	combout => \Add5~34_combout\,
	cout => \Add5~35\);

-- Location: DSPOUT_X39_Y20_N2
\Mult9|auto_generated|mac_out2\ : cycloneii_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 36,
	output_clock => "none")
-- pragma translate_on
PORT MAP (
	dataa => \Mult9|auto_generated|mac_out2_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \Mult9|auto_generated|mac_out2_DATAOUT_bus\);

-- Location: DSPOUT_X39_Y19_N2
\Mult8|auto_generated|mac_out2\ : cycloneii_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 36,
	output_clock => "none")
-- pragma translate_on
PORT MAP (
	dataa => \Mult8|auto_generated|mac_out2_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \Mult8|auto_generated|mac_out2_DATAOUT_bus\);

-- Location: LCCOMB_X38_Y20_N4
\Add7~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add7~2_combout\ = (\data_pipeline[8][1]~_Duplicate_1_regout\ & ((\Mult9|auto_generated|mac_out2~DATAOUT2\ & (\Add7~1\ & VCC)) # (!\Mult9|auto_generated|mac_out2~DATAOUT2\ & (!\Add7~1\)))) # (!\data_pipeline[8][1]~_Duplicate_1_regout\ & 
-- ((\Mult9|auto_generated|mac_out2~DATAOUT2\ & (!\Add7~1\)) # (!\Mult9|auto_generated|mac_out2~DATAOUT2\ & ((\Add7~1\) # (GND)))))
-- \Add7~3\ = CARRY((\data_pipeline[8][1]~_Duplicate_1_regout\ & (!\Mult9|auto_generated|mac_out2~DATAOUT2\ & !\Add7~1\)) # (!\data_pipeline[8][1]~_Duplicate_1_regout\ & ((!\Add7~1\) # (!\Mult9|auto_generated|mac_out2~DATAOUT2\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \data_pipeline[8][1]~_Duplicate_1_regout\,
	datab => \Mult9|auto_generated|mac_out2~DATAOUT2\,
	datad => VCC,
	cin => \Add7~1\,
	combout => \Add7~2_combout\,
	cout => \Add7~3\);

-- Location: LCCOMB_X38_Y20_N10
\Add7~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add7~8_combout\ = ((\Mult9|auto_generated|mac_out2~DATAOUT5\ $ (\Mult8|auto_generated|mac_out2~DATAOUT5\ $ (!\Add7~7\)))) # (GND)
-- \Add7~9\ = CARRY((\Mult9|auto_generated|mac_out2~DATAOUT5\ & ((\Mult8|auto_generated|mac_out2~DATAOUT5\) # (!\Add7~7\))) # (!\Mult9|auto_generated|mac_out2~DATAOUT5\ & (\Mult8|auto_generated|mac_out2~DATAOUT5\ & !\Add7~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult9|auto_generated|mac_out2~DATAOUT5\,
	datab => \Mult8|auto_generated|mac_out2~DATAOUT5\,
	datad => VCC,
	cin => \Add7~7\,
	combout => \Add7~8_combout\,
	cout => \Add7~9\);

-- Location: LCCOMB_X38_Y20_N18
\Add7~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add7~16_combout\ = ((\Mult8|auto_generated|mac_out2~DATAOUT9\ $ (\Mult9|auto_generated|mac_out2~DATAOUT9\ $ (!\Add7~15\)))) # (GND)
-- \Add7~17\ = CARRY((\Mult8|auto_generated|mac_out2~DATAOUT9\ & ((\Mult9|auto_generated|mac_out2~DATAOUT9\) # (!\Add7~15\))) # (!\Mult8|auto_generated|mac_out2~DATAOUT9\ & (\Mult9|auto_generated|mac_out2~DATAOUT9\ & !\Add7~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult8|auto_generated|mac_out2~DATAOUT9\,
	datab => \Mult9|auto_generated|mac_out2~DATAOUT9\,
	datad => VCC,
	cin => \Add7~15\,
	combout => \Add7~16_combout\,
	cout => \Add7~17\);

-- Location: LCCOMB_X38_Y20_N20
\Add7~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add7~18_combout\ = (\Mult9|auto_generated|mac_out2~DATAOUT10\ & ((\Mult8|auto_generated|mac_out2~DATAOUT10\ & (\Add7~17\ & VCC)) # (!\Mult8|auto_generated|mac_out2~DATAOUT10\ & (!\Add7~17\)))) # (!\Mult9|auto_generated|mac_out2~DATAOUT10\ & 
-- ((\Mult8|auto_generated|mac_out2~DATAOUT10\ & (!\Add7~17\)) # (!\Mult8|auto_generated|mac_out2~DATAOUT10\ & ((\Add7~17\) # (GND)))))
-- \Add7~19\ = CARRY((\Mult9|auto_generated|mac_out2~DATAOUT10\ & (!\Mult8|auto_generated|mac_out2~DATAOUT10\ & !\Add7~17\)) # (!\Mult9|auto_generated|mac_out2~DATAOUT10\ & ((!\Add7~17\) # (!\Mult8|auto_generated|mac_out2~DATAOUT10\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult9|auto_generated|mac_out2~DATAOUT10\,
	datab => \Mult8|auto_generated|mac_out2~DATAOUT10\,
	datad => VCC,
	cin => \Add7~17\,
	combout => \Add7~18_combout\,
	cout => \Add7~19\);

-- Location: LCCOMB_X38_Y20_N24
\Add7~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add7~22_combout\ = (\Mult8|auto_generated|mac_out2~DATAOUT12\ & ((\Mult9|auto_generated|mac_out2~DATAOUT12\ & (\Add7~21\ & VCC)) # (!\Mult9|auto_generated|mac_out2~DATAOUT12\ & (!\Add7~21\)))) # (!\Mult8|auto_generated|mac_out2~DATAOUT12\ & 
-- ((\Mult9|auto_generated|mac_out2~DATAOUT12\ & (!\Add7~21\)) # (!\Mult9|auto_generated|mac_out2~DATAOUT12\ & ((\Add7~21\) # (GND)))))
-- \Add7~23\ = CARRY((\Mult8|auto_generated|mac_out2~DATAOUT12\ & (!\Mult9|auto_generated|mac_out2~DATAOUT12\ & !\Add7~21\)) # (!\Mult8|auto_generated|mac_out2~DATAOUT12\ & ((!\Add7~21\) # (!\Mult9|auto_generated|mac_out2~DATAOUT12\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult8|auto_generated|mac_out2~DATAOUT12\,
	datab => \Mult9|auto_generated|mac_out2~DATAOUT12\,
	datad => VCC,
	cin => \Add7~21\,
	combout => \Add7~22_combout\,
	cout => \Add7~23\);

-- Location: LCCOMB_X38_Y20_N26
\Add7~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add7~24_combout\ = ((\Mult9|auto_generated|mac_out2~DATAOUT13\ $ (\Mult8|auto_generated|mac_out2~DATAOUT13\ $ (!\Add7~23\)))) # (GND)
-- \Add7~25\ = CARRY((\Mult9|auto_generated|mac_out2~DATAOUT13\ & ((\Mult8|auto_generated|mac_out2~DATAOUT13\) # (!\Add7~23\))) # (!\Mult9|auto_generated|mac_out2~DATAOUT13\ & (\Mult8|auto_generated|mac_out2~DATAOUT13\ & !\Add7~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult9|auto_generated|mac_out2~DATAOUT13\,
	datab => \Mult8|auto_generated|mac_out2~DATAOUT13\,
	datad => VCC,
	cin => \Add7~23\,
	combout => \Add7~24_combout\,
	cout => \Add7~25\);

-- Location: LCCOMB_X38_Y19_N0
\Add7~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add7~30_combout\ = (\Mult8|auto_generated|mac_out2~DATAOUT16\ & ((\Mult9|auto_generated|mac_out2~DATAOUT16\ & (\Add7~29\ & VCC)) # (!\Mult9|auto_generated|mac_out2~DATAOUT16\ & (!\Add7~29\)))) # (!\Mult8|auto_generated|mac_out2~DATAOUT16\ & 
-- ((\Mult9|auto_generated|mac_out2~DATAOUT16\ & (!\Add7~29\)) # (!\Mult9|auto_generated|mac_out2~DATAOUT16\ & ((\Add7~29\) # (GND)))))
-- \Add7~31\ = CARRY((\Mult8|auto_generated|mac_out2~DATAOUT16\ & (!\Mult9|auto_generated|mac_out2~DATAOUT16\ & !\Add7~29\)) # (!\Mult8|auto_generated|mac_out2~DATAOUT16\ & ((!\Add7~29\) # (!\Mult9|auto_generated|mac_out2~DATAOUT16\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult8|auto_generated|mac_out2~DATAOUT16\,
	datab => \Mult9|auto_generated|mac_out2~DATAOUT16\,
	datad => VCC,
	cin => \Add7~29\,
	combout => \Add7~30_combout\,
	cout => \Add7~31\);

-- Location: DSPOUT_X39_Y18_N2
\Mult1|auto_generated|mac_out2\ : cycloneii_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 36,
	output_clock => "none")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|mac_out2_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \Mult1|auto_generated|mac_out2_DATAOUT_bus\);

-- Location: DSPOUT_X39_Y17_N2
\Mult0|auto_generated|mac_out2\ : cycloneii_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 36,
	output_clock => "none")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out2_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \Mult0|auto_generated|mac_out2_DATAOUT_bus\);

-- Location: LCCOMB_X40_Y18_N6
\Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = ((\data_pipeline[0][2]~_Duplicate_1_regout\ $ (\Mult1|auto_generated|mac_out2~DATAOUT3\ $ (!\Add0~3\)))) # (GND)
-- \Add0~5\ = CARRY((\data_pipeline[0][2]~_Duplicate_1_regout\ & ((\Mult1|auto_generated|mac_out2~DATAOUT3\) # (!\Add0~3\))) # (!\data_pipeline[0][2]~_Duplicate_1_regout\ & (\Mult1|auto_generated|mac_out2~DATAOUT3\ & !\Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \data_pipeline[0][2]~_Duplicate_1_regout\,
	datab => \Mult1|auto_generated|mac_out2~DATAOUT3\,
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X40_Y18_N8
\Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (\Mult0|auto_generated|mac_out2~DATAOUT4\ & ((\Mult1|auto_generated|mac_out2~DATAOUT4\ & (\Add0~5\ & VCC)) # (!\Mult1|auto_generated|mac_out2~DATAOUT4\ & (!\Add0~5\)))) # (!\Mult0|auto_generated|mac_out2~DATAOUT4\ & 
-- ((\Mult1|auto_generated|mac_out2~DATAOUT4\ & (!\Add0~5\)) # (!\Mult1|auto_generated|mac_out2~DATAOUT4\ & ((\Add0~5\) # (GND)))))
-- \Add0~7\ = CARRY((\Mult0|auto_generated|mac_out2~DATAOUT4\ & (!\Mult1|auto_generated|mac_out2~DATAOUT4\ & !\Add0~5\)) # (!\Mult0|auto_generated|mac_out2~DATAOUT4\ & ((!\Add0~5\) # (!\Mult1|auto_generated|mac_out2~DATAOUT4\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out2~DATAOUT4\,
	datab => \Mult1|auto_generated|mac_out2~DATAOUT4\,
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X40_Y18_N18
\Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = ((\Mult1|auto_generated|mac_out2~DATAOUT9\ $ (\Mult0|auto_generated|mac_out2~DATAOUT9\ $ (!\Add0~15\)))) # (GND)
-- \Add0~17\ = CARRY((\Mult1|auto_generated|mac_out2~DATAOUT9\ & ((\Mult0|auto_generated|mac_out2~DATAOUT9\) # (!\Add0~15\))) # (!\Mult1|auto_generated|mac_out2~DATAOUT9\ & (\Mult0|auto_generated|mac_out2~DATAOUT9\ & !\Add0~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|mac_out2~DATAOUT9\,
	datab => \Mult0|auto_generated|mac_out2~DATAOUT9\,
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: LCCOMB_X40_Y18_N20
\Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (\Mult1|auto_generated|mac_out2~DATAOUT10\ & ((\Mult0|auto_generated|mac_out2~DATAOUT10\ & (\Add0~17\ & VCC)) # (!\Mult0|auto_generated|mac_out2~DATAOUT10\ & (!\Add0~17\)))) # (!\Mult1|auto_generated|mac_out2~DATAOUT10\ & 
-- ((\Mult0|auto_generated|mac_out2~DATAOUT10\ & (!\Add0~17\)) # (!\Mult0|auto_generated|mac_out2~DATAOUT10\ & ((\Add0~17\) # (GND)))))
-- \Add0~19\ = CARRY((\Mult1|auto_generated|mac_out2~DATAOUT10\ & (!\Mult0|auto_generated|mac_out2~DATAOUT10\ & !\Add0~17\)) # (!\Mult1|auto_generated|mac_out2~DATAOUT10\ & ((!\Add0~17\) # (!\Mult0|auto_generated|mac_out2~DATAOUT10\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|mac_out2~DATAOUT10\,
	datab => \Mult0|auto_generated|mac_out2~DATAOUT10\,
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: LCCOMB_X40_Y17_N0
\Add0~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = (\Mult1|auto_generated|mac_out2~DATAOUT16\ & ((\Mult0|auto_generated|mac_out2~DATAOUT16\ & (\Add0~29\ & VCC)) # (!\Mult0|auto_generated|mac_out2~DATAOUT16\ & (!\Add0~29\)))) # (!\Mult1|auto_generated|mac_out2~DATAOUT16\ & 
-- ((\Mult0|auto_generated|mac_out2~DATAOUT16\ & (!\Add0~29\)) # (!\Mult0|auto_generated|mac_out2~DATAOUT16\ & ((\Add0~29\) # (GND)))))
-- \Add0~31\ = CARRY((\Mult1|auto_generated|mac_out2~DATAOUT16\ & (!\Mult0|auto_generated|mac_out2~DATAOUT16\ & !\Add0~29\)) # (!\Mult1|auto_generated|mac_out2~DATAOUT16\ & ((!\Add0~29\) # (!\Mult0|auto_generated|mac_out2~DATAOUT16\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|mac_out2~DATAOUT16\,
	datab => \Mult0|auto_generated|mac_out2~DATAOUT16\,
	datad => VCC,
	cin => \Add0~29\,
	combout => \Add0~30_combout\,
	cout => \Add0~31\);

-- Location: LCCOMB_X40_Y17_N2
\Add0~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~32_combout\ = ((\Mult1|auto_generated|mac_out2~DATAOUT17\ $ (\Mult0|auto_generated|mac_out2~DATAOUT17\ $ (!\Add0~31\)))) # (GND)
-- \Add0~33\ = CARRY((\Mult1|auto_generated|mac_out2~DATAOUT17\ & ((\Mult0|auto_generated|mac_out2~DATAOUT17\) # (!\Add0~31\))) # (!\Mult1|auto_generated|mac_out2~DATAOUT17\ & (\Mult0|auto_generated|mac_out2~DATAOUT17\ & !\Add0~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|mac_out2~DATAOUT17\,
	datab => \Mult0|auto_generated|mac_out2~DATAOUT17\,
	datad => VCC,
	cin => \Add0~31\,
	combout => \Add0~32_combout\,
	cout => \Add0~33\);

-- Location: DSPOUT_X39_Y22_N2
\Mult2|auto_generated|mac_out2\ : cycloneii_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 36,
	output_clock => "none")
-- pragma translate_on
PORT MAP (
	dataa => \Mult2|auto_generated|mac_out2_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \Mult2|auto_generated|mac_out2_DATAOUT_bus\);

-- Location: LCCOMB_X40_Y22_N2
\Add1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (\Mult2|auto_generated|mac_out2~DATAOUT1\ & ((\Add0~0_combout\ & (\Add1~1\ & VCC)) # (!\Add0~0_combout\ & (!\Add1~1\)))) # (!\Mult2|auto_generated|mac_out2~DATAOUT1\ & ((\Add0~0_combout\ & (!\Add1~1\)) # (!\Add0~0_combout\ & ((\Add1~1\) 
-- # (GND)))))
-- \Add1~3\ = CARRY((\Mult2|auto_generated|mac_out2~DATAOUT1\ & (!\Add0~0_combout\ & !\Add1~1\)) # (!\Mult2|auto_generated|mac_out2~DATAOUT1\ & ((!\Add1~1\) # (!\Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult2|auto_generated|mac_out2~DATAOUT1\,
	datab => \Add0~0_combout\,
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: LCCOMB_X40_Y22_N8
\Add1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = ((\Add0~6_combout\ $ (\Mult2|auto_generated|mac_out2~DATAOUT4\ $ (!\Add1~7\)))) # (GND)
-- \Add1~9\ = CARRY((\Add0~6_combout\ & ((\Mult2|auto_generated|mac_out2~DATAOUT4\) # (!\Add1~7\))) # (!\Add0~6_combout\ & (\Mult2|auto_generated|mac_out2~DATAOUT4\ & !\Add1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~6_combout\,
	datab => \Mult2|auto_generated|mac_out2~DATAOUT4\,
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: LCCOMB_X40_Y22_N10
\Add1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = (\Mult2|auto_generated|mac_out2~DATAOUT5\ & ((\Add0~8_combout\ & (\Add1~9\ & VCC)) # (!\Add0~8_combout\ & (!\Add1~9\)))) # (!\Mult2|auto_generated|mac_out2~DATAOUT5\ & ((\Add0~8_combout\ & (!\Add1~9\)) # (!\Add0~8_combout\ & 
-- ((\Add1~9\) # (GND)))))
-- \Add1~11\ = CARRY((\Mult2|auto_generated|mac_out2~DATAOUT5\ & (!\Add0~8_combout\ & !\Add1~9\)) # (!\Mult2|auto_generated|mac_out2~DATAOUT5\ & ((!\Add1~9\) # (!\Add0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult2|auto_generated|mac_out2~DATAOUT5\,
	datab => \Add0~8_combout\,
	datad => VCC,
	cin => \Add1~9\,
	combout => \Add1~10_combout\,
	cout => \Add1~11\);

-- Location: LCCOMB_X40_Y22_N12
\Add1~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = ((\Mult2|auto_generated|mac_out2~DATAOUT6\ $ (\Add0~10_combout\ $ (!\Add1~11\)))) # (GND)
-- \Add1~13\ = CARRY((\Mult2|auto_generated|mac_out2~DATAOUT6\ & ((\Add0~10_combout\) # (!\Add1~11\))) # (!\Mult2|auto_generated|mac_out2~DATAOUT6\ & (\Add0~10_combout\ & !\Add1~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult2|auto_generated|mac_out2~DATAOUT6\,
	datab => \Add0~10_combout\,
	datad => VCC,
	cin => \Add1~11\,
	combout => \Add1~12_combout\,
	cout => \Add1~13\);

-- Location: LCCOMB_X40_Y22_N14
\Add1~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = (\Mult2|auto_generated|mac_out2~DATAOUT7\ & ((\Add0~12_combout\ & (\Add1~13\ & VCC)) # (!\Add0~12_combout\ & (!\Add1~13\)))) # (!\Mult2|auto_generated|mac_out2~DATAOUT7\ & ((\Add0~12_combout\ & (!\Add1~13\)) # (!\Add0~12_combout\ & 
-- ((\Add1~13\) # (GND)))))
-- \Add1~15\ = CARRY((\Mult2|auto_generated|mac_out2~DATAOUT7\ & (!\Add0~12_combout\ & !\Add1~13\)) # (!\Mult2|auto_generated|mac_out2~DATAOUT7\ & ((!\Add1~13\) # (!\Add0~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult2|auto_generated|mac_out2~DATAOUT7\,
	datab => \Add0~12_combout\,
	datad => VCC,
	cin => \Add1~13\,
	combout => \Add1~14_combout\,
	cout => \Add1~15\);

-- Location: LCCOMB_X40_Y22_N20
\Add1~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~20_combout\ = ((\Add0~18_combout\ $ (\Mult2|auto_generated|mac_out2~DATAOUT10\ $ (!\Add1~19\)))) # (GND)
-- \Add1~21\ = CARRY((\Add0~18_combout\ & ((\Mult2|auto_generated|mac_out2~DATAOUT10\) # (!\Add1~19\))) # (!\Add0~18_combout\ & (\Mult2|auto_generated|mac_out2~DATAOUT10\ & !\Add1~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~18_combout\,
	datab => \Mult2|auto_generated|mac_out2~DATAOUT10\,
	datad => VCC,
	cin => \Add1~19\,
	combout => \Add1~20_combout\,
	cout => \Add1~21\);

-- Location: LCCOMB_X40_Y22_N30
\Add1~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~30_combout\ = (\Mult2|auto_generated|mac_out2~DATAOUT15\ & ((\Add0~28_combout\ & (\Add1~29\ & VCC)) # (!\Add0~28_combout\ & (!\Add1~29\)))) # (!\Mult2|auto_generated|mac_out2~DATAOUT15\ & ((\Add0~28_combout\ & (!\Add1~29\)) # (!\Add0~28_combout\ & 
-- ((\Add1~29\) # (GND)))))
-- \Add1~31\ = CARRY((\Mult2|auto_generated|mac_out2~DATAOUT15\ & (!\Add0~28_combout\ & !\Add1~29\)) # (!\Mult2|auto_generated|mac_out2~DATAOUT15\ & ((!\Add1~29\) # (!\Add0~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult2|auto_generated|mac_out2~DATAOUT15\,
	datab => \Add0~28_combout\,
	datad => VCC,
	cin => \Add1~29\,
	combout => \Add1~30_combout\,
	cout => \Add1~31\);

-- Location: LCCOMB_X40_Y21_N0
\Add1~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~32_combout\ = ((\Add0~30_combout\ $ (\Mult2|auto_generated|mac_out2~DATAOUT16\ $ (!\Add1~31\)))) # (GND)
-- \Add1~33\ = CARRY((\Add0~30_combout\ & ((\Mult2|auto_generated|mac_out2~DATAOUT16\) # (!\Add1~31\))) # (!\Add0~30_combout\ & (\Mult2|auto_generated|mac_out2~DATAOUT16\ & !\Add1~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~30_combout\,
	datab => \Mult2|auto_generated|mac_out2~DATAOUT16\,
	datad => VCC,
	cin => \Add1~31\,
	combout => \Add1~32_combout\,
	cout => \Add1~33\);

-- Location: LCCOMB_X40_Y21_N2
\Add1~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~34_combout\ = (\Add0~32_combout\ & ((\Mult2|auto_generated|mac_out2~DATAOUT17\ & (\Add1~33\ & VCC)) # (!\Mult2|auto_generated|mac_out2~DATAOUT17\ & (!\Add1~33\)))) # (!\Add0~32_combout\ & ((\Mult2|auto_generated|mac_out2~DATAOUT17\ & (!\Add1~33\)) # 
-- (!\Mult2|auto_generated|mac_out2~DATAOUT17\ & ((\Add1~33\) # (GND)))))
-- \Add1~35\ = CARRY((\Add0~32_combout\ & (!\Mult2|auto_generated|mac_out2~DATAOUT17\ & !\Add1~33\)) # (!\Add0~32_combout\ & ((!\Add1~33\) # (!\Mult2|auto_generated|mac_out2~DATAOUT17\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~32_combout\,
	datab => \Mult2|auto_generated|mac_out2~DATAOUT17\,
	datad => VCC,
	cin => \Add1~33\,
	combout => \Add1~34_combout\,
	cout => \Add1~35\);

-- Location: DSPOUT_X39_Y21_N2
\Mult3|auto_generated|mac_out2\ : cycloneii_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 36,
	output_clock => "none")
-- pragma translate_on
PORT MAP (
	dataa => \Mult3|auto_generated|mac_out2_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \Mult3|auto_generated|mac_out2_DATAOUT_bus\);

-- Location: LCCOMB_X41_Y22_N0
\Add2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = (\Add1~2_combout\ & (\data_pipeline[3][0]~_Duplicate_1_regout\ $ (VCC))) # (!\Add1~2_combout\ & (\data_pipeline[3][0]~_Duplicate_1_regout\ & VCC))
-- \Add2~1\ = CARRY((\Add1~2_combout\ & \data_pipeline[3][0]~_Duplicate_1_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~2_combout\,
	datab => \data_pipeline[3][0]~_Duplicate_1_regout\,
	datad => VCC,
	combout => \Add2~0_combout\,
	cout => \Add2~1\);

-- Location: LCCOMB_X41_Y22_N2
\Add2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~2_combout\ = (\Mult3|auto_generated|mac_out2~DATAOUT2\ & ((\Add1~4_combout\ & (\Add2~1\ & VCC)) # (!\Add1~4_combout\ & (!\Add2~1\)))) # (!\Mult3|auto_generated|mac_out2~DATAOUT2\ & ((\Add1~4_combout\ & (!\Add2~1\)) # (!\Add1~4_combout\ & ((\Add2~1\) 
-- # (GND)))))
-- \Add2~3\ = CARRY((\Mult3|auto_generated|mac_out2~DATAOUT2\ & (!\Add1~4_combout\ & !\Add2~1\)) # (!\Mult3|auto_generated|mac_out2~DATAOUT2\ & ((!\Add2~1\) # (!\Add1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult3|auto_generated|mac_out2~DATAOUT2\,
	datab => \Add1~4_combout\,
	datad => VCC,
	cin => \Add2~1\,
	combout => \Add2~2_combout\,
	cout => \Add2~3\);

-- Location: LCCOMB_X41_Y22_N6
\Add2~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~6_combout\ = (\Add1~8_combout\ & ((\Mult3|auto_generated|mac_out2~DATAOUT4\ & (\Add2~5\ & VCC)) # (!\Mult3|auto_generated|mac_out2~DATAOUT4\ & (!\Add2~5\)))) # (!\Add1~8_combout\ & ((\Mult3|auto_generated|mac_out2~DATAOUT4\ & (!\Add2~5\)) # 
-- (!\Mult3|auto_generated|mac_out2~DATAOUT4\ & ((\Add2~5\) # (GND)))))
-- \Add2~7\ = CARRY((\Add1~8_combout\ & (!\Mult3|auto_generated|mac_out2~DATAOUT4\ & !\Add2~5\)) # (!\Add1~8_combout\ & ((!\Add2~5\) # (!\Mult3|auto_generated|mac_out2~DATAOUT4\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~8_combout\,
	datab => \Mult3|auto_generated|mac_out2~DATAOUT4\,
	datad => VCC,
	cin => \Add2~5\,
	combout => \Add2~6_combout\,
	cout => \Add2~7\);

-- Location: LCCOMB_X41_Y22_N14
\Add2~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~14_combout\ = (\Mult3|auto_generated|mac_out2~DATAOUT8\ & ((\Add1~16_combout\ & (\Add2~13\ & VCC)) # (!\Add1~16_combout\ & (!\Add2~13\)))) # (!\Mult3|auto_generated|mac_out2~DATAOUT8\ & ((\Add1~16_combout\ & (!\Add2~13\)) # (!\Add1~16_combout\ & 
-- ((\Add2~13\) # (GND)))))
-- \Add2~15\ = CARRY((\Mult3|auto_generated|mac_out2~DATAOUT8\ & (!\Add1~16_combout\ & !\Add2~13\)) # (!\Mult3|auto_generated|mac_out2~DATAOUT8\ & ((!\Add2~13\) # (!\Add1~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult3|auto_generated|mac_out2~DATAOUT8\,
	datab => \Add1~16_combout\,
	datad => VCC,
	cin => \Add2~13\,
	combout => \Add2~14_combout\,
	cout => \Add2~15\);

-- Location: DSPOUT_X39_Y23_N2
\Mult4|auto_generated|mac_out2\ : cycloneii_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 36,
	output_clock => "none")
-- pragma translate_on
PORT MAP (
	dataa => \Mult4|auto_generated|mac_out2_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \Mult4|auto_generated|mac_out2_DATAOUT_bus\);

-- Location: LCCOMB_X38_Y22_N2
\Add3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~2_combout\ = (\Add2~2_combout\ & ((\data_pipeline[4][1]~_Duplicate_1_regout\ & (\Add3~1\ & VCC)) # (!\data_pipeline[4][1]~_Duplicate_1_regout\ & (!\Add3~1\)))) # (!\Add2~2_combout\ & ((\data_pipeline[4][1]~_Duplicate_1_regout\ & (!\Add3~1\)) # 
-- (!\data_pipeline[4][1]~_Duplicate_1_regout\ & ((\Add3~1\) # (GND)))))
-- \Add3~3\ = CARRY((\Add2~2_combout\ & (!\data_pipeline[4][1]~_Duplicate_1_regout\ & !\Add3~1\)) # (!\Add2~2_combout\ & ((!\Add3~1\) # (!\data_pipeline[4][1]~_Duplicate_1_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~2_combout\,
	datab => \data_pipeline[4][1]~_Duplicate_1_regout\,
	datad => VCC,
	cin => \Add3~1\,
	combout => \Add3~2_combout\,
	cout => \Add3~3\);

-- Location: LCCOMB_X38_Y22_N4
\Add3~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~4_combout\ = ((\Mult4|auto_generated|mac_out2~DATAOUT3\ $ (\Add2~4_combout\ $ (!\Add3~3\)))) # (GND)
-- \Add3~5\ = CARRY((\Mult4|auto_generated|mac_out2~DATAOUT3\ & ((\Add2~4_combout\) # (!\Add3~3\))) # (!\Mult4|auto_generated|mac_out2~DATAOUT3\ & (\Add2~4_combout\ & !\Add3~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult4|auto_generated|mac_out2~DATAOUT3\,
	datab => \Add2~4_combout\,
	datad => VCC,
	cin => \Add3~3\,
	combout => \Add3~4_combout\,
	cout => \Add3~5\);

-- Location: LCCOMB_X38_Y22_N6
\Add3~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~6_combout\ = (\Add2~6_combout\ & ((\Mult4|auto_generated|mac_out2~DATAOUT4\ & (\Add3~5\ & VCC)) # (!\Mult4|auto_generated|mac_out2~DATAOUT4\ & (!\Add3~5\)))) # (!\Add2~6_combout\ & ((\Mult4|auto_generated|mac_out2~DATAOUT4\ & (!\Add3~5\)) # 
-- (!\Mult4|auto_generated|mac_out2~DATAOUT4\ & ((\Add3~5\) # (GND)))))
-- \Add3~7\ = CARRY((\Add2~6_combout\ & (!\Mult4|auto_generated|mac_out2~DATAOUT4\ & !\Add3~5\)) # (!\Add2~6_combout\ & ((!\Add3~5\) # (!\Mult4|auto_generated|mac_out2~DATAOUT4\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~6_combout\,
	datab => \Mult4|auto_generated|mac_out2~DATAOUT4\,
	datad => VCC,
	cin => \Add3~5\,
	combout => \Add3~6_combout\,
	cout => \Add3~7\);

-- Location: LCCOMB_X38_Y22_N16
\Add3~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~16_combout\ = ((\Mult4|auto_generated|mac_out2~DATAOUT9\ $ (\Add2~16_combout\ $ (!\Add3~15\)))) # (GND)
-- \Add3~17\ = CARRY((\Mult4|auto_generated|mac_out2~DATAOUT9\ & ((\Add2~16_combout\) # (!\Add3~15\))) # (!\Mult4|auto_generated|mac_out2~DATAOUT9\ & (\Add2~16_combout\ & !\Add3~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult4|auto_generated|mac_out2~DATAOUT9\,
	datab => \Add2~16_combout\,
	datad => VCC,
	cin => \Add3~15\,
	combout => \Add3~16_combout\,
	cout => \Add3~17\);

-- Location: LCCOMB_X38_Y22_N20
\Add3~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~20_combout\ = ((\Mult4|auto_generated|mac_out2~DATAOUT11\ $ (\Add2~20_combout\ $ (!\Add3~19\)))) # (GND)
-- \Add3~21\ = CARRY((\Mult4|auto_generated|mac_out2~DATAOUT11\ & ((\Add2~20_combout\) # (!\Add3~19\))) # (!\Mult4|auto_generated|mac_out2~DATAOUT11\ & (\Add2~20_combout\ & !\Add3~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult4|auto_generated|mac_out2~DATAOUT11\,
	datab => \Add2~20_combout\,
	datad => VCC,
	cin => \Add3~19\,
	combout => \Add3~20_combout\,
	cout => \Add3~21\);

-- Location: LCCOMB_X38_Y22_N26
\Add3~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~26_combout\ = (\Mult4|auto_generated|mac_out2~DATAOUT14\ & ((\Add2~26_combout\ & (\Add3~25\ & VCC)) # (!\Add2~26_combout\ & (!\Add3~25\)))) # (!\Mult4|auto_generated|mac_out2~DATAOUT14\ & ((\Add2~26_combout\ & (!\Add3~25\)) # (!\Add2~26_combout\ & 
-- ((\Add3~25\) # (GND)))))
-- \Add3~27\ = CARRY((\Mult4|auto_generated|mac_out2~DATAOUT14\ & (!\Add2~26_combout\ & !\Add3~25\)) # (!\Mult4|auto_generated|mac_out2~DATAOUT14\ & ((!\Add3~25\) # (!\Add2~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult4|auto_generated|mac_out2~DATAOUT14\,
	datab => \Add2~26_combout\,
	datad => VCC,
	cin => \Add3~25\,
	combout => \Add3~26_combout\,
	cout => \Add3~27\);

-- Location: DSPOUT_X39_Y24_N2
\Mult5|auto_generated|mac_out2\ : cycloneii_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 36,
	output_clock => "none")
-- pragma translate_on
PORT MAP (
	dataa => \Mult5|auto_generated|mac_out2_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \Mult5|auto_generated|mac_out2_DATAOUT_bus\);

-- Location: LCCOMB_X37_Y22_N0
\Add4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add4~0_combout\ = (\data_pipeline[5][0]~_Duplicate_1_regout\ & (\Add3~0_combout\ $ (VCC))) # (!\data_pipeline[5][0]~_Duplicate_1_regout\ & (\Add3~0_combout\ & VCC))
-- \Add4~1\ = CARRY((\data_pipeline[5][0]~_Duplicate_1_regout\ & \Add3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_pipeline[5][0]~_Duplicate_1_regout\,
	datab => \Add3~0_combout\,
	datad => VCC,
	combout => \Add4~0_combout\,
	cout => \Add4~1\);

-- Location: LCCOMB_X37_Y22_N4
\Add4~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add4~4_combout\ = ((\Add3~4_combout\ $ (\Mult5|auto_generated|mac_out2~DATAOUT3\ $ (!\Add4~3\)))) # (GND)
-- \Add4~5\ = CARRY((\Add3~4_combout\ & ((\Mult5|auto_generated|mac_out2~DATAOUT3\) # (!\Add4~3\))) # (!\Add3~4_combout\ & (\Mult5|auto_generated|mac_out2~DATAOUT3\ & !\Add4~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~4_combout\,
	datab => \Mult5|auto_generated|mac_out2~DATAOUT3\,
	datad => VCC,
	cin => \Add4~3\,
	combout => \Add4~4_combout\,
	cout => \Add4~5\);

-- Location: LCCOMB_X37_Y22_N6
\Add4~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add4~6_combout\ = (\Add3~6_combout\ & ((\Mult5|auto_generated|mac_out2~DATAOUT4\ & (\Add4~5\ & VCC)) # (!\Mult5|auto_generated|mac_out2~DATAOUT4\ & (!\Add4~5\)))) # (!\Add3~6_combout\ & ((\Mult5|auto_generated|mac_out2~DATAOUT4\ & (!\Add4~5\)) # 
-- (!\Mult5|auto_generated|mac_out2~DATAOUT4\ & ((\Add4~5\) # (GND)))))
-- \Add4~7\ = CARRY((\Add3~6_combout\ & (!\Mult5|auto_generated|mac_out2~DATAOUT4\ & !\Add4~5\)) # (!\Add3~6_combout\ & ((!\Add4~5\) # (!\Mult5|auto_generated|mac_out2~DATAOUT4\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~6_combout\,
	datab => \Mult5|auto_generated|mac_out2~DATAOUT4\,
	datad => VCC,
	cin => \Add4~5\,
	combout => \Add4~6_combout\,
	cout => \Add4~7\);

-- Location: LCCOMB_X37_Y22_N10
\Add4~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add4~10_combout\ = (\Mult5|auto_generated|mac_out2~DATAOUT6\ & ((\Add3~10_combout\ & (\Add4~9\ & VCC)) # (!\Add3~10_combout\ & (!\Add4~9\)))) # (!\Mult5|auto_generated|mac_out2~DATAOUT6\ & ((\Add3~10_combout\ & (!\Add4~9\)) # (!\Add3~10_combout\ & 
-- ((\Add4~9\) # (GND)))))
-- \Add4~11\ = CARRY((\Mult5|auto_generated|mac_out2~DATAOUT6\ & (!\Add3~10_combout\ & !\Add4~9\)) # (!\Mult5|auto_generated|mac_out2~DATAOUT6\ & ((!\Add4~9\) # (!\Add3~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult5|auto_generated|mac_out2~DATAOUT6\,
	datab => \Add3~10_combout\,
	datad => VCC,
	cin => \Add4~9\,
	combout => \Add4~10_combout\,
	cout => \Add4~11\);

-- Location: LCCOMB_X37_Y22_N12
\Add4~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add4~12_combout\ = ((\Mult5|auto_generated|mac_out2~DATAOUT7\ $ (\Add3~12_combout\ $ (!\Add4~11\)))) # (GND)
-- \Add4~13\ = CARRY((\Mult5|auto_generated|mac_out2~DATAOUT7\ & ((\Add3~12_combout\) # (!\Add4~11\))) # (!\Mult5|auto_generated|mac_out2~DATAOUT7\ & (\Add3~12_combout\ & !\Add4~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult5|auto_generated|mac_out2~DATAOUT7\,
	datab => \Add3~12_combout\,
	datad => VCC,
	cin => \Add4~11\,
	combout => \Add4~12_combout\,
	cout => \Add4~13\);

-- Location: LCCOMB_X37_Y22_N14
\Add4~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add4~14_combout\ = (\Mult5|auto_generated|mac_out2~DATAOUT8\ & ((\Add3~14_combout\ & (\Add4~13\ & VCC)) # (!\Add3~14_combout\ & (!\Add4~13\)))) # (!\Mult5|auto_generated|mac_out2~DATAOUT8\ & ((\Add3~14_combout\ & (!\Add4~13\)) # (!\Add3~14_combout\ & 
-- ((\Add4~13\) # (GND)))))
-- \Add4~15\ = CARRY((\Mult5|auto_generated|mac_out2~DATAOUT8\ & (!\Add3~14_combout\ & !\Add4~13\)) # (!\Mult5|auto_generated|mac_out2~DATAOUT8\ & ((!\Add4~13\) # (!\Add3~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult5|auto_generated|mac_out2~DATAOUT8\,
	datab => \Add3~14_combout\,
	datad => VCC,
	cin => \Add4~13\,
	combout => \Add4~14_combout\,
	cout => \Add4~15\);

-- Location: LCCOMB_X37_Y22_N20
\Add4~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add4~20_combout\ = ((\Add3~20_combout\ $ (\Mult5|auto_generated|mac_out2~DATAOUT11\ $ (!\Add4~19\)))) # (GND)
-- \Add4~21\ = CARRY((\Add3~20_combout\ & ((\Mult5|auto_generated|mac_out2~DATAOUT11\) # (!\Add4~19\))) # (!\Add3~20_combout\ & (\Mult5|auto_generated|mac_out2~DATAOUT11\ & !\Add4~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~20_combout\,
	datab => \Mult5|auto_generated|mac_out2~DATAOUT11\,
	datad => VCC,
	cin => \Add4~19\,
	combout => \Add4~20_combout\,
	cout => \Add4~21\);

-- Location: LCCOMB_X37_Y22_N26
\Add4~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add4~26_combout\ = (\Add3~26_combout\ & ((\Mult5|auto_generated|mac_out2~DATAOUT14\ & (\Add4~25\ & VCC)) # (!\Mult5|auto_generated|mac_out2~DATAOUT14\ & (!\Add4~25\)))) # (!\Add3~26_combout\ & ((\Mult5|auto_generated|mac_out2~DATAOUT14\ & (!\Add4~25\)) # 
-- (!\Mult5|auto_generated|mac_out2~DATAOUT14\ & ((\Add4~25\) # (GND)))))
-- \Add4~27\ = CARRY((\Add3~26_combout\ & (!\Mult5|auto_generated|mac_out2~DATAOUT14\ & !\Add4~25\)) # (!\Add3~26_combout\ & ((!\Add4~25\) # (!\Mult5|auto_generated|mac_out2~DATAOUT14\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~26_combout\,
	datab => \Mult5|auto_generated|mac_out2~DATAOUT14\,
	datad => VCC,
	cin => \Add4~25\,
	combout => \Add4~26_combout\,
	cout => \Add4~27\);

-- Location: LCCOMB_X37_Y22_N28
\Add4~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add4~28_combout\ = ((\Mult5|auto_generated|mac_out2~DATAOUT15\ $ (\Add3~28_combout\ $ (!\Add4~27\)))) # (GND)
-- \Add4~29\ = CARRY((\Mult5|auto_generated|mac_out2~DATAOUT15\ & ((\Add3~28_combout\) # (!\Add4~27\))) # (!\Mult5|auto_generated|mac_out2~DATAOUT15\ & (\Add3~28_combout\ & !\Add4~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult5|auto_generated|mac_out2~DATAOUT15\,
	datab => \Add3~28_combout\,
	datad => VCC,
	cin => \Add4~27\,
	combout => \Add4~28_combout\,
	cout => \Add4~29\);

-- Location: LCCOMB_X37_Y21_N0
\Add4~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add4~32_combout\ = ((\Mult5|auto_generated|mac_out2~DATAOUT17\ $ (\Add3~32_combout\ $ (!\Add4~31\)))) # (GND)
-- \Add4~33\ = CARRY((\Mult5|auto_generated|mac_out2~DATAOUT17\ & ((\Add3~32_combout\) # (!\Add4~31\))) # (!\Mult5|auto_generated|mac_out2~DATAOUT17\ & (\Add3~32_combout\ & !\Add4~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult5|auto_generated|mac_out2~DATAOUT17\,
	datab => \Add3~32_combout\,
	datad => VCC,
	cin => \Add4~31\,
	combout => \Add4~32_combout\,
	cout => \Add4~33\);

-- Location: LCCOMB_X37_Y20_N16
\Add6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add6~0_combout\ = (\data_pipeline[9][0]~_Duplicate_1_regout\ & (\Add1~0_combout\ $ (VCC))) # (!\data_pipeline[9][0]~_Duplicate_1_regout\ & (\Add1~0_combout\ & VCC))
-- \Add6~1\ = CARRY((\data_pipeline[9][0]~_Duplicate_1_regout\ & \Add1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_pipeline[9][0]~_Duplicate_1_regout\,
	datab => \Add1~0_combout\,
	datad => VCC,
	combout => \Add6~0_combout\,
	cout => \Add6~1\);

-- Location: LCCOMB_X37_Y20_N26
\Add6~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add6~10_combout\ = (\Add7~8_combout\ & ((\Add4~8_combout\ & (\Add6~9\ & VCC)) # (!\Add4~8_combout\ & (!\Add6~9\)))) # (!\Add7~8_combout\ & ((\Add4~8_combout\ & (!\Add6~9\)) # (!\Add4~8_combout\ & ((\Add6~9\) # (GND)))))
-- \Add6~11\ = CARRY((\Add7~8_combout\ & (!\Add4~8_combout\ & !\Add6~9\)) # (!\Add7~8_combout\ & ((!\Add6~9\) # (!\Add4~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~8_combout\,
	datab => \Add4~8_combout\,
	datad => VCC,
	cin => \Add6~9\,
	combout => \Add6~10_combout\,
	cout => \Add6~11\);

-- Location: LCCOMB_X37_Y19_N2
\Add6~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add6~18_combout\ = (\Add7~16_combout\ & ((\Add4~16_combout\ & (\Add6~17\ & VCC)) # (!\Add4~16_combout\ & (!\Add6~17\)))) # (!\Add7~16_combout\ & ((\Add4~16_combout\ & (!\Add6~17\)) # (!\Add4~16_combout\ & ((\Add6~17\) # (GND)))))
-- \Add6~19\ = CARRY((\Add7~16_combout\ & (!\Add4~16_combout\ & !\Add6~17\)) # (!\Add7~16_combout\ & ((!\Add6~17\) # (!\Add4~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~16_combout\,
	datab => \Add4~16_combout\,
	datad => VCC,
	cin => \Add6~17\,
	combout => \Add6~18_combout\,
	cout => \Add6~19\);

-- Location: LCCOMB_X37_Y19_N4
\Add6~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add6~20_combout\ = ((\Add7~18_combout\ $ (\Add4~18_combout\ $ (!\Add6~19\)))) # (GND)
-- \Add6~21\ = CARRY((\Add7~18_combout\ & ((\Add4~18_combout\) # (!\Add6~19\))) # (!\Add7~18_combout\ & (\Add4~18_combout\ & !\Add6~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~18_combout\,
	datab => \Add4~18_combout\,
	datad => VCC,
	cin => \Add6~19\,
	combout => \Add6~20_combout\,
	cout => \Add6~21\);

-- Location: LCCOMB_X37_Y19_N6
\Add6~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add6~22_combout\ = (\Add4~20_combout\ & ((\Add7~20_combout\ & (\Add6~21\ & VCC)) # (!\Add7~20_combout\ & (!\Add6~21\)))) # (!\Add4~20_combout\ & ((\Add7~20_combout\ & (!\Add6~21\)) # (!\Add7~20_combout\ & ((\Add6~21\) # (GND)))))
-- \Add6~23\ = CARRY((\Add4~20_combout\ & (!\Add7~20_combout\ & !\Add6~21\)) # (!\Add4~20_combout\ & ((!\Add6~21\) # (!\Add7~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~20_combout\,
	datab => \Add7~20_combout\,
	datad => VCC,
	cin => \Add6~21\,
	combout => \Add6~22_combout\,
	cout => \Add6~23\);

-- Location: LCCOMB_X37_Y19_N16
\Add6~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add6~32_combout\ = ((\Add7~30_combout\ $ (\Add4~30_combout\ $ (!\Add6~31\)))) # (GND)
-- \Add6~33\ = CARRY((\Add7~30_combout\ & ((\Add4~30_combout\) # (!\Add6~31\))) # (!\Add7~30_combout\ & (\Add4~30_combout\ & !\Add6~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~30_combout\,
	datab => \Add4~30_combout\,
	datad => VCC,
	cin => \Add6~31\,
	combout => \Add6~32_combout\,
	cout => \Add6~33\);

-- Location: LCCOMB_X38_Y19_N4
\Add7~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add7~34_combout\ = (\Mult9|auto_generated|mac_out2~DATAOUT18\ & ((\Mult8|auto_generated|mac_out2~DATAOUT18\ & (\Add7~33\ & VCC)) # (!\Mult8|auto_generated|mac_out2~DATAOUT18\ & (!\Add7~33\)))) # (!\Mult9|auto_generated|mac_out2~DATAOUT18\ & 
-- ((\Mult8|auto_generated|mac_out2~DATAOUT18\ & (!\Add7~33\)) # (!\Mult8|auto_generated|mac_out2~DATAOUT18\ & ((\Add7~33\) # (GND)))))
-- \Add7~35\ = CARRY((\Mult9|auto_generated|mac_out2~DATAOUT18\ & (!\Mult8|auto_generated|mac_out2~DATAOUT18\ & !\Add7~33\)) # (!\Mult9|auto_generated|mac_out2~DATAOUT18\ & ((!\Add7~33\) # (!\Mult8|auto_generated|mac_out2~DATAOUT18\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult9|auto_generated|mac_out2~DATAOUT18\,
	datab => \Mult8|auto_generated|mac_out2~DATAOUT18\,
	datad => VCC,
	cin => \Add7~33\,
	combout => \Add7~34_combout\,
	cout => \Add7~35\);

-- Location: LCCOMB_X38_Y21_N2
\Add3~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~34_combout\ = (\Mult4|auto_generated|mac_out2~DATAOUT18\ & ((\Add2~34_combout\ & (\Add3~33\ & VCC)) # (!\Add2~34_combout\ & (!\Add3~33\)))) # (!\Mult4|auto_generated|mac_out2~DATAOUT18\ & ((\Add2~34_combout\ & (!\Add3~33\)) # (!\Add2~34_combout\ & 
-- ((\Add3~33\) # (GND)))))
-- \Add3~35\ = CARRY((\Mult4|auto_generated|mac_out2~DATAOUT18\ & (!\Add2~34_combout\ & !\Add3~33\)) # (!\Mult4|auto_generated|mac_out2~DATAOUT18\ & ((!\Add3~33\) # (!\Add2~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult4|auto_generated|mac_out2~DATAOUT18\,
	datab => \Add2~34_combout\,
	datad => VCC,
	cin => \Add3~33\,
	combout => \Add3~34_combout\,
	cout => \Add3~35\);

-- Location: LCCOMB_X37_Y19_N20
\Add6~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add6~36_combout\ = ((\Add7~34_combout\ $ (\Add4~34_combout\ $ (!\Add6~35\)))) # (GND)
-- \Add6~37\ = CARRY((\Add7~34_combout\ & ((\Add4~34_combout\) # (!\Add6~35\))) # (!\Add7~34_combout\ & (\Add4~34_combout\ & !\Add6~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~34_combout\,
	datab => \Add4~34_combout\,
	datad => VCC,
	cin => \Add6~35\,
	combout => \Add6~36_combout\,
	cout => \Add6~37\);

-- Location: LCCOMB_X38_Y15_N8
\Add5~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add5~38_combout\ = (\Mult6|auto_generated|mac_out2~DATAOUT19\ & ((\Mult7|auto_generated|mac_out2~DATAOUT19\ & (\Add5~37\ & VCC)) # (!\Mult7|auto_generated|mac_out2~DATAOUT19\ & (!\Add5~37\)))) # (!\Mult6|auto_generated|mac_out2~DATAOUT19\ & 
-- ((\Mult7|auto_generated|mac_out2~DATAOUT19\ & (!\Add5~37\)) # (!\Mult7|auto_generated|mac_out2~DATAOUT19\ & ((\Add5~37\) # (GND)))))
-- \Add5~39\ = CARRY((\Mult6|auto_generated|mac_out2~DATAOUT19\ & (!\Mult7|auto_generated|mac_out2~DATAOUT19\ & !\Add5~37\)) # (!\Mult6|auto_generated|mac_out2~DATAOUT19\ & ((!\Add5~37\) # (!\Mult7|auto_generated|mac_out2~DATAOUT19\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult6|auto_generated|mac_out2~DATAOUT19\,
	datab => \Mult7|auto_generated|mac_out2~DATAOUT19\,
	datad => VCC,
	cin => \Add5~37\,
	combout => \Add5~38_combout\,
	cout => \Add5~39\);

-- Location: LCCOMB_X38_Y19_N6
\Add7~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add7~36_combout\ = ((\Mult8|auto_generated|mac_out2~DATAOUT19\ $ (\Mult9|auto_generated|mac_out2~DATAOUT19\ $ (!\Add7~35\)))) # (GND)
-- \Add7~37\ = CARRY((\Mult8|auto_generated|mac_out2~DATAOUT19\ & ((\Mult9|auto_generated|mac_out2~DATAOUT19\) # (!\Add7~35\))) # (!\Mult8|auto_generated|mac_out2~DATAOUT19\ & (\Mult9|auto_generated|mac_out2~DATAOUT19\ & !\Add7~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult8|auto_generated|mac_out2~DATAOUT19\,
	datab => \Mult9|auto_generated|mac_out2~DATAOUT19\,
	datad => VCC,
	cin => \Add7~35\,
	combout => \Add7~36_combout\,
	cout => \Add7~37\);

-- Location: LCCOMB_X40_Y17_N6
\Add0~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~36_combout\ = ((\Mult0|auto_generated|mac_out2~DATAOUT19\ $ (\Mult1|auto_generated|mac_out2~DATAOUT19\ $ (!\Add0~35\)))) # (GND)
-- \Add0~37\ = CARRY((\Mult0|auto_generated|mac_out2~DATAOUT19\ & ((\Mult1|auto_generated|mac_out2~DATAOUT19\) # (!\Add0~35\))) # (!\Mult0|auto_generated|mac_out2~DATAOUT19\ & (\Mult1|auto_generated|mac_out2~DATAOUT19\ & !\Add0~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out2~DATAOUT19\,
	datab => \Mult1|auto_generated|mac_out2~DATAOUT19\,
	datad => VCC,
	cin => \Add0~35\,
	combout => \Add0~36_combout\,
	cout => \Add0~37\);

-- Location: LCCOMB_X38_Y21_N4
\Add3~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~36_combout\ = ((\Mult4|auto_generated|mac_out2~DATAOUT19\ $ (\Add2~36_combout\ $ (!\Add3~35\)))) # (GND)
-- \Add3~37\ = CARRY((\Mult4|auto_generated|mac_out2~DATAOUT19\ & ((\Add2~36_combout\) # (!\Add3~35\))) # (!\Mult4|auto_generated|mac_out2~DATAOUT19\ & (\Add2~36_combout\ & !\Add3~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult4|auto_generated|mac_out2~DATAOUT19\,
	datab => \Add2~36_combout\,
	datad => VCC,
	cin => \Add3~35\,
	combout => \Add3~36_combout\,
	cout => \Add3~37\);

-- Location: LCCOMB_X37_Y21_N4
\Add4~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add4~36_combout\ = ((\Add3~36_combout\ $ (\Mult5|auto_generated|mac_out2~DATAOUT19\ $ (!\Add4~35\)))) # (GND)
-- \Add4~37\ = CARRY((\Add3~36_combout\ & ((\Mult5|auto_generated|mac_out2~DATAOUT19\) # (!\Add4~35\))) # (!\Add3~36_combout\ & (\Mult5|auto_generated|mac_out2~DATAOUT19\ & !\Add4~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~36_combout\,
	datab => \Mult5|auto_generated|mac_out2~DATAOUT19\,
	datad => VCC,
	cin => \Add4~35\,
	combout => \Add4~36_combout\,
	cout => \Add4~37\);

-- Location: LCCOMB_X38_Y15_N10
\Add5~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add5~40_combout\ = ((\Mult7|auto_generated|mac_out2~DATAOUT20\ $ (\Mult6|auto_generated|mac_out2~DATAOUT20\ $ (!\Add5~39\)))) # (GND)
-- \Add5~41\ = CARRY((\Mult7|auto_generated|mac_out2~DATAOUT20\ & ((\Mult6|auto_generated|mac_out2~DATAOUT20\) # (!\Add5~39\))) # (!\Mult7|auto_generated|mac_out2~DATAOUT20\ & (\Mult6|auto_generated|mac_out2~DATAOUT20\ & !\Add5~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult7|auto_generated|mac_out2~DATAOUT20\,
	datab => \Mult6|auto_generated|mac_out2~DATAOUT20\,
	datad => VCC,
	cin => \Add5~39\,
	combout => \Add5~40_combout\,
	cout => \Add5~41\);

-- Location: LCCOMB_X38_Y19_N8
\Add7~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add7~38_combout\ = (\Mult9|auto_generated|mac_out2~DATAOUT20\ & ((\Mult8|auto_generated|mac_out2~DATAOUT20\ & (\Add7~37\ & VCC)) # (!\Mult8|auto_generated|mac_out2~DATAOUT20\ & (!\Add7~37\)))) # (!\Mult9|auto_generated|mac_out2~DATAOUT20\ & 
-- ((\Mult8|auto_generated|mac_out2~DATAOUT20\ & (!\Add7~37\)) # (!\Mult8|auto_generated|mac_out2~DATAOUT20\ & ((\Add7~37\) # (GND)))))
-- \Add7~39\ = CARRY((\Mult9|auto_generated|mac_out2~DATAOUT20\ & (!\Mult8|auto_generated|mac_out2~DATAOUT20\ & !\Add7~37\)) # (!\Mult9|auto_generated|mac_out2~DATAOUT20\ & ((!\Add7~37\) # (!\Mult8|auto_generated|mac_out2~DATAOUT20\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult9|auto_generated|mac_out2~DATAOUT20\,
	datab => \Mult8|auto_generated|mac_out2~DATAOUT20\,
	datad => VCC,
	cin => \Add7~37\,
	combout => \Add7~38_combout\,
	cout => \Add7~39\);

-- Location: LCCOMB_X40_Y17_N8
\Add0~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~38_combout\ = (\Mult1|auto_generated|mac_out2~DATAOUT20\ & ((\Mult0|auto_generated|mac_out2~DATAOUT20\ & (\Add0~37\ & VCC)) # (!\Mult0|auto_generated|mac_out2~DATAOUT20\ & (!\Add0~37\)))) # (!\Mult1|auto_generated|mac_out2~DATAOUT20\ & 
-- ((\Mult0|auto_generated|mac_out2~DATAOUT20\ & (!\Add0~37\)) # (!\Mult0|auto_generated|mac_out2~DATAOUT20\ & ((\Add0~37\) # (GND)))))
-- \Add0~39\ = CARRY((\Mult1|auto_generated|mac_out2~DATAOUT20\ & (!\Mult0|auto_generated|mac_out2~DATAOUT20\ & !\Add0~37\)) # (!\Mult1|auto_generated|mac_out2~DATAOUT20\ & ((!\Add0~37\) # (!\Mult0|auto_generated|mac_out2~DATAOUT20\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|mac_out2~DATAOUT20\,
	datab => \Mult0|auto_generated|mac_out2~DATAOUT20\,
	datad => VCC,
	cin => \Add0~37\,
	combout => \Add0~38_combout\,
	cout => \Add0~39\);

-- Location: LCCOMB_X40_Y21_N8
\Add1~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~40_combout\ = ((\Add0~38_combout\ $ (\Mult2|auto_generated|mac_out2~DATAOUT20\ $ (!\Add1~39\)))) # (GND)
-- \Add1~41\ = CARRY((\Add0~38_combout\ & ((\Mult2|auto_generated|mac_out2~DATAOUT20\) # (!\Add1~39\))) # (!\Add0~38_combout\ & (\Mult2|auto_generated|mac_out2~DATAOUT20\ & !\Add1~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~38_combout\,
	datab => \Mult2|auto_generated|mac_out2~DATAOUT20\,
	datad => VCC,
	cin => \Add1~39\,
	combout => \Add1~40_combout\,
	cout => \Add1~41\);

-- Location: LCCOMB_X38_Y21_N6
\Add3~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~38_combout\ = (\Mult4|auto_generated|mac_out2~DATAOUT20\ & ((\Add2~38_combout\ & (\Add3~37\ & VCC)) # (!\Add2~38_combout\ & (!\Add3~37\)))) # (!\Mult4|auto_generated|mac_out2~DATAOUT20\ & ((\Add2~38_combout\ & (!\Add3~37\)) # (!\Add2~38_combout\ & 
-- ((\Add3~37\) # (GND)))))
-- \Add3~39\ = CARRY((\Mult4|auto_generated|mac_out2~DATAOUT20\ & (!\Add2~38_combout\ & !\Add3~37\)) # (!\Mult4|auto_generated|mac_out2~DATAOUT20\ & ((!\Add3~37\) # (!\Add2~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult4|auto_generated|mac_out2~DATAOUT20\,
	datab => \Add2~38_combout\,
	datad => VCC,
	cin => \Add3~37\,
	combout => \Add3~38_combout\,
	cout => \Add3~39\);

-- Location: LCCOMB_X38_Y19_N10
\Add7~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add7~40_combout\ = ((\Mult9|auto_generated|mac_out2~DATAOUT21\ $ (\Mult8|auto_generated|mac_out2~DATAOUT21\ $ (!\Add7~39\)))) # (GND)
-- \Add7~41\ = CARRY((\Mult9|auto_generated|mac_out2~DATAOUT21\ & ((\Mult8|auto_generated|mac_out2~DATAOUT21\) # (!\Add7~39\))) # (!\Mult9|auto_generated|mac_out2~DATAOUT21\ & (\Mult8|auto_generated|mac_out2~DATAOUT21\ & !\Add7~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult9|auto_generated|mac_out2~DATAOUT21\,
	datab => \Mult8|auto_generated|mac_out2~DATAOUT21\,
	datad => VCC,
	cin => \Add7~39\,
	combout => \Add7~40_combout\,
	cout => \Add7~41\);

-- Location: LCCOMB_X40_Y21_N10
\Add1~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~42_combout\ = (\Mult2|auto_generated|mac_out2~DATAOUT21\ & ((\Add0~40_combout\ & (\Add1~41\ & VCC)) # (!\Add0~40_combout\ & (!\Add1~41\)))) # (!\Mult2|auto_generated|mac_out2~DATAOUT21\ & ((\Add0~40_combout\ & (!\Add1~41\)) # (!\Add0~40_combout\ & 
-- ((\Add1~41\) # (GND)))))
-- \Add1~43\ = CARRY((\Mult2|auto_generated|mac_out2~DATAOUT21\ & (!\Add0~40_combout\ & !\Add1~41\)) # (!\Mult2|auto_generated|mac_out2~DATAOUT21\ & ((!\Add1~41\) # (!\Add0~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult2|auto_generated|mac_out2~DATAOUT21\,
	datab => \Add0~40_combout\,
	datad => VCC,
	cin => \Add1~41\,
	combout => \Add1~42_combout\,
	cout => \Add1~43\);

-- Location: LCCOMB_X37_Y19_N26
\Add6~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add6~42_combout\ = (\Add7~40_combout\ & ((\Add4~40_combout\ & (\Add6~41\ & VCC)) # (!\Add4~40_combout\ & (!\Add6~41\)))) # (!\Add7~40_combout\ & ((\Add4~40_combout\ & (!\Add6~41\)) # (!\Add4~40_combout\ & ((\Add6~41\) # (GND)))))
-- \Add6~43\ = CARRY((\Add7~40_combout\ & (!\Add4~40_combout\ & !\Add6~41\)) # (!\Add7~40_combout\ & ((!\Add6~41\) # (!\Add4~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~40_combout\,
	datab => \Add4~40_combout\,
	datad => VCC,
	cin => \Add6~41\,
	combout => \Add6~42_combout\,
	cout => \Add6~43\);

-- Location: LCCOMB_X38_Y15_N14
\Add5~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add5~44_combout\ = ((\Mult7|auto_generated|mac_out2~DATAOUT22\ $ (\Mult6|auto_generated|mac_out2~DATAOUT22\ $ (!\Add5~43\)))) # (GND)
-- \Add5~45\ = CARRY((\Mult7|auto_generated|mac_out2~DATAOUT22\ & ((\Mult6|auto_generated|mac_out2~DATAOUT22\) # (!\Add5~43\))) # (!\Mult7|auto_generated|mac_out2~DATAOUT22\ & (\Mult6|auto_generated|mac_out2~DATAOUT22\ & !\Add5~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult7|auto_generated|mac_out2~DATAOUT22\,
	datab => \Mult6|auto_generated|mac_out2~DATAOUT22\,
	datad => VCC,
	cin => \Add5~43\,
	combout => \Add5~44_combout\,
	cout => \Add5~45\);

-- Location: LCCOMB_X38_Y19_N12
\Add7~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add7~42_combout\ = (\Mult9|auto_generated|mac_out2~DATAOUT22\ & ((\Mult8|auto_generated|mac_out2~DATAOUT22\ & (\Add7~41\ & VCC)) # (!\Mult8|auto_generated|mac_out2~DATAOUT22\ & (!\Add7~41\)))) # (!\Mult9|auto_generated|mac_out2~DATAOUT22\ & 
-- ((\Mult8|auto_generated|mac_out2~DATAOUT22\ & (!\Add7~41\)) # (!\Mult8|auto_generated|mac_out2~DATAOUT22\ & ((\Add7~41\) # (GND)))))
-- \Add7~43\ = CARRY((\Mult9|auto_generated|mac_out2~DATAOUT22\ & (!\Mult8|auto_generated|mac_out2~DATAOUT22\ & !\Add7~41\)) # (!\Mult9|auto_generated|mac_out2~DATAOUT22\ & ((!\Add7~41\) # (!\Mult8|auto_generated|mac_out2~DATAOUT22\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult9|auto_generated|mac_out2~DATAOUT22\,
	datab => \Mult8|auto_generated|mac_out2~DATAOUT22\,
	datad => VCC,
	cin => \Add7~41\,
	combout => \Add7~42_combout\,
	cout => \Add7~43\);

-- Location: LCCOMB_X40_Y17_N12
\Add0~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~42_combout\ = (\Mult1|auto_generated|mac_out2~DATAOUT22\ & ((\Mult0|auto_generated|mac_out2~DATAOUT22\ & (\Add0~41\ & VCC)) # (!\Mult0|auto_generated|mac_out2~DATAOUT22\ & (!\Add0~41\)))) # (!\Mult1|auto_generated|mac_out2~DATAOUT22\ & 
-- ((\Mult0|auto_generated|mac_out2~DATAOUT22\ & (!\Add0~41\)) # (!\Mult0|auto_generated|mac_out2~DATAOUT22\ & ((\Add0~41\) # (GND)))))
-- \Add0~43\ = CARRY((\Mult1|auto_generated|mac_out2~DATAOUT22\ & (!\Mult0|auto_generated|mac_out2~DATAOUT22\ & !\Add0~41\)) # (!\Mult1|auto_generated|mac_out2~DATAOUT22\ & ((!\Add0~41\) # (!\Mult0|auto_generated|mac_out2~DATAOUT22\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|mac_out2~DATAOUT22\,
	datab => \Mult0|auto_generated|mac_out2~DATAOUT22\,
	datad => VCC,
	cin => \Add0~41\,
	combout => \Add0~42_combout\,
	cout => \Add0~43\);

-- Location: LCCOMB_X40_Y21_N12
\Add1~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~44_combout\ = ((\Add0~42_combout\ $ (\Mult2|auto_generated|mac_out2~DATAOUT22\ $ (!\Add1~43\)))) # (GND)
-- \Add1~45\ = CARRY((\Add0~42_combout\ & ((\Mult2|auto_generated|mac_out2~DATAOUT22\) # (!\Add1~43\))) # (!\Add0~42_combout\ & (\Mult2|auto_generated|mac_out2~DATAOUT22\ & !\Add1~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~42_combout\,
	datab => \Mult2|auto_generated|mac_out2~DATAOUT22\,
	datad => VCC,
	cin => \Add1~43\,
	combout => \Add1~44_combout\,
	cout => \Add1~45\);

-- Location: LCCOMB_X41_Y21_N10
\Add2~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~42_combout\ = (\Add1~44_combout\ & ((\Mult3|auto_generated|mac_out2~DATAOUT22\ & (\Add2~41\ & VCC)) # (!\Mult3|auto_generated|mac_out2~DATAOUT22\ & (!\Add2~41\)))) # (!\Add1~44_combout\ & ((\Mult3|auto_generated|mac_out2~DATAOUT22\ & (!\Add2~41\)) # 
-- (!\Mult3|auto_generated|mac_out2~DATAOUT22\ & ((\Add2~41\) # (GND)))))
-- \Add2~43\ = CARRY((\Add1~44_combout\ & (!\Mult3|auto_generated|mac_out2~DATAOUT22\ & !\Add2~41\)) # (!\Add1~44_combout\ & ((!\Add2~41\) # (!\Mult3|auto_generated|mac_out2~DATAOUT22\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~44_combout\,
	datab => \Mult3|auto_generated|mac_out2~DATAOUT22\,
	datad => VCC,
	cin => \Add2~41\,
	combout => \Add2~42_combout\,
	cout => \Add2~43\);

-- Location: LCCOMB_X38_Y15_N16
\Add5~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add5~46_combout\ = (\Mult7|auto_generated|mac_out2~DATAOUT23\ & ((\Mult6|auto_generated|mac_out2~DATAOUT23\ & (\Add5~45\ & VCC)) # (!\Mult6|auto_generated|mac_out2~DATAOUT23\ & (!\Add5~45\)))) # (!\Mult7|auto_generated|mac_out2~DATAOUT23\ & 
-- ((\Mult6|auto_generated|mac_out2~DATAOUT23\ & (!\Add5~45\)) # (!\Mult6|auto_generated|mac_out2~DATAOUT23\ & ((\Add5~45\) # (GND)))))
-- \Add5~47\ = CARRY((\Mult7|auto_generated|mac_out2~DATAOUT23\ & (!\Mult6|auto_generated|mac_out2~DATAOUT23\ & !\Add5~45\)) # (!\Mult7|auto_generated|mac_out2~DATAOUT23\ & ((!\Add5~45\) # (!\Mult6|auto_generated|mac_out2~DATAOUT23\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult7|auto_generated|mac_out2~DATAOUT23\,
	datab => \Mult6|auto_generated|mac_out2~DATAOUT23\,
	datad => VCC,
	cin => \Add5~45\,
	combout => \Add5~46_combout\,
	cout => \Add5~47\);

-- Location: LCCOMB_X38_Y19_N14
\Add7~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add7~44_combout\ = ((\Mult9|auto_generated|mac_out2~DATAOUT23\ $ (\Mult8|auto_generated|mac_out2~DATAOUT23\ $ (!\Add7~43\)))) # (GND)
-- \Add7~45\ = CARRY((\Mult9|auto_generated|mac_out2~DATAOUT23\ & ((\Mult8|auto_generated|mac_out2~DATAOUT23\) # (!\Add7~43\))) # (!\Mult9|auto_generated|mac_out2~DATAOUT23\ & (\Mult8|auto_generated|mac_out2~DATAOUT23\ & !\Add7~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult9|auto_generated|mac_out2~DATAOUT23\,
	datab => \Mult8|auto_generated|mac_out2~DATAOUT23\,
	datad => VCC,
	cin => \Add7~43\,
	combout => \Add7~44_combout\,
	cout => \Add7~45\);

-- Location: LCCOMB_X40_Y21_N14
\Add1~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~46_combout\ = (\Mult2|auto_generated|mac_out2~DATAOUT23\ & ((\Add0~44_combout\ & (\Add1~45\ & VCC)) # (!\Add0~44_combout\ & (!\Add1~45\)))) # (!\Mult2|auto_generated|mac_out2~DATAOUT23\ & ((\Add0~44_combout\ & (!\Add1~45\)) # (!\Add0~44_combout\ & 
-- ((\Add1~45\) # (GND)))))
-- \Add1~47\ = CARRY((\Mult2|auto_generated|mac_out2~DATAOUT23\ & (!\Add0~44_combout\ & !\Add1~45\)) # (!\Mult2|auto_generated|mac_out2~DATAOUT23\ & ((!\Add1~45\) # (!\Add0~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult2|auto_generated|mac_out2~DATAOUT23\,
	datab => \Add0~44_combout\,
	datad => VCC,
	cin => \Add1~45\,
	combout => \Add1~46_combout\,
	cout => \Add1~47\);

-- Location: LCCOMB_X38_Y15_N18
\Add5~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add5~48_combout\ = ((\Mult7|auto_generated|mac_out2~DATAOUT24\ $ (\Mult6|auto_generated|mac_out2~DATAOUT24\ $ (!\Add5~47\)))) # (GND)
-- \Add5~49\ = CARRY((\Mult7|auto_generated|mac_out2~DATAOUT24\ & ((\Mult6|auto_generated|mac_out2~DATAOUT24\) # (!\Add5~47\))) # (!\Mult7|auto_generated|mac_out2~DATAOUT24\ & (\Mult6|auto_generated|mac_out2~DATAOUT24\ & !\Add5~47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult7|auto_generated|mac_out2~DATAOUT24\,
	datab => \Mult6|auto_generated|mac_out2~DATAOUT24\,
	datad => VCC,
	cin => \Add5~47\,
	combout => \Add5~48_combout\,
	cout => \Add5~49\);

-- Location: LCCOMB_X38_Y19_N16
\Add7~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add7~46_combout\ = (\Mult9|auto_generated|mac_out2~DATAOUT24\ & ((\Mult8|auto_generated|mac_out2~DATAOUT24\ & (\Add7~45\ & VCC)) # (!\Mult8|auto_generated|mac_out2~DATAOUT24\ & (!\Add7~45\)))) # (!\Mult9|auto_generated|mac_out2~DATAOUT24\ & 
-- ((\Mult8|auto_generated|mac_out2~DATAOUT24\ & (!\Add7~45\)) # (!\Mult8|auto_generated|mac_out2~DATAOUT24\ & ((\Add7~45\) # (GND)))))
-- \Add7~47\ = CARRY((\Mult9|auto_generated|mac_out2~DATAOUT24\ & (!\Mult8|auto_generated|mac_out2~DATAOUT24\ & !\Add7~45\)) # (!\Mult9|auto_generated|mac_out2~DATAOUT24\ & ((!\Add7~45\) # (!\Mult8|auto_generated|mac_out2~DATAOUT24\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult9|auto_generated|mac_out2~DATAOUT24\,
	datab => \Mult8|auto_generated|mac_out2~DATAOUT24\,
	datad => VCC,
	cin => \Add7~45\,
	combout => \Add7~46_combout\,
	cout => \Add7~47\);

-- Location: LCCOMB_X40_Y17_N16
\Add0~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~46_combout\ = (\Mult0|auto_generated|mac_out2~DATAOUT24\ & ((\Mult1|auto_generated|mac_out2~DATAOUT24\ & (\Add0~45\ & VCC)) # (!\Mult1|auto_generated|mac_out2~DATAOUT24\ & (!\Add0~45\)))) # (!\Mult0|auto_generated|mac_out2~DATAOUT24\ & 
-- ((\Mult1|auto_generated|mac_out2~DATAOUT24\ & (!\Add0~45\)) # (!\Mult1|auto_generated|mac_out2~DATAOUT24\ & ((\Add0~45\) # (GND)))))
-- \Add0~47\ = CARRY((\Mult0|auto_generated|mac_out2~DATAOUT24\ & (!\Mult1|auto_generated|mac_out2~DATAOUT24\ & !\Add0~45\)) # (!\Mult0|auto_generated|mac_out2~DATAOUT24\ & ((!\Add0~45\) # (!\Mult1|auto_generated|mac_out2~DATAOUT24\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out2~DATAOUT24\,
	datab => \Mult1|auto_generated|mac_out2~DATAOUT24\,
	datad => VCC,
	cin => \Add0~45\,
	combout => \Add0~46_combout\,
	cout => \Add0~47\);

-- Location: LCCOMB_X38_Y19_N18
\Add7~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add7~48_combout\ = ((\Mult9|auto_generated|mac_out2~DATAOUT25\ $ (\Mult8|auto_generated|mac_out2~DATAOUT25\ $ (!\Add7~47\)))) # (GND)
-- \Add7~49\ = CARRY((\Mult9|auto_generated|mac_out2~DATAOUT25\ & ((\Mult8|auto_generated|mac_out2~DATAOUT25\) # (!\Add7~47\))) # (!\Mult9|auto_generated|mac_out2~DATAOUT25\ & (\Mult8|auto_generated|mac_out2~DATAOUT25\ & !\Add7~47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult9|auto_generated|mac_out2~DATAOUT25\,
	datab => \Mult8|auto_generated|mac_out2~DATAOUT25\,
	datad => VCC,
	cin => \Add7~47\,
	combout => \Add7~48_combout\,
	cout => \Add7~49\);

-- Location: LCCOMB_X40_Y17_N18
\Add0~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~48_combout\ = ((\Mult0|auto_generated|mac_out2~DATAOUT25\ $ (\Mult1|auto_generated|mac_out2~DATAOUT25\ $ (!\Add0~47\)))) # (GND)
-- \Add0~49\ = CARRY((\Mult0|auto_generated|mac_out2~DATAOUT25\ & ((\Mult1|auto_generated|mac_out2~DATAOUT25\) # (!\Add0~47\))) # (!\Mult0|auto_generated|mac_out2~DATAOUT25\ & (\Mult1|auto_generated|mac_out2~DATAOUT25\ & !\Add0~47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out2~DATAOUT25\,
	datab => \Mult1|auto_generated|mac_out2~DATAOUT25\,
	datad => VCC,
	cin => \Add0~47\,
	combout => \Add0~48_combout\,
	cout => \Add0~49\);

-- Location: LCCOMB_X38_Y21_N16
\Add3~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~48_combout\ = ((\Mult4|auto_generated|mac_out2~DATAOUT25\ $ (\Add2~48_combout\ $ (!\Add3~47\)))) # (GND)
-- \Add3~49\ = CARRY((\Mult4|auto_generated|mac_out2~DATAOUT25\ & ((\Add2~48_combout\) # (!\Add3~47\))) # (!\Mult4|auto_generated|mac_out2~DATAOUT25\ & (\Add2~48_combout\ & !\Add3~47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult4|auto_generated|mac_out2~DATAOUT25\,
	datab => \Add2~48_combout\,
	datad => VCC,
	cin => \Add3~47\,
	combout => \Add3~48_combout\,
	cout => \Add3~49\);

-- Location: LCCOMB_X37_Y18_N2
\Add6~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add6~50_combout\ = (\Add7~48_combout\ & ((\Add4~48_combout\ & (\Add6~49\ & VCC)) # (!\Add4~48_combout\ & (!\Add6~49\)))) # (!\Add7~48_combout\ & ((\Add4~48_combout\ & (!\Add6~49\)) # (!\Add4~48_combout\ & ((\Add6~49\) # (GND)))))
-- \Add6~51\ = CARRY((\Add7~48_combout\ & (!\Add4~48_combout\ & !\Add6~49\)) # (!\Add7~48_combout\ & ((!\Add6~49\) # (!\Add4~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~48_combout\,
	datab => \Add4~48_combout\,
	datad => VCC,
	cin => \Add6~49\,
	combout => \Add6~50_combout\,
	cout => \Add6~51\);

-- Location: LCCOMB_X38_Y19_N20
\Add7~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add7~50_combout\ = (\Mult9|auto_generated|mac_out2~DATAOUT26\ & ((\Mult8|auto_generated|mac_out2~DATAOUT26\ & (\Add7~49\ & VCC)) # (!\Mult8|auto_generated|mac_out2~DATAOUT26\ & (!\Add7~49\)))) # (!\Mult9|auto_generated|mac_out2~DATAOUT26\ & 
-- ((\Mult8|auto_generated|mac_out2~DATAOUT26\ & (!\Add7~49\)) # (!\Mult8|auto_generated|mac_out2~DATAOUT26\ & ((\Add7~49\) # (GND)))))
-- \Add7~51\ = CARRY((\Mult9|auto_generated|mac_out2~DATAOUT26\ & (!\Mult8|auto_generated|mac_out2~DATAOUT26\ & !\Add7~49\)) # (!\Mult9|auto_generated|mac_out2~DATAOUT26\ & ((!\Add7~49\) # (!\Mult8|auto_generated|mac_out2~DATAOUT26\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult9|auto_generated|mac_out2~DATAOUT26\,
	datab => \Mult8|auto_generated|mac_out2~DATAOUT26\,
	datad => VCC,
	cin => \Add7~49\,
	combout => \Add7~50_combout\,
	cout => \Add7~51\);

-- Location: LCCOMB_X40_Y17_N20
\Add0~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~50_combout\ = (\Mult0|auto_generated|mac_out2~DATAOUT26\ & ((\Mult1|auto_generated|mac_out2~DATAOUT26\ & (\Add0~49\ & VCC)) # (!\Mult1|auto_generated|mac_out2~DATAOUT26\ & (!\Add0~49\)))) # (!\Mult0|auto_generated|mac_out2~DATAOUT26\ & 
-- ((\Mult1|auto_generated|mac_out2~DATAOUT26\ & (!\Add0~49\)) # (!\Mult1|auto_generated|mac_out2~DATAOUT26\ & ((\Add0~49\) # (GND)))))
-- \Add0~51\ = CARRY((\Mult0|auto_generated|mac_out2~DATAOUT26\ & (!\Mult1|auto_generated|mac_out2~DATAOUT26\ & !\Add0~49\)) # (!\Mult0|auto_generated|mac_out2~DATAOUT26\ & ((!\Add0~49\) # (!\Mult1|auto_generated|mac_out2~DATAOUT26\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out2~DATAOUT26\,
	datab => \Mult1|auto_generated|mac_out2~DATAOUT26\,
	datad => VCC,
	cin => \Add0~49\,
	combout => \Add0~50_combout\,
	cout => \Add0~51\);

-- Location: LCCOMB_X40_Y21_N20
\Add1~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~52_combout\ = ((\Add0~50_combout\ $ (\Mult2|auto_generated|mac_out2~DATAOUT26\ $ (!\Add1~51\)))) # (GND)
-- \Add1~53\ = CARRY((\Add0~50_combout\ & ((\Mult2|auto_generated|mac_out2~DATAOUT26\) # (!\Add1~51\))) # (!\Add0~50_combout\ & (\Mult2|auto_generated|mac_out2~DATAOUT26\ & !\Add1~51\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~50_combout\,
	datab => \Mult2|auto_generated|mac_out2~DATAOUT26\,
	datad => VCC,
	cin => \Add1~51\,
	combout => \Add1~52_combout\,
	cout => \Add1~53\);

-- Location: LCCOMB_X37_Y18_N4
\Add6~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add6~52_combout\ = ((\Add7~50_combout\ $ (\Add4~50_combout\ $ (!\Add6~51\)))) # (GND)
-- \Add6~53\ = CARRY((\Add7~50_combout\ & ((\Add4~50_combout\) # (!\Add6~51\))) # (!\Add7~50_combout\ & (\Add4~50_combout\ & !\Add6~51\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~50_combout\,
	datab => \Add4~50_combout\,
	datad => VCC,
	cin => \Add6~51\,
	combout => \Add6~52_combout\,
	cout => \Add6~53\);

-- Location: LCCOMB_X38_Y15_N24
\Add5~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add5~54_combout\ = (\Mult7|auto_generated|mac_out2~DATAOUT27\ & ((\Mult6|auto_generated|mac_out2~DATAOUT27\ & (\Add5~53\ & VCC)) # (!\Mult6|auto_generated|mac_out2~DATAOUT27\ & (!\Add5~53\)))) # (!\Mult7|auto_generated|mac_out2~DATAOUT27\ & 
-- ((\Mult6|auto_generated|mac_out2~DATAOUT27\ & (!\Add5~53\)) # (!\Mult6|auto_generated|mac_out2~DATAOUT27\ & ((\Add5~53\) # (GND)))))
-- \Add5~55\ = CARRY((\Mult7|auto_generated|mac_out2~DATAOUT27\ & (!\Mult6|auto_generated|mac_out2~DATAOUT27\ & !\Add5~53\)) # (!\Mult7|auto_generated|mac_out2~DATAOUT27\ & ((!\Add5~53\) # (!\Mult6|auto_generated|mac_out2~DATAOUT27\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult7|auto_generated|mac_out2~DATAOUT27\,
	datab => \Mult6|auto_generated|mac_out2~DATAOUT27\,
	datad => VCC,
	cin => \Add5~53\,
	combout => \Add5~54_combout\,
	cout => \Add5~55\);

-- Location: LCCOMB_X38_Y19_N22
\Add7~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add7~52_combout\ = ((\Mult9|auto_generated|mac_out2~DATAOUT27\ $ (\Mult8|auto_generated|mac_out2~DATAOUT27\ $ (!\Add7~51\)))) # (GND)
-- \Add7~53\ = CARRY((\Mult9|auto_generated|mac_out2~DATAOUT27\ & ((\Mult8|auto_generated|mac_out2~DATAOUT27\) # (!\Add7~51\))) # (!\Mult9|auto_generated|mac_out2~DATAOUT27\ & (\Mult8|auto_generated|mac_out2~DATAOUT27\ & !\Add7~51\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult9|auto_generated|mac_out2~DATAOUT27\,
	datab => \Mult8|auto_generated|mac_out2~DATAOUT27\,
	datad => VCC,
	cin => \Add7~51\,
	combout => \Add7~52_combout\,
	cout => \Add7~53\);

-- Location: LCCOMB_X37_Y18_N6
\Add6~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add6~54_combout\ = (\Add7~52_combout\ & ((\Add4~52_combout\ & (\Add6~53\ & VCC)) # (!\Add4~52_combout\ & (!\Add6~53\)))) # (!\Add7~52_combout\ & ((\Add4~52_combout\ & (!\Add6~53\)) # (!\Add4~52_combout\ & ((\Add6~53\) # (GND)))))
-- \Add6~55\ = CARRY((\Add7~52_combout\ & (!\Add4~52_combout\ & !\Add6~53\)) # (!\Add7~52_combout\ & ((!\Add6~53\) # (!\Add4~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~52_combout\,
	datab => \Add4~52_combout\,
	datad => VCC,
	cin => \Add6~53\,
	combout => \Add6~54_combout\,
	cout => \Add6~55\);

-- Location: LCCOMB_X38_Y15_N26
\Add5~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add5~56_combout\ = ((\Mult6|auto_generated|mac_out2~DATAOUT28\ $ (\Mult7|auto_generated|mac_out2~DATAOUT28\ $ (!\Add5~55\)))) # (GND)
-- \Add5~57\ = CARRY((\Mult6|auto_generated|mac_out2~DATAOUT28\ & ((\Mult7|auto_generated|mac_out2~DATAOUT28\) # (!\Add5~55\))) # (!\Mult6|auto_generated|mac_out2~DATAOUT28\ & (\Mult7|auto_generated|mac_out2~DATAOUT28\ & !\Add5~55\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult6|auto_generated|mac_out2~DATAOUT28\,
	datab => \Mult7|auto_generated|mac_out2~DATAOUT28\,
	datad => VCC,
	cin => \Add5~55\,
	combout => \Add5~56_combout\,
	cout => \Add5~57\);

-- Location: LCCOMB_X38_Y19_N24
\Add7~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add7~54_combout\ = (\Mult8|auto_generated|mac_out2~DATAOUT28\ & ((\Mult9|auto_generated|mac_out2~DATAOUT28\ & (\Add7~53\ & VCC)) # (!\Mult9|auto_generated|mac_out2~DATAOUT28\ & (!\Add7~53\)))) # (!\Mult8|auto_generated|mac_out2~DATAOUT28\ & 
-- ((\Mult9|auto_generated|mac_out2~DATAOUT28\ & (!\Add7~53\)) # (!\Mult9|auto_generated|mac_out2~DATAOUT28\ & ((\Add7~53\) # (GND)))))
-- \Add7~55\ = CARRY((\Mult8|auto_generated|mac_out2~DATAOUT28\ & (!\Mult9|auto_generated|mac_out2~DATAOUT28\ & !\Add7~53\)) # (!\Mult8|auto_generated|mac_out2~DATAOUT28\ & ((!\Add7~53\) # (!\Mult9|auto_generated|mac_out2~DATAOUT28\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult8|auto_generated|mac_out2~DATAOUT28\,
	datab => \Mult9|auto_generated|mac_out2~DATAOUT28\,
	datad => VCC,
	cin => \Add7~53\,
	combout => \Add7~54_combout\,
	cout => \Add7~55\);

-- Location: LCCOMB_X38_Y15_N28
\Add5~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add5~58_combout\ = (\Mult7|auto_generated|mac_out2~DATAOUT29\ & ((\Mult6|auto_generated|mac_out2~DATAOUT29\ & (\Add5~57\ & VCC)) # (!\Mult6|auto_generated|mac_out2~DATAOUT29\ & (!\Add5~57\)))) # (!\Mult7|auto_generated|mac_out2~DATAOUT29\ & 
-- ((\Mult6|auto_generated|mac_out2~DATAOUT29\ & (!\Add5~57\)) # (!\Mult6|auto_generated|mac_out2~DATAOUT29\ & ((\Add5~57\) # (GND)))))
-- \Add5~59\ = CARRY((\Mult7|auto_generated|mac_out2~DATAOUT29\ & (!\Mult6|auto_generated|mac_out2~DATAOUT29\ & !\Add5~57\)) # (!\Mult7|auto_generated|mac_out2~DATAOUT29\ & ((!\Add5~57\) # (!\Mult6|auto_generated|mac_out2~DATAOUT29\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult7|auto_generated|mac_out2~DATAOUT29\,
	datab => \Mult6|auto_generated|mac_out2~DATAOUT29\,
	datad => VCC,
	cin => \Add5~57\,
	combout => \Add5~58_combout\,
	cout => \Add5~59\);

-- Location: LCCOMB_X38_Y19_N26
\Add7~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add7~56_combout\ = (\Mult8|auto_generated|mac_out2~DATAOUT29\ & (\Add7~55\ $ (GND))) # (!\Mult8|auto_generated|mac_out2~DATAOUT29\ & (!\Add7~55\ & VCC))
-- \Add7~57\ = CARRY((\Mult8|auto_generated|mac_out2~DATAOUT29\ & !\Add7~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult8|auto_generated|mac_out2~DATAOUT29\,
	datad => VCC,
	cin => \Add7~55\,
	combout => \Add7~56_combout\,
	cout => \Add7~57\);

-- Location: LCCOMB_X38_Y15_N30
\Add5~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add5~60_combout\ = !\Add5~59\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Add5~59\,
	combout => \Add5~60_combout\);

-- Location: LCCOMB_X38_Y19_N28
\Add7~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add7~58_combout\ = \Add7~57\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Add7~57\,
	combout => \Add7~58_combout\);

-- Location: LCCOMB_X40_Y21_N28
\Add1~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~60_combout\ = (\Add0~58_combout\ & (\Add1~59\ $ (GND))) # (!\Add0~58_combout\ & (!\Add1~59\ & VCC))
-- \Add1~61\ = CARRY((\Add0~58_combout\ & !\Add1~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add0~58_combout\,
	datad => VCC,
	cin => \Add1~59\,
	combout => \Add1~60_combout\,
	cout => \Add1~61\);

-- Location: LCCOMB_X38_Y21_N26
\Add3~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~58_combout\ = (\Mult4|auto_generated|mac_out2~DATAOUT30\ & ((\Add2~58_combout\ & (\Add3~57\ & VCC)) # (!\Add2~58_combout\ & (!\Add3~57\)))) # (!\Mult4|auto_generated|mac_out2~DATAOUT30\ & ((\Add2~58_combout\ & (!\Add3~57\)) # (!\Add2~58_combout\ & 
-- ((\Add3~57\) # (GND)))))
-- \Add3~59\ = CARRY((\Mult4|auto_generated|mac_out2~DATAOUT30\ & (!\Add2~58_combout\ & !\Add3~57\)) # (!\Mult4|auto_generated|mac_out2~DATAOUT30\ & ((!\Add3~57\) # (!\Add2~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult4|auto_generated|mac_out2~DATAOUT30\,
	datab => \Add2~58_combout\,
	datad => VCC,
	cin => \Add3~57\,
	combout => \Add3~58_combout\,
	cout => \Add3~59\);

-- Location: LCCOMB_X40_Y21_N30
\Add1~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~62_combout\ = \Add1~61\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Add1~61\,
	combout => \Add1~62_combout\);

-- Location: LCCOMB_X41_Y21_N28
\Add2~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~60_combout\ = (\Add1~62_combout\ & (\Add2~59\ $ (GND))) # (!\Add1~62_combout\ & (!\Add2~59\ & VCC))
-- \Add2~61\ = CARRY((\Add1~62_combout\ & !\Add2~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~62_combout\,
	datad => VCC,
	cin => \Add2~59\,
	combout => \Add2~60_combout\,
	cout => \Add2~61\);

-- Location: LCCOMB_X37_Y21_N28
\Add4~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add4~60_combout\ = (\Add3~60_combout\ & (\Add4~59\ $ (GND))) # (!\Add3~60_combout\ & (!\Add4~59\ & VCC))
-- \Add4~61\ = CARRY((\Add3~60_combout\ & !\Add4~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add3~60_combout\,
	datad => VCC,
	cin => \Add4~59\,
	combout => \Add4~60_combout\,
	cout => \Add4~61\);

-- Location: LCFF_X37_Y20_N17
\data_pipeline[9][0]~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \data_pipeline[8][0]~_Duplicate_1_regout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_pipeline[9][0]~_Duplicate_1_regout\);

-- Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : cycloneii_io
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
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: CLKCTRL_G2
\clk~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~clkctrl_outclk\);

-- Location: LCCOMB_X40_Y20_N14
\~GND\ : cycloneii_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: PIN_N1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\reset_n~I\ : cycloneii_io
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
	padio => ww_reset_n,
	combout => \reset_n~combout\);

-- Location: CLKCTRL_G1
\reset_n~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset_n~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset_n~clkctrl_outclk\);

-- Location: PIN_R25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data[0]~I\ : cycloneii_io
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
	padio => ww_data(0),
	combout => \data~combout\(0));

-- Location: LCFF_X40_Y18_N3
\data_pipeline[0][0]~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \data~combout\(0),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_pipeline[0][0]~_Duplicate_1_regout\);

-- Location: LCFF_X40_Y22_N21
\data_pipeline[1][0]~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \data_pipeline[0][0]~_Duplicate_1_regout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_pipeline[1][0]~_Duplicate_1_regout\);

-- Location: LCFF_X40_Y22_N1
\data_pipeline[2][0]~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \data_pipeline[1][0]~_Duplicate_1_regout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_pipeline[2][0]~_Duplicate_1_regout\);

-- Location: LCFF_X41_Y22_N1
\data_pipeline[3][0]~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \data_pipeline[2][0]~_Duplicate_1_regout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_pipeline[3][0]~_Duplicate_1_regout\);

-- Location: LCFF_X38_Y22_N1
\data_pipeline[4][0]~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \data_pipeline[3][0]~_Duplicate_1_regout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_pipeline[4][0]~_Duplicate_1_regout\);

-- Location: LCFF_X38_Y22_N29
\data_pipeline[5][0]~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \data_pipeline[4][0]~_Duplicate_1_regout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_pipeline[5][0]~_Duplicate_1_regout\);

-- Location: LCFF_X38_Y16_N1
\data_pipeline[6][0]~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \data_pipeline[5][0]~_Duplicate_1_regout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_pipeline[6][0]~_Duplicate_1_regout\);

-- Location: LCFF_X38_Y16_N3
\data_pipeline[7][0]~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \data_pipeline[6][0]~_Duplicate_1_regout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_pipeline[7][0]~_Duplicate_1_regout\);

-- Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data[1]~I\ : cycloneii_io
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
	padio => ww_data(1),
	combout => \data~combout\(1));

-- Location: LCFF_X40_Y18_N5
\data_pipeline[0][1]~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \data~combout\(1),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_pipeline[0][1]~_Duplicate_1_regout\);

-- Location: LCFF_X40_Y18_N27
\data_pipeline[1][1]~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \data_pipeline[0][1]~_Duplicate_1_regout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_pipeline[1][1]~_Duplicate_1_regout\);

-- Location: LCFF_X40_Y18_N21
\data_pipeline[2][1]~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \data_pipeline[1][1]~_Duplicate_1_regout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_pipeline[2][1]~_Duplicate_1_regout\);

-- Location: LCFF_X38_Y22_N21
\data_pipeline[3][1]~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \data_pipeline[2][1]~_Duplicate_1_regout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_pipeline[3][1]~_Duplicate_1_regout\);

-- Location: LCFF_X38_Y22_N3
\data_pipeline[4][1]~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \data_pipeline[3][1]~_Duplicate_1_regout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_pipeline[4][1]~_Duplicate_1_regout\);

-- Location: LCFF_X40_Y19_N7
\data_pipeline[5][1]~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \data_pipeline[4][1]~_Duplicate_1_regout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_pipeline[5][1]~_Duplicate_1_regout\);

-- Location: LCCOMB_X40_Y16_N10
\data_pipeline[6][1]~_Duplicate_1feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \data_pipeline[6][1]~_Duplicate_1feeder_combout\ = \data_pipeline[5][1]~_Duplicate_1_regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_pipeline[5][1]~_Duplicate_1_regout\,
	combout => \data_pipeline[6][1]~_Duplicate_1feeder_combout\);

-- Location: LCFF_X40_Y16_N11
\data_pipeline[6][1]~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \data_pipeline[6][1]~_Duplicate_1feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_pipeline[6][1]~_Duplicate_1_regout\);

-- Location: LCCOMB_X40_Y16_N8
\data_pipeline[7][1]~_Duplicate_1feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \data_pipeline[7][1]~_Duplicate_1feeder_combout\ = \data_pipeline[6][1]~_Duplicate_1_regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_pipeline[6][1]~_Duplicate_1_regout\,
	combout => \data_pipeline[7][1]~_Duplicate_1feeder_combout\);

-- Location: LCFF_X40_Y16_N9
\data_pipeline[7][1]~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \data_pipeline[7][1]~_Duplicate_1feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_pipeline[7][1]~_Duplicate_1_regout\);

-- Location: PIN_P23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data[2]~I\ : cycloneii_io
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
	padio => ww_data(2),
	combout => \data~combout\(2));

-- Location: LCFF_X40_Y18_N7
\data_pipeline[0][2]~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \data~combout\(2),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_pipeline[0][2]~_Duplicate_1_regout\);

-- Location: LCFF_X40_Y18_N25
\data_pipeline[1][2]~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \data_pipeline[0][2]~_Duplicate_1_regout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_pipeline[1][2]~_Duplicate_1_regout\);

-- Location: LCFF_X40_Y20_N1
\data_pipeline[2][2]~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \data_pipeline[1][2]~_Duplicate_1_regout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_pipeline[2][2]~_Duplicate_1_regout\);

-- Location: LCCOMB_X40_Y20_N6
\data_pipeline[3][2]~_Duplicate_1feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \data_pipeline[3][2]~_Duplicate_1feeder_combout\ = \data_pipeline[2][2]~_Duplicate_1_regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_pipeline[2][2]~_Duplicate_1_regout\,
	combout => \data_pipeline[3][2]~_Duplicate_1feeder_combout\);

-- Location: LCFF_X40_Y20_N7
\data_pipeline[3][2]~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \data_pipeline[3][2]~_Duplicate_1feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_pipeline[3][2]~_Duplicate_1_regout\);

-- Location: LCCOMB_X40_Y20_N24
\data_pipeline[4][2]~_Duplicate_1feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \data_pipeline[4][2]~_Duplicate_1feeder_combout\ = \data_pipeline[3][2]~_Duplicate_1_regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_pipeline[3][2]~_Duplicate_1_regout\,
	combout => \data_pipeline[4][2]~_Duplicate_1feeder_combout\);

-- Location: LCFF_X40_Y20_N25
\data_pipeline[4][2]~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \data_pipeline[4][2]~_Duplicate_1feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_pipeline[4][2]~_Duplicate_1_regout\);

-- Location: LCFF_X40_Y20_N3
\data_pipeline[5][2]~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \data_pipeline[4][2]~_Duplicate_1_regout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_pipeline[5][2]~_Duplicate_1_regout\);

-- Location: LCCOMB_X40_Y20_N28
\data_pipeline[6][2]~_Duplicate_1feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \data_pipeline[6][2]~_Duplicate_1feeder_combout\ = \data_pipeline[5][2]~_Duplicate_1_regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_pipeline[5][2]~_Duplicate_1_regout\,
	combout => \data_pipeline[6][2]~_Duplicate_1feeder_combout\);

-- Location: LCFF_X40_Y20_N29
\data_pipeline[6][2]~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \data_pipeline[6][2]~_Duplicate_1feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_pipeline[6][2]~_Duplicate_1_regout\);

-- Location: LCCOMB_X40_Y20_N20
\data_pipeline[7][2]~_Duplicate_1feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \data_pipeline[7][2]~_Duplicate_1feeder_combout\ = \data_pipeline[6][2]~_Duplicate_1_regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_pipeline[6][2]~_Duplicate_1_regout\,
	combout => \data_pipeline[7][2]~_Duplicate_1feeder_combout\);

-- Location: LCFF_X40_Y20_N21
\data_pipeline[7][2]~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \data_pipeline[7][2]~_Duplicate_1feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_pipeline[7][2]~_Duplicate_1_regout\);

-- Location: PIN_H15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data[3]~I\ : cycloneii_io
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
	padio => ww_data(3),
	combout => \data~combout\(3));

-- Location: LCFF_X42_Y20_N1
\data_pipeline[0][3]~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \data~combout\(3),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_pipeline[0][3]~_Duplicate_1_regout\);

-- Location: LCCOMB_X42_Y20_N22
\data_pipeline[1][3]~_Duplicate_1feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \data_pipeline[1][3]~_Duplicate_1feeder_combout\ = \data_pipeline[0][3]~_Duplicate_1_regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_pipeline[0][3]~_Duplicate_1_regout\,
	combout => \data_pipeline[1][3]~_Duplicate_1feeder_combout\);

-- Location: LCFF_X42_Y20_N23
\data_pipeline[1][3]~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \data_pipeline[1][3]~_Duplicate_1feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_pipeline[1][3]~_Duplicate_1_regout\);

-- Location: LCCOMB_X42_Y20_N2
\data_pipeline[2][3]~_Duplicate_1feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \data_pipeline[2][3]~_Duplicate_1feeder_combout\ = \data_pipeline[1][3]~_Duplicate_1_regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_pipeline[1][3]~_Duplicate_1_regout\,
	combout => \data_pipeline[2][3]~_Duplicate_1feeder_combout\);

-- Location: LCFF_X42_Y20_N3
\data_pipeline[2][3]~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \data_pipeline[2][3]~_Duplicate_1feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_pipeline[2][3]~_Duplicate_1_regout\);

-- Location: LCCOMB_X42_Y20_N24
\data_pipeline[3][3]~_Duplicate_1feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \data_pipeline[3][3]~_Duplicate_1feeder_combout\ = \data_pipeline[2][3]~_Duplicate_1_regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_pipeline[2][3]~_Duplicate_1_regout\,
	combout => \data_pipeline[3][3]~_Duplicate_1feeder_combout\);

-- Location: LCFF_X42_Y20_N25
\data_pipeline[3][3]~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \data_pipeline[3][3]~_Duplicate_1feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_pipeline[3][3]~_Duplicate_1_regout\);

-- Location: LCFF_X42_Y20_N27
\data_pipeline[4][3]~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \data_pipeline[3][3]~_Duplicate_1_regout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_pipeline[4][3]~_Duplicate_1_regout\);

-- Location: LCCOMB_X42_Y20_N16
\data_pipeline[5][3]~_Duplicate_1feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \data_pipeline[5][3]~_Duplicate_1feeder_combout\ = \data_pipeline[4][3]~_Duplicate_1_regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_pipeline[4][3]~_Duplicate_1_regout\,
	combout => \data_pipeline[5][3]~_Duplicate_1feeder_combout\);

-- Location: LCFF_X42_Y20_N17
\data_pipeline[5][3]~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \data_pipeline[5][3]~_Duplicate_1feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_pipeline[5][3]~_Duplicate_1_regout\);

-- Location: LCFF_X42_Y20_N13
\data_pipeline[6][3]~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \data_pipeline[5][3]~_Duplicate_1_regout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_pipeline[6][3]~_Duplicate_1_regout\);

-- Location: LCCOMB_X40_Y20_N26
\data_pipeline[7][3]~_Duplicate_1feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \data_pipeline[7][3]~_Duplicate_1feeder_combout\ = \data_pipeline[6][3]~_Duplicate_1_regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_pipeline[6][3]~_Duplicate_1_regout\,
	combout => \data_pipeline[7][3]~_Duplicate_1feeder_combout\);

-- Location: LCFF_X40_Y20_N27
\data_pipeline[7][3]~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \data_pipeline[7][3]~_Duplicate_1feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_pipeline[7][3]~_Duplicate_1_regout\);

-- Location: PIN_R20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data[4]~I\ : cycloneii_io
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
	padio => ww_data(4),
	combout => \data~combout\(4));

-- Location: LCCOMB_X40_Y16_N2
\data_pipeline[0][4]~_Duplicate_1feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \data_pipeline[0][4]~_Duplicate_1feeder_combout\ = \data~combout\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data~combout\(4),
	combout => \data_pipeline[0][4]~_Duplicate_1feeder_combout\);

-- Location: LCFF_X40_Y16_N3
\data_pipeline[0][4]~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \data_pipeline[0][4]~_Duplicate_1feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_pipeline[0][4]~_Duplicate_1_regout\);

-- Location: LCCOMB_X40_Y16_N4
\data_pipeline[1][4]~_Duplicate_1feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \data_pipeline[1][4]~_Duplicate_1feeder_combout\ = \data_pipeline[0][4]~_Duplicate_1_regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_pipeline[0][4]~_Duplicate_1_regout\,
	combout => \data_pipeline[1][4]~_Duplicate_1feeder_combout\);

-- Location: LCFF_X40_Y16_N5
\data_pipeline[1][4]~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \data_pipeline[1][4]~_Duplicate_1feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_pipeline[1][4]~_Duplicate_1_regout\);

-- Location: LCFF_X40_Y16_N1
\data_pipeline[2][4]~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \data_pipeline[1][4]~_Duplicate_1_regout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_pipeline[2][4]~_Duplicate_1_regout\);

-- Location: LCCOMB_X40_Y16_N30
\data_pipeline[3][4]~_Duplicate_1feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \data_pipeline[3][4]~_Duplicate_1feeder_combout\ = \data_pipeline[2][4]~_Duplicate_1_regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_pipeline[2][4]~_Duplicate_1_regout\,
	combout => \data_pipeline[3][4]~_Duplicate_1feeder_combout\);

-- Location: LCFF_X40_Y16_N31
\data_pipeline[3][4]~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \data_pipeline[3][4]~_Duplicate_1feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_pipeline[3][4]~_Duplicate_1_regout\);

-- Location: LCCOMB_X40_Y16_N24
\data_pipeline[4][4]~_Duplicate_1feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \data_pipeline[4][4]~_Duplicate_1feeder_combout\ = \data_pipeline[3][4]~_Duplicate_1_regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_pipeline[3][4]~_Duplicate_1_regout\,
	combout => \data_pipeline[4][4]~_Duplicate_1feeder_combout\);

-- Location: LCFF_X40_Y16_N25
\data_pipeline[4][4]~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \data_pipeline[4][4]~_Duplicate_1feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_pipeline[4][4]~_Duplicate_1_regout\);

-- Location: LCFF_X40_Y16_N17
\data_pipeline[5][4]~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \data_pipeline[4][4]~_Duplicate_1_regout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_pipeline[5][4]~_Duplicate_1_regout\);

-- Location: LCFF_X40_Y16_N21
\data_pipeline[6][4]~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \data_pipeline[5][4]~_Duplicate_1_regout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_pipeline[6][4]~_Duplicate_1_regout\);

-- Location: LCFF_X40_Y16_N23
\data_pipeline[7][4]~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \data_pipeline[6][4]~_Duplicate_1_regout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_pipeline[7][4]~_Duplicate_1_regout\);

-- Location: PIN_AC15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data[5]~I\ : cycloneii_io
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
	padio => ww_data(5),
	combout => \data~combout\(5));

-- Location: LCFF_X38_Y17_N11
\data_pipeline[0][5]~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \data~combout\(5),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_pipeline[0][5]~_Duplicate_1_regout\);

-- Location: LCCOMB_X38_Y17_N0
\data_pipeline[1][5]~_Duplicate_1feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \data_pipeline[1][5]~_Duplicate_1feeder_combout\ = \data_pipeline[0][5]~_Duplicate_1_regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_pipeline[0][5]~_Duplicate_1_regout\,
	combout => \data_pipeline[1][5]~_Duplicate_1feeder_combout\);

-- Location: LCFF_X38_Y17_N1
\data_pipeline[1][5]~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \data_pipeline[1][5]~_Duplicate_1feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_pipeline[1][5]~_Duplicate_1_regout\);

-- Location: LCCOMB_X38_Y17_N4
\data_pipeline[2][5]~_Duplicate_1feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \data_pipeline[2][5]~_Duplicate_1feeder_combout\ = \data_pipeline[1][5]~_Duplicate_1_regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_pipeline[1][5]~_Duplicate_1_regout\,
	combout => \data_pipeline[2][5]~_Duplicate_1feeder_combout\);

-- Location: LCFF_X38_Y17_N5
\data_pipeline[2][5]~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \data_pipeline[2][5]~_Duplicate_1feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_pipeline[2][5]~_Duplicate_1_regout\);

-- Location: LCFF_X38_Y17_N3
\data_pipeline[3][5]~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \data_pipeline[2][5]~_Duplicate_1_regout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_pipeline[3][5]~_Duplicate_1_regout\);

-- Location: LCCOMB_X38_Y17_N28
\data_pipeline[4][5]~_Duplicate_1feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \data_pipeline[4][5]~_Duplicate_1feeder_combout\ = \data_pipeline[3][5]~_Duplicate_1_regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_pipeline[3][5]~_Duplicate_1_regout\,
	combout => \data_pipeline[4][5]~_Duplicate_1feeder_combout\);

-- Location: LCFF_X38_Y17_N29
\data_pipeline[4][5]~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \data_pipeline[4][5]~_Duplicate_1feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_pipeline[4][5]~_Duplicate_1_regout\);

-- Location: LCCOMB_X38_Y17_N26
\data_pipeline[5][5]~_Duplicate_1feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \data_pipeline[5][5]~_Duplicate_1feeder_combout\ = \data_pipeline[4][5]~_Duplicate_1_regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_pipeline[4][5]~_Duplicate_1_regout\,
	combout => \data_pipeline[5][5]~_Duplicate_1feeder_combout\);

-- Location: LCFF_X38_Y17_N27
\data_pipeline[5][5]~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \data_pipeline[5][5]~_Duplicate_1feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_pipeline[5][5]~_Duplicate_1_regout\);

-- Location: LCCOMB_X38_Y17_N22
\data_pipeline[6][5]~_Duplicate_1feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \data_pipeline[6][5]~_Duplicate_1feeder_combout\ = \data_pipeline[5][5]~_Duplicate_1_regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_pipeline[5][5]~_Duplicate_1_regout\,
	combout => \data_pipeline[6][5]~_Duplicate_1feeder_combout\);

-- Location: LCFF_X38_Y17_N23
\data_pipeline[6][5]~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \data_pipeline[6][5]~_Duplicate_1feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_pipeline[6][5]~_Duplicate_1_regout\);

-- Location: LCCOMB_X38_Y17_N24
\data_pipeline[7][5]~_Duplicate_1feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \data_pipeline[7][5]~_Duplicate_1feeder_combout\ = \data_pipeline[6][5]~_Duplicate_1_regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_pipeline[6][5]~_Duplicate_1_regout\,
	combout => \data_pipeline[7][5]~_Duplicate_1feeder_combout\);

-- Location: LCFF_X38_Y17_N25
\data_pipeline[7][5]~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \data_pipeline[7][5]~_Duplicate_1feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_pipeline[7][5]~_Duplicate_1_regout\);

-- Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data[6]~I\ : cycloneii_io
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
	padio => ww_data(6),
	combout => \data~combout\(6));

-- Location: LCCOMB_X40_Y23_N16
\data_pipeline[0][6]~_Duplicate_1feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \data_pipeline[0][6]~_Duplicate_1feeder_combout\ = \data~combout\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data~combout\(6),
	combout => \data_pipeline[0][6]~_Duplicate_1feeder_combout\);

-- Location: LCFF_X40_Y23_N17
\data_pipeline[0][6]~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \data_pipeline[0][6]~_Duplicate_1feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_pipeline[0][6]~_Duplicate_1_regout\);

-- Location: LCCOMB_X40_Y23_N26
\data_pipeline[1][6]~_Duplicate_1feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \data_pipeline[1][6]~_Duplicate_1feeder_combout\ = \data_pipeline[0][6]~_Duplicate_1_regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_pipeline[0][6]~_Duplicate_1_regout\,
	combout => \data_pipeline[1][6]~_Duplicate_1feeder_combout\);

-- Location: LCFF_X40_Y23_N27
\data_pipeline[1][6]~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \data_pipeline[1][6]~_Duplicate_1feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_pipeline[1][6]~_Duplicate_1_regout\);

-- Location: LCCOMB_X40_Y23_N30
\data_pipeline[2][6]~_Duplicate_1feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \data_pipeline[2][6]~_Duplicate_1feeder_combout\ = \data_pipeline[1][6]~_Duplicate_1_regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_pipeline[1][6]~_Duplicate_1_regout\,
	combout => \data_pipeline[2][6]~_Duplicate_1feeder_combout\);

-- Location: LCFF_X40_Y23_N31
\data_pipeline[2][6]~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \data_pipeline[2][6]~_Duplicate_1feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_pipeline[2][6]~_Duplicate_1_regout\);

-- Location: LCCOMB_X40_Y23_N14
\data_pipeline[3][6]~_Duplicate_1feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \data_pipeline[3][6]~_Duplicate_1feeder_combout\ = \data_pipeline[2][6]~_Duplicate_1_regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_pipeline[2][6]~_Duplicate_1_regout\,
	combout => \data_pipeline[3][6]~_Duplicate_1feeder_combout\);

-- Location: LCFF_X40_Y23_N15
\data_pipeline[3][6]~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \data_pipeline[3][6]~_Duplicate_1feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_pipeline[3][6]~_Duplicate_1_regout\);

-- Location: LCFF_X40_Y23_N11
\data_pipeline[4][6]~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \data_pipeline[3][6]~_Duplicate_1_regout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_pipeline[4][6]~_Duplicate_1_regout\);

-- Location: LCCOMB_X40_Y23_N22
\data_pipeline[5][6]~_Duplicate_1feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \data_pipeline[5][6]~_Duplicate_1feeder_combout\ = \data_pipeline[4][6]~_Duplicate_1_regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_pipeline[4][6]~_Duplicate_1_regout\,
	combout => \data_pipeline[5][6]~_Duplicate_1feeder_combout\);

-- Location: LCFF_X40_Y23_N23
\data_pipeline[5][6]~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \data_pipeline[5][6]~_Duplicate_1feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_pipeline[5][6]~_Duplicate_1_regout\);

-- Location: LCCOMB_X40_Y23_N8
\data_pipeline[6][6]~_Duplicate_1feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \data_pipeline[6][6]~_Duplicate_1feeder_combout\ = \data_pipeline[5][6]~_Duplicate_1_regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_pipeline[5][6]~_Duplicate_1_regout\,
	combout => \data_pipeline[6][6]~_Duplicate_1feeder_combout\);

-- Location: LCFF_X40_Y23_N9
\data_pipeline[6][6]~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \data_pipeline[6][6]~_Duplicate_1feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_pipeline[6][6]~_Duplicate_1_regout\);

-- Location: LCCOMB_X40_Y20_N16
\data_pipeline[7][6]~_Duplicate_1feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \data_pipeline[7][6]~_Duplicate_1feeder_combout\ = \data_pipeline[6][6]~_Duplicate_1_regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_pipeline[6][6]~_Duplicate_1_regout\,
	combout => \data_pipeline[7][6]~_Duplicate_1feeder_combout\);

-- Location: LCFF_X40_Y20_N17
\data_pipeline[7][6]~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \data_pipeline[7][6]~_Duplicate_1feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_pipeline[7][6]~_Duplicate_1_regout\);

-- Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data[7]~I\ : cycloneii_io
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
	padio => ww_data(7),
	combout => \data~combout\(7));

-- Location: LCCOMB_X40_Y19_N14
\data_pipeline[0][7]~_Duplicate_1feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \data_pipeline[0][7]~_Duplicate_1feeder_combout\ = \data~combout\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data~combout\(7),
	combout => \data_pipeline[0][7]~_Duplicate_1feeder_combout\);

-- Location: LCFF_X40_Y19_N15
\data_pipeline[0][7]~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \data_pipeline[0][7]~_Duplicate_1feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_pipeline[0][7]~_Duplicate_1_regout\);

-- Location: LCFF_X40_Y19_N5
\data_pipeline[1][7]~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \data_pipeline[0][7]~_Duplicate_1_regout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_pipeline[1][7]~_Duplicate_1_regout\);

-- Location: LCFF_X40_Y19_N1
\data_pipeline[2][7]~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \data_pipeline[1][7]~_Duplicate_1_regout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_pipeline[2][7]~_Duplicate_1_regout\);

-- Location: LCCOMB_X40_Y19_N18
\data_pipeline[3][7]~_Duplicate_1feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \data_pipeline[3][7]~_Duplicate_1feeder_combout\ = \data_pipeline[2][7]~_Duplicate_1_regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_pipeline[2][7]~_Duplicate_1_regout\,
	combout => \data_pipeline[3][7]~_Duplicate_1feeder_combout\);

-- Location: LCFF_X40_Y19_N19
\data_pipeline[3][7]~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \data_pipeline[3][7]~_Duplicate_1feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_pipeline[3][7]~_Duplicate_1_regout\);

-- Location: LCCOMB_X40_Y19_N8
\data_pipeline[4][7]~_Duplicate_1feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \data_pipeline[4][7]~_Duplicate_1feeder_combout\ = \data_pipeline[3][7]~_Duplicate_1_regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_pipeline[3][7]~_Duplicate_1_regout\,
	combout => \data_pipeline[4][7]~_Duplicate_1feeder_combout\);

-- Location: LCFF_X40_Y19_N9
\data_pipeline[4][7]~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \data_pipeline[4][7]~_Duplicate_1feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_pipeline[4][7]~_Duplicate_1_regout\);

-- Location: LCFF_X40_Y19_N29
\data_pipeline[5][7]~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \data_pipeline[4][7]~_Duplicate_1_regout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_pipeline[5][7]~_Duplicate_1_regout\);

-- Location: LCCOMB_X40_Y19_N22
\data_pipeline[6][7]~_Duplicate_1feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \data_pipeline[6][7]~_Duplicate_1feeder_combout\ = \data_pipeline[5][7]~_Duplicate_1_regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_pipeline[5][7]~_Duplicate_1_regout\,
	combout => \data_pipeline[6][7]~_Duplicate_1feeder_combout\);

-- Location: LCFF_X40_Y19_N23
\data_pipeline[6][7]~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \data_pipeline[6][7]~_Duplicate_1feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_pipeline[6][7]~_Duplicate_1_regout\);

-- Location: LCCOMB_X40_Y19_N24
\data_pipeline[7][7]~_Duplicate_1feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \data_pipeline[7][7]~_Duplicate_1feeder_combout\ = \data_pipeline[6][7]~_Duplicate_1_regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_pipeline[6][7]~_Duplicate_1_regout\,
	combout => \data_pipeline[7][7]~_Duplicate_1feeder_combout\);

-- Location: LCFF_X40_Y19_N25
\data_pipeline[7][7]~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \data_pipeline[7][7]~_Duplicate_1feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_pipeline[7][7]~_Duplicate_1_regout\);

-- Location: PIN_P24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data[8]~I\ : cycloneii_io
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
	padio => ww_data(8),
	combout => \data~combout\(8));

-- Location: LCFF_X40_Y18_N29
\data_pipeline[0][8]~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \data~combout\(8),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_pipeline[0][8]~_Duplicate_1_regout\);

-- Location: LCFF_X40_Y18_N15
\data_pipeline[1][8]~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \data_pipeline[0][8]~_Duplicate_1_regout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_pipeline[1][8]~_Duplicate_1_regout\);

-- Location: LCFF_X38_Y23_N13
\data_pipeline[2][8]~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \data_pipeline[1][8]~_Duplicate_1_regout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_pipeline[2][8]~_Duplicate_1_regout\);

-- Location: LCCOMB_X38_Y23_N14
\data_pipeline[3][8]~_Duplicate_1feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \data_pipeline[3][8]~_Duplicate_1feeder_combout\ = \data_pipeline[2][8]~_Duplicate_1_regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_pipeline[2][8]~_Duplicate_1_regout\,
	combout => \data_pipeline[3][8]~_Duplicate_1feeder_combout\);

-- Location: LCFF_X38_Y23_N15
\data_pipeline[3][8]~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \data_pipeline[3][8]~_Duplicate_1feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_pipeline[3][8]~_Duplicate_1_regout\);

-- Location: LCFF_X38_Y23_N23
\data_pipeline[4][8]~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \data_pipeline[3][8]~_Duplicate_1_regout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_pipeline[4][8]~_Duplicate_1_regout\);

-- Location: LCCOMB_X40_Y19_N26
\data_pipeline[5][8]~_Duplicate_1feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \data_pipeline[5][8]~_Duplicate_1feeder_combout\ = \data_pipeline[4][8]~_Duplicate_1_regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_pipeline[4][8]~_Duplicate_1_regout\,
	combout => \data_pipeline[5][8]~_Duplicate_1feeder_combout\);

-- Location: LCFF_X40_Y19_N27
\data_pipeline[5][8]~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \data_pipeline[5][8]~_Duplicate_1feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_pipeline[5][8]~_Duplicate_1_regout\);

-- Location: LCCOMB_X40_Y19_N12
\data_pipeline[6][8]~_Duplicate_1feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \data_pipeline[6][8]~_Duplicate_1feeder_combout\ = \data_pipeline[5][8]~_Duplicate_1_regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_pipeline[5][8]~_Duplicate_1_regout\,
	combout => \data_pipeline[6][8]~_Duplicate_1feeder_combout\);

-- Location: LCFF_X40_Y19_N13
\data_pipeline[6][8]~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \data_pipeline[6][8]~_Duplicate_1feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_pipeline[6][8]~_Duplicate_1_regout\);

-- Location: LCCOMB_X40_Y20_N18
\data_pipeline[7][8]~_Duplicate_1feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \data_pipeline[7][8]~_Duplicate_1feeder_combout\ = \data_pipeline[6][8]~_Duplicate_1_regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_pipeline[6][8]~_Duplicate_1_regout\,
	combout => \data_pipeline[7][8]~_Duplicate_1feeder_combout\);

-- Location: LCFF_X40_Y20_N19
\data_pipeline[7][8]~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \data_pipeline[7][8]~_Duplicate_1feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_pipeline[7][8]~_Duplicate_1_regout\);

-- Location: PIN_M25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data[9]~I\ : cycloneii_io
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
	padio => ww_data(9),
	combout => \data~combout\(9));

-- Location: LCFF_X41_Y20_N27
\data_pipeline[0][9]~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \data~combout\(9),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_pipeline[0][9]~_Duplicate_1_regout\);

-- Location: LCCOMB_X41_Y20_N24
\data_pipeline[1][9]~_Duplicate_1feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \data_pipeline[1][9]~_Duplicate_1feeder_combout\ = \data_pipeline[0][9]~_Duplicate_1_regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_pipeline[0][9]~_Duplicate_1_regout\,
	combout => \data_pipeline[1][9]~_Duplicate_1feeder_combout\);

-- Location: LCFF_X41_Y20_N25
\data_pipeline[1][9]~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \data_pipeline[1][9]~_Duplicate_1feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_pipeline[1][9]~_Duplicate_1_regout\);

-- Location: LCFF_X41_Y20_N17
\data_pipeline[2][9]~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \data_pipeline[1][9]~_Duplicate_1_regout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_pipeline[2][9]~_Duplicate_1_regout\);

-- Location: LCFF_X41_Y20_N19
\data_pipeline[3][9]~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \data_pipeline[2][9]~_Duplicate_1_regout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_pipeline[3][9]~_Duplicate_1_regout\);

-- Location: LCCOMB_X41_Y20_N20
\data_pipeline[4][9]~_Duplicate_1feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \data_pipeline[4][9]~_Duplicate_1feeder_combout\ = \data_pipeline[3][9]~_Duplicate_1_regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_pipeline[3][9]~_Duplicate_1_regout\,
	combout => \data_pipeline[4][9]~_Duplicate_1feeder_combout\);

-- Location: LCFF_X41_Y20_N21
\data_pipeline[4][9]~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \data_pipeline[4][9]~_Duplicate_1feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_pipeline[4][9]~_Duplicate_1_regout\);

-- Location: LCFF_X40_Y18_N13
\data_pipeline[5][9]~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \data_pipeline[4][9]~_Duplicate_1_regout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_pipeline[5][9]~_Duplicate_1_regout\);

-- Location: LCFF_X40_Y18_N11
\data_pipeline[6][9]~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \data_pipeline[5][9]~_Duplicate_1_regout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_pipeline[6][9]~_Duplicate_1_regout\);

-- Location: LCCOMB_X40_Y19_N10
\data_pipeline[7][9]~_Duplicate_1feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \data_pipeline[7][9]~_Duplicate_1feeder_combout\ = \data_pipeline[6][9]~_Duplicate_1_regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_pipeline[6][9]~_Duplicate_1_regout\,
	combout => \data_pipeline[7][9]~_Duplicate_1feeder_combout\);

-- Location: LCFF_X40_Y19_N11
\data_pipeline[7][9]~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \data_pipeline[7][9]~_Duplicate_1feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_pipeline[7][9]~_Duplicate_1_regout\);

-- Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data[10]~I\ : cycloneii_io
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
	padio => ww_data(10),
	combout => \data~combout\(10));

-- Location: LCCOMB_X42_Y19_N0
\data_pipeline[0][10]~_Duplicate_1feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \data_pipeline[0][10]~_Duplicate_1feeder_combout\ = \data~combout\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data~combout\(10),
	combout => \data_pipeline[0][10]~_Duplicate_1feeder_combout\);

-- Location: LCFF_X42_Y19_N1
\data_pipeline[0][10]~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \data_pipeline[0][10]~_Duplicate_1feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_pipeline[0][10]~_Duplicate_1_regout\);

-- Location: LCCOMB_X42_Y19_N2
\data_pipeline[1][10]~_Duplicate_1feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \data_pipeline[1][10]~_Duplicate_1feeder_combout\ = \data_pipeline[0][10]~_Duplicate_1_regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_pipeline[0][10]~_Duplicate_1_regout\,
	combout => \data_pipeline[1][10]~_Duplicate_1feeder_combout\);

-- Location: LCFF_X42_Y19_N3
\data_pipeline[1][10]~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \data_pipeline[1][10]~_Duplicate_1feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_pipeline[1][10]~_Duplicate_1_regout\);

-- Location: LCCOMB_X42_Y19_N22
\data_pipeline[2][10]~_Duplicate_1feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \data_pipeline[2][10]~_Duplicate_1feeder_combout\ = \data_pipeline[1][10]~_Duplicate_1_regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_pipeline[1][10]~_Duplicate_1_regout\,
	combout => \data_pipeline[2][10]~_Duplicate_1feeder_combout\);

-- Location: LCFF_X42_Y19_N23
\data_pipeline[2][10]~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \data_pipeline[2][10]~_Duplicate_1feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_pipeline[2][10]~_Duplicate_1_regout\);

-- Location: LCCOMB_X42_Y19_N12
\data_pipeline[3][10]~_Duplicate_1feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \data_pipeline[3][10]~_Duplicate_1feeder_combout\ = \data_pipeline[2][10]~_Duplicate_1_regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_pipeline[2][10]~_Duplicate_1_regout\,
	combout => \data_pipeline[3][10]~_Duplicate_1feeder_combout\);

-- Location: LCFF_X42_Y19_N13
\data_pipeline[3][10]~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \data_pipeline[3][10]~_Duplicate_1feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_pipeline[3][10]~_Duplicate_1_regout\);

-- Location: LCCOMB_X42_Y19_N10
\data_pipeline[4][10]~_Duplicate_1feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \data_pipeline[4][10]~_Duplicate_1feeder_combout\ = \data_pipeline[3][10]~_Duplicate_1_regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_pipeline[3][10]~_Duplicate_1_regout\,
	combout => \data_pipeline[4][10]~_Duplicate_1feeder_combout\);

-- Location: LCFF_X42_Y19_N11
\data_pipeline[4][10]~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \data_pipeline[4][10]~_Duplicate_1feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_pipeline[4][10]~_Duplicate_1_regout\);

-- Location: LCCOMB_X42_Y19_N16
\data_pipeline[5][10]~_Duplicate_1feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \data_pipeline[5][10]~_Duplicate_1feeder_combout\ = \data_pipeline[4][10]~_Duplicate_1_regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_pipeline[4][10]~_Duplicate_1_regout\,
	combout => \data_pipeline[5][10]~_Duplicate_1feeder_combout\);

-- Location: LCFF_X42_Y19_N17
\data_pipeline[5][10]~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \data_pipeline[5][10]~_Duplicate_1feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_pipeline[5][10]~_Duplicate_1_regout\);

-- Location: LCFF_X42_Y19_N21
\data_pipeline[6][10]~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \data_pipeline[5][10]~_Duplicate_1_regout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_pipeline[6][10]~_Duplicate_1_regout\);

-- Location: LCFF_X38_Y19_N27
\data_pipeline[7][10]~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \data_pipeline[6][10]~_Duplicate_1_regout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_pipeline[7][10]~_Duplicate_1_regout\);

-- Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data[11]~I\ : cycloneii_io
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
	padio => ww_data(11),
	combout => \data~combout\(11));

-- Location: LCFF_X40_Y18_N9
\data_pipeline[0][11]~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \data~combout\(11),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_pipeline[0][11]~_Duplicate_1_regout\);

-- Location: LCFF_X40_Y18_N31
\data_pipeline[1][11]~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \data_pipeline[0][11]~_Duplicate_1_regout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_pipeline[1][11]~_Duplicate_1_regout\);

-- Location: LCCOMB_X40_Y23_N12
\data_pipeline[2][11]~_Duplicate_1feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \data_pipeline[2][11]~_Duplicate_1feeder_combout\ = \data_pipeline[1][11]~_Duplicate_1_regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_pipeline[1][11]~_Duplicate_1_regout\,
	combout => \data_pipeline[2][11]~_Duplicate_1feeder_combout\);

-- Location: LCFF_X40_Y23_N13
\data_pipeline[2][11]~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \data_pipeline[2][11]~_Duplicate_1feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_pipeline[2][11]~_Duplicate_1_regout\);

-- Location: LCCOMB_X40_Y23_N28
\data_pipeline[3][11]~_Duplicate_1feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \data_pipeline[3][11]~_Duplicate_1feeder_combout\ = \data_pipeline[2][11]~_Duplicate_1_regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_pipeline[2][11]~_Duplicate_1_regout\,
	combout => \data_pipeline[3][11]~_Duplicate_1feeder_combout\);

-- Location: LCFF_X40_Y23_N29
\data_pipeline[3][11]~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \data_pipeline[3][11]~_Duplicate_1feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_pipeline[3][11]~_Duplicate_1_regout\);

-- Location: LCCOMB_X40_Y23_N0
\data_pipeline[4][11]~_Duplicate_1feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \data_pipeline[4][11]~_Duplicate_1feeder_combout\ = \data_pipeline[3][11]~_Duplicate_1_regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_pipeline[3][11]~_Duplicate_1_regout\,
	combout => \data_pipeline[4][11]~_Duplicate_1feeder_combout\);

-- Location: LCFF_X40_Y23_N1
\data_pipeline[4][11]~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \data_pipeline[4][11]~_Duplicate_1feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_pipeline[4][11]~_Duplicate_1_regout\);

-- Location: LCCOMB_X40_Y23_N4
\data_pipeline[5][11]~_Duplicate_1feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \data_pipeline[5][11]~_Duplicate_1feeder_combout\ = \data_pipeline[4][11]~_Duplicate_1_regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_pipeline[4][11]~_Duplicate_1_regout\,
	combout => \data_pipeline[5][11]~_Duplicate_1feeder_combout\);

-- Location: LCFF_X40_Y23_N5
\data_pipeline[5][11]~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \data_pipeline[5][11]~_Duplicate_1feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_pipeline[5][11]~_Duplicate_1_regout\);

-- Location: LCFF_X40_Y16_N7
\data_pipeline[6][11]~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \data_pipeline[5][11]~_Duplicate_1_regout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_pipeline[6][11]~_Duplicate_1_regout\);

-- Location: LCCOMB_X40_Y19_N20
\data_pipeline[7][11]~_Duplicate_1feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \data_pipeline[7][11]~_Duplicate_1feeder_combout\ = \data_pipeline[6][11]~_Duplicate_1_regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_pipeline[6][11]~_Duplicate_1_regout\,
	combout => \data_pipeline[7][11]~_Duplicate_1feeder_combout\);

-- Location: LCFF_X40_Y19_N21
\data_pipeline[7][11]~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \data_pipeline[7][11]~_Duplicate_1feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_pipeline[7][11]~_Duplicate_1_regout\);

-- Location: PIN_N23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data[12]~I\ : cycloneii_io
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
	padio => ww_data(12),
	combout => \data~combout\(12));

-- Location: LCCOMB_X41_Y19_N10
\data_pipeline[0][12]~_Duplicate_1feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \data_pipeline[0][12]~_Duplicate_1feeder_combout\ = \data~combout\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data~combout\(12),
	combout => \data_pipeline[0][12]~_Duplicate_1feeder_combout\);

-- Location: LCFF_X41_Y19_N11
\data_pipeline[0][12]~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \data_pipeline[0][12]~_Duplicate_1feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_pipeline[0][12]~_Duplicate_1_regout\);

-- Location: LCCOMB_X41_Y19_N24
\data_pipeline[1][12]~_Duplicate_1feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \data_pipeline[1][12]~_Duplicate_1feeder_combout\ = \data_pipeline[0][12]~_Duplicate_1_regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_pipeline[0][12]~_Duplicate_1_regout\,
	combout => \data_pipeline[1][12]~_Duplicate_1feeder_combout\);

-- Location: LCFF_X41_Y19_N25
\data_pipeline[1][12]~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \data_pipeline[1][12]~_Duplicate_1feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_pipeline[1][12]~_Duplicate_1_regout\);

-- Location: LCFF_X41_Y19_N13
\data_pipeline[2][12]~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \data_pipeline[1][12]~_Duplicate_1_regout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_pipeline[2][12]~_Duplicate_1_regout\);

-- Location: LCCOMB_X41_Y19_N22
\data_pipeline[3][12]~_Duplicate_1feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \data_pipeline[3][12]~_Duplicate_1feeder_combout\ = \data_pipeline[2][12]~_Duplicate_1_regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_pipeline[2][12]~_Duplicate_1_regout\,
	combout => \data_pipeline[3][12]~_Duplicate_1feeder_combout\);

-- Location: LCFF_X41_Y19_N23
\data_pipeline[3][12]~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \data_pipeline[3][12]~_Duplicate_1feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_pipeline[3][12]~_Duplicate_1_regout\);

-- Location: LCCOMB_X41_Y19_N0
\data_pipeline[4][12]~_Duplicate_1feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \data_pipeline[4][12]~_Duplicate_1feeder_combout\ = \data_pipeline[3][12]~_Duplicate_1_regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_pipeline[3][12]~_Duplicate_1_regout\,
	combout => \data_pipeline[4][12]~_Duplicate_1feeder_combout\);

-- Location: LCFF_X41_Y19_N1
\data_pipeline[4][12]~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \data_pipeline[4][12]~_Duplicate_1feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_pipeline[4][12]~_Duplicate_1_regout\);

-- Location: LCFF_X41_Y19_N19
\data_pipeline[5][12]~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \data_pipeline[4][12]~_Duplicate_1_regout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_pipeline[5][12]~_Duplicate_1_regout\);

-- Location: LCFF_X38_Y19_N1
\data_pipeline[6][12]~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \data_pipeline[5][12]~_Duplicate_1_regout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_pipeline[6][12]~_Duplicate_1_regout\);

-- Location: LCFF_X38_Y19_N15
\data_pipeline[7][12]~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \data_pipeline[6][12]~_Duplicate_1_regout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_pipeline[7][12]~_Duplicate_1_regout\);

-- Location: PIN_T22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data[13]~I\ : cycloneii_io
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
	padio => ww_data(13),
	combout => \data~combout\(13));

-- Location: LCCOMB_X40_Y15_N26
\data_pipeline[0][13]~_Duplicate_1feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \data_pipeline[0][13]~_Duplicate_1feeder_combout\ = \data~combout\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data~combout\(13),
	combout => \data_pipeline[0][13]~_Duplicate_1feeder_combout\);

-- Location: LCFF_X40_Y15_N27
\data_pipeline[0][13]~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \data_pipeline[0][13]~_Duplicate_1feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_pipeline[0][13]~_Duplicate_1_regout\);

-- Location: LCCOMB_X40_Y15_N8
\data_pipeline[1][13]~_Duplicate_1feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \data_pipeline[1][13]~_Duplicate_1feeder_combout\ = \data_pipeline[0][13]~_Duplicate_1_regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_pipeline[0][13]~_Duplicate_1_regout\,
	combout => \data_pipeline[1][13]~_Duplicate_1feeder_combout\);

-- Location: LCFF_X40_Y15_N9
\data_pipeline[1][13]~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \data_pipeline[1][13]~_Duplicate_1feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_pipeline[1][13]~_Duplicate_1_regout\);

-- Location: LCFF_X40_Y15_N13
\data_pipeline[2][13]~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \data_pipeline[1][13]~_Duplicate_1_regout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_pipeline[2][13]~_Duplicate_1_regout\);

-- Location: LCCOMB_X40_Y15_N2
\data_pipeline[3][13]~_Duplicate_1feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \data_pipeline[3][13]~_Duplicate_1feeder_combout\ = \data_pipeline[2][13]~_Duplicate_1_regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_pipeline[2][13]~_Duplicate_1_regout\,
	combout => \data_pipeline[3][13]~_Duplicate_1feeder_combout\);

-- Location: LCFF_X40_Y15_N3
\data_pipeline[3][13]~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \data_pipeline[3][13]~_Duplicate_1feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_pipeline[3][13]~_Duplicate_1_regout\);

-- Location: LCFF_X40_Y16_N15
\data_pipeline[4][13]~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \data_pipeline[3][13]~_Duplicate_1_regout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_pipeline[4][13]~_Duplicate_1_regout\);

-- Location: LCFF_X40_Y16_N27
\data_pipeline[5][13]~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \data_pipeline[4][13]~_Duplicate_1_regout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_pipeline[5][13]~_Duplicate_1_regout\);

-- Location: LCCOMB_X40_Y16_N12
\data_pipeline[6][13]~_Duplicate_1feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \data_pipeline[6][13]~_Duplicate_1feeder_combout\ = \data_pipeline[5][13]~_Duplicate_1_regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_pipeline[5][13]~_Duplicate_1_regout\,
	combout => \data_pipeline[6][13]~_Duplicate_1feeder_combout\);

-- Location: LCFF_X40_Y16_N13
\data_pipeline[6][13]~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \data_pipeline[6][13]~_Duplicate_1feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_pipeline[6][13]~_Duplicate_1_regout\);

-- Location: LCCOMB_X40_Y16_N28
\data_pipeline[7][13]~_Duplicate_1feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \data_pipeline[7][13]~_Duplicate_1feeder_combout\ = \data_pipeline[6][13]~_Duplicate_1_regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_pipeline[6][13]~_Duplicate_1_regout\,
	combout => \data_pipeline[7][13]~_Duplicate_1feeder_combout\);

-- Location: LCFF_X40_Y16_N29
\data_pipeline[7][13]~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \data_pipeline[7][13]~_Duplicate_1feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_pipeline[7][13]~_Duplicate_1_regout\);

-- Location: PIN_Y15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data[14]~I\ : cycloneii_io
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
	padio => ww_data(14),
	combout => \data~combout\(14));

-- Location: LCFF_X38_Y18_N15
\data_pipeline[0][14]~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \data~combout\(14),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_pipeline[0][14]~_Duplicate_1_regout\);

-- Location: LCFF_X38_Y18_N3
\data_pipeline[1][14]~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \data_pipeline[0][14]~_Duplicate_1_regout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_pipeline[1][14]~_Duplicate_1_regout\);

-- Location: LCCOMB_X38_Y18_N30
\data_pipeline[2][14]~_Duplicate_1feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \data_pipeline[2][14]~_Duplicate_1feeder_combout\ = \data_pipeline[1][14]~_Duplicate_1_regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_pipeline[1][14]~_Duplicate_1_regout\,
	combout => \data_pipeline[2][14]~_Duplicate_1feeder_combout\);

-- Location: LCFF_X38_Y18_N31
\data_pipeline[2][14]~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \data_pipeline[2][14]~_Duplicate_1feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_pipeline[2][14]~_Duplicate_1_regout\);

-- Location: LCCOMB_X38_Y18_N26
\data_pipeline[3][14]~_Duplicate_1feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \data_pipeline[3][14]~_Duplicate_1feeder_combout\ = \data_pipeline[2][14]~_Duplicate_1_regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_pipeline[2][14]~_Duplicate_1_regout\,
	combout => \data_pipeline[3][14]~_Duplicate_1feeder_combout\);

-- Location: LCFF_X38_Y18_N27
\data_pipeline[3][14]~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \data_pipeline[3][14]~_Duplicate_1feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_pipeline[3][14]~_Duplicate_1_regout\);

-- Location: LCCOMB_X38_Y18_N28
\data_pipeline[4][14]~_Duplicate_1feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \data_pipeline[4][14]~_Duplicate_1feeder_combout\ = \data_pipeline[3][14]~_Duplicate_1_regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_pipeline[3][14]~_Duplicate_1_regout\,
	combout => \data_pipeline[4][14]~_Duplicate_1feeder_combout\);

-- Location: LCFF_X38_Y18_N29
\data_pipeline[4][14]~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \data_pipeline[4][14]~_Duplicate_1feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_pipeline[4][14]~_Duplicate_1_regout\);

-- Location: LCFF_X38_Y18_N11
\data_pipeline[5][14]~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \data_pipeline[4][14]~_Duplicate_1_regout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_pipeline[5][14]~_Duplicate_1_regout\);

-- Location: LCCOMB_X38_Y18_N18
\data_pipeline[6][14]~_Duplicate_1feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \data_pipeline[6][14]~_Duplicate_1feeder_combout\ = \data_pipeline[5][14]~_Duplicate_1_regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_pipeline[5][14]~_Duplicate_1_regout\,
	combout => \data_pipeline[6][14]~_Duplicate_1feeder_combout\);

-- Location: LCFF_X38_Y18_N19
\data_pipeline[6][14]~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \data_pipeline[6][14]~_Duplicate_1feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_pipeline[6][14]~_Duplicate_1_regout\);

-- Location: LCCOMB_X38_Y18_N24
\data_pipeline[7][14]~_Duplicate_1feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \data_pipeline[7][14]~_Duplicate_1feeder_combout\ = \data_pipeline[6][14]~_Duplicate_1_regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_pipeline[6][14]~_Duplicate_1_regout\,
	combout => \data_pipeline[7][14]~_Duplicate_1feeder_combout\);

-- Location: LCFF_X38_Y18_N25
\data_pipeline[7][14]~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \data_pipeline[7][14]~_Duplicate_1feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_pipeline[7][14]~_Duplicate_1_regout\);

-- Location: PIN_R24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data[15]~I\ : cycloneii_io
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
	padio => ww_data(15),
	combout => \data~combout\(15));

-- Location: LCCOMB_X38_Y18_N16
\data_pipeline[0][15]~_Duplicate_1feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \data_pipeline[0][15]~_Duplicate_1feeder_combout\ = \data~combout\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data~combout\(15),
	combout => \data_pipeline[0][15]~_Duplicate_1feeder_combout\);

-- Location: LCFF_X38_Y18_N17
\data_pipeline[0][15]~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \data_pipeline[0][15]~_Duplicate_1feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_pipeline[0][15]~_Duplicate_1_regout\);

-- Location: LCFF_X38_Y18_N13
\data_pipeline[1][15]~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \data_pipeline[0][15]~_Duplicate_1_regout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_pipeline[1][15]~_Duplicate_1_regout\);

-- Location: LCFF_X38_Y18_N9
\data_pipeline[2][15]~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \data_pipeline[1][15]~_Duplicate_1_regout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_pipeline[2][15]~_Duplicate_1_regout\);

-- Location: LCFF_X38_Y23_N29
\data_pipeline[3][15]~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \data_pipeline[2][15]~_Duplicate_1_regout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_pipeline[3][15]~_Duplicate_1_regout\);

-- Location: LCCOMB_X38_Y23_N0
\data_pipeline[4][15]~_Duplicate_1feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \data_pipeline[4][15]~_Duplicate_1feeder_combout\ = \data_pipeline[3][15]~_Duplicate_1_regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_pipeline[3][15]~_Duplicate_1_regout\,
	combout => \data_pipeline[4][15]~_Duplicate_1feeder_combout\);

-- Location: LCFF_X38_Y23_N1
\data_pipeline[4][15]~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \data_pipeline[4][15]~_Duplicate_1feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_pipeline[4][15]~_Duplicate_1_regout\);

-- Location: LCCOMB_X38_Y23_N6
\data_pipeline[5][15]~_Duplicate_1feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \data_pipeline[5][15]~_Duplicate_1feeder_combout\ = \data_pipeline[4][15]~_Duplicate_1_regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_pipeline[4][15]~_Duplicate_1_regout\,
	combout => \data_pipeline[5][15]~_Duplicate_1feeder_combout\);

-- Location: LCFF_X38_Y23_N7
\data_pipeline[5][15]~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \data_pipeline[5][15]~_Duplicate_1feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_pipeline[5][15]~_Duplicate_1_regout\);

-- Location: LCCOMB_X38_Y23_N18
\data_pipeline[6][15]~_Duplicate_1feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \data_pipeline[6][15]~_Duplicate_1feeder_combout\ = \data_pipeline[5][15]~_Duplicate_1_regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_pipeline[5][15]~_Duplicate_1_regout\,
	combout => \data_pipeline[6][15]~_Duplicate_1feeder_combout\);

-- Location: LCFF_X38_Y23_N19
\data_pipeline[6][15]~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \data_pipeline[6][15]~_Duplicate_1feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_pipeline[6][15]~_Duplicate_1_regout\);

-- Location: LCCOMB_X38_Y23_N8
\data_pipeline[7][15]~_Duplicate_1feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \data_pipeline[7][15]~_Duplicate_1feeder_combout\ = \data_pipeline[6][15]~_Duplicate_1_regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_pipeline[6][15]~_Duplicate_1_regout\,
	combout => \data_pipeline[7][15]~_Duplicate_1feeder_combout\);

-- Location: LCFF_X38_Y23_N9
\data_pipeline[7][15]~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \data_pipeline[7][15]~_Duplicate_1feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_pipeline[7][15]~_Duplicate_1_regout\);

-- Location: DSPMULT_X39_Y19_N0
\Mult8|auto_generated|mac_mult1\ : cycloneii_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "0",
	dataa_width => 18,
	datab_clock => "none",
	datab_width => 18,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => \~GND~combout\,
	signb => \~GND~combout\,
	clk => \clk~clkctrl_outclk\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => VCC,
	dataa => \Mult8|auto_generated|mac_mult1_DATAA_bus\,
	datab => \Mult8|auto_generated|mac_mult1_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \Mult8|auto_generated|mac_mult1_DATAOUT_bus\);

-- Location: LCCOMB_X38_Y20_N0
\data_pipeline[8][0]~_Duplicate_1feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \data_pipeline[8][0]~_Duplicate_1feeder_combout\ = \data_pipeline[7][0]~_Duplicate_1_regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_pipeline[7][0]~_Duplicate_1_regout\,
	combout => \data_pipeline[8][0]~_Duplicate_1feeder_combout\);

-- Location: LCFF_X38_Y20_N1
\data_pipeline[8][0]~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \data_pipeline[8][0]~_Duplicate_1feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_pipeline[8][0]~_Duplicate_1_regout\);

-- Location: LCFF_X40_Y20_N15
\data_pipeline[8][1]~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \data_pipeline[7][1]~_Duplicate_1_regout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_pipeline[8][1]~_Duplicate_1_regout\);

-- Location: LCFF_X40_Y20_N9
\data_pipeline[8][2]~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \data_pipeline[7][2]~_Duplicate_1_regout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_pipeline[8][2]~_Duplicate_1_regout\);

-- Location: LCCOMB_X40_Y20_N22
\data_pipeline[8][3]~_Duplicate_1feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \data_pipeline[8][3]~_Duplicate_1feeder_combout\ = \data_pipeline[7][3]~_Duplicate_1_regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_pipeline[7][3]~_Duplicate_1_regout\,
	combout => \data_pipeline[8][3]~_Duplicate_1feeder_combout\);

-- Location: LCFF_X40_Y20_N23
\data_pipeline[8][3]~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \data_pipeline[8][3]~_Duplicate_1feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_pipeline[8][3]~_Duplicate_1_regout\);

-- Location: LCCOMB_X40_Y20_N12
\data_pipeline[8][4]~_Duplicate_1feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \data_pipeline[8][4]~_Duplicate_1feeder_combout\ = \data_pipeline[7][4]~_Duplicate_1_regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_pipeline[7][4]~_Duplicate_1_regout\,
	combout => \data_pipeline[8][4]~_Duplicate_1feeder_combout\);

-- Location: LCFF_X40_Y20_N13
\data_pipeline[8][4]~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \data_pipeline[8][4]~_Duplicate_1feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_pipeline[8][4]~_Duplicate_1_regout\);

-- Location: LCFF_X38_Y20_N5
\data_pipeline[8][5]~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \data_pipeline[7][5]~_Duplicate_1_regout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_pipeline[8][5]~_Duplicate_1_regout\);

-- Location: LCFF_X40_Y20_N11
\data_pipeline[8][6]~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \data_pipeline[7][6]~_Duplicate_1_regout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_pipeline[8][6]~_Duplicate_1_regout\);

-- Location: LCFF_X40_Y19_N31
\data_pipeline[8][7]~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \data_pipeline[7][7]~_Duplicate_1_regout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_pipeline[8][7]~_Duplicate_1_regout\);

-- Location: LCCOMB_X40_Y20_N4
\data_pipeline[8][8]~_Duplicate_1feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \data_pipeline[8][8]~_Duplicate_1feeder_combout\ = \data_pipeline[7][8]~_Duplicate_1_regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_pipeline[7][8]~_Duplicate_1_regout\,
	combout => \data_pipeline[8][8]~_Duplicate_1feeder_combout\);

-- Location: LCFF_X40_Y20_N5
\data_pipeline[8][8]~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \data_pipeline[8][8]~_Duplicate_1feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_pipeline[8][8]~_Duplicate_1_regout\);

-- Location: LCCOMB_X40_Y19_N16
\data_pipeline[8][9]~_Duplicate_1feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \data_pipeline[8][9]~_Duplicate_1feeder_combout\ = \data_pipeline[7][9]~_Duplicate_1_regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_pipeline[7][9]~_Duplicate_1_regout\,
	combout => \data_pipeline[8][9]~_Duplicate_1feeder_combout\);

-- Location: LCFF_X40_Y19_N17
\data_pipeline[8][9]~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \data_pipeline[8][9]~_Duplicate_1feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_pipeline[8][9]~_Duplicate_1_regout\);

-- Location: LCCOMB_X38_Y19_N30
\data_pipeline[8][10]~_Duplicate_1feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \data_pipeline[8][10]~_Duplicate_1feeder_combout\ = \data_pipeline[7][10]~_Duplicate_1_regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_pipeline[7][10]~_Duplicate_1_regout\,
	combout => \data_pipeline[8][10]~_Duplicate_1feeder_combout\);

-- Location: LCFF_X38_Y19_N31
\data_pipeline[8][10]~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \data_pipeline[8][10]~_Duplicate_1feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_pipeline[8][10]~_Duplicate_1_regout\);

-- Location: LCCOMB_X40_Y19_N2
\data_pipeline[8][11]~_Duplicate_1feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \data_pipeline[8][11]~_Duplicate_1feeder_combout\ = \data_pipeline[7][11]~_Duplicate_1_regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_pipeline[7][11]~_Duplicate_1_regout\,
	combout => \data_pipeline[8][11]~_Duplicate_1feeder_combout\);

-- Location: LCFF_X40_Y19_N3
\data_pipeline[8][11]~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \data_pipeline[8][11]~_Duplicate_1feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_pipeline[8][11]~_Duplicate_1_regout\);

-- Location: LCFF_X38_Y19_N13
\data_pipeline[8][12]~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \data_pipeline[7][12]~_Duplicate_1_regout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_pipeline[8][12]~_Duplicate_1_regout\);

-- Location: LCCOMB_X40_Y16_N18
\data_pipeline[8][13]~_Duplicate_1feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \data_pipeline[8][13]~_Duplicate_1feeder_combout\ = \data_pipeline[7][13]~_Duplicate_1_regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_pipeline[7][13]~_Duplicate_1_regout\,
	combout => \data_pipeline[8][13]~_Duplicate_1feeder_combout\);

-- Location: LCFF_X40_Y16_N19
\data_pipeline[8][13]~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \data_pipeline[8][13]~_Duplicate_1feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_pipeline[8][13]~_Duplicate_1_regout\);

-- Location: LCFF_X38_Y18_N1
\data_pipeline[8][14]~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \data_pipeline[7][14]~_Duplicate_1_regout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_pipeline[8][14]~_Duplicate_1_regout\);

-- Location: LCCOMB_X40_Y20_N30
\data_pipeline[8][15]~_Duplicate_1feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \data_pipeline[8][15]~_Duplicate_1feeder_combout\ = \data_pipeline[7][15]~_Duplicate_1_regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_pipeline[7][15]~_Duplicate_1_regout\,
	combout => \data_pipeline[8][15]~_Duplicate_1feeder_combout\);

-- Location: LCFF_X40_Y20_N31
\data_pipeline[8][15]~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \data_pipeline[8][15]~_Duplicate_1feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_pipeline[8][15]~_Duplicate_1_regout\);

-- Location: DSPMULT_X39_Y20_N0
\Mult9|auto_generated|mac_mult1\ : cycloneii_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "0",
	dataa_width => 18,
	datab_clock => "none",
	datab_width => 18,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => \~GND~combout\,
	signb => \~GND~combout\,
	clk => \clk~clkctrl_outclk\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => VCC,
	dataa => \Mult9|auto_generated|mac_mult1_DATAA_bus\,
	datab => \Mult9|auto_generated|mac_mult1_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \Mult9|auto_generated|mac_mult1_DATAOUT_bus\);

-- Location: LCFF_X38_Y20_N3
\data_pipeline[9][1]~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \data_pipeline[8][1]~_Duplicate_1_regout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_pipeline[9][1]~_Duplicate_1_regout\);

-- Location: LCCOMB_X38_Y20_N2
\Add7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add7~0_combout\ = (\data_pipeline[8][0]~_Duplicate_1_regout\ & (\data_pipeline[9][1]~_Duplicate_1_regout\ $ (VCC))) # (!\data_pipeline[8][0]~_Duplicate_1_regout\ & (\data_pipeline[9][1]~_Duplicate_1_regout\ & VCC))
-- \Add7~1\ = CARRY((\data_pipeline[8][0]~_Duplicate_1_regout\ & \data_pipeline[9][1]~_Duplicate_1_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_pipeline[8][0]~_Duplicate_1_regout\,
	datab => \data_pipeline[9][1]~_Duplicate_1_regout\,
	datad => VCC,
	combout => \Add7~0_combout\,
	cout => \Add7~1\);

-- Location: LCCOMB_X38_Y20_N6
\Add7~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add7~4_combout\ = ((\data_pipeline[8][2]~_Duplicate_1_regout\ $ (\Mult9|auto_generated|mac_out2~DATAOUT3\ $ (!\Add7~3\)))) # (GND)
-- \Add7~5\ = CARRY((\data_pipeline[8][2]~_Duplicate_1_regout\ & ((\Mult9|auto_generated|mac_out2~DATAOUT3\) # (!\Add7~3\))) # (!\data_pipeline[8][2]~_Duplicate_1_regout\ & (\Mult9|auto_generated|mac_out2~DATAOUT3\ & !\Add7~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \data_pipeline[8][2]~_Duplicate_1_regout\,
	datab => \Mult9|auto_generated|mac_out2~DATAOUT3\,
	datad => VCC,
	cin => \Add7~3\,
	combout => \Add7~4_combout\,
	cout => \Add7~5\);

-- Location: LCCOMB_X38_Y20_N8
\Add7~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add7~6_combout\ = (\Mult8|auto_generated|mac_out2~DATAOUT4\ & ((\Mult9|auto_generated|mac_out2~DATAOUT4\ & (\Add7~5\ & VCC)) # (!\Mult9|auto_generated|mac_out2~DATAOUT4\ & (!\Add7~5\)))) # (!\Mult8|auto_generated|mac_out2~DATAOUT4\ & 
-- ((\Mult9|auto_generated|mac_out2~DATAOUT4\ & (!\Add7~5\)) # (!\Mult9|auto_generated|mac_out2~DATAOUT4\ & ((\Add7~5\) # (GND)))))
-- \Add7~7\ = CARRY((\Mult8|auto_generated|mac_out2~DATAOUT4\ & (!\Mult9|auto_generated|mac_out2~DATAOUT4\ & !\Add7~5\)) # (!\Mult8|auto_generated|mac_out2~DATAOUT4\ & ((!\Add7~5\) # (!\Mult9|auto_generated|mac_out2~DATAOUT4\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult8|auto_generated|mac_out2~DATAOUT4\,
	datab => \Mult9|auto_generated|mac_out2~DATAOUT4\,
	datad => VCC,
	cin => \Add7~5\,
	combout => \Add7~6_combout\,
	cout => \Add7~7\);

-- Location: LCCOMB_X38_Y20_N12
\Add7~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add7~10_combout\ = (\Mult8|auto_generated|mac_out2~DATAOUT6\ & ((\Mult9|auto_generated|mac_out2~DATAOUT6\ & (\Add7~9\ & VCC)) # (!\Mult9|auto_generated|mac_out2~DATAOUT6\ & (!\Add7~9\)))) # (!\Mult8|auto_generated|mac_out2~DATAOUT6\ & 
-- ((\Mult9|auto_generated|mac_out2~DATAOUT6\ & (!\Add7~9\)) # (!\Mult9|auto_generated|mac_out2~DATAOUT6\ & ((\Add7~9\) # (GND)))))
-- \Add7~11\ = CARRY((\Mult8|auto_generated|mac_out2~DATAOUT6\ & (!\Mult9|auto_generated|mac_out2~DATAOUT6\ & !\Add7~9\)) # (!\Mult8|auto_generated|mac_out2~DATAOUT6\ & ((!\Add7~9\) # (!\Mult9|auto_generated|mac_out2~DATAOUT6\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult8|auto_generated|mac_out2~DATAOUT6\,
	datab => \Mult9|auto_generated|mac_out2~DATAOUT6\,
	datad => VCC,
	cin => \Add7~9\,
	combout => \Add7~10_combout\,
	cout => \Add7~11\);

-- Location: LCCOMB_X38_Y20_N14
\Add7~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add7~12_combout\ = ((\Mult9|auto_generated|mac_out2~DATAOUT7\ $ (\Mult8|auto_generated|mac_out2~DATAOUT7\ $ (!\Add7~11\)))) # (GND)
-- \Add7~13\ = CARRY((\Mult9|auto_generated|mac_out2~DATAOUT7\ & ((\Mult8|auto_generated|mac_out2~DATAOUT7\) # (!\Add7~11\))) # (!\Mult9|auto_generated|mac_out2~DATAOUT7\ & (\Mult8|auto_generated|mac_out2~DATAOUT7\ & !\Add7~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult9|auto_generated|mac_out2~DATAOUT7\,
	datab => \Mult8|auto_generated|mac_out2~DATAOUT7\,
	datad => VCC,
	cin => \Add7~11\,
	combout => \Add7~12_combout\,
	cout => \Add7~13\);

-- Location: LCCOMB_X38_Y20_N16
\Add7~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add7~14_combout\ = (\Mult8|auto_generated|mac_out2~DATAOUT8\ & ((\Mult9|auto_generated|mac_out2~DATAOUT8\ & (\Add7~13\ & VCC)) # (!\Mult9|auto_generated|mac_out2~DATAOUT8\ & (!\Add7~13\)))) # (!\Mult8|auto_generated|mac_out2~DATAOUT8\ & 
-- ((\Mult9|auto_generated|mac_out2~DATAOUT8\ & (!\Add7~13\)) # (!\Mult9|auto_generated|mac_out2~DATAOUT8\ & ((\Add7~13\) # (GND)))))
-- \Add7~15\ = CARRY((\Mult8|auto_generated|mac_out2~DATAOUT8\ & (!\Mult9|auto_generated|mac_out2~DATAOUT8\ & !\Add7~13\)) # (!\Mult8|auto_generated|mac_out2~DATAOUT8\ & ((!\Add7~13\) # (!\Mult9|auto_generated|mac_out2~DATAOUT8\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult8|auto_generated|mac_out2~DATAOUT8\,
	datab => \Mult9|auto_generated|mac_out2~DATAOUT8\,
	datad => VCC,
	cin => \Add7~13\,
	combout => \Add7~14_combout\,
	cout => \Add7~15\);

-- Location: LCCOMB_X38_Y20_N22
\Add7~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add7~20_combout\ = ((\Mult9|auto_generated|mac_out2~DATAOUT11\ $ (\Mult8|auto_generated|mac_out2~DATAOUT11\ $ (!\Add7~19\)))) # (GND)
-- \Add7~21\ = CARRY((\Mult9|auto_generated|mac_out2~DATAOUT11\ & ((\Mult8|auto_generated|mac_out2~DATAOUT11\) # (!\Add7~19\))) # (!\Mult9|auto_generated|mac_out2~DATAOUT11\ & (\Mult8|auto_generated|mac_out2~DATAOUT11\ & !\Add7~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult9|auto_generated|mac_out2~DATAOUT11\,
	datab => \Mult8|auto_generated|mac_out2~DATAOUT11\,
	datad => VCC,
	cin => \Add7~19\,
	combout => \Add7~20_combout\,
	cout => \Add7~21\);

-- Location: LCCOMB_X38_Y20_N28
\Add7~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add7~26_combout\ = (\Mult8|auto_generated|mac_out2~DATAOUT14\ & ((\Mult9|auto_generated|mac_out2~DATAOUT14\ & (\Add7~25\ & VCC)) # (!\Mult9|auto_generated|mac_out2~DATAOUT14\ & (!\Add7~25\)))) # (!\Mult8|auto_generated|mac_out2~DATAOUT14\ & 
-- ((\Mult9|auto_generated|mac_out2~DATAOUT14\ & (!\Add7~25\)) # (!\Mult9|auto_generated|mac_out2~DATAOUT14\ & ((\Add7~25\) # (GND)))))
-- \Add7~27\ = CARRY((\Mult8|auto_generated|mac_out2~DATAOUT14\ & (!\Mult9|auto_generated|mac_out2~DATAOUT14\ & !\Add7~25\)) # (!\Mult8|auto_generated|mac_out2~DATAOUT14\ & ((!\Add7~25\) # (!\Mult9|auto_generated|mac_out2~DATAOUT14\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult8|auto_generated|mac_out2~DATAOUT14\,
	datab => \Mult9|auto_generated|mac_out2~DATAOUT14\,
	datad => VCC,
	cin => \Add7~25\,
	combout => \Add7~26_combout\,
	cout => \Add7~27\);

-- Location: LCCOMB_X38_Y20_N30
\Add7~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add7~28_combout\ = ((\Mult9|auto_generated|mac_out2~DATAOUT15\ $ (\Mult8|auto_generated|mac_out2~DATAOUT15\ $ (!\Add7~27\)))) # (GND)
-- \Add7~29\ = CARRY((\Mult9|auto_generated|mac_out2~DATAOUT15\ & ((\Mult8|auto_generated|mac_out2~DATAOUT15\) # (!\Add7~27\))) # (!\Mult9|auto_generated|mac_out2~DATAOUT15\ & (\Mult8|auto_generated|mac_out2~DATAOUT15\ & !\Add7~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult9|auto_generated|mac_out2~DATAOUT15\,
	datab => \Mult8|auto_generated|mac_out2~DATAOUT15\,
	datad => VCC,
	cin => \Add7~27\,
	combout => \Add7~28_combout\,
	cout => \Add7~29\);

-- Location: LCCOMB_X38_Y19_N2
\Add7~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add7~32_combout\ = ((\Mult9|auto_generated|mac_out2~DATAOUT17\ $ (\Mult8|auto_generated|mac_out2~DATAOUT17\ $ (!\Add7~31\)))) # (GND)
-- \Add7~33\ = CARRY((\Mult9|auto_generated|mac_out2~DATAOUT17\ & ((\Mult8|auto_generated|mac_out2~DATAOUT17\) # (!\Add7~31\))) # (!\Mult9|auto_generated|mac_out2~DATAOUT17\ & (\Mult8|auto_generated|mac_out2~DATAOUT17\ & !\Add7~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult9|auto_generated|mac_out2~DATAOUT17\,
	datab => \Mult8|auto_generated|mac_out2~DATAOUT17\,
	datad => VCC,
	cin => \Add7~31\,
	combout => \Add7~32_combout\,
	cout => \Add7~33\);

-- Location: DSPMULT_X39_Y21_N0
\Mult3|auto_generated|mac_mult1\ : cycloneii_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "0",
	dataa_width => 18,
	datab_clock => "none",
	datab_width => 18,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => \~GND~combout\,
	signb => \~GND~combout\,
	clk => \clk~clkctrl_outclk\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => VCC,
	dataa => \Mult3|auto_generated|mac_mult1_DATAA_bus\,
	datab => \Mult3|auto_generated|mac_mult1_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \Mult3|auto_generated|mac_mult1_DATAOUT_bus\);

-- Location: DSPMULT_X39_Y17_N0
\Mult0|auto_generated|mac_mult1\ : cycloneii_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "0",
	dataa_width => 18,
	datab_clock => "none",
	datab_width => 18,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => \~GND~combout\,
	signb => \~GND~combout\,
	clk => \clk~clkctrl_outclk\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => VCC,
	dataa => \Mult0|auto_generated|mac_mult1_DATAA_bus\,
	datab => \Mult0|auto_generated|mac_mult1_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \Mult0|auto_generated|mac_mult1_DATAOUT_bus\);

-- Location: DSPMULT_X39_Y18_N0
\Mult1|auto_generated|mac_mult1\ : cycloneii_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "0",
	dataa_width => 18,
	datab_clock => "none",
	datab_width => 18,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => \~GND~combout\,
	signb => \~GND~combout\,
	clk => \clk~clkctrl_outclk\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => VCC,
	dataa => \Mult1|auto_generated|mac_mult1_DATAA_bus\,
	datab => \Mult1|auto_generated|mac_mult1_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \Mult1|auto_generated|mac_mult1_DATAOUT_bus\);

-- Location: LCCOMB_X40_Y18_N2
\Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = (\Mult1|auto_generated|mac_out2~DATAOUT1\ & (\data_pipeline[0][0]~_Duplicate_1_regout\ $ (VCC))) # (!\Mult1|auto_generated|mac_out2~DATAOUT1\ & (\data_pipeline[0][0]~_Duplicate_1_regout\ & VCC))
-- \Add0~1\ = CARRY((\Mult1|auto_generated|mac_out2~DATAOUT1\ & \data_pipeline[0][0]~_Duplicate_1_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|mac_out2~DATAOUT1\,
	datab => \data_pipeline[0][0]~_Duplicate_1_regout\,
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X40_Y18_N4
\Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (\data_pipeline[0][1]~_Duplicate_1_regout\ & ((\Mult1|auto_generated|mac_out2~DATAOUT2\ & (\Add0~1\ & VCC)) # (!\Mult1|auto_generated|mac_out2~DATAOUT2\ & (!\Add0~1\)))) # (!\data_pipeline[0][1]~_Duplicate_1_regout\ & 
-- ((\Mult1|auto_generated|mac_out2~DATAOUT2\ & (!\Add0~1\)) # (!\Mult1|auto_generated|mac_out2~DATAOUT2\ & ((\Add0~1\) # (GND)))))
-- \Add0~3\ = CARRY((\data_pipeline[0][1]~_Duplicate_1_regout\ & (!\Mult1|auto_generated|mac_out2~DATAOUT2\ & !\Add0~1\)) # (!\data_pipeline[0][1]~_Duplicate_1_regout\ & ((!\Add0~1\) # (!\Mult1|auto_generated|mac_out2~DATAOUT2\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \data_pipeline[0][1]~_Duplicate_1_regout\,
	datab => \Mult1|auto_generated|mac_out2~DATAOUT2\,
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X40_Y18_N10
\Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = ((\Mult1|auto_generated|mac_out2~DATAOUT5\ $ (\Mult0|auto_generated|mac_out2~DATAOUT5\ $ (!\Add0~7\)))) # (GND)
-- \Add0~9\ = CARRY((\Mult1|auto_generated|mac_out2~DATAOUT5\ & ((\Mult0|auto_generated|mac_out2~DATAOUT5\) # (!\Add0~7\))) # (!\Mult1|auto_generated|mac_out2~DATAOUT5\ & (\Mult0|auto_generated|mac_out2~DATAOUT5\ & !\Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|mac_out2~DATAOUT5\,
	datab => \Mult0|auto_generated|mac_out2~DATAOUT5\,
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X40_Y18_N12
\Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (\Mult1|auto_generated|mac_out2~DATAOUT6\ & ((\Mult0|auto_generated|mac_out2~DATAOUT6\ & (\Add0~9\ & VCC)) # (!\Mult0|auto_generated|mac_out2~DATAOUT6\ & (!\Add0~9\)))) # (!\Mult1|auto_generated|mac_out2~DATAOUT6\ & 
-- ((\Mult0|auto_generated|mac_out2~DATAOUT6\ & (!\Add0~9\)) # (!\Mult0|auto_generated|mac_out2~DATAOUT6\ & ((\Add0~9\) # (GND)))))
-- \Add0~11\ = CARRY((\Mult1|auto_generated|mac_out2~DATAOUT6\ & (!\Mult0|auto_generated|mac_out2~DATAOUT6\ & !\Add0~9\)) # (!\Mult1|auto_generated|mac_out2~DATAOUT6\ & ((!\Add0~9\) # (!\Mult0|auto_generated|mac_out2~DATAOUT6\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|mac_out2~DATAOUT6\,
	datab => \Mult0|auto_generated|mac_out2~DATAOUT6\,
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X40_Y18_N14
\Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = ((\Mult1|auto_generated|mac_out2~DATAOUT7\ $ (\Mult0|auto_generated|mac_out2~DATAOUT7\ $ (!\Add0~11\)))) # (GND)
-- \Add0~13\ = CARRY((\Mult1|auto_generated|mac_out2~DATAOUT7\ & ((\Mult0|auto_generated|mac_out2~DATAOUT7\) # (!\Add0~11\))) # (!\Mult1|auto_generated|mac_out2~DATAOUT7\ & (\Mult0|auto_generated|mac_out2~DATAOUT7\ & !\Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|mac_out2~DATAOUT7\,
	datab => \Mult0|auto_generated|mac_out2~DATAOUT7\,
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X40_Y18_N16
\Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (\Mult1|auto_generated|mac_out2~DATAOUT8\ & ((\Mult0|auto_generated|mac_out2~DATAOUT8\ & (\Add0~13\ & VCC)) # (!\Mult0|auto_generated|mac_out2~DATAOUT8\ & (!\Add0~13\)))) # (!\Mult1|auto_generated|mac_out2~DATAOUT8\ & 
-- ((\Mult0|auto_generated|mac_out2~DATAOUT8\ & (!\Add0~13\)) # (!\Mult0|auto_generated|mac_out2~DATAOUT8\ & ((\Add0~13\) # (GND)))))
-- \Add0~15\ = CARRY((\Mult1|auto_generated|mac_out2~DATAOUT8\ & (!\Mult0|auto_generated|mac_out2~DATAOUT8\ & !\Add0~13\)) # (!\Mult1|auto_generated|mac_out2~DATAOUT8\ & ((!\Add0~13\) # (!\Mult0|auto_generated|mac_out2~DATAOUT8\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|mac_out2~DATAOUT8\,
	datab => \Mult0|auto_generated|mac_out2~DATAOUT8\,
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: LCCOMB_X40_Y18_N22
\Add0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = ((\Mult0|auto_generated|mac_out2~DATAOUT11\ $ (\Mult1|auto_generated|mac_out2~DATAOUT11\ $ (!\Add0~19\)))) # (GND)
-- \Add0~21\ = CARRY((\Mult0|auto_generated|mac_out2~DATAOUT11\ & ((\Mult1|auto_generated|mac_out2~DATAOUT11\) # (!\Add0~19\))) # (!\Mult0|auto_generated|mac_out2~DATAOUT11\ & (\Mult1|auto_generated|mac_out2~DATAOUT11\ & !\Add0~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out2~DATAOUT11\,
	datab => \Mult1|auto_generated|mac_out2~DATAOUT11\,
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~20_combout\,
	cout => \Add0~21\);

-- Location: LCCOMB_X40_Y18_N24
\Add0~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (\Mult0|auto_generated|mac_out2~DATAOUT12\ & ((\Mult1|auto_generated|mac_out2~DATAOUT12\ & (\Add0~21\ & VCC)) # (!\Mult1|auto_generated|mac_out2~DATAOUT12\ & (!\Add0~21\)))) # (!\Mult0|auto_generated|mac_out2~DATAOUT12\ & 
-- ((\Mult1|auto_generated|mac_out2~DATAOUT12\ & (!\Add0~21\)) # (!\Mult1|auto_generated|mac_out2~DATAOUT12\ & ((\Add0~21\) # (GND)))))
-- \Add0~23\ = CARRY((\Mult0|auto_generated|mac_out2~DATAOUT12\ & (!\Mult1|auto_generated|mac_out2~DATAOUT12\ & !\Add0~21\)) # (!\Mult0|auto_generated|mac_out2~DATAOUT12\ & ((!\Add0~21\) # (!\Mult1|auto_generated|mac_out2~DATAOUT12\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out2~DATAOUT12\,
	datab => \Mult1|auto_generated|mac_out2~DATAOUT12\,
	datad => VCC,
	cin => \Add0~21\,
	combout => \Add0~22_combout\,
	cout => \Add0~23\);

-- Location: LCCOMB_X40_Y18_N26
\Add0~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = ((\Mult1|auto_generated|mac_out2~DATAOUT13\ $ (\Mult0|auto_generated|mac_out2~DATAOUT13\ $ (!\Add0~23\)))) # (GND)
-- \Add0~25\ = CARRY((\Mult1|auto_generated|mac_out2~DATAOUT13\ & ((\Mult0|auto_generated|mac_out2~DATAOUT13\) # (!\Add0~23\))) # (!\Mult1|auto_generated|mac_out2~DATAOUT13\ & (\Mult0|auto_generated|mac_out2~DATAOUT13\ & !\Add0~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|mac_out2~DATAOUT13\,
	datab => \Mult0|auto_generated|mac_out2~DATAOUT13\,
	datad => VCC,
	cin => \Add0~23\,
	combout => \Add0~24_combout\,
	cout => \Add0~25\);

-- Location: LCCOMB_X40_Y18_N28
\Add0~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = (\Mult1|auto_generated|mac_out2~DATAOUT14\ & ((\Mult0|auto_generated|mac_out2~DATAOUT14\ & (\Add0~25\ & VCC)) # (!\Mult0|auto_generated|mac_out2~DATAOUT14\ & (!\Add0~25\)))) # (!\Mult1|auto_generated|mac_out2~DATAOUT14\ & 
-- ((\Mult0|auto_generated|mac_out2~DATAOUT14\ & (!\Add0~25\)) # (!\Mult0|auto_generated|mac_out2~DATAOUT14\ & ((\Add0~25\) # (GND)))))
-- \Add0~27\ = CARRY((\Mult1|auto_generated|mac_out2~DATAOUT14\ & (!\Mult0|auto_generated|mac_out2~DATAOUT14\ & !\Add0~25\)) # (!\Mult1|auto_generated|mac_out2~DATAOUT14\ & ((!\Add0~25\) # (!\Mult0|auto_generated|mac_out2~DATAOUT14\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|mac_out2~DATAOUT14\,
	datab => \Mult0|auto_generated|mac_out2~DATAOUT14\,
	datad => VCC,
	cin => \Add0~25\,
	combout => \Add0~26_combout\,
	cout => \Add0~27\);

-- Location: DSPMULT_X39_Y22_N0
\Mult2|auto_generated|mac_mult1\ : cycloneii_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "0",
	dataa_width => 18,
	datab_clock => "none",
	datab_width => 18,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => \~GND~combout\,
	signb => \~GND~combout\,
	clk => \clk~clkctrl_outclk\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => VCC,
	dataa => \Mult2|auto_generated|mac_mult1_DATAA_bus\,
	datab => \Mult2|auto_generated|mac_mult1_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \Mult2|auto_generated|mac_mult1_DATAOUT_bus\);

-- Location: LCCOMB_X40_Y22_N0
\Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = (\data_pipeline[1][0]~_Duplicate_1_regout\ & (\data_pipeline[2][0]~_Duplicate_1_regout\ $ (VCC))) # (!\data_pipeline[1][0]~_Duplicate_1_regout\ & (\data_pipeline[2][0]~_Duplicate_1_regout\ & VCC))
-- \Add1~1\ = CARRY((\data_pipeline[1][0]~_Duplicate_1_regout\ & \data_pipeline[2][0]~_Duplicate_1_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_pipeline[1][0]~_Duplicate_1_regout\,
	datab => \data_pipeline[2][0]~_Duplicate_1_regout\,
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: LCCOMB_X40_Y22_N4
\Add1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = ((\Mult2|auto_generated|mac_out2~DATAOUT2\ $ (\Add0~2_combout\ $ (!\Add1~3\)))) # (GND)
-- \Add1~5\ = CARRY((\Mult2|auto_generated|mac_out2~DATAOUT2\ & ((\Add0~2_combout\) # (!\Add1~3\))) # (!\Mult2|auto_generated|mac_out2~DATAOUT2\ & (\Add0~2_combout\ & !\Add1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult2|auto_generated|mac_out2~DATAOUT2\,
	datab => \Add0~2_combout\,
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: LCCOMB_X40_Y22_N6
\Add1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (\Add0~4_combout\ & ((\Mult2|auto_generated|mac_out2~DATAOUT3\ & (\Add1~5\ & VCC)) # (!\Mult2|auto_generated|mac_out2~DATAOUT3\ & (!\Add1~5\)))) # (!\Add0~4_combout\ & ((\Mult2|auto_generated|mac_out2~DATAOUT3\ & (!\Add1~5\)) # 
-- (!\Mult2|auto_generated|mac_out2~DATAOUT3\ & ((\Add1~5\) # (GND)))))
-- \Add1~7\ = CARRY((\Add0~4_combout\ & (!\Mult2|auto_generated|mac_out2~DATAOUT3\ & !\Add1~5\)) # (!\Add0~4_combout\ & ((!\Add1~5\) # (!\Mult2|auto_generated|mac_out2~DATAOUT3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~4_combout\,
	datab => \Mult2|auto_generated|mac_out2~DATAOUT3\,
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: LCCOMB_X40_Y22_N16
\Add1~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~16_combout\ = ((\Mult2|auto_generated|mac_out2~DATAOUT8\ $ (\Add0~14_combout\ $ (!\Add1~15\)))) # (GND)
-- \Add1~17\ = CARRY((\Mult2|auto_generated|mac_out2~DATAOUT8\ & ((\Add0~14_combout\) # (!\Add1~15\))) # (!\Mult2|auto_generated|mac_out2~DATAOUT8\ & (\Add0~14_combout\ & !\Add1~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult2|auto_generated|mac_out2~DATAOUT8\,
	datab => \Add0~14_combout\,
	datad => VCC,
	cin => \Add1~15\,
	combout => \Add1~16_combout\,
	cout => \Add1~17\);

-- Location: LCCOMB_X40_Y22_N18
\Add1~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~18_combout\ = (\Add0~16_combout\ & ((\Mult2|auto_generated|mac_out2~DATAOUT9\ & (\Add1~17\ & VCC)) # (!\Mult2|auto_generated|mac_out2~DATAOUT9\ & (!\Add1~17\)))) # (!\Add0~16_combout\ & ((\Mult2|auto_generated|mac_out2~DATAOUT9\ & (!\Add1~17\)) # 
-- (!\Mult2|auto_generated|mac_out2~DATAOUT9\ & ((\Add1~17\) # (GND)))))
-- \Add1~19\ = CARRY((\Add0~16_combout\ & (!\Mult2|auto_generated|mac_out2~DATAOUT9\ & !\Add1~17\)) # (!\Add0~16_combout\ & ((!\Add1~17\) # (!\Mult2|auto_generated|mac_out2~DATAOUT9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~16_combout\,
	datab => \Mult2|auto_generated|mac_out2~DATAOUT9\,
	datad => VCC,
	cin => \Add1~17\,
	combout => \Add1~18_combout\,
	cout => \Add1~19\);

-- Location: LCCOMB_X40_Y22_N22
\Add1~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~22_combout\ = (\Mult2|auto_generated|mac_out2~DATAOUT11\ & ((\Add0~20_combout\ & (\Add1~21\ & VCC)) # (!\Add0~20_combout\ & (!\Add1~21\)))) # (!\Mult2|auto_generated|mac_out2~DATAOUT11\ & ((\Add0~20_combout\ & (!\Add1~21\)) # (!\Add0~20_combout\ & 
-- ((\Add1~21\) # (GND)))))
-- \Add1~23\ = CARRY((\Mult2|auto_generated|mac_out2~DATAOUT11\ & (!\Add0~20_combout\ & !\Add1~21\)) # (!\Mult2|auto_generated|mac_out2~DATAOUT11\ & ((!\Add1~21\) # (!\Add0~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult2|auto_generated|mac_out2~DATAOUT11\,
	datab => \Add0~20_combout\,
	datad => VCC,
	cin => \Add1~21\,
	combout => \Add1~22_combout\,
	cout => \Add1~23\);

-- Location: LCCOMB_X40_Y22_N24
\Add1~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~24_combout\ = ((\Mult2|auto_generated|mac_out2~DATAOUT12\ $ (\Add0~22_combout\ $ (!\Add1~23\)))) # (GND)
-- \Add1~25\ = CARRY((\Mult2|auto_generated|mac_out2~DATAOUT12\ & ((\Add0~22_combout\) # (!\Add1~23\))) # (!\Mult2|auto_generated|mac_out2~DATAOUT12\ & (\Add0~22_combout\ & !\Add1~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult2|auto_generated|mac_out2~DATAOUT12\,
	datab => \Add0~22_combout\,
	datad => VCC,
	cin => \Add1~23\,
	combout => \Add1~24_combout\,
	cout => \Add1~25\);

-- Location: LCCOMB_X40_Y22_N26
\Add1~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~26_combout\ = (\Mult2|auto_generated|mac_out2~DATAOUT13\ & ((\Add0~24_combout\ & (\Add1~25\ & VCC)) # (!\Add0~24_combout\ & (!\Add1~25\)))) # (!\Mult2|auto_generated|mac_out2~DATAOUT13\ & ((\Add0~24_combout\ & (!\Add1~25\)) # (!\Add0~24_combout\ & 
-- ((\Add1~25\) # (GND)))))
-- \Add1~27\ = CARRY((\Mult2|auto_generated|mac_out2~DATAOUT13\ & (!\Add0~24_combout\ & !\Add1~25\)) # (!\Mult2|auto_generated|mac_out2~DATAOUT13\ & ((!\Add1~25\) # (!\Add0~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult2|auto_generated|mac_out2~DATAOUT13\,
	datab => \Add0~24_combout\,
	datad => VCC,
	cin => \Add1~25\,
	combout => \Add1~26_combout\,
	cout => \Add1~27\);

-- Location: LCCOMB_X40_Y22_N28
\Add1~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~28_combout\ = ((\Mult2|auto_generated|mac_out2~DATAOUT14\ $ (\Add0~26_combout\ $ (!\Add1~27\)))) # (GND)
-- \Add1~29\ = CARRY((\Mult2|auto_generated|mac_out2~DATAOUT14\ & ((\Add0~26_combout\) # (!\Add1~27\))) # (!\Mult2|auto_generated|mac_out2~DATAOUT14\ & (\Add0~26_combout\ & !\Add1~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult2|auto_generated|mac_out2~DATAOUT14\,
	datab => \Add0~26_combout\,
	datad => VCC,
	cin => \Add1~27\,
	combout => \Add1~28_combout\,
	cout => \Add1~29\);

-- Location: LCCOMB_X41_Y22_N4
\Add2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~4_combout\ = ((\Mult3|auto_generated|mac_out2~DATAOUT3\ $ (\Add1~6_combout\ $ (!\Add2~3\)))) # (GND)
-- \Add2~5\ = CARRY((\Mult3|auto_generated|mac_out2~DATAOUT3\ & ((\Add1~6_combout\) # (!\Add2~3\))) # (!\Mult3|auto_generated|mac_out2~DATAOUT3\ & (\Add1~6_combout\ & !\Add2~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult3|auto_generated|mac_out2~DATAOUT3\,
	datab => \Add1~6_combout\,
	datad => VCC,
	cin => \Add2~3\,
	combout => \Add2~4_combout\,
	cout => \Add2~5\);

-- Location: LCCOMB_X41_Y22_N8
\Add2~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~8_combout\ = ((\Add1~10_combout\ $ (\Mult3|auto_generated|mac_out2~DATAOUT5\ $ (!\Add2~7\)))) # (GND)
-- \Add2~9\ = CARRY((\Add1~10_combout\ & ((\Mult3|auto_generated|mac_out2~DATAOUT5\) # (!\Add2~7\))) # (!\Add1~10_combout\ & (\Mult3|auto_generated|mac_out2~DATAOUT5\ & !\Add2~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~10_combout\,
	datab => \Mult3|auto_generated|mac_out2~DATAOUT5\,
	datad => VCC,
	cin => \Add2~7\,
	combout => \Add2~8_combout\,
	cout => \Add2~9\);

-- Location: LCCOMB_X41_Y22_N10
\Add2~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~10_combout\ = (\Add1~12_combout\ & ((\Mult3|auto_generated|mac_out2~DATAOUT6\ & (\Add2~9\ & VCC)) # (!\Mult3|auto_generated|mac_out2~DATAOUT6\ & (!\Add2~9\)))) # (!\Add1~12_combout\ & ((\Mult3|auto_generated|mac_out2~DATAOUT6\ & (!\Add2~9\)) # 
-- (!\Mult3|auto_generated|mac_out2~DATAOUT6\ & ((\Add2~9\) # (GND)))))
-- \Add2~11\ = CARRY((\Add1~12_combout\ & (!\Mult3|auto_generated|mac_out2~DATAOUT6\ & !\Add2~9\)) # (!\Add1~12_combout\ & ((!\Add2~9\) # (!\Mult3|auto_generated|mac_out2~DATAOUT6\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~12_combout\,
	datab => \Mult3|auto_generated|mac_out2~DATAOUT6\,
	datad => VCC,
	cin => \Add2~9\,
	combout => \Add2~10_combout\,
	cout => \Add2~11\);

-- Location: LCCOMB_X41_Y22_N12
\Add2~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~12_combout\ = ((\Add1~14_combout\ $ (\Mult3|auto_generated|mac_out2~DATAOUT7\ $ (!\Add2~11\)))) # (GND)
-- \Add2~13\ = CARRY((\Add1~14_combout\ & ((\Mult3|auto_generated|mac_out2~DATAOUT7\) # (!\Add2~11\))) # (!\Add1~14_combout\ & (\Mult3|auto_generated|mac_out2~DATAOUT7\ & !\Add2~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~14_combout\,
	datab => \Mult3|auto_generated|mac_out2~DATAOUT7\,
	datad => VCC,
	cin => \Add2~11\,
	combout => \Add2~12_combout\,
	cout => \Add2~13\);

-- Location: LCCOMB_X41_Y22_N16
\Add2~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~16_combout\ = ((\Mult3|auto_generated|mac_out2~DATAOUT9\ $ (\Add1~18_combout\ $ (!\Add2~15\)))) # (GND)
-- \Add2~17\ = CARRY((\Mult3|auto_generated|mac_out2~DATAOUT9\ & ((\Add1~18_combout\) # (!\Add2~15\))) # (!\Mult3|auto_generated|mac_out2~DATAOUT9\ & (\Add1~18_combout\ & !\Add2~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult3|auto_generated|mac_out2~DATAOUT9\,
	datab => \Add1~18_combout\,
	datad => VCC,
	cin => \Add2~15\,
	combout => \Add2~16_combout\,
	cout => \Add2~17\);

-- Location: LCCOMB_X41_Y22_N18
\Add2~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~18_combout\ = (\Add1~20_combout\ & ((\Mult3|auto_generated|mac_out2~DATAOUT10\ & (\Add2~17\ & VCC)) # (!\Mult3|auto_generated|mac_out2~DATAOUT10\ & (!\Add2~17\)))) # (!\Add1~20_combout\ & ((\Mult3|auto_generated|mac_out2~DATAOUT10\ & (!\Add2~17\)) # 
-- (!\Mult3|auto_generated|mac_out2~DATAOUT10\ & ((\Add2~17\) # (GND)))))
-- \Add2~19\ = CARRY((\Add1~20_combout\ & (!\Mult3|auto_generated|mac_out2~DATAOUT10\ & !\Add2~17\)) # (!\Add1~20_combout\ & ((!\Add2~17\) # (!\Mult3|auto_generated|mac_out2~DATAOUT10\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~20_combout\,
	datab => \Mult3|auto_generated|mac_out2~DATAOUT10\,
	datad => VCC,
	cin => \Add2~17\,
	combout => \Add2~18_combout\,
	cout => \Add2~19\);

-- Location: LCCOMB_X41_Y22_N20
\Add2~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~20_combout\ = ((\Mult3|auto_generated|mac_out2~DATAOUT11\ $ (\Add1~22_combout\ $ (!\Add2~19\)))) # (GND)
-- \Add2~21\ = CARRY((\Mult3|auto_generated|mac_out2~DATAOUT11\ & ((\Add1~22_combout\) # (!\Add2~19\))) # (!\Mult3|auto_generated|mac_out2~DATAOUT11\ & (\Add1~22_combout\ & !\Add2~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult3|auto_generated|mac_out2~DATAOUT11\,
	datab => \Add1~22_combout\,
	datad => VCC,
	cin => \Add2~19\,
	combout => \Add2~20_combout\,
	cout => \Add2~21\);

-- Location: LCCOMB_X41_Y22_N22
\Add2~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~22_combout\ = (\Mult3|auto_generated|mac_out2~DATAOUT12\ & ((\Add1~24_combout\ & (\Add2~21\ & VCC)) # (!\Add1~24_combout\ & (!\Add2~21\)))) # (!\Mult3|auto_generated|mac_out2~DATAOUT12\ & ((\Add1~24_combout\ & (!\Add2~21\)) # (!\Add1~24_combout\ & 
-- ((\Add2~21\) # (GND)))))
-- \Add2~23\ = CARRY((\Mult3|auto_generated|mac_out2~DATAOUT12\ & (!\Add1~24_combout\ & !\Add2~21\)) # (!\Mult3|auto_generated|mac_out2~DATAOUT12\ & ((!\Add2~21\) # (!\Add1~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult3|auto_generated|mac_out2~DATAOUT12\,
	datab => \Add1~24_combout\,
	datad => VCC,
	cin => \Add2~21\,
	combout => \Add2~22_combout\,
	cout => \Add2~23\);

-- Location: LCCOMB_X41_Y22_N24
\Add2~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~24_combout\ = ((\Mult3|auto_generated|mac_out2~DATAOUT13\ $ (\Add1~26_combout\ $ (!\Add2~23\)))) # (GND)
-- \Add2~25\ = CARRY((\Mult3|auto_generated|mac_out2~DATAOUT13\ & ((\Add1~26_combout\) # (!\Add2~23\))) # (!\Mult3|auto_generated|mac_out2~DATAOUT13\ & (\Add1~26_combout\ & !\Add2~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult3|auto_generated|mac_out2~DATAOUT13\,
	datab => \Add1~26_combout\,
	datad => VCC,
	cin => \Add2~23\,
	combout => \Add2~24_combout\,
	cout => \Add2~25\);

-- Location: LCCOMB_X41_Y22_N26
\Add2~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~26_combout\ = (\Mult3|auto_generated|mac_out2~DATAOUT14\ & ((\Add1~28_combout\ & (\Add2~25\ & VCC)) # (!\Add1~28_combout\ & (!\Add2~25\)))) # (!\Mult3|auto_generated|mac_out2~DATAOUT14\ & ((\Add1~28_combout\ & (!\Add2~25\)) # (!\Add1~28_combout\ & 
-- ((\Add2~25\) # (GND)))))
-- \Add2~27\ = CARRY((\Mult3|auto_generated|mac_out2~DATAOUT14\ & (!\Add1~28_combout\ & !\Add2~25\)) # (!\Mult3|auto_generated|mac_out2~DATAOUT14\ & ((!\Add2~25\) # (!\Add1~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult3|auto_generated|mac_out2~DATAOUT14\,
	datab => \Add1~28_combout\,
	datad => VCC,
	cin => \Add2~25\,
	combout => \Add2~26_combout\,
	cout => \Add2~27\);

-- Location: LCCOMB_X41_Y22_N28
\Add2~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~28_combout\ = ((\Add1~30_combout\ $ (\Mult3|auto_generated|mac_out2~DATAOUT15\ $ (!\Add2~27\)))) # (GND)
-- \Add2~29\ = CARRY((\Add1~30_combout\ & ((\Mult3|auto_generated|mac_out2~DATAOUT15\) # (!\Add2~27\))) # (!\Add1~30_combout\ & (\Mult3|auto_generated|mac_out2~DATAOUT15\ & !\Add2~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~30_combout\,
	datab => \Mult3|auto_generated|mac_out2~DATAOUT15\,
	datad => VCC,
	cin => \Add2~27\,
	combout => \Add2~28_combout\,
	cout => \Add2~29\);

-- Location: LCCOMB_X41_Y22_N30
\Add2~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~30_combout\ = (\Add1~32_combout\ & ((\Mult3|auto_generated|mac_out2~DATAOUT16\ & (\Add2~29\ & VCC)) # (!\Mult3|auto_generated|mac_out2~DATAOUT16\ & (!\Add2~29\)))) # (!\Add1~32_combout\ & ((\Mult3|auto_generated|mac_out2~DATAOUT16\ & (!\Add2~29\)) # 
-- (!\Mult3|auto_generated|mac_out2~DATAOUT16\ & ((\Add2~29\) # (GND)))))
-- \Add2~31\ = CARRY((\Add1~32_combout\ & (!\Mult3|auto_generated|mac_out2~DATAOUT16\ & !\Add2~29\)) # (!\Add1~32_combout\ & ((!\Add2~29\) # (!\Mult3|auto_generated|mac_out2~DATAOUT16\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~32_combout\,
	datab => \Mult3|auto_generated|mac_out2~DATAOUT16\,
	datad => VCC,
	cin => \Add2~29\,
	combout => \Add2~30_combout\,
	cout => \Add2~31\);

-- Location: DSPMULT_X39_Y23_N0
\Mult4|auto_generated|mac_mult1\ : cycloneii_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "0",
	dataa_width => 18,
	datab_clock => "none",
	datab_width => 18,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => \~GND~combout\,
	signb => \~GND~combout\,
	clk => \clk~clkctrl_outclk\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => VCC,
	dataa => \Mult4|auto_generated|mac_mult1_DATAA_bus\,
	datab => \Mult4|auto_generated|mac_mult1_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \Mult4|auto_generated|mac_mult1_DATAOUT_bus\);

-- Location: LCCOMB_X38_Y22_N0
\Add3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~0_combout\ = (\Add2~0_combout\ & (\data_pipeline[4][0]~_Duplicate_1_regout\ $ (VCC))) # (!\Add2~0_combout\ & (\data_pipeline[4][0]~_Duplicate_1_regout\ & VCC))
-- \Add3~1\ = CARRY((\Add2~0_combout\ & \data_pipeline[4][0]~_Duplicate_1_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~0_combout\,
	datab => \data_pipeline[4][0]~_Duplicate_1_regout\,
	datad => VCC,
	combout => \Add3~0_combout\,
	cout => \Add3~1\);

-- Location: LCCOMB_X38_Y22_N8
\Add3~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~8_combout\ = ((\Mult4|auto_generated|mac_out2~DATAOUT5\ $ (\Add2~8_combout\ $ (!\Add3~7\)))) # (GND)
-- \Add3~9\ = CARRY((\Mult4|auto_generated|mac_out2~DATAOUT5\ & ((\Add2~8_combout\) # (!\Add3~7\))) # (!\Mult4|auto_generated|mac_out2~DATAOUT5\ & (\Add2~8_combout\ & !\Add3~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult4|auto_generated|mac_out2~DATAOUT5\,
	datab => \Add2~8_combout\,
	datad => VCC,
	cin => \Add3~7\,
	combout => \Add3~8_combout\,
	cout => \Add3~9\);

-- Location: LCCOMB_X38_Y22_N10
\Add3~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~10_combout\ = (\Mult4|auto_generated|mac_out2~DATAOUT6\ & ((\Add2~10_combout\ & (\Add3~9\ & VCC)) # (!\Add2~10_combout\ & (!\Add3~9\)))) # (!\Mult4|auto_generated|mac_out2~DATAOUT6\ & ((\Add2~10_combout\ & (!\Add3~9\)) # (!\Add2~10_combout\ & 
-- ((\Add3~9\) # (GND)))))
-- \Add3~11\ = CARRY((\Mult4|auto_generated|mac_out2~DATAOUT6\ & (!\Add2~10_combout\ & !\Add3~9\)) # (!\Mult4|auto_generated|mac_out2~DATAOUT6\ & ((!\Add3~9\) # (!\Add2~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult4|auto_generated|mac_out2~DATAOUT6\,
	datab => \Add2~10_combout\,
	datad => VCC,
	cin => \Add3~9\,
	combout => \Add3~10_combout\,
	cout => \Add3~11\);

-- Location: LCCOMB_X38_Y22_N12
\Add3~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~12_combout\ = ((\Mult4|auto_generated|mac_out2~DATAOUT7\ $ (\Add2~12_combout\ $ (!\Add3~11\)))) # (GND)
-- \Add3~13\ = CARRY((\Mult4|auto_generated|mac_out2~DATAOUT7\ & ((\Add2~12_combout\) # (!\Add3~11\))) # (!\Mult4|auto_generated|mac_out2~DATAOUT7\ & (\Add2~12_combout\ & !\Add3~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult4|auto_generated|mac_out2~DATAOUT7\,
	datab => \Add2~12_combout\,
	datad => VCC,
	cin => \Add3~11\,
	combout => \Add3~12_combout\,
	cout => \Add3~13\);

-- Location: LCCOMB_X38_Y22_N14
\Add3~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~14_combout\ = (\Add2~14_combout\ & ((\Mult4|auto_generated|mac_out2~DATAOUT8\ & (\Add3~13\ & VCC)) # (!\Mult4|auto_generated|mac_out2~DATAOUT8\ & (!\Add3~13\)))) # (!\Add2~14_combout\ & ((\Mult4|auto_generated|mac_out2~DATAOUT8\ & (!\Add3~13\)) # 
-- (!\Mult4|auto_generated|mac_out2~DATAOUT8\ & ((\Add3~13\) # (GND)))))
-- \Add3~15\ = CARRY((\Add2~14_combout\ & (!\Mult4|auto_generated|mac_out2~DATAOUT8\ & !\Add3~13\)) # (!\Add2~14_combout\ & ((!\Add3~13\) # (!\Mult4|auto_generated|mac_out2~DATAOUT8\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~14_combout\,
	datab => \Mult4|auto_generated|mac_out2~DATAOUT8\,
	datad => VCC,
	cin => \Add3~13\,
	combout => \Add3~14_combout\,
	cout => \Add3~15\);

-- Location: LCCOMB_X38_Y22_N18
\Add3~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~18_combout\ = (\Mult4|auto_generated|mac_out2~DATAOUT10\ & ((\Add2~18_combout\ & (\Add3~17\ & VCC)) # (!\Add2~18_combout\ & (!\Add3~17\)))) # (!\Mult4|auto_generated|mac_out2~DATAOUT10\ & ((\Add2~18_combout\ & (!\Add3~17\)) # (!\Add2~18_combout\ & 
-- ((\Add3~17\) # (GND)))))
-- \Add3~19\ = CARRY((\Mult4|auto_generated|mac_out2~DATAOUT10\ & (!\Add2~18_combout\ & !\Add3~17\)) # (!\Mult4|auto_generated|mac_out2~DATAOUT10\ & ((!\Add3~17\) # (!\Add2~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult4|auto_generated|mac_out2~DATAOUT10\,
	datab => \Add2~18_combout\,
	datad => VCC,
	cin => \Add3~17\,
	combout => \Add3~18_combout\,
	cout => \Add3~19\);

-- Location: LCCOMB_X38_Y22_N22
\Add3~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~22_combout\ = (\Mult4|auto_generated|mac_out2~DATAOUT12\ & ((\Add2~22_combout\ & (\Add3~21\ & VCC)) # (!\Add2~22_combout\ & (!\Add3~21\)))) # (!\Mult4|auto_generated|mac_out2~DATAOUT12\ & ((\Add2~22_combout\ & (!\Add3~21\)) # (!\Add2~22_combout\ & 
-- ((\Add3~21\) # (GND)))))
-- \Add3~23\ = CARRY((\Mult4|auto_generated|mac_out2~DATAOUT12\ & (!\Add2~22_combout\ & !\Add3~21\)) # (!\Mult4|auto_generated|mac_out2~DATAOUT12\ & ((!\Add3~21\) # (!\Add2~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult4|auto_generated|mac_out2~DATAOUT12\,
	datab => \Add2~22_combout\,
	datad => VCC,
	cin => \Add3~21\,
	combout => \Add3~22_combout\,
	cout => \Add3~23\);

-- Location: LCCOMB_X38_Y22_N24
\Add3~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~24_combout\ = ((\Mult4|auto_generated|mac_out2~DATAOUT13\ $ (\Add2~24_combout\ $ (!\Add3~23\)))) # (GND)
-- \Add3~25\ = CARRY((\Mult4|auto_generated|mac_out2~DATAOUT13\ & ((\Add2~24_combout\) # (!\Add3~23\))) # (!\Mult4|auto_generated|mac_out2~DATAOUT13\ & (\Add2~24_combout\ & !\Add3~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult4|auto_generated|mac_out2~DATAOUT13\,
	datab => \Add2~24_combout\,
	datad => VCC,
	cin => \Add3~23\,
	combout => \Add3~24_combout\,
	cout => \Add3~25\);

-- Location: LCCOMB_X38_Y22_N28
\Add3~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~28_combout\ = ((\Mult4|auto_generated|mac_out2~DATAOUT15\ $ (\Add2~28_combout\ $ (!\Add3~27\)))) # (GND)
-- \Add3~29\ = CARRY((\Mult4|auto_generated|mac_out2~DATAOUT15\ & ((\Add2~28_combout\) # (!\Add3~27\))) # (!\Mult4|auto_generated|mac_out2~DATAOUT15\ & (\Add2~28_combout\ & !\Add3~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult4|auto_generated|mac_out2~DATAOUT15\,
	datab => \Add2~28_combout\,
	datad => VCC,
	cin => \Add3~27\,
	combout => \Add3~28_combout\,
	cout => \Add3~29\);

-- Location: LCCOMB_X38_Y22_N30
\Add3~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~30_combout\ = (\Mult4|auto_generated|mac_out2~DATAOUT16\ & ((\Add2~30_combout\ & (\Add3~29\ & VCC)) # (!\Add2~30_combout\ & (!\Add3~29\)))) # (!\Mult4|auto_generated|mac_out2~DATAOUT16\ & ((\Add2~30_combout\ & (!\Add3~29\)) # (!\Add2~30_combout\ & 
-- ((\Add3~29\) # (GND)))))
-- \Add3~31\ = CARRY((\Mult4|auto_generated|mac_out2~DATAOUT16\ & (!\Add2~30_combout\ & !\Add3~29\)) # (!\Mult4|auto_generated|mac_out2~DATAOUT16\ & ((!\Add3~29\) # (!\Add2~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult4|auto_generated|mac_out2~DATAOUT16\,
	datab => \Add2~30_combout\,
	datad => VCC,
	cin => \Add3~29\,
	combout => \Add3~30_combout\,
	cout => \Add3~31\);

-- Location: DSPMULT_X39_Y24_N0
\Mult5|auto_generated|mac_mult1\ : cycloneii_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "0",
	dataa_width => 18,
	datab_clock => "none",
	datab_width => 18,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => \~GND~combout\,
	signb => \~GND~combout\,
	clk => \clk~clkctrl_outclk\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => VCC,
	dataa => \Mult5|auto_generated|mac_mult1_DATAA_bus\,
	datab => \Mult5|auto_generated|mac_mult1_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \Mult5|auto_generated|mac_mult1_DATAOUT_bus\);

-- Location: LCCOMB_X37_Y22_N2
\Add4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add4~2_combout\ = (\Add3~2_combout\ & ((\Mult5|auto_generated|mac_out2~DATAOUT2\ & (\Add4~1\ & VCC)) # (!\Mult5|auto_generated|mac_out2~DATAOUT2\ & (!\Add4~1\)))) # (!\Add3~2_combout\ & ((\Mult5|auto_generated|mac_out2~DATAOUT2\ & (!\Add4~1\)) # 
-- (!\Mult5|auto_generated|mac_out2~DATAOUT2\ & ((\Add4~1\) # (GND)))))
-- \Add4~3\ = CARRY((\Add3~2_combout\ & (!\Mult5|auto_generated|mac_out2~DATAOUT2\ & !\Add4~1\)) # (!\Add3~2_combout\ & ((!\Add4~1\) # (!\Mult5|auto_generated|mac_out2~DATAOUT2\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~2_combout\,
	datab => \Mult5|auto_generated|mac_out2~DATAOUT2\,
	datad => VCC,
	cin => \Add4~1\,
	combout => \Add4~2_combout\,
	cout => \Add4~3\);

-- Location: LCCOMB_X37_Y22_N8
\Add4~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add4~8_combout\ = ((\Mult5|auto_generated|mac_out2~DATAOUT5\ $ (\Add3~8_combout\ $ (!\Add4~7\)))) # (GND)
-- \Add4~9\ = CARRY((\Mult5|auto_generated|mac_out2~DATAOUT5\ & ((\Add3~8_combout\) # (!\Add4~7\))) # (!\Mult5|auto_generated|mac_out2~DATAOUT5\ & (\Add3~8_combout\ & !\Add4~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult5|auto_generated|mac_out2~DATAOUT5\,
	datab => \Add3~8_combout\,
	datad => VCC,
	cin => \Add4~7\,
	combout => \Add4~8_combout\,
	cout => \Add4~9\);

-- Location: LCCOMB_X37_Y22_N16
\Add4~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add4~16_combout\ = ((\Add3~16_combout\ $ (\Mult5|auto_generated|mac_out2~DATAOUT9\ $ (!\Add4~15\)))) # (GND)
-- \Add4~17\ = CARRY((\Add3~16_combout\ & ((\Mult5|auto_generated|mac_out2~DATAOUT9\) # (!\Add4~15\))) # (!\Add3~16_combout\ & (\Mult5|auto_generated|mac_out2~DATAOUT9\ & !\Add4~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~16_combout\,
	datab => \Mult5|auto_generated|mac_out2~DATAOUT9\,
	datad => VCC,
	cin => \Add4~15\,
	combout => \Add4~16_combout\,
	cout => \Add4~17\);

-- Location: LCCOMB_X37_Y22_N18
\Add4~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add4~18_combout\ = (\Mult5|auto_generated|mac_out2~DATAOUT10\ & ((\Add3~18_combout\ & (\Add4~17\ & VCC)) # (!\Add3~18_combout\ & (!\Add4~17\)))) # (!\Mult5|auto_generated|mac_out2~DATAOUT10\ & ((\Add3~18_combout\ & (!\Add4~17\)) # (!\Add3~18_combout\ & 
-- ((\Add4~17\) # (GND)))))
-- \Add4~19\ = CARRY((\Mult5|auto_generated|mac_out2~DATAOUT10\ & (!\Add3~18_combout\ & !\Add4~17\)) # (!\Mult5|auto_generated|mac_out2~DATAOUT10\ & ((!\Add4~17\) # (!\Add3~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult5|auto_generated|mac_out2~DATAOUT10\,
	datab => \Add3~18_combout\,
	datad => VCC,
	cin => \Add4~17\,
	combout => \Add4~18_combout\,
	cout => \Add4~19\);

-- Location: LCCOMB_X37_Y22_N22
\Add4~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add4~22_combout\ = (\Mult5|auto_generated|mac_out2~DATAOUT12\ & ((\Add3~22_combout\ & (\Add4~21\ & VCC)) # (!\Add3~22_combout\ & (!\Add4~21\)))) # (!\Mult5|auto_generated|mac_out2~DATAOUT12\ & ((\Add3~22_combout\ & (!\Add4~21\)) # (!\Add3~22_combout\ & 
-- ((\Add4~21\) # (GND)))))
-- \Add4~23\ = CARRY((\Mult5|auto_generated|mac_out2~DATAOUT12\ & (!\Add3~22_combout\ & !\Add4~21\)) # (!\Mult5|auto_generated|mac_out2~DATAOUT12\ & ((!\Add4~21\) # (!\Add3~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult5|auto_generated|mac_out2~DATAOUT12\,
	datab => \Add3~22_combout\,
	datad => VCC,
	cin => \Add4~21\,
	combout => \Add4~22_combout\,
	cout => \Add4~23\);

-- Location: LCCOMB_X37_Y22_N24
\Add4~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add4~24_combout\ = ((\Mult5|auto_generated|mac_out2~DATAOUT13\ $ (\Add3~24_combout\ $ (!\Add4~23\)))) # (GND)
-- \Add4~25\ = CARRY((\Mult5|auto_generated|mac_out2~DATAOUT13\ & ((\Add3~24_combout\) # (!\Add4~23\))) # (!\Mult5|auto_generated|mac_out2~DATAOUT13\ & (\Add3~24_combout\ & !\Add4~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult5|auto_generated|mac_out2~DATAOUT13\,
	datab => \Add3~24_combout\,
	datad => VCC,
	cin => \Add4~23\,
	combout => \Add4~24_combout\,
	cout => \Add4~25\);

-- Location: LCCOMB_X37_Y22_N30
\Add4~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add4~30_combout\ = (\Mult5|auto_generated|mac_out2~DATAOUT16\ & ((\Add3~30_combout\ & (\Add4~29\ & VCC)) # (!\Add3~30_combout\ & (!\Add4~29\)))) # (!\Mult5|auto_generated|mac_out2~DATAOUT16\ & ((\Add3~30_combout\ & (!\Add4~29\)) # (!\Add3~30_combout\ & 
-- ((\Add4~29\) # (GND)))))
-- \Add4~31\ = CARRY((\Mult5|auto_generated|mac_out2~DATAOUT16\ & (!\Add3~30_combout\ & !\Add4~29\)) # (!\Mult5|auto_generated|mac_out2~DATAOUT16\ & ((!\Add4~29\) # (!\Add3~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult5|auto_generated|mac_out2~DATAOUT16\,
	datab => \Add3~30_combout\,
	datad => VCC,
	cin => \Add4~29\,
	combout => \Add4~30_combout\,
	cout => \Add4~31\);

-- Location: LCCOMB_X37_Y20_N18
\Add6~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add6~2_combout\ = (\Add4~0_combout\ & ((\Add7~0_combout\ & (\Add6~1\ & VCC)) # (!\Add7~0_combout\ & (!\Add6~1\)))) # (!\Add4~0_combout\ & ((\Add7~0_combout\ & (!\Add6~1\)) # (!\Add7~0_combout\ & ((\Add6~1\) # (GND)))))
-- \Add6~3\ = CARRY((\Add4~0_combout\ & (!\Add7~0_combout\ & !\Add6~1\)) # (!\Add4~0_combout\ & ((!\Add6~1\) # (!\Add7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~0_combout\,
	datab => \Add7~0_combout\,
	datad => VCC,
	cin => \Add6~1\,
	combout => \Add6~2_combout\,
	cout => \Add6~3\);

-- Location: LCCOMB_X37_Y20_N20
\Add6~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add6~4_combout\ = ((\Add7~2_combout\ $ (\Add4~2_combout\ $ (!\Add6~3\)))) # (GND)
-- \Add6~5\ = CARRY((\Add7~2_combout\ & ((\Add4~2_combout\) # (!\Add6~3\))) # (!\Add7~2_combout\ & (\Add4~2_combout\ & !\Add6~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~2_combout\,
	datab => \Add4~2_combout\,
	datad => VCC,
	cin => \Add6~3\,
	combout => \Add6~4_combout\,
	cout => \Add6~5\);

-- Location: LCCOMB_X37_Y20_N22
\Add6~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add6~6_combout\ = (\Add4~4_combout\ & ((\Add7~4_combout\ & (\Add6~5\ & VCC)) # (!\Add7~4_combout\ & (!\Add6~5\)))) # (!\Add4~4_combout\ & ((\Add7~4_combout\ & (!\Add6~5\)) # (!\Add7~4_combout\ & ((\Add6~5\) # (GND)))))
-- \Add6~7\ = CARRY((\Add4~4_combout\ & (!\Add7~4_combout\ & !\Add6~5\)) # (!\Add4~4_combout\ & ((!\Add6~5\) # (!\Add7~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~4_combout\,
	datab => \Add7~4_combout\,
	datad => VCC,
	cin => \Add6~5\,
	combout => \Add6~6_combout\,
	cout => \Add6~7\);

-- Location: LCCOMB_X37_Y20_N24
\Add6~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add6~8_combout\ = ((\Add4~6_combout\ $ (\Add7~6_combout\ $ (!\Add6~7\)))) # (GND)
-- \Add6~9\ = CARRY((\Add4~6_combout\ & ((\Add7~6_combout\) # (!\Add6~7\))) # (!\Add4~6_combout\ & (\Add7~6_combout\ & !\Add6~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~6_combout\,
	datab => \Add7~6_combout\,
	datad => VCC,
	cin => \Add6~7\,
	combout => \Add6~8_combout\,
	cout => \Add6~9\);

-- Location: LCCOMB_X37_Y20_N28
\Add6~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add6~12_combout\ = ((\Add4~10_combout\ $ (\Add7~10_combout\ $ (!\Add6~11\)))) # (GND)
-- \Add6~13\ = CARRY((\Add4~10_combout\ & ((\Add7~10_combout\) # (!\Add6~11\))) # (!\Add4~10_combout\ & (\Add7~10_combout\ & !\Add6~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~10_combout\,
	datab => \Add7~10_combout\,
	datad => VCC,
	cin => \Add6~11\,
	combout => \Add6~12_combout\,
	cout => \Add6~13\);

-- Location: LCCOMB_X37_Y20_N30
\Add6~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add6~14_combout\ = (\Add4~12_combout\ & ((\Add7~12_combout\ & (\Add6~13\ & VCC)) # (!\Add7~12_combout\ & (!\Add6~13\)))) # (!\Add4~12_combout\ & ((\Add7~12_combout\ & (!\Add6~13\)) # (!\Add7~12_combout\ & ((\Add6~13\) # (GND)))))
-- \Add6~15\ = CARRY((\Add4~12_combout\ & (!\Add7~12_combout\ & !\Add6~13\)) # (!\Add4~12_combout\ & ((!\Add6~13\) # (!\Add7~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~12_combout\,
	datab => \Add7~12_combout\,
	datad => VCC,
	cin => \Add6~13\,
	combout => \Add6~14_combout\,
	cout => \Add6~15\);

-- Location: LCCOMB_X37_Y19_N0
\Add6~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add6~16_combout\ = ((\Add4~14_combout\ $ (\Add7~14_combout\ $ (!\Add6~15\)))) # (GND)
-- \Add6~17\ = CARRY((\Add4~14_combout\ & ((\Add7~14_combout\) # (!\Add6~15\))) # (!\Add4~14_combout\ & (\Add7~14_combout\ & !\Add6~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~14_combout\,
	datab => \Add7~14_combout\,
	datad => VCC,
	cin => \Add6~15\,
	combout => \Add6~16_combout\,
	cout => \Add6~17\);

-- Location: LCCOMB_X37_Y19_N8
\Add6~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add6~24_combout\ = ((\Add7~22_combout\ $ (\Add4~22_combout\ $ (!\Add6~23\)))) # (GND)
-- \Add6~25\ = CARRY((\Add7~22_combout\ & ((\Add4~22_combout\) # (!\Add6~23\))) # (!\Add7~22_combout\ & (\Add4~22_combout\ & !\Add6~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~22_combout\,
	datab => \Add4~22_combout\,
	datad => VCC,
	cin => \Add6~23\,
	combout => \Add6~24_combout\,
	cout => \Add6~25\);

-- Location: LCCOMB_X37_Y19_N10
\Add6~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add6~26_combout\ = (\Add7~24_combout\ & ((\Add4~24_combout\ & (\Add6~25\ & VCC)) # (!\Add4~24_combout\ & (!\Add6~25\)))) # (!\Add7~24_combout\ & ((\Add4~24_combout\ & (!\Add6~25\)) # (!\Add4~24_combout\ & ((\Add6~25\) # (GND)))))
-- \Add6~27\ = CARRY((\Add7~24_combout\ & (!\Add4~24_combout\ & !\Add6~25\)) # (!\Add7~24_combout\ & ((!\Add6~25\) # (!\Add4~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~24_combout\,
	datab => \Add4~24_combout\,
	datad => VCC,
	cin => \Add6~25\,
	combout => \Add6~26_combout\,
	cout => \Add6~27\);

-- Location: LCCOMB_X37_Y19_N12
\Add6~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add6~28_combout\ = ((\Add4~26_combout\ $ (\Add7~26_combout\ $ (!\Add6~27\)))) # (GND)
-- \Add6~29\ = CARRY((\Add4~26_combout\ & ((\Add7~26_combout\) # (!\Add6~27\))) # (!\Add4~26_combout\ & (\Add7~26_combout\ & !\Add6~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~26_combout\,
	datab => \Add7~26_combout\,
	datad => VCC,
	cin => \Add6~27\,
	combout => \Add6~28_combout\,
	cout => \Add6~29\);

-- Location: LCCOMB_X37_Y19_N14
\Add6~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add6~30_combout\ = (\Add4~28_combout\ & ((\Add7~28_combout\ & (\Add6~29\ & VCC)) # (!\Add7~28_combout\ & (!\Add6~29\)))) # (!\Add4~28_combout\ & ((\Add7~28_combout\ & (!\Add6~29\)) # (!\Add7~28_combout\ & ((\Add6~29\) # (GND)))))
-- \Add6~31\ = CARRY((\Add4~28_combout\ & (!\Add7~28_combout\ & !\Add6~29\)) # (!\Add4~28_combout\ & ((!\Add6~29\) # (!\Add7~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~28_combout\,
	datab => \Add7~28_combout\,
	datad => VCC,
	cin => \Add6~29\,
	combout => \Add6~30_combout\,
	cout => \Add6~31\);

-- Location: LCCOMB_X37_Y19_N18
\Add6~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add6~34_combout\ = (\Add4~32_combout\ & ((\Add7~32_combout\ & (\Add6~33\ & VCC)) # (!\Add7~32_combout\ & (!\Add6~33\)))) # (!\Add4~32_combout\ & ((\Add7~32_combout\ & (!\Add6~33\)) # (!\Add7~32_combout\ & ((\Add6~33\) # (GND)))))
-- \Add6~35\ = CARRY((\Add4~32_combout\ & (!\Add7~32_combout\ & !\Add6~33\)) # (!\Add4~32_combout\ & ((!\Add6~33\) # (!\Add7~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~32_combout\,
	datab => \Add7~32_combout\,
	datad => VCC,
	cin => \Add6~33\,
	combout => \Add6~34_combout\,
	cout => \Add6~35\);

-- Location: DSPMULT_X39_Y16_N0
\Mult7|auto_generated|mac_mult1\ : cycloneii_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "0",
	dataa_width => 18,
	datab_clock => "none",
	datab_width => 18,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => \~GND~combout\,
	signb => \~GND~combout\,
	clk => \clk~clkctrl_outclk\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => VCC,
	dataa => \Mult7|auto_generated|mac_mult1_DATAA_bus\,
	datab => \Mult7|auto_generated|mac_mult1_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \Mult7|auto_generated|mac_mult1_DATAOUT_bus\);

-- Location: DSPMULT_X39_Y15_N0
\Mult6|auto_generated|mac_mult1\ : cycloneii_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "0",
	dataa_width => 18,
	datab_clock => "none",
	datab_width => 18,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => \~GND~combout\,
	signb => \~GND~combout\,
	clk => \clk~clkctrl_outclk\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => VCC,
	dataa => \Mult6|auto_generated|mac_mult1_DATAA_bus\,
	datab => \Mult6|auto_generated|mac_mult1_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \Mult6|auto_generated|mac_mult1_DATAOUT_bus\);

-- Location: LCCOMB_X38_Y16_N2
\Add5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add5~0_combout\ = (\data_pipeline[6][0]~_Duplicate_1_regout\ & (\data_pipeline[7][0]~_Duplicate_1_regout\ $ (VCC))) # (!\data_pipeline[6][0]~_Duplicate_1_regout\ & (\data_pipeline[7][0]~_Duplicate_1_regout\ & VCC))
-- \Add5~1\ = CARRY((\data_pipeline[6][0]~_Duplicate_1_regout\ & \data_pipeline[7][0]~_Duplicate_1_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_pipeline[6][0]~_Duplicate_1_regout\,
	datab => \data_pipeline[7][0]~_Duplicate_1_regout\,
	datad => VCC,
	combout => \Add5~0_combout\,
	cout => \Add5~1\);

-- Location: LCCOMB_X38_Y16_N12
\Add5~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add5~10_combout\ = (\Mult6|auto_generated|mac_out2~DATAOUT5\ & ((\Mult7|auto_generated|mac_out2~DATAOUT5\ & (\Add5~9\ & VCC)) # (!\Mult7|auto_generated|mac_out2~DATAOUT5\ & (!\Add5~9\)))) # (!\Mult6|auto_generated|mac_out2~DATAOUT5\ & 
-- ((\Mult7|auto_generated|mac_out2~DATAOUT5\ & (!\Add5~9\)) # (!\Mult7|auto_generated|mac_out2~DATAOUT5\ & ((\Add5~9\) # (GND)))))
-- \Add5~11\ = CARRY((\Mult6|auto_generated|mac_out2~DATAOUT5\ & (!\Mult7|auto_generated|mac_out2~DATAOUT5\ & !\Add5~9\)) # (!\Mult6|auto_generated|mac_out2~DATAOUT5\ & ((!\Add5~9\) # (!\Mult7|auto_generated|mac_out2~DATAOUT5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult6|auto_generated|mac_out2~DATAOUT5\,
	datab => \Mult7|auto_generated|mac_out2~DATAOUT5\,
	datad => VCC,
	cin => \Add5~9\,
	combout => \Add5~10_combout\,
	cout => \Add5~11\);

-- Location: LCCOMB_X38_Y16_N20
\Add5~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add5~18_combout\ = (\Mult6|auto_generated|mac_out2~DATAOUT9\ & ((\Mult7|auto_generated|mac_out2~DATAOUT9\ & (\Add5~17\ & VCC)) # (!\Mult7|auto_generated|mac_out2~DATAOUT9\ & (!\Add5~17\)))) # (!\Mult6|auto_generated|mac_out2~DATAOUT9\ & 
-- ((\Mult7|auto_generated|mac_out2~DATAOUT9\ & (!\Add5~17\)) # (!\Mult7|auto_generated|mac_out2~DATAOUT9\ & ((\Add5~17\) # (GND)))))
-- \Add5~19\ = CARRY((\Mult6|auto_generated|mac_out2~DATAOUT9\ & (!\Mult7|auto_generated|mac_out2~DATAOUT9\ & !\Add5~17\)) # (!\Mult6|auto_generated|mac_out2~DATAOUT9\ & ((!\Add5~17\) # (!\Mult7|auto_generated|mac_out2~DATAOUT9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult6|auto_generated|mac_out2~DATAOUT9\,
	datab => \Mult7|auto_generated|mac_out2~DATAOUT9\,
	datad => VCC,
	cin => \Add5~17\,
	combout => \Add5~18_combout\,
	cout => \Add5~19\);

-- Location: LCCOMB_X38_Y16_N22
\Add5~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add5~20_combout\ = ((\Mult6|auto_generated|mac_out2~DATAOUT10\ $ (\Mult7|auto_generated|mac_out2~DATAOUT10\ $ (!\Add5~19\)))) # (GND)
-- \Add5~21\ = CARRY((\Mult6|auto_generated|mac_out2~DATAOUT10\ & ((\Mult7|auto_generated|mac_out2~DATAOUT10\) # (!\Add5~19\))) # (!\Mult6|auto_generated|mac_out2~DATAOUT10\ & (\Mult7|auto_generated|mac_out2~DATAOUT10\ & !\Add5~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult6|auto_generated|mac_out2~DATAOUT10\,
	datab => \Mult7|auto_generated|mac_out2~DATAOUT10\,
	datad => VCC,
	cin => \Add5~19\,
	combout => \Add5~20_combout\,
	cout => \Add5~21\);

-- Location: LCCOMB_X38_Y16_N24
\Add5~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add5~22_combout\ = (\Mult6|auto_generated|mac_out2~DATAOUT11\ & ((\Mult7|auto_generated|mac_out2~DATAOUT11\ & (\Add5~21\ & VCC)) # (!\Mult7|auto_generated|mac_out2~DATAOUT11\ & (!\Add5~21\)))) # (!\Mult6|auto_generated|mac_out2~DATAOUT11\ & 
-- ((\Mult7|auto_generated|mac_out2~DATAOUT11\ & (!\Add5~21\)) # (!\Mult7|auto_generated|mac_out2~DATAOUT11\ & ((\Add5~21\) # (GND)))))
-- \Add5~23\ = CARRY((\Mult6|auto_generated|mac_out2~DATAOUT11\ & (!\Mult7|auto_generated|mac_out2~DATAOUT11\ & !\Add5~21\)) # (!\Mult6|auto_generated|mac_out2~DATAOUT11\ & ((!\Add5~21\) # (!\Mult7|auto_generated|mac_out2~DATAOUT11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult6|auto_generated|mac_out2~DATAOUT11\,
	datab => \Mult7|auto_generated|mac_out2~DATAOUT11\,
	datad => VCC,
	cin => \Add5~21\,
	combout => \Add5~22_combout\,
	cout => \Add5~23\);

-- Location: LCCOMB_X38_Y15_N2
\Add5~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add5~32_combout\ = ((\Mult6|auto_generated|mac_out2~DATAOUT16\ $ (\Mult7|auto_generated|mac_out2~DATAOUT16\ $ (!\Add5~31\)))) # (GND)
-- \Add5~33\ = CARRY((\Mult6|auto_generated|mac_out2~DATAOUT16\ & ((\Mult7|auto_generated|mac_out2~DATAOUT16\) # (!\Add5~31\))) # (!\Mult6|auto_generated|mac_out2~DATAOUT16\ & (\Mult7|auto_generated|mac_out2~DATAOUT16\ & !\Add5~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult6|auto_generated|mac_out2~DATAOUT16\,
	datab => \Mult7|auto_generated|mac_out2~DATAOUT16\,
	datad => VCC,
	cin => \Add5~31\,
	combout => \Add5~32_combout\,
	cout => \Add5~33\);

-- Location: LCCOMB_X36_Y20_N16
\result[0]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \result[0]~17_cout\ = CARRY((\Add6~0_combout\ & \Add5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~0_combout\,
	datab => \Add5~0_combout\,
	datad => VCC,
	cout => \result[0]~17_cout\);

-- Location: LCCOMB_X36_Y20_N18
\result[0]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \result[0]~19_cout\ = CARRY((\Add5~2_combout\ & (!\Add6~2_combout\ & !\result[0]~17_cout\)) # (!\Add5~2_combout\ & ((!\result[0]~17_cout\) # (!\Add6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~2_combout\,
	datab => \Add6~2_combout\,
	datad => VCC,
	cin => \result[0]~17_cout\,
	cout => \result[0]~19_cout\);

-- Location: LCCOMB_X36_Y20_N20
\result[0]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \result[0]~21_cout\ = CARRY((\Add5~4_combout\ & ((\Add6~4_combout\) # (!\result[0]~19_cout\))) # (!\Add5~4_combout\ & (\Add6~4_combout\ & !\result[0]~19_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~4_combout\,
	datab => \Add6~4_combout\,
	datad => VCC,
	cin => \result[0]~19_cout\,
	cout => \result[0]~21_cout\);

-- Location: LCCOMB_X36_Y20_N22
\result[0]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \result[0]~23_cout\ = CARRY((\Add5~6_combout\ & (!\Add6~6_combout\ & !\result[0]~21_cout\)) # (!\Add5~6_combout\ & ((!\result[0]~21_cout\) # (!\Add6~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~6_combout\,
	datab => \Add6~6_combout\,
	datad => VCC,
	cin => \result[0]~21_cout\,
	cout => \result[0]~23_cout\);

-- Location: LCCOMB_X36_Y20_N24
\result[0]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \result[0]~25_cout\ = CARRY((\Add5~8_combout\ & ((\Add6~8_combout\) # (!\result[0]~23_cout\))) # (!\Add5~8_combout\ & (\Add6~8_combout\ & !\result[0]~23_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~8_combout\,
	datab => \Add6~8_combout\,
	datad => VCC,
	cin => \result[0]~23_cout\,
	cout => \result[0]~25_cout\);

-- Location: LCCOMB_X36_Y20_N26
\result[0]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \result[0]~27_cout\ = CARRY((\Add6~10_combout\ & (!\Add5~10_combout\ & !\result[0]~25_cout\)) # (!\Add6~10_combout\ & ((!\result[0]~25_cout\) # (!\Add5~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~10_combout\,
	datab => \Add5~10_combout\,
	datad => VCC,
	cin => \result[0]~25_cout\,
	cout => \result[0]~27_cout\);

-- Location: LCCOMB_X36_Y20_N28
\result[0]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \result[0]~29_cout\ = CARRY((\Add5~12_combout\ & ((\Add6~12_combout\) # (!\result[0]~27_cout\))) # (!\Add5~12_combout\ & (\Add6~12_combout\ & !\result[0]~27_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~12_combout\,
	datab => \Add6~12_combout\,
	datad => VCC,
	cin => \result[0]~27_cout\,
	cout => \result[0]~29_cout\);

-- Location: LCCOMB_X36_Y20_N30
\result[0]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \result[0]~31_cout\ = CARRY((\Add5~14_combout\ & (!\Add6~14_combout\ & !\result[0]~29_cout\)) # (!\Add5~14_combout\ & ((!\result[0]~29_cout\) # (!\Add6~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~14_combout\,
	datab => \Add6~14_combout\,
	datad => VCC,
	cin => \result[0]~29_cout\,
	cout => \result[0]~31_cout\);

-- Location: LCCOMB_X36_Y19_N0
\result[0]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \result[0]~33_cout\ = CARRY((\Add5~16_combout\ & ((\Add6~16_combout\) # (!\result[0]~31_cout\))) # (!\Add5~16_combout\ & (\Add6~16_combout\ & !\result[0]~31_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~16_combout\,
	datab => \Add6~16_combout\,
	datad => VCC,
	cin => \result[0]~31_cout\,
	cout => \result[0]~33_cout\);

-- Location: LCCOMB_X36_Y19_N2
\result[0]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \result[0]~35_cout\ = CARRY((\Add6~18_combout\ & (!\Add5~18_combout\ & !\result[0]~33_cout\)) # (!\Add6~18_combout\ & ((!\result[0]~33_cout\) # (!\Add5~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~18_combout\,
	datab => \Add5~18_combout\,
	datad => VCC,
	cin => \result[0]~33_cout\,
	cout => \result[0]~35_cout\);

-- Location: LCCOMB_X36_Y19_N4
\result[0]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \result[0]~37_cout\ = CARRY((\Add6~20_combout\ & ((\Add5~20_combout\) # (!\result[0]~35_cout\))) # (!\Add6~20_combout\ & (\Add5~20_combout\ & !\result[0]~35_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~20_combout\,
	datab => \Add5~20_combout\,
	datad => VCC,
	cin => \result[0]~35_cout\,
	cout => \result[0]~37_cout\);

-- Location: LCCOMB_X36_Y19_N6
\result[0]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \result[0]~39_cout\ = CARRY((\Add6~22_combout\ & (!\Add5~22_combout\ & !\result[0]~37_cout\)) # (!\Add6~22_combout\ & ((!\result[0]~37_cout\) # (!\Add5~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~22_combout\,
	datab => \Add5~22_combout\,
	datad => VCC,
	cin => \result[0]~37_cout\,
	cout => \result[0]~39_cout\);

-- Location: LCCOMB_X36_Y19_N8
\result[0]~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \result[0]~41_cout\ = CARRY((\Add5~24_combout\ & ((\Add6~24_combout\) # (!\result[0]~39_cout\))) # (!\Add5~24_combout\ & (\Add6~24_combout\ & !\result[0]~39_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~24_combout\,
	datab => \Add6~24_combout\,
	datad => VCC,
	cin => \result[0]~39_cout\,
	cout => \result[0]~41_cout\);

-- Location: LCCOMB_X36_Y19_N10
\result[0]~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \result[0]~43_cout\ = CARRY((\Add5~26_combout\ & (!\Add6~26_combout\ & !\result[0]~41_cout\)) # (!\Add5~26_combout\ & ((!\result[0]~41_cout\) # (!\Add6~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~26_combout\,
	datab => \Add6~26_combout\,
	datad => VCC,
	cin => \result[0]~41_cout\,
	cout => \result[0]~43_cout\);

-- Location: LCCOMB_X36_Y19_N12
\result[0]~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \result[0]~45_cout\ = CARRY((\Add5~28_combout\ & ((\Add6~28_combout\) # (!\result[0]~43_cout\))) # (!\Add5~28_combout\ & (\Add6~28_combout\ & !\result[0]~43_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~28_combout\,
	datab => \Add6~28_combout\,
	datad => VCC,
	cin => \result[0]~43_cout\,
	cout => \result[0]~45_cout\);

-- Location: LCCOMB_X36_Y19_N14
\result[0]~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \result[0]~47_cout\ = CARRY((\Add5~30_combout\ & (!\Add6~30_combout\ & !\result[0]~45_cout\)) # (!\Add5~30_combout\ & ((!\result[0]~45_cout\) # (!\Add6~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~30_combout\,
	datab => \Add6~30_combout\,
	datad => VCC,
	cin => \result[0]~45_cout\,
	cout => \result[0]~47_cout\);

-- Location: LCCOMB_X36_Y19_N16
\result[0]~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \result[0]~49_cout\ = CARRY((\Add6~32_combout\ & ((\Add5~32_combout\) # (!\result[0]~47_cout\))) # (!\Add6~32_combout\ & (\Add5~32_combout\ & !\result[0]~47_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~32_combout\,
	datab => \Add5~32_combout\,
	datad => VCC,
	cin => \result[0]~47_cout\,
	cout => \result[0]~49_cout\);

-- Location: LCCOMB_X36_Y19_N18
\result[0]~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \result[0]~50_combout\ = (\Add5~34_combout\ & ((\Add6~34_combout\ & (\result[0]~49_cout\ & VCC)) # (!\Add6~34_combout\ & (!\result[0]~49_cout\)))) # (!\Add5~34_combout\ & ((\Add6~34_combout\ & (!\result[0]~49_cout\)) # (!\Add6~34_combout\ & 
-- ((\result[0]~49_cout\) # (GND)))))
-- \result[0]~51\ = CARRY((\Add5~34_combout\ & (!\Add6~34_combout\ & !\result[0]~49_cout\)) # (!\Add5~34_combout\ & ((!\result[0]~49_cout\) # (!\Add6~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~34_combout\,
	datab => \Add6~34_combout\,
	datad => VCC,
	cin => \result[0]~49_cout\,
	combout => \result[0]~50_combout\,
	cout => \result[0]~51\);

-- Location: LCFF_X36_Y19_N19
\result[0]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \result[0]~50_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \result[0]~reg0_regout\);

-- Location: LCCOMB_X38_Y15_N6
\Add5~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add5~36_combout\ = ((\Mult7|auto_generated|mac_out2~DATAOUT18\ $ (\Mult6|auto_generated|mac_out2~DATAOUT18\ $ (!\Add5~35\)))) # (GND)
-- \Add5~37\ = CARRY((\Mult7|auto_generated|mac_out2~DATAOUT18\ & ((\Mult6|auto_generated|mac_out2~DATAOUT18\) # (!\Add5~35\))) # (!\Mult7|auto_generated|mac_out2~DATAOUT18\ & (\Mult6|auto_generated|mac_out2~DATAOUT18\ & !\Add5~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult7|auto_generated|mac_out2~DATAOUT18\,
	datab => \Mult6|auto_generated|mac_out2~DATAOUT18\,
	datad => VCC,
	cin => \Add5~35\,
	combout => \Add5~36_combout\,
	cout => \Add5~37\);

-- Location: LCCOMB_X36_Y19_N20
\result[1]~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \result[1]~52_combout\ = ((\Add6~36_combout\ $ (\Add5~36_combout\ $ (!\result[0]~51\)))) # (GND)
-- \result[1]~53\ = CARRY((\Add6~36_combout\ & ((\Add5~36_combout\) # (!\result[0]~51\))) # (!\Add6~36_combout\ & (\Add5~36_combout\ & !\result[0]~51\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~36_combout\,
	datab => \Add5~36_combout\,
	datad => VCC,
	cin => \result[0]~51\,
	combout => \result[1]~52_combout\,
	cout => \result[1]~53\);

-- Location: LCFF_X36_Y19_N21
\result[1]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \result[1]~52_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \result[1]~reg0_regout\);

-- Location: LCCOMB_X41_Y21_N0
\Add2~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~32_combout\ = ((\Add1~34_combout\ $ (\Mult3|auto_generated|mac_out2~DATAOUT17\ $ (!\Add2~31\)))) # (GND)
-- \Add2~33\ = CARRY((\Add1~34_combout\ & ((\Mult3|auto_generated|mac_out2~DATAOUT17\) # (!\Add2~31\))) # (!\Add1~34_combout\ & (\Mult3|auto_generated|mac_out2~DATAOUT17\ & !\Add2~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~34_combout\,
	datab => \Mult3|auto_generated|mac_out2~DATAOUT17\,
	datad => VCC,
	cin => \Add2~31\,
	combout => \Add2~32_combout\,
	cout => \Add2~33\);

-- Location: LCCOMB_X38_Y21_N0
\Add3~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~32_combout\ = ((\Mult4|auto_generated|mac_out2~DATAOUT17\ $ (\Add2~32_combout\ $ (!\Add3~31\)))) # (GND)
-- \Add3~33\ = CARRY((\Mult4|auto_generated|mac_out2~DATAOUT17\ & ((\Add2~32_combout\) # (!\Add3~31\))) # (!\Mult4|auto_generated|mac_out2~DATAOUT17\ & (\Add2~32_combout\ & !\Add3~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult4|auto_generated|mac_out2~DATAOUT17\,
	datab => \Add2~32_combout\,
	datad => VCC,
	cin => \Add3~31\,
	combout => \Add3~32_combout\,
	cout => \Add3~33\);

-- Location: LCCOMB_X37_Y21_N2
\Add4~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add4~34_combout\ = (\Add3~34_combout\ & ((\Mult5|auto_generated|mac_out2~DATAOUT18\ & (\Add4~33\ & VCC)) # (!\Mult5|auto_generated|mac_out2~DATAOUT18\ & (!\Add4~33\)))) # (!\Add3~34_combout\ & ((\Mult5|auto_generated|mac_out2~DATAOUT18\ & (!\Add4~33\)) # 
-- (!\Mult5|auto_generated|mac_out2~DATAOUT18\ & ((\Add4~33\) # (GND)))))
-- \Add4~35\ = CARRY((\Add3~34_combout\ & (!\Mult5|auto_generated|mac_out2~DATAOUT18\ & !\Add4~33\)) # (!\Add3~34_combout\ & ((!\Add4~33\) # (!\Mult5|auto_generated|mac_out2~DATAOUT18\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~34_combout\,
	datab => \Mult5|auto_generated|mac_out2~DATAOUT18\,
	datad => VCC,
	cin => \Add4~33\,
	combout => \Add4~34_combout\,
	cout => \Add4~35\);

-- Location: LCCOMB_X37_Y19_N22
\Add6~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add6~38_combout\ = (\Add4~36_combout\ & ((\Add7~36_combout\ & (\Add6~37\ & VCC)) # (!\Add7~36_combout\ & (!\Add6~37\)))) # (!\Add4~36_combout\ & ((\Add7~36_combout\ & (!\Add6~37\)) # (!\Add7~36_combout\ & ((\Add6~37\) # (GND)))))
-- \Add6~39\ = CARRY((\Add4~36_combout\ & (!\Add7~36_combout\ & !\Add6~37\)) # (!\Add4~36_combout\ & ((!\Add6~37\) # (!\Add7~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~36_combout\,
	datab => \Add7~36_combout\,
	datad => VCC,
	cin => \Add6~37\,
	combout => \Add6~38_combout\,
	cout => \Add6~39\);

-- Location: LCCOMB_X36_Y19_N22
\result[2]~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \result[2]~54_combout\ = (\Add5~38_combout\ & ((\Add6~38_combout\ & (\result[1]~53\ & VCC)) # (!\Add6~38_combout\ & (!\result[1]~53\)))) # (!\Add5~38_combout\ & ((\Add6~38_combout\ & (!\result[1]~53\)) # (!\Add6~38_combout\ & ((\result[1]~53\) # (GND)))))
-- \result[2]~55\ = CARRY((\Add5~38_combout\ & (!\Add6~38_combout\ & !\result[1]~53\)) # (!\Add5~38_combout\ & ((!\result[1]~53\) # (!\Add6~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~38_combout\,
	datab => \Add6~38_combout\,
	datad => VCC,
	cin => \result[1]~53\,
	combout => \result[2]~54_combout\,
	cout => \result[2]~55\);

-- Location: LCFF_X36_Y19_N23
\result[2]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \result[2]~54_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \result[2]~reg0_regout\);

-- Location: LCCOMB_X37_Y21_N6
\Add4~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add4~38_combout\ = (\Add3~38_combout\ & ((\Mult5|auto_generated|mac_out2~DATAOUT20\ & (\Add4~37\ & VCC)) # (!\Mult5|auto_generated|mac_out2~DATAOUT20\ & (!\Add4~37\)))) # (!\Add3~38_combout\ & ((\Mult5|auto_generated|mac_out2~DATAOUT20\ & (!\Add4~37\)) # 
-- (!\Mult5|auto_generated|mac_out2~DATAOUT20\ & ((\Add4~37\) # (GND)))))
-- \Add4~39\ = CARRY((\Add3~38_combout\ & (!\Mult5|auto_generated|mac_out2~DATAOUT20\ & !\Add4~37\)) # (!\Add3~38_combout\ & ((!\Add4~37\) # (!\Mult5|auto_generated|mac_out2~DATAOUT20\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~38_combout\,
	datab => \Mult5|auto_generated|mac_out2~DATAOUT20\,
	datad => VCC,
	cin => \Add4~37\,
	combout => \Add4~38_combout\,
	cout => \Add4~39\);

-- Location: LCCOMB_X37_Y19_N24
\Add6~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add6~40_combout\ = ((\Add7~38_combout\ $ (\Add4~38_combout\ $ (!\Add6~39\)))) # (GND)
-- \Add6~41\ = CARRY((\Add7~38_combout\ & ((\Add4~38_combout\) # (!\Add6~39\))) # (!\Add7~38_combout\ & (\Add4~38_combout\ & !\Add6~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~38_combout\,
	datab => \Add4~38_combout\,
	datad => VCC,
	cin => \Add6~39\,
	combout => \Add6~40_combout\,
	cout => \Add6~41\);

-- Location: LCCOMB_X36_Y19_N24
\result[3]~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \result[3]~56_combout\ = ((\Add5~40_combout\ $ (\Add6~40_combout\ $ (!\result[2]~55\)))) # (GND)
-- \result[3]~57\ = CARRY((\Add5~40_combout\ & ((\Add6~40_combout\) # (!\result[2]~55\))) # (!\Add5~40_combout\ & (\Add6~40_combout\ & !\result[2]~55\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~40_combout\,
	datab => \Add6~40_combout\,
	datad => VCC,
	cin => \result[2]~55\,
	combout => \result[3]~56_combout\,
	cout => \result[3]~57\);

-- Location: LCFF_X36_Y19_N25
\result[3]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \result[3]~56_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \result[3]~reg0_regout\);

-- Location: LCCOMB_X38_Y15_N12
\Add5~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add5~42_combout\ = (\Mult6|auto_generated|mac_out2~DATAOUT21\ & ((\Mult7|auto_generated|mac_out2~DATAOUT21\ & (\Add5~41\ & VCC)) # (!\Mult7|auto_generated|mac_out2~DATAOUT21\ & (!\Add5~41\)))) # (!\Mult6|auto_generated|mac_out2~DATAOUT21\ & 
-- ((\Mult7|auto_generated|mac_out2~DATAOUT21\ & (!\Add5~41\)) # (!\Mult7|auto_generated|mac_out2~DATAOUT21\ & ((\Add5~41\) # (GND)))))
-- \Add5~43\ = CARRY((\Mult6|auto_generated|mac_out2~DATAOUT21\ & (!\Mult7|auto_generated|mac_out2~DATAOUT21\ & !\Add5~41\)) # (!\Mult6|auto_generated|mac_out2~DATAOUT21\ & ((!\Add5~41\) # (!\Mult7|auto_generated|mac_out2~DATAOUT21\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult6|auto_generated|mac_out2~DATAOUT21\,
	datab => \Mult7|auto_generated|mac_out2~DATAOUT21\,
	datad => VCC,
	cin => \Add5~41\,
	combout => \Add5~42_combout\,
	cout => \Add5~43\);

-- Location: LCCOMB_X36_Y19_N26
\result[4]~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \result[4]~58_combout\ = (\Add6~42_combout\ & ((\Add5~42_combout\ & (\result[3]~57\ & VCC)) # (!\Add5~42_combout\ & (!\result[3]~57\)))) # (!\Add6~42_combout\ & ((\Add5~42_combout\ & (!\result[3]~57\)) # (!\Add5~42_combout\ & ((\result[3]~57\) # (GND)))))
-- \result[4]~59\ = CARRY((\Add6~42_combout\ & (!\Add5~42_combout\ & !\result[3]~57\)) # (!\Add6~42_combout\ & ((!\result[3]~57\) # (!\Add5~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~42_combout\,
	datab => \Add5~42_combout\,
	datad => VCC,
	cin => \result[3]~57\,
	combout => \result[4]~58_combout\,
	cout => \result[4]~59\);

-- Location: LCFF_X36_Y19_N27
\result[4]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \result[4]~58_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \result[4]~reg0_regout\);

-- Location: LCCOMB_X40_Y18_N30
\Add0~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = ((\Mult1|auto_generated|mac_out2~DATAOUT15\ $ (\Mult0|auto_generated|mac_out2~DATAOUT15\ $ (!\Add0~27\)))) # (GND)
-- \Add0~29\ = CARRY((\Mult1|auto_generated|mac_out2~DATAOUT15\ & ((\Mult0|auto_generated|mac_out2~DATAOUT15\) # (!\Add0~27\))) # (!\Mult1|auto_generated|mac_out2~DATAOUT15\ & (\Mult0|auto_generated|mac_out2~DATAOUT15\ & !\Add0~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|mac_out2~DATAOUT15\,
	datab => \Mult0|auto_generated|mac_out2~DATAOUT15\,
	datad => VCC,
	cin => \Add0~27\,
	combout => \Add0~28_combout\,
	cout => \Add0~29\);

-- Location: LCCOMB_X40_Y17_N4
\Add0~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~34_combout\ = (\Mult1|auto_generated|mac_out2~DATAOUT18\ & ((\Mult0|auto_generated|mac_out2~DATAOUT18\ & (\Add0~33\ & VCC)) # (!\Mult0|auto_generated|mac_out2~DATAOUT18\ & (!\Add0~33\)))) # (!\Mult1|auto_generated|mac_out2~DATAOUT18\ & 
-- ((\Mult0|auto_generated|mac_out2~DATAOUT18\ & (!\Add0~33\)) # (!\Mult0|auto_generated|mac_out2~DATAOUT18\ & ((\Add0~33\) # (GND)))))
-- \Add0~35\ = CARRY((\Mult1|auto_generated|mac_out2~DATAOUT18\ & (!\Mult0|auto_generated|mac_out2~DATAOUT18\ & !\Add0~33\)) # (!\Mult1|auto_generated|mac_out2~DATAOUT18\ & ((!\Add0~33\) # (!\Mult0|auto_generated|mac_out2~DATAOUT18\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|mac_out2~DATAOUT18\,
	datab => \Mult0|auto_generated|mac_out2~DATAOUT18\,
	datad => VCC,
	cin => \Add0~33\,
	combout => \Add0~34_combout\,
	cout => \Add0~35\);

-- Location: LCCOMB_X40_Y21_N4
\Add1~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~36_combout\ = ((\Mult2|auto_generated|mac_out2~DATAOUT18\ $ (\Add0~34_combout\ $ (!\Add1~35\)))) # (GND)
-- \Add1~37\ = CARRY((\Mult2|auto_generated|mac_out2~DATAOUT18\ & ((\Add0~34_combout\) # (!\Add1~35\))) # (!\Mult2|auto_generated|mac_out2~DATAOUT18\ & (\Add0~34_combout\ & !\Add1~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult2|auto_generated|mac_out2~DATAOUT18\,
	datab => \Add0~34_combout\,
	datad => VCC,
	cin => \Add1~35\,
	combout => \Add1~36_combout\,
	cout => \Add1~37\);

-- Location: LCCOMB_X40_Y21_N6
\Add1~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~38_combout\ = (\Add0~36_combout\ & ((\Mult2|auto_generated|mac_out2~DATAOUT19\ & (\Add1~37\ & VCC)) # (!\Mult2|auto_generated|mac_out2~DATAOUT19\ & (!\Add1~37\)))) # (!\Add0~36_combout\ & ((\Mult2|auto_generated|mac_out2~DATAOUT19\ & (!\Add1~37\)) # 
-- (!\Mult2|auto_generated|mac_out2~DATAOUT19\ & ((\Add1~37\) # (GND)))))
-- \Add1~39\ = CARRY((\Add0~36_combout\ & (!\Mult2|auto_generated|mac_out2~DATAOUT19\ & !\Add1~37\)) # (!\Add0~36_combout\ & ((!\Add1~37\) # (!\Mult2|auto_generated|mac_out2~DATAOUT19\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~36_combout\,
	datab => \Mult2|auto_generated|mac_out2~DATAOUT19\,
	datad => VCC,
	cin => \Add1~37\,
	combout => \Add1~38_combout\,
	cout => \Add1~39\);

-- Location: LCCOMB_X41_Y21_N2
\Add2~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~34_combout\ = (\Mult3|auto_generated|mac_out2~DATAOUT18\ & ((\Add1~36_combout\ & (\Add2~33\ & VCC)) # (!\Add1~36_combout\ & (!\Add2~33\)))) # (!\Mult3|auto_generated|mac_out2~DATAOUT18\ & ((\Add1~36_combout\ & (!\Add2~33\)) # (!\Add1~36_combout\ & 
-- ((\Add2~33\) # (GND)))))
-- \Add2~35\ = CARRY((\Mult3|auto_generated|mac_out2~DATAOUT18\ & (!\Add1~36_combout\ & !\Add2~33\)) # (!\Mult3|auto_generated|mac_out2~DATAOUT18\ & ((!\Add2~33\) # (!\Add1~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult3|auto_generated|mac_out2~DATAOUT18\,
	datab => \Add1~36_combout\,
	datad => VCC,
	cin => \Add2~33\,
	combout => \Add2~34_combout\,
	cout => \Add2~35\);

-- Location: LCCOMB_X41_Y21_N4
\Add2~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~36_combout\ = ((\Mult3|auto_generated|mac_out2~DATAOUT19\ $ (\Add1~38_combout\ $ (!\Add2~35\)))) # (GND)
-- \Add2~37\ = CARRY((\Mult3|auto_generated|mac_out2~DATAOUT19\ & ((\Add1~38_combout\) # (!\Add2~35\))) # (!\Mult3|auto_generated|mac_out2~DATAOUT19\ & (\Add1~38_combout\ & !\Add2~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult3|auto_generated|mac_out2~DATAOUT19\,
	datab => \Add1~38_combout\,
	datad => VCC,
	cin => \Add2~35\,
	combout => \Add2~36_combout\,
	cout => \Add2~37\);

-- Location: LCCOMB_X41_Y21_N6
\Add2~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~38_combout\ = (\Add1~40_combout\ & ((\Mult3|auto_generated|mac_out2~DATAOUT20\ & (\Add2~37\ & VCC)) # (!\Mult3|auto_generated|mac_out2~DATAOUT20\ & (!\Add2~37\)))) # (!\Add1~40_combout\ & ((\Mult3|auto_generated|mac_out2~DATAOUT20\ & (!\Add2~37\)) # 
-- (!\Mult3|auto_generated|mac_out2~DATAOUT20\ & ((\Add2~37\) # (GND)))))
-- \Add2~39\ = CARRY((\Add1~40_combout\ & (!\Mult3|auto_generated|mac_out2~DATAOUT20\ & !\Add2~37\)) # (!\Add1~40_combout\ & ((!\Add2~37\) # (!\Mult3|auto_generated|mac_out2~DATAOUT20\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~40_combout\,
	datab => \Mult3|auto_generated|mac_out2~DATAOUT20\,
	datad => VCC,
	cin => \Add2~37\,
	combout => \Add2~38_combout\,
	cout => \Add2~39\);

-- Location: LCCOMB_X41_Y21_N8
\Add2~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~40_combout\ = ((\Add1~42_combout\ $ (\Mult3|auto_generated|mac_out2~DATAOUT21\ $ (!\Add2~39\)))) # (GND)
-- \Add2~41\ = CARRY((\Add1~42_combout\ & ((\Mult3|auto_generated|mac_out2~DATAOUT21\) # (!\Add2~39\))) # (!\Add1~42_combout\ & (\Mult3|auto_generated|mac_out2~DATAOUT21\ & !\Add2~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~42_combout\,
	datab => \Mult3|auto_generated|mac_out2~DATAOUT21\,
	datad => VCC,
	cin => \Add2~39\,
	combout => \Add2~40_combout\,
	cout => \Add2~41\);

-- Location: LCCOMB_X38_Y21_N8
\Add3~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~40_combout\ = ((\Mult4|auto_generated|mac_out2~DATAOUT21\ $ (\Add2~40_combout\ $ (!\Add3~39\)))) # (GND)
-- \Add3~41\ = CARRY((\Mult4|auto_generated|mac_out2~DATAOUT21\ & ((\Add2~40_combout\) # (!\Add3~39\))) # (!\Mult4|auto_generated|mac_out2~DATAOUT21\ & (\Add2~40_combout\ & !\Add3~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult4|auto_generated|mac_out2~DATAOUT21\,
	datab => \Add2~40_combout\,
	datad => VCC,
	cin => \Add3~39\,
	combout => \Add3~40_combout\,
	cout => \Add3~41\);

-- Location: LCCOMB_X38_Y21_N10
\Add3~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~42_combout\ = (\Add2~42_combout\ & ((\Mult4|auto_generated|mac_out2~DATAOUT22\ & (\Add3~41\ & VCC)) # (!\Mult4|auto_generated|mac_out2~DATAOUT22\ & (!\Add3~41\)))) # (!\Add2~42_combout\ & ((\Mult4|auto_generated|mac_out2~DATAOUT22\ & (!\Add3~41\)) # 
-- (!\Mult4|auto_generated|mac_out2~DATAOUT22\ & ((\Add3~41\) # (GND)))))
-- \Add3~43\ = CARRY((\Add2~42_combout\ & (!\Mult4|auto_generated|mac_out2~DATAOUT22\ & !\Add3~41\)) # (!\Add2~42_combout\ & ((!\Add3~41\) # (!\Mult4|auto_generated|mac_out2~DATAOUT22\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~42_combout\,
	datab => \Mult4|auto_generated|mac_out2~DATAOUT22\,
	datad => VCC,
	cin => \Add3~41\,
	combout => \Add3~42_combout\,
	cout => \Add3~43\);

-- Location: LCCOMB_X37_Y21_N8
\Add4~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add4~40_combout\ = ((\Mult5|auto_generated|mac_out2~DATAOUT21\ $ (\Add3~40_combout\ $ (!\Add4~39\)))) # (GND)
-- \Add4~41\ = CARRY((\Mult5|auto_generated|mac_out2~DATAOUT21\ & ((\Add3~40_combout\) # (!\Add4~39\))) # (!\Mult5|auto_generated|mac_out2~DATAOUT21\ & (\Add3~40_combout\ & !\Add4~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult5|auto_generated|mac_out2~DATAOUT21\,
	datab => \Add3~40_combout\,
	datad => VCC,
	cin => \Add4~39\,
	combout => \Add4~40_combout\,
	cout => \Add4~41\);

-- Location: LCCOMB_X37_Y21_N10
\Add4~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add4~42_combout\ = (\Mult5|auto_generated|mac_out2~DATAOUT22\ & ((\Add3~42_combout\ & (\Add4~41\ & VCC)) # (!\Add3~42_combout\ & (!\Add4~41\)))) # (!\Mult5|auto_generated|mac_out2~DATAOUT22\ & ((\Add3~42_combout\ & (!\Add4~41\)) # (!\Add3~42_combout\ & 
-- ((\Add4~41\) # (GND)))))
-- \Add4~43\ = CARRY((\Mult5|auto_generated|mac_out2~DATAOUT22\ & (!\Add3~42_combout\ & !\Add4~41\)) # (!\Mult5|auto_generated|mac_out2~DATAOUT22\ & ((!\Add4~41\) # (!\Add3~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult5|auto_generated|mac_out2~DATAOUT22\,
	datab => \Add3~42_combout\,
	datad => VCC,
	cin => \Add4~41\,
	combout => \Add4~42_combout\,
	cout => \Add4~43\);

-- Location: LCCOMB_X37_Y19_N28
\Add6~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add6~44_combout\ = ((\Add7~42_combout\ $ (\Add4~42_combout\ $ (!\Add6~43\)))) # (GND)
-- \Add6~45\ = CARRY((\Add7~42_combout\ & ((\Add4~42_combout\) # (!\Add6~43\))) # (!\Add7~42_combout\ & (\Add4~42_combout\ & !\Add6~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~42_combout\,
	datab => \Add4~42_combout\,
	datad => VCC,
	cin => \Add6~43\,
	combout => \Add6~44_combout\,
	cout => \Add6~45\);

-- Location: LCCOMB_X36_Y19_N28
\result[5]~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \result[5]~60_combout\ = ((\Add5~44_combout\ $ (\Add6~44_combout\ $ (!\result[4]~59\)))) # (GND)
-- \result[5]~61\ = CARRY((\Add5~44_combout\ & ((\Add6~44_combout\) # (!\result[4]~59\))) # (!\Add5~44_combout\ & (\Add6~44_combout\ & !\result[4]~59\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~44_combout\,
	datab => \Add6~44_combout\,
	datad => VCC,
	cin => \result[4]~59\,
	combout => \result[5]~60_combout\,
	cout => \result[5]~61\);

-- Location: LCFF_X36_Y19_N29
\result[5]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \result[5]~60_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \result[5]~reg0_regout\);

-- Location: LCCOMB_X41_Y21_N12
\Add2~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~44_combout\ = ((\Add1~46_combout\ $ (\Mult3|auto_generated|mac_out2~DATAOUT23\ $ (!\Add2~43\)))) # (GND)
-- \Add2~45\ = CARRY((\Add1~46_combout\ & ((\Mult3|auto_generated|mac_out2~DATAOUT23\) # (!\Add2~43\))) # (!\Add1~46_combout\ & (\Mult3|auto_generated|mac_out2~DATAOUT23\ & !\Add2~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~46_combout\,
	datab => \Mult3|auto_generated|mac_out2~DATAOUT23\,
	datad => VCC,
	cin => \Add2~43\,
	combout => \Add2~44_combout\,
	cout => \Add2~45\);

-- Location: LCCOMB_X38_Y21_N12
\Add3~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~44_combout\ = ((\Mult4|auto_generated|mac_out2~DATAOUT23\ $ (\Add2~44_combout\ $ (!\Add3~43\)))) # (GND)
-- \Add3~45\ = CARRY((\Mult4|auto_generated|mac_out2~DATAOUT23\ & ((\Add2~44_combout\) # (!\Add3~43\))) # (!\Mult4|auto_generated|mac_out2~DATAOUT23\ & (\Add2~44_combout\ & !\Add3~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult4|auto_generated|mac_out2~DATAOUT23\,
	datab => \Add2~44_combout\,
	datad => VCC,
	cin => \Add3~43\,
	combout => \Add3~44_combout\,
	cout => \Add3~45\);

-- Location: LCCOMB_X37_Y21_N12
\Add4~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add4~44_combout\ = ((\Mult5|auto_generated|mac_out2~DATAOUT23\ $ (\Add3~44_combout\ $ (!\Add4~43\)))) # (GND)
-- \Add4~45\ = CARRY((\Mult5|auto_generated|mac_out2~DATAOUT23\ & ((\Add3~44_combout\) # (!\Add4~43\))) # (!\Mult5|auto_generated|mac_out2~DATAOUT23\ & (\Add3~44_combout\ & !\Add4~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult5|auto_generated|mac_out2~DATAOUT23\,
	datab => \Add3~44_combout\,
	datad => VCC,
	cin => \Add4~43\,
	combout => \Add4~44_combout\,
	cout => \Add4~45\);

-- Location: LCCOMB_X37_Y19_N30
\Add6~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add6~46_combout\ = (\Add7~44_combout\ & ((\Add4~44_combout\ & (\Add6~45\ & VCC)) # (!\Add4~44_combout\ & (!\Add6~45\)))) # (!\Add7~44_combout\ & ((\Add4~44_combout\ & (!\Add6~45\)) # (!\Add4~44_combout\ & ((\Add6~45\) # (GND)))))
-- \Add6~47\ = CARRY((\Add7~44_combout\ & (!\Add4~44_combout\ & !\Add6~45\)) # (!\Add7~44_combout\ & ((!\Add6~45\) # (!\Add4~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~44_combout\,
	datab => \Add4~44_combout\,
	datad => VCC,
	cin => \Add6~45\,
	combout => \Add6~46_combout\,
	cout => \Add6~47\);

-- Location: LCCOMB_X36_Y19_N30
\result[6]~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \result[6]~62_combout\ = (\Add5~46_combout\ & ((\Add6~46_combout\ & (\result[5]~61\ & VCC)) # (!\Add6~46_combout\ & (!\result[5]~61\)))) # (!\Add5~46_combout\ & ((\Add6~46_combout\ & (!\result[5]~61\)) # (!\Add6~46_combout\ & ((\result[5]~61\) # (GND)))))
-- \result[6]~63\ = CARRY((\Add5~46_combout\ & (!\Add6~46_combout\ & !\result[5]~61\)) # (!\Add5~46_combout\ & ((!\result[5]~61\) # (!\Add6~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~46_combout\,
	datab => \Add6~46_combout\,
	datad => VCC,
	cin => \result[5]~61\,
	combout => \result[6]~62_combout\,
	cout => \result[6]~63\);

-- Location: LCFF_X36_Y19_N31
\result[6]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \result[6]~62_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \result[6]~reg0_regout\);

-- Location: LCCOMB_X40_Y17_N10
\Add0~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~40_combout\ = ((\Mult0|auto_generated|mac_out2~DATAOUT21\ $ (\Mult1|auto_generated|mac_out2~DATAOUT21\ $ (!\Add0~39\)))) # (GND)
-- \Add0~41\ = CARRY((\Mult0|auto_generated|mac_out2~DATAOUT21\ & ((\Mult1|auto_generated|mac_out2~DATAOUT21\) # (!\Add0~39\))) # (!\Mult0|auto_generated|mac_out2~DATAOUT21\ & (\Mult1|auto_generated|mac_out2~DATAOUT21\ & !\Add0~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out2~DATAOUT21\,
	datab => \Mult1|auto_generated|mac_out2~DATAOUT21\,
	datad => VCC,
	cin => \Add0~39\,
	combout => \Add0~40_combout\,
	cout => \Add0~41\);

-- Location: LCCOMB_X40_Y17_N14
\Add0~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~44_combout\ = ((\Mult1|auto_generated|mac_out2~DATAOUT23\ $ (\Mult0|auto_generated|mac_out2~DATAOUT23\ $ (!\Add0~43\)))) # (GND)
-- \Add0~45\ = CARRY((\Mult1|auto_generated|mac_out2~DATAOUT23\ & ((\Mult0|auto_generated|mac_out2~DATAOUT23\) # (!\Add0~43\))) # (!\Mult1|auto_generated|mac_out2~DATAOUT23\ & (\Mult0|auto_generated|mac_out2~DATAOUT23\ & !\Add0~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|mac_out2~DATAOUT23\,
	datab => \Mult0|auto_generated|mac_out2~DATAOUT23\,
	datad => VCC,
	cin => \Add0~43\,
	combout => \Add0~44_combout\,
	cout => \Add0~45\);

-- Location: LCCOMB_X40_Y21_N16
\Add1~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~48_combout\ = ((\Add0~46_combout\ $ (\Mult2|auto_generated|mac_out2~DATAOUT24\ $ (!\Add1~47\)))) # (GND)
-- \Add1~49\ = CARRY((\Add0~46_combout\ & ((\Mult2|auto_generated|mac_out2~DATAOUT24\) # (!\Add1~47\))) # (!\Add0~46_combout\ & (\Mult2|auto_generated|mac_out2~DATAOUT24\ & !\Add1~47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~46_combout\,
	datab => \Mult2|auto_generated|mac_out2~DATAOUT24\,
	datad => VCC,
	cin => \Add1~47\,
	combout => \Add1~48_combout\,
	cout => \Add1~49\);

-- Location: LCCOMB_X41_Y21_N14
\Add2~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~46_combout\ = (\Mult3|auto_generated|mac_out2~DATAOUT24\ & ((\Add1~48_combout\ & (\Add2~45\ & VCC)) # (!\Add1~48_combout\ & (!\Add2~45\)))) # (!\Mult3|auto_generated|mac_out2~DATAOUT24\ & ((\Add1~48_combout\ & (!\Add2~45\)) # (!\Add1~48_combout\ & 
-- ((\Add2~45\) # (GND)))))
-- \Add2~47\ = CARRY((\Mult3|auto_generated|mac_out2~DATAOUT24\ & (!\Add1~48_combout\ & !\Add2~45\)) # (!\Mult3|auto_generated|mac_out2~DATAOUT24\ & ((!\Add2~45\) # (!\Add1~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult3|auto_generated|mac_out2~DATAOUT24\,
	datab => \Add1~48_combout\,
	datad => VCC,
	cin => \Add2~45\,
	combout => \Add2~46_combout\,
	cout => \Add2~47\);

-- Location: LCCOMB_X38_Y21_N14
\Add3~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~46_combout\ = (\Mult4|auto_generated|mac_out2~DATAOUT24\ & ((\Add2~46_combout\ & (\Add3~45\ & VCC)) # (!\Add2~46_combout\ & (!\Add3~45\)))) # (!\Mult4|auto_generated|mac_out2~DATAOUT24\ & ((\Add2~46_combout\ & (!\Add3~45\)) # (!\Add2~46_combout\ & 
-- ((\Add3~45\) # (GND)))))
-- \Add3~47\ = CARRY((\Mult4|auto_generated|mac_out2~DATAOUT24\ & (!\Add2~46_combout\ & !\Add3~45\)) # (!\Mult4|auto_generated|mac_out2~DATAOUT24\ & ((!\Add3~45\) # (!\Add2~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult4|auto_generated|mac_out2~DATAOUT24\,
	datab => \Add2~46_combout\,
	datad => VCC,
	cin => \Add3~45\,
	combout => \Add3~46_combout\,
	cout => \Add3~47\);

-- Location: LCCOMB_X37_Y21_N14
\Add4~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add4~46_combout\ = (\Mult5|auto_generated|mac_out2~DATAOUT24\ & ((\Add3~46_combout\ & (\Add4~45\ & VCC)) # (!\Add3~46_combout\ & (!\Add4~45\)))) # (!\Mult5|auto_generated|mac_out2~DATAOUT24\ & ((\Add3~46_combout\ & (!\Add4~45\)) # (!\Add3~46_combout\ & 
-- ((\Add4~45\) # (GND)))))
-- \Add4~47\ = CARRY((\Mult5|auto_generated|mac_out2~DATAOUT24\ & (!\Add3~46_combout\ & !\Add4~45\)) # (!\Mult5|auto_generated|mac_out2~DATAOUT24\ & ((!\Add4~45\) # (!\Add3~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult5|auto_generated|mac_out2~DATAOUT24\,
	datab => \Add3~46_combout\,
	datad => VCC,
	cin => \Add4~45\,
	combout => \Add4~46_combout\,
	cout => \Add4~47\);

-- Location: LCCOMB_X37_Y18_N0
\Add6~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add6~48_combout\ = ((\Add7~46_combout\ $ (\Add4~46_combout\ $ (!\Add6~47\)))) # (GND)
-- \Add6~49\ = CARRY((\Add7~46_combout\ & ((\Add4~46_combout\) # (!\Add6~47\))) # (!\Add7~46_combout\ & (\Add4~46_combout\ & !\Add6~47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~46_combout\,
	datab => \Add4~46_combout\,
	datad => VCC,
	cin => \Add6~47\,
	combout => \Add6~48_combout\,
	cout => \Add6~49\);

-- Location: LCCOMB_X36_Y18_N0
\result[7]~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \result[7]~64_combout\ = ((\Add5~48_combout\ $ (\Add6~48_combout\ $ (!\result[6]~63\)))) # (GND)
-- \result[7]~65\ = CARRY((\Add5~48_combout\ & ((\Add6~48_combout\) # (!\result[6]~63\))) # (!\Add5~48_combout\ & (\Add6~48_combout\ & !\result[6]~63\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~48_combout\,
	datab => \Add6~48_combout\,
	datad => VCC,
	cin => \result[6]~63\,
	combout => \result[7]~64_combout\,
	cout => \result[7]~65\);

-- Location: LCFF_X36_Y18_N1
\result[7]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \result[7]~64_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \result[7]~reg0_regout\);

-- Location: LCCOMB_X38_Y15_N20
\Add5~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add5~50_combout\ = (\Mult7|auto_generated|mac_out2~DATAOUT25\ & ((\Mult6|auto_generated|mac_out2~DATAOUT25\ & (\Add5~49\ & VCC)) # (!\Mult6|auto_generated|mac_out2~DATAOUT25\ & (!\Add5~49\)))) # (!\Mult7|auto_generated|mac_out2~DATAOUT25\ & 
-- ((\Mult6|auto_generated|mac_out2~DATAOUT25\ & (!\Add5~49\)) # (!\Mult6|auto_generated|mac_out2~DATAOUT25\ & ((\Add5~49\) # (GND)))))
-- \Add5~51\ = CARRY((\Mult7|auto_generated|mac_out2~DATAOUT25\ & (!\Mult6|auto_generated|mac_out2~DATAOUT25\ & !\Add5~49\)) # (!\Mult7|auto_generated|mac_out2~DATAOUT25\ & ((!\Add5~49\) # (!\Mult6|auto_generated|mac_out2~DATAOUT25\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult7|auto_generated|mac_out2~DATAOUT25\,
	datab => \Mult6|auto_generated|mac_out2~DATAOUT25\,
	datad => VCC,
	cin => \Add5~49\,
	combout => \Add5~50_combout\,
	cout => \Add5~51\);

-- Location: LCCOMB_X36_Y18_N2
\result[8]~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \result[8]~66_combout\ = (\Add6~50_combout\ & ((\Add5~50_combout\ & (\result[7]~65\ & VCC)) # (!\Add5~50_combout\ & (!\result[7]~65\)))) # (!\Add6~50_combout\ & ((\Add5~50_combout\ & (!\result[7]~65\)) # (!\Add5~50_combout\ & ((\result[7]~65\) # (GND)))))
-- \result[8]~67\ = CARRY((\Add6~50_combout\ & (!\Add5~50_combout\ & !\result[7]~65\)) # (!\Add6~50_combout\ & ((!\result[7]~65\) # (!\Add5~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~50_combout\,
	datab => \Add5~50_combout\,
	datad => VCC,
	cin => \result[7]~65\,
	combout => \result[8]~66_combout\,
	cout => \result[8]~67\);

-- Location: LCFF_X36_Y18_N3
\result[8]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \result[8]~66_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \result[8]~reg0_regout\);

-- Location: LCCOMB_X38_Y15_N22
\Add5~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add5~52_combout\ = ((\Mult7|auto_generated|mac_out2~DATAOUT26\ $ (\Mult6|auto_generated|mac_out2~DATAOUT26\ $ (!\Add5~51\)))) # (GND)
-- \Add5~53\ = CARRY((\Mult7|auto_generated|mac_out2~DATAOUT26\ & ((\Mult6|auto_generated|mac_out2~DATAOUT26\) # (!\Add5~51\))) # (!\Mult7|auto_generated|mac_out2~DATAOUT26\ & (\Mult6|auto_generated|mac_out2~DATAOUT26\ & !\Add5~51\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult7|auto_generated|mac_out2~DATAOUT26\,
	datab => \Mult6|auto_generated|mac_out2~DATAOUT26\,
	datad => VCC,
	cin => \Add5~51\,
	combout => \Add5~52_combout\,
	cout => \Add5~53\);

-- Location: LCCOMB_X36_Y18_N4
\result[9]~68\ : cycloneii_lcell_comb
-- Equation(s):
-- \result[9]~68_combout\ = ((\Add6~52_combout\ $ (\Add5~52_combout\ $ (!\result[8]~67\)))) # (GND)
-- \result[9]~69\ = CARRY((\Add6~52_combout\ & ((\Add5~52_combout\) # (!\result[8]~67\))) # (!\Add6~52_combout\ & (\Add5~52_combout\ & !\result[8]~67\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~52_combout\,
	datab => \Add5~52_combout\,
	datad => VCC,
	cin => \result[8]~67\,
	combout => \result[9]~68_combout\,
	cout => \result[9]~69\);

-- Location: LCFF_X36_Y18_N5
\result[9]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \result[9]~68_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \result[9]~reg0_regout\);

-- Location: LCCOMB_X36_Y18_N6
\result[10]~70\ : cycloneii_lcell_comb
-- Equation(s):
-- \result[10]~70_combout\ = (\Add6~54_combout\ & ((\Add5~54_combout\ & (\result[9]~69\ & VCC)) # (!\Add5~54_combout\ & (!\result[9]~69\)))) # (!\Add6~54_combout\ & ((\Add5~54_combout\ & (!\result[9]~69\)) # (!\Add5~54_combout\ & ((\result[9]~69\) # 
-- (GND)))))
-- \result[10]~71\ = CARRY((\Add6~54_combout\ & (!\Add5~54_combout\ & !\result[9]~69\)) # (!\Add6~54_combout\ & ((!\result[9]~69\) # (!\Add5~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~54_combout\,
	datab => \Add5~54_combout\,
	datad => VCC,
	cin => \result[9]~69\,
	combout => \result[10]~70_combout\,
	cout => \result[10]~71\);

-- Location: LCFF_X36_Y18_N7
\result[10]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \result[10]~70_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \result[10]~reg0_regout\);

-- Location: LCCOMB_X40_Y17_N22
\Add0~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~52_combout\ = ((\Mult0|auto_generated|mac_out2~DATAOUT27\ $ (\Mult1|auto_generated|mac_out2~DATAOUT27\ $ (!\Add0~51\)))) # (GND)
-- \Add0~53\ = CARRY((\Mult0|auto_generated|mac_out2~DATAOUT27\ & ((\Mult1|auto_generated|mac_out2~DATAOUT27\) # (!\Add0~51\))) # (!\Mult0|auto_generated|mac_out2~DATAOUT27\ & (\Mult1|auto_generated|mac_out2~DATAOUT27\ & !\Add0~51\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out2~DATAOUT27\,
	datab => \Mult1|auto_generated|mac_out2~DATAOUT27\,
	datad => VCC,
	cin => \Add0~51\,
	combout => \Add0~52_combout\,
	cout => \Add0~53\);

-- Location: LCCOMB_X40_Y17_N24
\Add0~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~54_combout\ = (\Mult0|auto_generated|mac_out2~DATAOUT28\ & ((\Mult1|auto_generated|mac_out2~DATAOUT28\ & (\Add0~53\ & VCC)) # (!\Mult1|auto_generated|mac_out2~DATAOUT28\ & (!\Add0~53\)))) # (!\Mult0|auto_generated|mac_out2~DATAOUT28\ & 
-- ((\Mult1|auto_generated|mac_out2~DATAOUT28\ & (!\Add0~53\)) # (!\Mult1|auto_generated|mac_out2~DATAOUT28\ & ((\Add0~53\) # (GND)))))
-- \Add0~55\ = CARRY((\Mult0|auto_generated|mac_out2~DATAOUT28\ & (!\Mult1|auto_generated|mac_out2~DATAOUT28\ & !\Add0~53\)) # (!\Mult0|auto_generated|mac_out2~DATAOUT28\ & ((!\Add0~53\) # (!\Mult1|auto_generated|mac_out2~DATAOUT28\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out2~DATAOUT28\,
	datab => \Mult1|auto_generated|mac_out2~DATAOUT28\,
	datad => VCC,
	cin => \Add0~53\,
	combout => \Add0~54_combout\,
	cout => \Add0~55\);

-- Location: LCCOMB_X40_Y21_N18
\Add1~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~50_combout\ = (\Add0~48_combout\ & ((\Mult2|auto_generated|mac_out2~DATAOUT25\ & (\Add1~49\ & VCC)) # (!\Mult2|auto_generated|mac_out2~DATAOUT25\ & (!\Add1~49\)))) # (!\Add0~48_combout\ & ((\Mult2|auto_generated|mac_out2~DATAOUT25\ & (!\Add1~49\)) # 
-- (!\Mult2|auto_generated|mac_out2~DATAOUT25\ & ((\Add1~49\) # (GND)))))
-- \Add1~51\ = CARRY((\Add0~48_combout\ & (!\Mult2|auto_generated|mac_out2~DATAOUT25\ & !\Add1~49\)) # (!\Add0~48_combout\ & ((!\Add1~49\) # (!\Mult2|auto_generated|mac_out2~DATAOUT25\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~48_combout\,
	datab => \Mult2|auto_generated|mac_out2~DATAOUT25\,
	datad => VCC,
	cin => \Add1~49\,
	combout => \Add1~50_combout\,
	cout => \Add1~51\);

-- Location: LCCOMB_X40_Y21_N22
\Add1~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~54_combout\ = (\Mult2|auto_generated|mac_out2~DATAOUT27\ & ((\Add0~52_combout\ & (\Add1~53\ & VCC)) # (!\Add0~52_combout\ & (!\Add1~53\)))) # (!\Mult2|auto_generated|mac_out2~DATAOUT27\ & ((\Add0~52_combout\ & (!\Add1~53\)) # (!\Add0~52_combout\ & 
-- ((\Add1~53\) # (GND)))))
-- \Add1~55\ = CARRY((\Mult2|auto_generated|mac_out2~DATAOUT27\ & (!\Add0~52_combout\ & !\Add1~53\)) # (!\Mult2|auto_generated|mac_out2~DATAOUT27\ & ((!\Add1~53\) # (!\Add0~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult2|auto_generated|mac_out2~DATAOUT27\,
	datab => \Add0~52_combout\,
	datad => VCC,
	cin => \Add1~53\,
	combout => \Add1~54_combout\,
	cout => \Add1~55\);

-- Location: LCCOMB_X40_Y21_N24
\Add1~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~56_combout\ = ((\Mult2|auto_generated|mac_out2~DATAOUT28\ $ (\Add0~54_combout\ $ (!\Add1~55\)))) # (GND)
-- \Add1~57\ = CARRY((\Mult2|auto_generated|mac_out2~DATAOUT28\ & ((\Add0~54_combout\) # (!\Add1~55\))) # (!\Mult2|auto_generated|mac_out2~DATAOUT28\ & (\Add0~54_combout\ & !\Add1~55\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult2|auto_generated|mac_out2~DATAOUT28\,
	datab => \Add0~54_combout\,
	datad => VCC,
	cin => \Add1~55\,
	combout => \Add1~56_combout\,
	cout => \Add1~57\);

-- Location: LCCOMB_X41_Y21_N16
\Add2~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~48_combout\ = ((\Mult3|auto_generated|mac_out2~DATAOUT25\ $ (\Add1~50_combout\ $ (!\Add2~47\)))) # (GND)
-- \Add2~49\ = CARRY((\Mult3|auto_generated|mac_out2~DATAOUT25\ & ((\Add1~50_combout\) # (!\Add2~47\))) # (!\Mult3|auto_generated|mac_out2~DATAOUT25\ & (\Add1~50_combout\ & !\Add2~47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult3|auto_generated|mac_out2~DATAOUT25\,
	datab => \Add1~50_combout\,
	datad => VCC,
	cin => \Add2~47\,
	combout => \Add2~48_combout\,
	cout => \Add2~49\);

-- Location: LCCOMB_X41_Y21_N18
\Add2~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~50_combout\ = (\Add1~52_combout\ & ((\Mult3|auto_generated|mac_out2~DATAOUT26\ & (\Add2~49\ & VCC)) # (!\Mult3|auto_generated|mac_out2~DATAOUT26\ & (!\Add2~49\)))) # (!\Add1~52_combout\ & ((\Mult3|auto_generated|mac_out2~DATAOUT26\ & (!\Add2~49\)) # 
-- (!\Mult3|auto_generated|mac_out2~DATAOUT26\ & ((\Add2~49\) # (GND)))))
-- \Add2~51\ = CARRY((\Add1~52_combout\ & (!\Mult3|auto_generated|mac_out2~DATAOUT26\ & !\Add2~49\)) # (!\Add1~52_combout\ & ((!\Add2~49\) # (!\Mult3|auto_generated|mac_out2~DATAOUT26\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~52_combout\,
	datab => \Mult3|auto_generated|mac_out2~DATAOUT26\,
	datad => VCC,
	cin => \Add2~49\,
	combout => \Add2~50_combout\,
	cout => \Add2~51\);

-- Location: LCCOMB_X41_Y21_N20
\Add2~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~52_combout\ = ((\Mult3|auto_generated|mac_out2~DATAOUT27\ $ (\Add1~54_combout\ $ (!\Add2~51\)))) # (GND)
-- \Add2~53\ = CARRY((\Mult3|auto_generated|mac_out2~DATAOUT27\ & ((\Add1~54_combout\) # (!\Add2~51\))) # (!\Mult3|auto_generated|mac_out2~DATAOUT27\ & (\Add1~54_combout\ & !\Add2~51\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult3|auto_generated|mac_out2~DATAOUT27\,
	datab => \Add1~54_combout\,
	datad => VCC,
	cin => \Add2~51\,
	combout => \Add2~52_combout\,
	cout => \Add2~53\);

-- Location: LCCOMB_X41_Y21_N22
\Add2~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~54_combout\ = (\Mult3|auto_generated|mac_out2~DATAOUT28\ & ((\Add1~56_combout\ & (\Add2~53\ & VCC)) # (!\Add1~56_combout\ & (!\Add2~53\)))) # (!\Mult3|auto_generated|mac_out2~DATAOUT28\ & ((\Add1~56_combout\ & (!\Add2~53\)) # (!\Add1~56_combout\ & 
-- ((\Add2~53\) # (GND)))))
-- \Add2~55\ = CARRY((\Mult3|auto_generated|mac_out2~DATAOUT28\ & (!\Add1~56_combout\ & !\Add2~53\)) # (!\Mult3|auto_generated|mac_out2~DATAOUT28\ & ((!\Add2~53\) # (!\Add1~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult3|auto_generated|mac_out2~DATAOUT28\,
	datab => \Add1~56_combout\,
	datad => VCC,
	cin => \Add2~53\,
	combout => \Add2~54_combout\,
	cout => \Add2~55\);

-- Location: LCCOMB_X38_Y21_N18
\Add3~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~50_combout\ = (\Mult4|auto_generated|mac_out2~DATAOUT26\ & ((\Add2~50_combout\ & (\Add3~49\ & VCC)) # (!\Add2~50_combout\ & (!\Add3~49\)))) # (!\Mult4|auto_generated|mac_out2~DATAOUT26\ & ((\Add2~50_combout\ & (!\Add3~49\)) # (!\Add2~50_combout\ & 
-- ((\Add3~49\) # (GND)))))
-- \Add3~51\ = CARRY((\Mult4|auto_generated|mac_out2~DATAOUT26\ & (!\Add2~50_combout\ & !\Add3~49\)) # (!\Mult4|auto_generated|mac_out2~DATAOUT26\ & ((!\Add3~49\) # (!\Add2~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult4|auto_generated|mac_out2~DATAOUT26\,
	datab => \Add2~50_combout\,
	datad => VCC,
	cin => \Add3~49\,
	combout => \Add3~50_combout\,
	cout => \Add3~51\);

-- Location: LCCOMB_X38_Y21_N20
\Add3~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~52_combout\ = ((\Mult4|auto_generated|mac_out2~DATAOUT27\ $ (\Add2~52_combout\ $ (!\Add3~51\)))) # (GND)
-- \Add3~53\ = CARRY((\Mult4|auto_generated|mac_out2~DATAOUT27\ & ((\Add2~52_combout\) # (!\Add3~51\))) # (!\Mult4|auto_generated|mac_out2~DATAOUT27\ & (\Add2~52_combout\ & !\Add3~51\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult4|auto_generated|mac_out2~DATAOUT27\,
	datab => \Add2~52_combout\,
	datad => VCC,
	cin => \Add3~51\,
	combout => \Add3~52_combout\,
	cout => \Add3~53\);

-- Location: LCCOMB_X38_Y21_N22
\Add3~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~54_combout\ = (\Mult4|auto_generated|mac_out2~DATAOUT28\ & ((\Add2~54_combout\ & (\Add3~53\ & VCC)) # (!\Add2~54_combout\ & (!\Add3~53\)))) # (!\Mult4|auto_generated|mac_out2~DATAOUT28\ & ((\Add2~54_combout\ & (!\Add3~53\)) # (!\Add2~54_combout\ & 
-- ((\Add3~53\) # (GND)))))
-- \Add3~55\ = CARRY((\Mult4|auto_generated|mac_out2~DATAOUT28\ & (!\Add2~54_combout\ & !\Add3~53\)) # (!\Mult4|auto_generated|mac_out2~DATAOUT28\ & ((!\Add3~53\) # (!\Add2~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult4|auto_generated|mac_out2~DATAOUT28\,
	datab => \Add2~54_combout\,
	datad => VCC,
	cin => \Add3~53\,
	combout => \Add3~54_combout\,
	cout => \Add3~55\);

-- Location: LCCOMB_X37_Y21_N16
\Add4~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add4~48_combout\ = ((\Add3~48_combout\ $ (\Mult5|auto_generated|mac_out2~DATAOUT25\ $ (!\Add4~47\)))) # (GND)
-- \Add4~49\ = CARRY((\Add3~48_combout\ & ((\Mult5|auto_generated|mac_out2~DATAOUT25\) # (!\Add4~47\))) # (!\Add3~48_combout\ & (\Mult5|auto_generated|mac_out2~DATAOUT25\ & !\Add4~47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~48_combout\,
	datab => \Mult5|auto_generated|mac_out2~DATAOUT25\,
	datad => VCC,
	cin => \Add4~47\,
	combout => \Add4~48_combout\,
	cout => \Add4~49\);

-- Location: LCCOMB_X37_Y21_N18
\Add4~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add4~50_combout\ = (\Mult5|auto_generated|mac_out2~DATAOUT26\ & ((\Add3~50_combout\ & (\Add4~49\ & VCC)) # (!\Add3~50_combout\ & (!\Add4~49\)))) # (!\Mult5|auto_generated|mac_out2~DATAOUT26\ & ((\Add3~50_combout\ & (!\Add4~49\)) # (!\Add3~50_combout\ & 
-- ((\Add4~49\) # (GND)))))
-- \Add4~51\ = CARRY((\Mult5|auto_generated|mac_out2~DATAOUT26\ & (!\Add3~50_combout\ & !\Add4~49\)) # (!\Mult5|auto_generated|mac_out2~DATAOUT26\ & ((!\Add4~49\) # (!\Add3~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult5|auto_generated|mac_out2~DATAOUT26\,
	datab => \Add3~50_combout\,
	datad => VCC,
	cin => \Add4~49\,
	combout => \Add4~50_combout\,
	cout => \Add4~51\);

-- Location: LCCOMB_X37_Y21_N20
\Add4~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add4~52_combout\ = ((\Mult5|auto_generated|mac_out2~DATAOUT27\ $ (\Add3~52_combout\ $ (!\Add4~51\)))) # (GND)
-- \Add4~53\ = CARRY((\Mult5|auto_generated|mac_out2~DATAOUT27\ & ((\Add3~52_combout\) # (!\Add4~51\))) # (!\Mult5|auto_generated|mac_out2~DATAOUT27\ & (\Add3~52_combout\ & !\Add4~51\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult5|auto_generated|mac_out2~DATAOUT27\,
	datab => \Add3~52_combout\,
	datad => VCC,
	cin => \Add4~51\,
	combout => \Add4~52_combout\,
	cout => \Add4~53\);

-- Location: LCCOMB_X37_Y21_N22
\Add4~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add4~54_combout\ = (\Mult5|auto_generated|mac_out2~DATAOUT28\ & ((\Add3~54_combout\ & (\Add4~53\ & VCC)) # (!\Add3~54_combout\ & (!\Add4~53\)))) # (!\Mult5|auto_generated|mac_out2~DATAOUT28\ & ((\Add3~54_combout\ & (!\Add4~53\)) # (!\Add3~54_combout\ & 
-- ((\Add4~53\) # (GND)))))
-- \Add4~55\ = CARRY((\Mult5|auto_generated|mac_out2~DATAOUT28\ & (!\Add3~54_combout\ & !\Add4~53\)) # (!\Mult5|auto_generated|mac_out2~DATAOUT28\ & ((!\Add4~53\) # (!\Add3~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult5|auto_generated|mac_out2~DATAOUT28\,
	datab => \Add3~54_combout\,
	datad => VCC,
	cin => \Add4~53\,
	combout => \Add4~54_combout\,
	cout => \Add4~55\);

-- Location: LCCOMB_X37_Y18_N8
\Add6~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add6~56_combout\ = ((\Add7~54_combout\ $ (\Add4~54_combout\ $ (!\Add6~55\)))) # (GND)
-- \Add6~57\ = CARRY((\Add7~54_combout\ & ((\Add4~54_combout\) # (!\Add6~55\))) # (!\Add7~54_combout\ & (\Add4~54_combout\ & !\Add6~55\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~54_combout\,
	datab => \Add4~54_combout\,
	datad => VCC,
	cin => \Add6~55\,
	combout => \Add6~56_combout\,
	cout => \Add6~57\);

-- Location: LCCOMB_X36_Y18_N8
\result[11]~72\ : cycloneii_lcell_comb
-- Equation(s):
-- \result[11]~72_combout\ = ((\Add5~56_combout\ $ (\Add6~56_combout\ $ (!\result[10]~71\)))) # (GND)
-- \result[11]~73\ = CARRY((\Add5~56_combout\ & ((\Add6~56_combout\) # (!\result[10]~71\))) # (!\Add5~56_combout\ & (\Add6~56_combout\ & !\result[10]~71\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~56_combout\,
	datab => \Add6~56_combout\,
	datad => VCC,
	cin => \result[10]~71\,
	combout => \result[11]~72_combout\,
	cout => \result[11]~73\);

-- Location: LCFF_X36_Y18_N9
\result[11]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \result[11]~72_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \result[11]~reg0_regout\);

-- Location: LCCOMB_X40_Y17_N26
\Add0~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~56_combout\ = ((\Mult0|auto_generated|mac_out2~DATAOUT29\ $ (\Mult1|auto_generated|mac_out2~DATAOUT29\ $ (!\Add0~55\)))) # (GND)
-- \Add0~57\ = CARRY((\Mult0|auto_generated|mac_out2~DATAOUT29\ & ((\Mult1|auto_generated|mac_out2~DATAOUT29\) # (!\Add0~55\))) # (!\Mult0|auto_generated|mac_out2~DATAOUT29\ & (\Mult1|auto_generated|mac_out2~DATAOUT29\ & !\Add0~55\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out2~DATAOUT29\,
	datab => \Mult1|auto_generated|mac_out2~DATAOUT29\,
	datad => VCC,
	cin => \Add0~55\,
	combout => \Add0~56_combout\,
	cout => \Add0~57\);

-- Location: LCCOMB_X40_Y21_N26
\Add1~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~58_combout\ = (\Mult2|auto_generated|mac_out2~DATAOUT29\ & ((\Add0~56_combout\ & (\Add1~57\ & VCC)) # (!\Add0~56_combout\ & (!\Add1~57\)))) # (!\Mult2|auto_generated|mac_out2~DATAOUT29\ & ((\Add0~56_combout\ & (!\Add1~57\)) # (!\Add0~56_combout\ & 
-- ((\Add1~57\) # (GND)))))
-- \Add1~59\ = CARRY((\Mult2|auto_generated|mac_out2~DATAOUT29\ & (!\Add0~56_combout\ & !\Add1~57\)) # (!\Mult2|auto_generated|mac_out2~DATAOUT29\ & ((!\Add1~57\) # (!\Add0~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult2|auto_generated|mac_out2~DATAOUT29\,
	datab => \Add0~56_combout\,
	datad => VCC,
	cin => \Add1~57\,
	combout => \Add1~58_combout\,
	cout => \Add1~59\);

-- Location: LCCOMB_X41_Y21_N24
\Add2~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~56_combout\ = ((\Mult3|auto_generated|mac_out2~DATAOUT29\ $ (\Add1~58_combout\ $ (!\Add2~55\)))) # (GND)
-- \Add2~57\ = CARRY((\Mult3|auto_generated|mac_out2~DATAOUT29\ & ((\Add1~58_combout\) # (!\Add2~55\))) # (!\Mult3|auto_generated|mac_out2~DATAOUT29\ & (\Add1~58_combout\ & !\Add2~55\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult3|auto_generated|mac_out2~DATAOUT29\,
	datab => \Add1~58_combout\,
	datad => VCC,
	cin => \Add2~55\,
	combout => \Add2~56_combout\,
	cout => \Add2~57\);

-- Location: LCCOMB_X38_Y21_N24
\Add3~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~56_combout\ = ((\Mult4|auto_generated|mac_out2~DATAOUT29\ $ (\Add2~56_combout\ $ (!\Add3~55\)))) # (GND)
-- \Add3~57\ = CARRY((\Mult4|auto_generated|mac_out2~DATAOUT29\ & ((\Add2~56_combout\) # (!\Add3~55\))) # (!\Mult4|auto_generated|mac_out2~DATAOUT29\ & (\Add2~56_combout\ & !\Add3~55\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult4|auto_generated|mac_out2~DATAOUT29\,
	datab => \Add2~56_combout\,
	datad => VCC,
	cin => \Add3~55\,
	combout => \Add3~56_combout\,
	cout => \Add3~57\);

-- Location: LCCOMB_X37_Y21_N24
\Add4~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add4~56_combout\ = ((\Mult5|auto_generated|mac_out2~DATAOUT29\ $ (\Add3~56_combout\ $ (!\Add4~55\)))) # (GND)
-- \Add4~57\ = CARRY((\Mult5|auto_generated|mac_out2~DATAOUT29\ & ((\Add3~56_combout\) # (!\Add4~55\))) # (!\Mult5|auto_generated|mac_out2~DATAOUT29\ & (\Add3~56_combout\ & !\Add4~55\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult5|auto_generated|mac_out2~DATAOUT29\,
	datab => \Add3~56_combout\,
	datad => VCC,
	cin => \Add4~55\,
	combout => \Add4~56_combout\,
	cout => \Add4~57\);

-- Location: LCCOMB_X37_Y18_N10
\Add6~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add6~58_combout\ = (\Add7~56_combout\ & ((\Add4~56_combout\ & (\Add6~57\ & VCC)) # (!\Add4~56_combout\ & (!\Add6~57\)))) # (!\Add7~56_combout\ & ((\Add4~56_combout\ & (!\Add6~57\)) # (!\Add4~56_combout\ & ((\Add6~57\) # (GND)))))
-- \Add6~59\ = CARRY((\Add7~56_combout\ & (!\Add4~56_combout\ & !\Add6~57\)) # (!\Add7~56_combout\ & ((!\Add6~57\) # (!\Add4~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~56_combout\,
	datab => \Add4~56_combout\,
	datad => VCC,
	cin => \Add6~57\,
	combout => \Add6~58_combout\,
	cout => \Add6~59\);

-- Location: LCCOMB_X36_Y18_N10
\result[12]~74\ : cycloneii_lcell_comb
-- Equation(s):
-- \result[12]~74_combout\ = (\Add5~58_combout\ & ((\Add6~58_combout\ & (\result[11]~73\ & VCC)) # (!\Add6~58_combout\ & (!\result[11]~73\)))) # (!\Add5~58_combout\ & ((\Add6~58_combout\ & (!\result[11]~73\)) # (!\Add6~58_combout\ & ((\result[11]~73\) # 
-- (GND)))))
-- \result[12]~75\ = CARRY((\Add5~58_combout\ & (!\Add6~58_combout\ & !\result[11]~73\)) # (!\Add5~58_combout\ & ((!\result[11]~73\) # (!\Add6~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~58_combout\,
	datab => \Add6~58_combout\,
	datad => VCC,
	cin => \result[11]~73\,
	combout => \result[12]~74_combout\,
	cout => \result[12]~75\);

-- Location: LCFF_X36_Y18_N11
\result[12]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \result[12]~74_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \result[12]~reg0_regout\);

-- Location: LCCOMB_X37_Y21_N26
\Add4~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add4~58_combout\ = (\Add3~58_combout\ & ((\Mult5|auto_generated|mac_out2~DATAOUT30\ & (\Add4~57\ & VCC)) # (!\Mult5|auto_generated|mac_out2~DATAOUT30\ & (!\Add4~57\)))) # (!\Add3~58_combout\ & ((\Mult5|auto_generated|mac_out2~DATAOUT30\ & (!\Add4~57\)) # 
-- (!\Mult5|auto_generated|mac_out2~DATAOUT30\ & ((\Add4~57\) # (GND)))))
-- \Add4~59\ = CARRY((\Add3~58_combout\ & (!\Mult5|auto_generated|mac_out2~DATAOUT30\ & !\Add4~57\)) # (!\Add3~58_combout\ & ((!\Add4~57\) # (!\Mult5|auto_generated|mac_out2~DATAOUT30\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~58_combout\,
	datab => \Mult5|auto_generated|mac_out2~DATAOUT30\,
	datad => VCC,
	cin => \Add4~57\,
	combout => \Add4~58_combout\,
	cout => \Add4~59\);

-- Location: LCCOMB_X37_Y18_N12
\Add6~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add6~60_combout\ = ((\Add7~58_combout\ $ (\Add4~58_combout\ $ (!\Add6~59\)))) # (GND)
-- \Add6~61\ = CARRY((\Add7~58_combout\ & ((\Add4~58_combout\) # (!\Add6~59\))) # (!\Add7~58_combout\ & (\Add4~58_combout\ & !\Add6~59\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~58_combout\,
	datab => \Add4~58_combout\,
	datad => VCC,
	cin => \Add6~59\,
	combout => \Add6~60_combout\,
	cout => \Add6~61\);

-- Location: LCCOMB_X36_Y18_N12
\result[13]~76\ : cycloneii_lcell_comb
-- Equation(s):
-- \result[13]~76_combout\ = ((\Add5~60_combout\ $ (\Add6~60_combout\ $ (!\result[12]~75\)))) # (GND)
-- \result[13]~77\ = CARRY((\Add5~60_combout\ & ((\Add6~60_combout\) # (!\result[12]~75\))) # (!\Add5~60_combout\ & (\Add6~60_combout\ & !\result[12]~75\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~60_combout\,
	datab => \Add6~60_combout\,
	datad => VCC,
	cin => \result[12]~75\,
	combout => \result[13]~76_combout\,
	cout => \result[13]~77\);

-- Location: LCFF_X36_Y18_N13
\result[13]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \result[13]~76_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \result[13]~reg0_regout\);

-- Location: LCCOMB_X37_Y18_N14
\Add6~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add6~62_combout\ = (\Add4~60_combout\ & (!\Add6~61\)) # (!\Add4~60_combout\ & ((\Add6~61\) # (GND)))
-- \Add6~63\ = CARRY((!\Add6~61\) # (!\Add4~60_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~60_combout\,
	datad => VCC,
	cin => \Add6~61\,
	combout => \Add6~62_combout\,
	cout => \Add6~63\);

-- Location: LCCOMB_X36_Y18_N14
\result[14]~78\ : cycloneii_lcell_comb
-- Equation(s):
-- \result[14]~78_combout\ = (\Add6~62_combout\ & (!\result[13]~77\)) # (!\Add6~62_combout\ & ((\result[13]~77\) # (GND)))
-- \result[14]~79\ = CARRY((!\result[13]~77\) # (!\Add6~62_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add6~62_combout\,
	datad => VCC,
	cin => \result[13]~77\,
	combout => \result[14]~78_combout\,
	cout => \result[14]~79\);

-- Location: LCFF_X36_Y18_N15
\result[14]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \result[14]~78_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \result[14]~reg0_regout\);

-- Location: LCCOMB_X40_Y17_N28
\Add0~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~58_combout\ = \Add0~57\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Add0~57\,
	combout => \Add0~58_combout\);

-- Location: LCCOMB_X41_Y21_N26
\Add2~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~58_combout\ = (\Mult3|auto_generated|mac_out2~DATAOUT30\ & ((\Add1~60_combout\ & (\Add2~57\ & VCC)) # (!\Add1~60_combout\ & (!\Add2~57\)))) # (!\Mult3|auto_generated|mac_out2~DATAOUT30\ & ((\Add1~60_combout\ & (!\Add2~57\)) # (!\Add1~60_combout\ & 
-- ((\Add2~57\) # (GND)))))
-- \Add2~59\ = CARRY((\Mult3|auto_generated|mac_out2~DATAOUT30\ & (!\Add1~60_combout\ & !\Add2~57\)) # (!\Mult3|auto_generated|mac_out2~DATAOUT30\ & ((!\Add2~57\) # (!\Add1~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult3|auto_generated|mac_out2~DATAOUT30\,
	datab => \Add1~60_combout\,
	datad => VCC,
	cin => \Add2~57\,
	combout => \Add2~58_combout\,
	cout => \Add2~59\);

-- Location: LCCOMB_X41_Y21_N30
\Add2~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~62_combout\ = \Add2~61\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Add2~61\,
	combout => \Add2~62_combout\);

-- Location: LCCOMB_X38_Y21_N28
\Add3~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~60_combout\ = (\Add2~60_combout\ & (\Add3~59\ $ (GND))) # (!\Add2~60_combout\ & (!\Add3~59\ & VCC))
-- \Add3~61\ = CARRY((\Add2~60_combout\ & !\Add3~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~60_combout\,
	datad => VCC,
	cin => \Add3~59\,
	combout => \Add3~60_combout\,
	cout => \Add3~61\);

-- Location: LCCOMB_X38_Y21_N30
\Add3~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~62_combout\ = \Add3~61\ $ (\Add2~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Add2~62_combout\,
	cin => \Add3~61\,
	combout => \Add3~62_combout\);

-- Location: LCCOMB_X37_Y21_N30
\Add4~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add4~62_combout\ = \Add4~61\ $ (\Add3~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Add3~62_combout\,
	cin => \Add4~61\,
	combout => \Add4~62_combout\);

-- Location: LCCOMB_X37_Y18_N16
\Add6~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add6~64_combout\ = \Add6~63\ $ (!\Add4~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Add4~62_combout\,
	cin => \Add6~63\,
	combout => \Add6~64_combout\);

-- Location: LCCOMB_X36_Y18_N16
\result[15]~80\ : cycloneii_lcell_comb
-- Equation(s):
-- \result[15]~80_combout\ = \result[14]~79\ $ (!\Add6~64_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Add6~64_combout\,
	cin => \result[14]~79\,
	combout => \result[15]~80_combout\);

-- Location: LCFF_X36_Y18_N17
\result[15]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \result[15]~80_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \result[15]~reg0_regout\);

-- Location: PIN_AE15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\result[0]~I\ : cycloneii_io
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
	datain => \result[0]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_result(0));

-- Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\result[1]~I\ : cycloneii_io
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
	datain => \result[1]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_result(1));

-- Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\result[2]~I\ : cycloneii_io
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
	datain => \result[2]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_result(2));

-- Location: PIN_G14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\result[3]~I\ : cycloneii_io
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
	datain => \result[3]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_result(3));

-- Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\result[4]~I\ : cycloneii_io
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
	datain => \result[4]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_result(4));

-- Location: PIN_G13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\result[5]~I\ : cycloneii_io
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
	datain => \result[5]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_result(5));

-- Location: PIN_AA14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\result[6]~I\ : cycloneii_io
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
	datain => \result[6]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_result(6));

-- Location: PIN_Y13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\result[7]~I\ : cycloneii_io
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
	datain => \result[7]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_result(7));

-- Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\result[8]~I\ : cycloneii_io
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
	datain => \result[8]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_result(8));

-- Location: PIN_AC14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\result[9]~I\ : cycloneii_io
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
	datain => \result[9]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_result(9));

-- Location: PIN_Y14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\result[10]~I\ : cycloneii_io
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
	datain => \result[10]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_result(10));

-- Location: PIN_C15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\result[11]~I\ : cycloneii_io
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
	datain => \result[11]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_result(11));

-- Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\result[12]~I\ : cycloneii_io
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
	datain => \result[12]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_result(12));

-- Location: PIN_AD15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\result[13]~I\ : cycloneii_io
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
	datain => \result[13]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_result(13));

-- Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\result[14]~I\ : cycloneii_io
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
	datain => \result[14]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_result(14));

-- Location: PIN_AA13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\result[15]~I\ : cycloneii_io
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
	datain => \result[15]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_result(15));
END structure;


