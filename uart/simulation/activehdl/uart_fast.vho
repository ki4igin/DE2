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

-- DATE "01/18/2021 13:35:51"

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

ENTITY 	uart_top IS
    PORT (
	CLOCK_50 : IN std_logic;
	HEX6 : OUT std_logic_vector(6 DOWNTO 0);
	HEX7 : OUT std_logic_vector(6 DOWNTO 0);
	UART_TXD : OUT std_logic;
	UART_RXD : IN std_logic
	);
END uart_top;

-- Design Ports Information
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
-- UART_TXD	=>  Location: PIN_B25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- CLOCK_50	=>  Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- UART_RXD	=>  Location: PIN_C25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF uart_top IS
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
SIGNAL ww_HEX6 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX7 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_UART_TXD : std_logic;
SIGNAL ww_UART_RXD : std_logic;
SIGNAL \CLOCK_50~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \uart1|tx_count[2]~9_combout\ : std_logic;
SIGNAL \uart1|count_os[0]~5_combout\ : std_logic;
SIGNAL \uart1|count_os[0]~6\ : std_logic;
SIGNAL \uart1|count_os[1]~7_combout\ : std_logic;
SIGNAL \uart1|count_os[1]~8\ : std_logic;
SIGNAL \uart1|count_os[2]~9_combout\ : std_logic;
SIGNAL \uart1|count_os[2]~10\ : std_logic;
SIGNAL \uart1|count_os[3]~11_combout\ : std_logic;
SIGNAL \uart1|count_os[3]~12\ : std_logic;
SIGNAL \uart1|count_os[4]~13_combout\ : std_logic;
SIGNAL \uart1|count_baud[3]~15_combout\ : std_logic;
SIGNAL \uart1|count_baud[6]~21_combout\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \Add0~34_combout\ : std_logic;
SIGNAL \Add0~46_combout\ : std_logic;
SIGNAL \Add0~48_combout\ : std_logic;
SIGNAL \uart1|LessThan5~0_combout\ : std_logic;
SIGNAL \uart1|LessThan8~0_combout\ : std_logic;
SIGNAL \uart1|LessThan1~0_combout\ : std_logic;
SIGNAL \uart1|rx_count~0_combout\ : std_logic;
SIGNAL \uart1|rx_count[3]~2_combout\ : std_logic;
SIGNAL \uart1|rx_count~3_combout\ : std_logic;
SIGNAL \uart1|rx_count~4_combout\ : std_logic;
SIGNAL \uart1|Add3~0_combout\ : std_logic;
SIGNAL \uart1|rx_count[3]~5_combout\ : std_logic;
SIGNAL \uart1|os_count[3]~0_combout\ : std_logic;
SIGNAL \uart1|Add2~1_combout\ : std_logic;
SIGNAL \uart1|os_count[2]~3_combout\ : std_logic;
SIGNAL \proc_tx:cnt[3]~regout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \proc_tx:cnt[6]~regout\ : std_logic;
SIGNAL \proc_tx:cnt[5]~regout\ : std_logic;
SIGNAL \proc_tx:cnt[8]~regout\ : std_logic;
SIGNAL \proc_tx:cnt[10]~regout\ : std_logic;
SIGNAL \proc_tx:cnt[14]~regout\ : std_logic;
SIGNAL \proc_tx:cnt[22]~regout\ : std_logic;
SIGNAL \proc_tx:cnt[25]~regout\ : std_logic;
SIGNAL \proc_tx:cnt[24]~regout\ : std_logic;
SIGNAL \proc_tx:cnt[26]~regout\ : std_logic;
SIGNAL \proc_tx:cnt[28]~regout\ : std_logic;
SIGNAL \cnt~4_combout\ : std_logic;
SIGNAL \cnt~10_combout\ : std_logic;
SIGNAL \cnt~12_combout\ : std_logic;
SIGNAL \UART_RXD~combout\ : std_logic;
SIGNAL \uart1|rx_buffer[7]~feeder_combout\ : std_logic;
SIGNAL \uart1|count_baud[0]~9_combout\ : std_logic;
SIGNAL \uart1|LessThan0~0_combout\ : std_logic;
SIGNAL \uart1|count_baud[5]~19_combout\ : std_logic;
SIGNAL \uart1|LessThan0~1_combout\ : std_logic;
SIGNAL \uart1|LessThan0~2_combout\ : std_logic;
SIGNAL \uart1|count_baud[0]~10\ : std_logic;
SIGNAL \uart1|count_baud[1]~11_combout\ : std_logic;
SIGNAL \uart1|count_baud[1]~12\ : std_logic;
SIGNAL \uart1|count_baud[2]~13_combout\ : std_logic;
SIGNAL \uart1|count_baud[2]~14\ : std_logic;
SIGNAL \uart1|count_baud[3]~16\ : std_logic;
SIGNAL \uart1|count_baud[4]~17_combout\ : std_logic;
SIGNAL \uart1|count_baud[4]~18\ : std_logic;
SIGNAL \uart1|count_baud[5]~20\ : std_logic;
SIGNAL \uart1|count_baud[6]~22\ : std_logic;
SIGNAL \uart1|count_baud[7]~23_combout\ : std_logic;
SIGNAL \uart1|count_baud[7]~24\ : std_logic;
SIGNAL \uart1|count_baud[8]~25_combout\ : std_logic;
SIGNAL \uart1|LessThan1~1_combout\ : std_logic;
SIGNAL \uart1|os_pulse~feeder_combout\ : std_logic;
SIGNAL \uart1|os_pulse~regout\ : std_logic;
SIGNAL \uart1|rx_state~0_combout\ : std_logic;
SIGNAL \uart1|Add2~0_combout\ : std_logic;
SIGNAL \uart1|os_count[3]~2_combout\ : std_logic;
SIGNAL \uart1|rx_state~1_combout\ : std_logic;
SIGNAL \uart1|rx_state~2_combout\ : std_logic;
SIGNAL \uart1|rx_state~regout\ : std_logic;
SIGNAL \uart1|os_count[3]~1_combout\ : std_logic;
SIGNAL \uart1|os_count[0]~4_combout\ : std_logic;
SIGNAL \uart1|os_count[1]~5_combout\ : std_logic;
SIGNAL \uart1|LessThan3~0_combout\ : std_logic;
SIGNAL \uart1|rx_count[3]~1_combout\ : std_logic;
SIGNAL \uart1|rx_count[3]~6_combout\ : std_logic;
SIGNAL \uart1|rx_buffer[3]~0_combout\ : std_logic;
SIGNAL \uart1|rx_buffer[6]~feeder_combout\ : std_logic;
SIGNAL \uart1|rx_buffer[5]~feeder_combout\ : std_logic;
SIGNAL \uart1|rx_buffer[4]~feeder_combout\ : std_logic;
SIGNAL \uart1|rx_buffer[3]~feeder_combout\ : std_logic;
SIGNAL \uart1|rx_buffer[2]~feeder_combout\ : std_logic;
SIGNAL \uart1|rx_buffer[1]~feeder_combout\ : std_logic;
SIGNAL \uart1|rx_buffer[0]~feeder_combout\ : std_logic;
SIGNAL \uart1|rx_data[0]~feeder_combout\ : std_logic;
SIGNAL \uart1|rx_data[3]~0_combout\ : std_logic;
SIGNAL \uart1|rx_data[1]~feeder_combout\ : std_logic;
SIGNAL \uart1|rx_data[3]~feeder_combout\ : std_logic;
SIGNAL \uart1|rx_data[2]~feeder_combout\ : std_logic;
SIGNAL \seg_low|Mux6~0_combout\ : std_logic;
SIGNAL \seg_low|Mux5~0_combout\ : std_logic;
SIGNAL \seg_low|Mux4~0_combout\ : std_logic;
SIGNAL \seg_low|Mux3~0_combout\ : std_logic;
SIGNAL \seg_low|Mux2~0_combout\ : std_logic;
SIGNAL \seg_low|Mux1~0_combout\ : std_logic;
SIGNAL \seg_low|Mux0~0_combout\ : std_logic;
SIGNAL \uart1|rx_data[7]~feeder_combout\ : std_logic;
SIGNAL \uart1|rx_data[4]~feeder_combout\ : std_logic;
SIGNAL \uart1|rx_data[6]~feeder_combout\ : std_logic;
SIGNAL \uart1|rx_data[5]~feeder_combout\ : std_logic;
SIGNAL \seg_high|Mux6~0_combout\ : std_logic;
SIGNAL \seg_high|Mux5~0_combout\ : std_logic;
SIGNAL \seg_high|Mux4~0_combout\ : std_logic;
SIGNAL \seg_high|Mux3~0_combout\ : std_logic;
SIGNAL \seg_high|Mux2~0_combout\ : std_logic;
SIGNAL \seg_high|Mux1~0_combout\ : std_logic;
SIGNAL \seg_high|Mux0~0_combout\ : std_logic;
SIGNAL \CLOCK_50~combout\ : std_logic;
SIGNAL \CLOCK_50~clkctrl_outclk\ : std_logic;
SIGNAL \uart1|tx_count[0]~4_combout\ : std_logic;
SIGNAL \proc_tx:cnt[30]~regout\ : std_logic;
SIGNAL \Add0~51\ : std_logic;
SIGNAL \Add0~53\ : std_logic;
SIGNAL \Add0~54_combout\ : std_logic;
SIGNAL \proc_tx:cnt[27]~regout\ : std_logic;
SIGNAL \Add0~55\ : std_logic;
SIGNAL \Add0~57\ : std_logic;
SIGNAL \Add0~58_combout\ : std_logic;
SIGNAL \proc_tx:cnt[29]~regout\ : std_logic;
SIGNAL \Add0~59\ : std_logic;
SIGNAL \Add0~60_combout\ : std_logic;
SIGNAL \Add0~56_combout\ : std_logic;
SIGNAL \proc_tx:cnt[31]~regout\ : std_logic;
SIGNAL \Add0~61\ : std_logic;
SIGNAL \Add0~62_combout\ : std_logic;
SIGNAL \Equal0~9_combout\ : std_logic;
SIGNAL \proc_tx:cnt[4]~regout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \proc_tx:cnt[0]~regout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \proc_tx:cnt[1]~regout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \proc_tx:cnt[2]~regout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \cnt~1_combout\ : std_logic;
SIGNAL \proc_tx:cnt[7]~regout\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \proc_tx:cnt[9]~regout\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \proc_tx:cnt[11]~regout\ : std_logic;
SIGNAL \Add0~21\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \cnt~2_combout\ : std_logic;
SIGNAL \proc_tx:cnt[12]~regout\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \cnt~3_combout\ : std_logic;
SIGNAL \proc_tx:cnt[13]~regout\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \cnt~5_combout\ : std_logic;
SIGNAL \proc_tx:cnt[15]~regout\ : std_logic;
SIGNAL \Add0~29\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \cnt~0_combout\ : std_logic;
SIGNAL \cnt~9_combout\ : std_logic;
SIGNAL \proc_tx:cnt[21]~regout\ : std_logic;
SIGNAL \cnt~8_combout\ : std_logic;
SIGNAL \proc_tx:cnt[20]~regout\ : std_logic;
SIGNAL \cnt~7_combout\ : std_logic;
SIGNAL \proc_tx:cnt[19]~regout\ : std_logic;
SIGNAL \cnt~6_combout\ : std_logic;
SIGNAL \proc_tx:cnt[17]~regout\ : std_logic;
SIGNAL \Add0~31\ : std_logic;
SIGNAL \Add0~32_combout\ : std_logic;
SIGNAL \proc_tx:cnt[16]~regout\ : std_logic;
SIGNAL \Add0~33\ : std_logic;
SIGNAL \Add0~35\ : std_logic;
SIGNAL \Add0~36_combout\ : std_logic;
SIGNAL \proc_tx:cnt[18]~regout\ : std_logic;
SIGNAL \Add0~37\ : std_logic;
SIGNAL \Add0~39\ : std_logic;
SIGNAL \Add0~41\ : std_logic;
SIGNAL \Add0~43\ : std_logic;
SIGNAL \Add0~44_combout\ : std_logic;
SIGNAL \Add0~42_combout\ : std_logic;
SIGNAL \Add0~40_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Add0~38_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \cnt~11_combout\ : std_logic;
SIGNAL \proc_tx:cnt[23]~regout\ : std_logic;
SIGNAL \Add0~45\ : std_logic;
SIGNAL \Add0~47\ : std_logic;
SIGNAL \Add0~49\ : std_logic;
SIGNAL \Add0~50_combout\ : std_logic;
SIGNAL \Add0~52_combout\ : std_logic;
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL \Equal0~10_combout\ : std_logic;
SIGNAL \tx_ena~regout\ : std_logic;
SIGNAL \uart1|tx_count[0]~8_combout\ : std_logic;
SIGNAL \uart1|tx_count[0]~5\ : std_logic;
SIGNAL \uart1|tx_count[1]~6_combout\ : std_logic;
SIGNAL \uart1|tx_count[1]~7\ : std_logic;
SIGNAL \uart1|tx_count[2]~10\ : std_logic;
SIGNAL \uart1|tx_count[3]~11_combout\ : std_logic;
SIGNAL \uart1|baud_pulse~0_combout\ : std_logic;
SIGNAL \uart1|baud_pulse~regout\ : std_logic;
SIGNAL \uart1|tx_state~0_combout\ : std_logic;
SIGNAL \uart1|tx_state~1_combout\ : std_logic;
SIGNAL \uart1|tx_state~regout\ : std_logic;
SIGNAL \uart1|tx_buffer[0]~1_combout\ : std_logic;
SIGNAL \uart1|tx_buffer~9_combout\ : std_logic;
SIGNAL \uart1|tx_buffer~10_combout\ : std_logic;
SIGNAL \uart1|tx_buffer~8_combout\ : std_logic;
SIGNAL \uart1|tx_buffer[0]~2_combout\ : std_logic;
SIGNAL \uart1|tx_buffer~7_combout\ : std_logic;
SIGNAL \tx_data[4]~feeder_combout\ : std_logic;
SIGNAL \uart1|tx_buffer~6_combout\ : std_logic;
SIGNAL \uart1|tx_buffer~5_combout\ : std_logic;
SIGNAL \uart1|tx_buffer~4_combout\ : std_logic;
SIGNAL \uart1|tx_buffer~3_combout\ : std_logic;
SIGNAL \uart1|tx_buffer~0_combout\ : std_logic;
SIGNAL \uart1|tx~0_combout\ : std_logic;
SIGNAL \uart1|tx~1_combout\ : std_logic;
SIGNAL \uart1|tx~2_combout\ : std_logic;
SIGNAL \uart1|tx~regout\ : std_logic;
SIGNAL tx_data : std_logic_vector(7 DOWNTO 0);
SIGNAL \uart1|tx_count\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \uart1|tx_buffer\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \uart1|rx_data\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \uart1|rx_count\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \uart1|rx_buffer\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \uart1|os_count\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \uart1|count_os\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \uart1|count_baud\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \uart1|ALT_INV_tx_state~regout\ : std_logic;
SIGNAL \uart1|ALT_INV_LessThan0~2_combout\ : std_logic;
SIGNAL \seg_high|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \seg_low|ALT_INV_Mux0~0_combout\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
HEX6 <= ww_HEX6;
HEX7 <= ww_HEX7;
UART_TXD <= ww_UART_TXD;
ww_UART_RXD <= UART_RXD;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \CLOCK_50~combout\);
\uart1|ALT_INV_tx_state~regout\ <= NOT \uart1|tx_state~regout\;
\uart1|ALT_INV_LessThan0~2_combout\ <= NOT \uart1|LessThan0~2_combout\;
\seg_high|ALT_INV_Mux0~0_combout\ <= NOT \seg_high|Mux0~0_combout\;
\seg_low|ALT_INV_Mux0~0_combout\ <= NOT \seg_low|Mux0~0_combout\;

-- Location: LCFF_X5_Y25_N7
\uart1|tx_count[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \uart1|tx_count[2]~9_combout\,
	sclr => \uart1|ALT_INV_tx_state~regout\,
	ena => \uart1|tx_count[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uart1|tx_count\(2));

-- Location: LCFF_X6_Y27_N9
\uart1|count_os[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \uart1|count_os[1]~7_combout\,
	sclr => \uart1|LessThan1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uart1|count_os\(1));

-- Location: LCFF_X6_Y27_N11
\uart1|count_os[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \uart1|count_os[2]~9_combout\,
	sclr => \uart1|LessThan1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uart1|count_os\(2));

-- Location: LCFF_X6_Y27_N13
\uart1|count_os[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \uart1|count_os[3]~11_combout\,
	sclr => \uart1|LessThan1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uart1|count_os\(3));

-- Location: LCFF_X6_Y27_N15
\uart1|count_os[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \uart1|count_os[4]~13_combout\,
	sclr => \uart1|LessThan1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uart1|count_os\(4));

-- Location: LCFF_X5_Y27_N7
\uart1|count_baud[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \uart1|count_baud[3]~15_combout\,
	sclr => \uart1|ALT_INV_LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uart1|count_baud\(3));

-- Location: LCFF_X5_Y27_N13
\uart1|count_baud[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \uart1|count_baud[6]~21_combout\,
	sclr => \uart1|ALT_INV_LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uart1|count_baud\(6));

-- Location: LCCOMB_X5_Y25_N6
\uart1|tx_count[2]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \uart1|tx_count[2]~9_combout\ = (\uart1|tx_count\(2) & (\uart1|tx_count[1]~7\ $ (GND))) # (!\uart1|tx_count\(2) & (!\uart1|tx_count[1]~7\ & VCC))
-- \uart1|tx_count[2]~10\ = CARRY((\uart1|tx_count\(2) & !\uart1|tx_count[1]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart1|tx_count\(2),
	datad => VCC,
	cin => \uart1|tx_count[1]~7\,
	combout => \uart1|tx_count[2]~9_combout\,
	cout => \uart1|tx_count[2]~10\);

-- Location: LCFF_X6_Y27_N7
\uart1|count_os[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \uart1|count_os[0]~5_combout\,
	sclr => \uart1|LessThan1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uart1|count_os\(0));

-- Location: LCCOMB_X6_Y27_N6
\uart1|count_os[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \uart1|count_os[0]~5_combout\ = (((\uart1|count_os\(0) & \uart1|LessThan0~2_combout\)))
-- \uart1|count_os[0]~6\ = CARRY((\uart1|count_os\(0) & \uart1|LessThan0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart1|count_os\(0),
	datab => \uart1|LessThan0~2_combout\,
	datad => VCC,
	combout => \uart1|count_os[0]~5_combout\,
	cout => \uart1|count_os[0]~6\);

-- Location: LCCOMB_X6_Y27_N8
\uart1|count_os[1]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \uart1|count_os[1]~7_combout\ = (\uart1|count_os[0]~6\ & (((!\uart1|count_os\(1))) # (!\uart1|LessThan0~2_combout\))) # (!\uart1|count_os[0]~6\ & (((\uart1|LessThan0~2_combout\ & \uart1|count_os\(1))) # (GND)))
-- \uart1|count_os[1]~8\ = CARRY(((!\uart1|count_os[0]~6\) # (!\uart1|count_os\(1))) # (!\uart1|LessThan0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart1|LessThan0~2_combout\,
	datab => \uart1|count_os\(1),
	datad => VCC,
	cin => \uart1|count_os[0]~6\,
	combout => \uart1|count_os[1]~7_combout\,
	cout => \uart1|count_os[1]~8\);

-- Location: LCCOMB_X6_Y27_N10
\uart1|count_os[2]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \uart1|count_os[2]~9_combout\ = (\uart1|count_os[1]~8\ & (\uart1|count_os\(2) & (\uart1|LessThan0~2_combout\ & VCC))) # (!\uart1|count_os[1]~8\ & ((((\uart1|count_os\(2) & \uart1|LessThan0~2_combout\)))))
-- \uart1|count_os[2]~10\ = CARRY((\uart1|count_os\(2) & (\uart1|LessThan0~2_combout\ & !\uart1|count_os[1]~8\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart1|count_os\(2),
	datab => \uart1|LessThan0~2_combout\,
	datad => VCC,
	cin => \uart1|count_os[1]~8\,
	combout => \uart1|count_os[2]~9_combout\,
	cout => \uart1|count_os[2]~10\);

-- Location: LCCOMB_X6_Y27_N12
\uart1|count_os[3]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \uart1|count_os[3]~11_combout\ = (\uart1|count_os[2]~10\ & (((!\uart1|LessThan0~2_combout\)) # (!\uart1|count_os\(3)))) # (!\uart1|count_os[2]~10\ & (((\uart1|count_os\(3) & \uart1|LessThan0~2_combout\)) # (GND)))
-- \uart1|count_os[3]~12\ = CARRY(((!\uart1|count_os[2]~10\) # (!\uart1|LessThan0~2_combout\)) # (!\uart1|count_os\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart1|count_os\(3),
	datab => \uart1|LessThan0~2_combout\,
	datad => VCC,
	cin => \uart1|count_os[2]~10\,
	combout => \uart1|count_os[3]~11_combout\,
	cout => \uart1|count_os[3]~12\);

-- Location: LCCOMB_X6_Y27_N14
\uart1|count_os[4]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \uart1|count_os[4]~13_combout\ = \uart1|count_os[3]~12\ $ (((!\uart1|LessThan0~2_combout\) # (!\uart1|count_os\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart1|count_os\(4),
	datad => \uart1|LessThan0~2_combout\,
	cin => \uart1|count_os[3]~12\,
	combout => \uart1|count_os[4]~13_combout\);

-- Location: LCCOMB_X5_Y27_N6
\uart1|count_baud[3]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \uart1|count_baud[3]~15_combout\ = (\uart1|count_baud\(3) & (!\uart1|count_baud[2]~14\)) # (!\uart1|count_baud\(3) & ((\uart1|count_baud[2]~14\) # (GND)))
-- \uart1|count_baud[3]~16\ = CARRY((!\uart1|count_baud[2]~14\) # (!\uart1|count_baud\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart1|count_baud\(3),
	datad => VCC,
	cin => \uart1|count_baud[2]~14\,
	combout => \uart1|count_baud[3]~15_combout\,
	cout => \uart1|count_baud[3]~16\);

-- Location: LCCOMB_X5_Y27_N12
\uart1|count_baud[6]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \uart1|count_baud[6]~21_combout\ = (\uart1|count_baud\(6) & (\uart1|count_baud[5]~20\ $ (GND))) # (!\uart1|count_baud\(6) & (!\uart1|count_baud[5]~20\ & VCC))
-- \uart1|count_baud[6]~22\ = CARRY((\uart1|count_baud\(6) & !\uart1|count_baud[5]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart1|count_baud\(6),
	datad => VCC,
	cin => \uart1|count_baud[5]~20\,
	combout => \uart1|count_baud[6]~21_combout\,
	cout => \uart1|count_baud[6]~22\);

-- Location: LCCOMB_X3_Y26_N6
\Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (\proc_tx:cnt[3]~regout\ & (!\Add0~5\)) # (!\proc_tx:cnt[3]~regout\ & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!\proc_tx:cnt[3]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \proc_tx:cnt[3]~regout\,
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X3_Y26_N16
\Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (\proc_tx:cnt[8]~regout\ & (\Add0~15\ $ (GND))) # (!\proc_tx:cnt[8]~regout\ & (!\Add0~15\ & VCC))
-- \Add0~17\ = CARRY((\proc_tx:cnt[8]~regout\ & !\Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \proc_tx:cnt[8]~regout\,
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: LCCOMB_X3_Y25_N2
\Add0~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~34_combout\ = (\proc_tx:cnt[17]~regout\ & (!\Add0~33\)) # (!\proc_tx:cnt[17]~regout\ & ((\Add0~33\) # (GND)))
-- \Add0~35\ = CARRY((!\Add0~33\) # (!\proc_tx:cnt[17]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \proc_tx:cnt[17]~regout\,
	datad => VCC,
	cin => \Add0~33\,
	combout => \Add0~34_combout\,
	cout => \Add0~35\);

-- Location: LCCOMB_X3_Y25_N14
\Add0~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~46_combout\ = (\proc_tx:cnt[23]~regout\ & (!\Add0~45\)) # (!\proc_tx:cnt[23]~regout\ & ((\Add0~45\) # (GND)))
-- \Add0~47\ = CARRY((!\Add0~45\) # (!\proc_tx:cnt[23]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \proc_tx:cnt[23]~regout\,
	datad => VCC,
	cin => \Add0~45\,
	combout => \Add0~46_combout\,
	cout => \Add0~47\);

-- Location: LCCOMB_X3_Y25_N16
\Add0~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~48_combout\ = (\proc_tx:cnt[24]~regout\ & (\Add0~47\ $ (GND))) # (!\proc_tx:cnt[24]~regout\ & (!\Add0~47\ & VCC))
-- \Add0~49\ = CARRY((\proc_tx:cnt[24]~regout\ & !\Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \proc_tx:cnt[24]~regout\,
	datad => VCC,
	cin => \Add0~47\,
	combout => \Add0~48_combout\,
	cout => \Add0~49\);

-- Location: LCFF_X2_Y27_N19
\uart1|rx_count[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \uart1|rx_count~0_combout\,
	ena => \uart1|rx_count[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uart1|rx_count\(0));

-- Location: LCFF_X2_Y27_N21
\uart1|rx_count[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \uart1|rx_count~3_combout\,
	ena => \uart1|rx_count[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uart1|rx_count\(1));

-- Location: LCFF_X2_Y27_N23
\uart1|rx_count[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \uart1|rx_count~4_combout\,
	ena => \uart1|rx_count[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uart1|rx_count\(2));

-- Location: LCCOMB_X2_Y27_N10
\uart1|LessThan5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uart1|LessThan5~0_combout\ = ((!\uart1|rx_count\(2) & (!\uart1|rx_count\(1) & !\uart1|rx_count\(0)))) # (!\uart1|rx_count\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart1|rx_count\(3),
	datab => \uart1|rx_count\(2),
	datac => \uart1|rx_count\(1),
	datad => \uart1|rx_count\(0),
	combout => \uart1|LessThan5~0_combout\);

-- Location: LCFF_X1_Y27_N11
\uart1|os_count[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \uart1|os_count[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uart1|os_count\(2));

-- Location: LCCOMB_X5_Y25_N24
\uart1|LessThan8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uart1|LessThan8~0_combout\ = (\uart1|tx_count\(2)) # ((\uart1|tx_count\(1)) # (\uart1|tx_count\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart1|tx_count\(2),
	datac => \uart1|tx_count\(1),
	datad => \uart1|tx_count\(0),
	combout => \uart1|LessThan8~0_combout\);

-- Location: LCCOMB_X6_Y27_N4
\uart1|LessThan1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uart1|LessThan1~0_combout\ = (((!\uart1|count_os\(2) & !\uart1|count_os\(1))) # (!\uart1|count_os\(3))) # (!\uart1|count_os\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart1|count_os\(2),
	datab => \uart1|count_os\(4),
	datac => \uart1|count_os\(1),
	datad => \uart1|count_os\(3),
	combout => \uart1|LessThan1~0_combout\);

-- Location: LCCOMB_X2_Y27_N18
\uart1|rx_count~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uart1|rx_count~0_combout\ = (!\uart1|rx_count\(0) & \uart1|rx_state~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart1|rx_count\(0),
	datad => \uart1|rx_state~regout\,
	combout => \uart1|rx_count~0_combout\);

-- Location: LCCOMB_X2_Y27_N4
\uart1|rx_count[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \uart1|rx_count[3]~2_combout\ = (\uart1|os_pulse~regout\ & \uart1|rx_count[3]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart1|os_pulse~regout\,
	datad => \uart1|rx_count[3]~1_combout\,
	combout => \uart1|rx_count[3]~2_combout\);

-- Location: LCCOMB_X2_Y27_N20
\uart1|rx_count~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \uart1|rx_count~3_combout\ = (\uart1|rx_state~regout\ & (\uart1|rx_count\(0) $ (\uart1|rx_count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart1|rx_count\(0),
	datac => \uart1|rx_count\(1),
	datad => \uart1|rx_state~regout\,
	combout => \uart1|rx_count~3_combout\);

-- Location: LCCOMB_X2_Y27_N22
\uart1|rx_count~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \uart1|rx_count~4_combout\ = (\uart1|rx_state~regout\ & (\uart1|rx_count\(2) $ (((\uart1|rx_count\(1) & \uart1|rx_count\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart1|rx_count\(1),
	datab => \uart1|rx_count\(0),
	datac => \uart1|rx_count\(2),
	datad => \uart1|rx_state~regout\,
	combout => \uart1|rx_count~4_combout\);

-- Location: LCCOMB_X2_Y27_N2
\uart1|Add3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uart1|Add3~0_combout\ = \uart1|rx_count\(3) $ (((\uart1|rx_count\(2) & (\uart1|rx_count\(1) & \uart1|rx_count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart1|rx_count\(3),
	datab => \uart1|rx_count\(2),
	datac => \uart1|rx_count\(1),
	datad => \uart1|rx_count\(0),
	combout => \uart1|Add3~0_combout\);

-- Location: LCCOMB_X2_Y27_N12
\uart1|rx_count[3]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \uart1|rx_count[3]~5_combout\ = (\uart1|Add3~0_combout\ & \uart1|rx_state~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart1|Add3~0_combout\,
	datad => \uart1|rx_state~regout\,
	combout => \uart1|rx_count[3]~5_combout\);

-- Location: LCCOMB_X1_Y27_N12
\uart1|os_count[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uart1|os_count[3]~0_combout\ = (\uart1|rx_state~regout\ & (\uart1|LessThan3~0_combout\)) # (!\uart1|rx_state~regout\ & (((!\uart1|os_count\(3) & !\UART_RXD~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart1|LessThan3~0_combout\,
	datab => \uart1|rx_state~regout\,
	datac => \uart1|os_count\(3),
	datad => \UART_RXD~combout\,
	combout => \uart1|os_count[3]~0_combout\);

-- Location: LCCOMB_X1_Y27_N2
\uart1|Add2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \uart1|Add2~1_combout\ = \uart1|os_count\(2) $ (((\uart1|os_count\(1) & \uart1|os_count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart1|os_count\(2),
	datab => \uart1|os_count\(1),
	datad => \uart1|os_count\(0),
	combout => \uart1|Add2~1_combout\);

-- Location: LCCOMB_X1_Y27_N10
\uart1|os_count[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \uart1|os_count[2]~3_combout\ = (\uart1|os_count[3]~1_combout\ & (\uart1|os_count[3]~0_combout\ & (\uart1|Add2~1_combout\))) # (!\uart1|os_count[3]~1_combout\ & (((\uart1|os_count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart1|os_count[3]~0_combout\,
	datab => \uart1|Add2~1_combout\,
	datac => \uart1|os_count\(2),
	datad => \uart1|os_count[3]~1_combout\,
	combout => \uart1|os_count[2]~3_combout\);

-- Location: LCFF_X3_Y25_N3
\tx_data[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \uart1|rx_data\(0),
	sload => VCC,
	ena => \Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => tx_data(0));

-- Location: LCFF_X3_Y26_N7
\proc_tx:cnt[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc_tx:cnt[3]~regout\);

-- Location: LCCOMB_X2_Y26_N16
\Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!\Add0~2_combout\ & (!\Add0~0_combout\ & (!\Add0~6_combout\ & !\Add0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~2_combout\,
	datab => \Add0~0_combout\,
	datac => \Add0~6_combout\,
	datad => \Add0~4_combout\,
	combout => \Equal0~0_combout\);

-- Location: LCFF_X3_Y26_N13
\proc_tx:cnt[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc_tx:cnt[6]~regout\);

-- Location: LCFF_X3_Y26_N11
\proc_tx:cnt[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc_tx:cnt[5]~regout\);

-- Location: LCFF_X3_Y26_N17
\proc_tx:cnt[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc_tx:cnt[8]~regout\);

-- Location: LCFF_X3_Y26_N21
\proc_tx:cnt[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc_tx:cnt[10]~regout\);

-- Location: LCFF_X2_Y25_N29
\proc_tx:cnt[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \cnt~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc_tx:cnt[14]~regout\);

-- Location: LCFF_X4_Y25_N5
\proc_tx:cnt[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \cnt~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc_tx:cnt[22]~regout\);

-- Location: LCFF_X2_Y25_N9
\proc_tx:cnt[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \cnt~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc_tx:cnt[25]~regout\);

-- Location: LCFF_X3_Y25_N17
\proc_tx:cnt[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc_tx:cnt[24]~regout\);

-- Location: LCFF_X3_Y25_N21
\proc_tx:cnt[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc_tx:cnt[26]~regout\);

-- Location: LCFF_X3_Y25_N25
\proc_tx:cnt[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc_tx:cnt[28]~regout\);

-- Location: LCCOMB_X2_Y25_N28
\cnt~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt~4_combout\ = (\Add0~28_combout\ & (((\cnt~0_combout\) # (!\Equal0~7_combout\)) # (!\Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~9_combout\,
	datab => \Add0~28_combout\,
	datac => \Equal0~7_combout\,
	datad => \cnt~0_combout\,
	combout => \cnt~4_combout\);

-- Location: LCCOMB_X4_Y25_N4
\cnt~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt~10_combout\ = (\Add0~44_combout\ & (((\cnt~0_combout\) # (!\Equal0~7_combout\)) # (!\Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~44_combout\,
	datab => \Equal0~9_combout\,
	datac => \Equal0~7_combout\,
	datad => \cnt~0_combout\,
	combout => \cnt~10_combout\);

-- Location: LCCOMB_X2_Y25_N8
\cnt~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt~12_combout\ = (\Add0~50_combout\ & (((\cnt~0_combout\) # (!\Equal0~7_combout\)) # (!\Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~9_combout\,
	datab => \Add0~50_combout\,
	datac => \Equal0~7_combout\,
	datad => \cnt~0_combout\,
	combout => \cnt~12_combout\);

-- Location: LCFF_X2_Y25_N27
\tx_data[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \uart1|rx_data\(2),
	sload => VCC,
	ena => \Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => tx_data(2));

-- Location: LCFF_X1_Y25_N21
\tx_data[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \uart1|rx_data\(5),
	sload => VCC,
	ena => \Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => tx_data(5));

-- Location: PIN_C25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\UART_RXD~I\ : cycloneii_io
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
	padio => ww_UART_RXD,
	combout => \UART_RXD~combout\);

-- Location: LCCOMB_X1_Y27_N6
\uart1|rx_buffer[7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \uart1|rx_buffer[7]~feeder_combout\ = \UART_RXD~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \UART_RXD~combout\,
	combout => \uart1|rx_buffer[7]~feeder_combout\);

-- Location: LCCOMB_X5_Y27_N0
\uart1|count_baud[0]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \uart1|count_baud[0]~9_combout\ = \uart1|count_baud\(0) $ (VCC)
-- \uart1|count_baud[0]~10\ = CARRY(\uart1|count_baud\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart1|count_baud\(0),
	datad => VCC,
	combout => \uart1|count_baud[0]~9_combout\,
	cout => \uart1|count_baud[0]~10\);

-- Location: LCCOMB_X5_Y27_N22
\uart1|LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uart1|LessThan0~0_combout\ = (!\uart1|count_baud\(3) & (!\uart1|count_baud\(1) & (!\uart1|count_baud\(2) & !\uart1|count_baud\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart1|count_baud\(3),
	datab => \uart1|count_baud\(1),
	datac => \uart1|count_baud\(2),
	datad => \uart1|count_baud\(0),
	combout => \uart1|LessThan0~0_combout\);

-- Location: LCCOMB_X5_Y27_N10
\uart1|count_baud[5]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \uart1|count_baud[5]~19_combout\ = (\uart1|count_baud\(5) & (!\uart1|count_baud[4]~18\)) # (!\uart1|count_baud\(5) & ((\uart1|count_baud[4]~18\) # (GND)))
-- \uart1|count_baud[5]~20\ = CARRY((!\uart1|count_baud[4]~18\) # (!\uart1|count_baud\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart1|count_baud\(5),
	datad => VCC,
	cin => \uart1|count_baud[4]~18\,
	combout => \uart1|count_baud[5]~19_combout\,
	cout => \uart1|count_baud[5]~20\);

-- Location: LCFF_X5_Y27_N11
\uart1|count_baud[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \uart1|count_baud[5]~19_combout\,
	sclr => \uart1|ALT_INV_LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uart1|count_baud\(5));

-- Location: LCCOMB_X5_Y27_N28
\uart1|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \uart1|LessThan0~1_combout\ = (!\uart1|count_baud\(6) & ((\uart1|LessThan0~0_combout\) # ((!\uart1|count_baud\(5)) # (!\uart1|count_baud\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart1|count_baud\(6),
	datab => \uart1|LessThan0~0_combout\,
	datac => \uart1|count_baud\(4),
	datad => \uart1|count_baud\(5),
	combout => \uart1|LessThan0~1_combout\);

-- Location: LCCOMB_X5_Y27_N24
\uart1|LessThan0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \uart1|LessThan0~2_combout\ = ((\uart1|LessThan0~1_combout\) # (!\uart1|count_baud\(7))) # (!\uart1|count_baud\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart1|count_baud\(8),
	datac => \uart1|count_baud\(7),
	datad => \uart1|LessThan0~1_combout\,
	combout => \uart1|LessThan0~2_combout\);

-- Location: LCFF_X5_Y27_N1
\uart1|count_baud[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \uart1|count_baud[0]~9_combout\,
	sclr => \uart1|ALT_INV_LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uart1|count_baud\(0));

-- Location: LCCOMB_X5_Y27_N2
\uart1|count_baud[1]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \uart1|count_baud[1]~11_combout\ = (\uart1|count_baud\(1) & (!\uart1|count_baud[0]~10\)) # (!\uart1|count_baud\(1) & ((\uart1|count_baud[0]~10\) # (GND)))
-- \uart1|count_baud[1]~12\ = CARRY((!\uart1|count_baud[0]~10\) # (!\uart1|count_baud\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart1|count_baud\(1),
	datad => VCC,
	cin => \uart1|count_baud[0]~10\,
	combout => \uart1|count_baud[1]~11_combout\,
	cout => \uart1|count_baud[1]~12\);

-- Location: LCFF_X5_Y27_N3
\uart1|count_baud[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \uart1|count_baud[1]~11_combout\,
	sclr => \uart1|ALT_INV_LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uart1|count_baud\(1));

-- Location: LCCOMB_X5_Y27_N4
\uart1|count_baud[2]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \uart1|count_baud[2]~13_combout\ = (\uart1|count_baud\(2) & (\uart1|count_baud[1]~12\ $ (GND))) # (!\uart1|count_baud\(2) & (!\uart1|count_baud[1]~12\ & VCC))
-- \uart1|count_baud[2]~14\ = CARRY((\uart1|count_baud\(2) & !\uart1|count_baud[1]~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart1|count_baud\(2),
	datad => VCC,
	cin => \uart1|count_baud[1]~12\,
	combout => \uart1|count_baud[2]~13_combout\,
	cout => \uart1|count_baud[2]~14\);

-- Location: LCFF_X5_Y27_N5
\uart1|count_baud[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \uart1|count_baud[2]~13_combout\,
	sclr => \uart1|ALT_INV_LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uart1|count_baud\(2));

-- Location: LCCOMB_X5_Y27_N8
\uart1|count_baud[4]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \uart1|count_baud[4]~17_combout\ = (\uart1|count_baud\(4) & (\uart1|count_baud[3]~16\ $ (GND))) # (!\uart1|count_baud\(4) & (!\uart1|count_baud[3]~16\ & VCC))
-- \uart1|count_baud[4]~18\ = CARRY((\uart1|count_baud\(4) & !\uart1|count_baud[3]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart1|count_baud\(4),
	datad => VCC,
	cin => \uart1|count_baud[3]~16\,
	combout => \uart1|count_baud[4]~17_combout\,
	cout => \uart1|count_baud[4]~18\);

-- Location: LCFF_X5_Y27_N9
\uart1|count_baud[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \uart1|count_baud[4]~17_combout\,
	sclr => \uart1|ALT_INV_LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uart1|count_baud\(4));

-- Location: LCCOMB_X5_Y27_N14
\uart1|count_baud[7]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \uart1|count_baud[7]~23_combout\ = (\uart1|count_baud\(7) & (!\uart1|count_baud[6]~22\)) # (!\uart1|count_baud\(7) & ((\uart1|count_baud[6]~22\) # (GND)))
-- \uart1|count_baud[7]~24\ = CARRY((!\uart1|count_baud[6]~22\) # (!\uart1|count_baud\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart1|count_baud\(7),
	datad => VCC,
	cin => \uart1|count_baud[6]~22\,
	combout => \uart1|count_baud[7]~23_combout\,
	cout => \uart1|count_baud[7]~24\);

-- Location: LCFF_X5_Y27_N15
\uart1|count_baud[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \uart1|count_baud[7]~23_combout\,
	sclr => \uart1|ALT_INV_LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uart1|count_baud\(7));

-- Location: LCCOMB_X5_Y27_N16
\uart1|count_baud[8]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \uart1|count_baud[8]~25_combout\ = \uart1|count_baud[7]~24\ $ (!\uart1|count_baud\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \uart1|count_baud\(8),
	cin => \uart1|count_baud[7]~24\,
	combout => \uart1|count_baud[8]~25_combout\);

-- Location: LCFF_X5_Y27_N17
\uart1|count_baud[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \uart1|count_baud[8]~25_combout\,
	sclr => \uart1|ALT_INV_LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uart1|count_baud\(8));

-- Location: LCCOMB_X5_Y27_N30
\uart1|LessThan1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \uart1|LessThan1~1_combout\ = (!\uart1|LessThan1~0_combout\ & (((\uart1|LessThan0~1_combout\) # (!\uart1|count_baud\(7))) # (!\uart1|count_baud\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart1|LessThan1~0_combout\,
	datab => \uart1|count_baud\(8),
	datac => \uart1|count_baud\(7),
	datad => \uart1|LessThan0~1_combout\,
	combout => \uart1|LessThan1~1_combout\);

-- Location: LCCOMB_X5_Y27_N18
\uart1|os_pulse~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \uart1|os_pulse~feeder_combout\ = \uart1|LessThan1~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart1|LessThan1~1_combout\,
	combout => \uart1|os_pulse~feeder_combout\);

-- Location: LCFF_X5_Y27_N19
\uart1|os_pulse\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \uart1|os_pulse~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uart1|os_pulse~regout\);

-- Location: LCCOMB_X2_Y27_N28
\uart1|rx_state~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uart1|rx_state~0_combout\ = (\uart1|rx_state~regout\ & ((\uart1|LessThan5~0_combout\) # ((\uart1|LessThan3~0_combout\) # (!\uart1|os_pulse~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart1|LessThan5~0_combout\,
	datab => \uart1|rx_state~regout\,
	datac => \uart1|LessThan3~0_combout\,
	datad => \uart1|os_pulse~regout\,
	combout => \uart1|rx_state~0_combout\);

-- Location: LCCOMB_X1_Y27_N26
\uart1|Add2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uart1|Add2~0_combout\ = \uart1|os_count\(3) $ (((\uart1|os_count\(2) & (\uart1|os_count\(1) & \uart1|os_count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart1|os_count\(2),
	datab => \uart1|os_count\(1),
	datac => \uart1|os_count\(3),
	datad => \uart1|os_count\(0),
	combout => \uart1|Add2~0_combout\);

-- Location: LCCOMB_X1_Y27_N24
\uart1|os_count[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \uart1|os_count[3]~2_combout\ = (\uart1|os_count[3]~1_combout\ & (\uart1|os_count[3]~0_combout\ & (\uart1|Add2~0_combout\))) # (!\uart1|os_count[3]~1_combout\ & (((\uart1|os_count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart1|os_count[3]~0_combout\,
	datab => \uart1|Add2~0_combout\,
	datac => \uart1|os_count\(3),
	datad => \uart1|os_count[3]~1_combout\,
	combout => \uart1|os_count[3]~2_combout\);

-- Location: LCFF_X1_Y27_N25
\uart1|os_count[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \uart1|os_count[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uart1|os_count\(3));

-- Location: LCCOMB_X1_Y27_N20
\uart1|rx_state~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \uart1|rx_state~1_combout\ = (!\uart1|rx_state~regout\ & (\uart1|os_count\(3) & !\UART_RXD~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart1|rx_state~regout\,
	datac => \uart1|os_count\(3),
	datad => \UART_RXD~combout\,
	combout => \uart1|rx_state~1_combout\);

-- Location: LCCOMB_X2_Y27_N0
\uart1|rx_state~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \uart1|rx_state~2_combout\ = (\uart1|rx_state~0_combout\) # ((\uart1|rx_state~1_combout\ & \uart1|os_pulse~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart1|rx_state~0_combout\,
	datac => \uart1|rx_state~1_combout\,
	datad => \uart1|os_pulse~regout\,
	combout => \uart1|rx_state~2_combout\);

-- Location: LCFF_X2_Y27_N1
\uart1|rx_state\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \uart1|rx_state~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uart1|rx_state~regout\);

-- Location: LCCOMB_X2_Y27_N30
\uart1|os_count[3]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \uart1|os_count[3]~1_combout\ = (\uart1|os_pulse~regout\ & ((\uart1|LessThan5~0_combout\) # ((\uart1|LessThan3~0_combout\) # (!\uart1|rx_state~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart1|LessThan5~0_combout\,
	datab => \uart1|rx_state~regout\,
	datac => \uart1|LessThan3~0_combout\,
	datad => \uart1|os_pulse~regout\,
	combout => \uart1|os_count[3]~1_combout\);

-- Location: LCCOMB_X1_Y27_N28
\uart1|os_count[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \uart1|os_count[0]~4_combout\ = (\uart1|os_count\(0) & ((!\uart1|os_count[3]~1_combout\))) # (!\uart1|os_count\(0) & (\uart1|os_count[3]~0_combout\ & \uart1|os_count[3]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart1|os_count[3]~0_combout\,
	datac => \uart1|os_count\(0),
	datad => \uart1|os_count[3]~1_combout\,
	combout => \uart1|os_count[0]~4_combout\);

-- Location: LCFF_X1_Y27_N29
\uart1|os_count[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \uart1|os_count[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uart1|os_count\(0));

-- Location: LCCOMB_X1_Y27_N18
\uart1|os_count[1]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \uart1|os_count[1]~5_combout\ = (\uart1|os_count[3]~1_combout\ & (\uart1|os_count[3]~0_combout\ & (\uart1|os_count\(0) $ (\uart1|os_count\(1))))) # (!\uart1|os_count[3]~1_combout\ & (((\uart1|os_count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart1|os_count[3]~0_combout\,
	datab => \uart1|os_count\(0),
	datac => \uart1|os_count\(1),
	datad => \uart1|os_count[3]~1_combout\,
	combout => \uart1|os_count[1]~5_combout\);

-- Location: LCFF_X1_Y27_N19
\uart1|os_count[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \uart1|os_count[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uart1|os_count\(1));

-- Location: LCCOMB_X1_Y27_N16
\uart1|LessThan3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uart1|LessThan3~0_combout\ = (((!\uart1|os_count\(0)) # (!\uart1|os_count\(3))) # (!\uart1|os_count\(1))) # (!\uart1|os_count\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart1|os_count\(2),
	datab => \uart1|os_count\(1),
	datac => \uart1|os_count\(3),
	datad => \uart1|os_count\(0),
	combout => \uart1|LessThan3~0_combout\);

-- Location: LCCOMB_X2_Y27_N26
\uart1|rx_count[3]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \uart1|rx_count[3]~1_combout\ = (\uart1|rx_state~1_combout\) # ((\uart1|LessThan5~0_combout\ & (!\uart1|LessThan3~0_combout\ & \uart1|rx_state~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart1|LessThan5~0_combout\,
	datab => \uart1|LessThan3~0_combout\,
	datac => \uart1|rx_state~1_combout\,
	datad => \uart1|rx_state~regout\,
	combout => \uart1|rx_count[3]~1_combout\);

-- Location: LCCOMB_X2_Y27_N24
\uart1|rx_count[3]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \uart1|rx_count[3]~6_combout\ = (\uart1|rx_count[3]~1_combout\ & ((\uart1|os_pulse~regout\ & (\uart1|rx_count[3]~5_combout\)) # (!\uart1|os_pulse~regout\ & ((\uart1|rx_count\(3)))))) # (!\uart1|rx_count[3]~1_combout\ & (((\uart1|rx_count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart1|rx_count[3]~5_combout\,
	datab => \uart1|rx_count[3]~1_combout\,
	datac => \uart1|rx_count\(3),
	datad => \uart1|os_pulse~regout\,
	combout => \uart1|rx_count[3]~6_combout\);

-- Location: LCFF_X2_Y27_N25
\uart1|rx_count[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \uart1|rx_count[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uart1|rx_count\(3));

-- Location: LCCOMB_X2_Y27_N6
\uart1|rx_buffer[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uart1|rx_buffer[3]~0_combout\ = (\uart1|rx_state~regout\ & (!\uart1|LessThan3~0_combout\ & (!\uart1|rx_count\(3) & \uart1|os_pulse~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart1|rx_state~regout\,
	datab => \uart1|LessThan3~0_combout\,
	datac => \uart1|rx_count\(3),
	datad => \uart1|os_pulse~regout\,
	combout => \uart1|rx_buffer[3]~0_combout\);

-- Location: LCFF_X1_Y27_N7
\uart1|rx_buffer[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \uart1|rx_buffer[7]~feeder_combout\,
	ena => \uart1|rx_buffer[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uart1|rx_buffer\(7));

-- Location: LCCOMB_X1_Y26_N22
\uart1|rx_buffer[6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \uart1|rx_buffer[6]~feeder_combout\ = \uart1|rx_buffer\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart1|rx_buffer\(7),
	combout => \uart1|rx_buffer[6]~feeder_combout\);

-- Location: LCFF_X1_Y26_N23
\uart1|rx_buffer[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \uart1|rx_buffer[6]~feeder_combout\,
	ena => \uart1|rx_buffer[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uart1|rx_buffer\(6));

-- Location: LCCOMB_X1_Y26_N28
\uart1|rx_buffer[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \uart1|rx_buffer[5]~feeder_combout\ = \uart1|rx_buffer\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart1|rx_buffer\(6),
	combout => \uart1|rx_buffer[5]~feeder_combout\);

-- Location: LCFF_X1_Y26_N29
\uart1|rx_buffer[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \uart1|rx_buffer[5]~feeder_combout\,
	ena => \uart1|rx_buffer[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uart1|rx_buffer\(5));

-- Location: LCCOMB_X1_Y26_N2
\uart1|rx_buffer[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \uart1|rx_buffer[4]~feeder_combout\ = \uart1|rx_buffer\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart1|rx_buffer\(5),
	combout => \uart1|rx_buffer[4]~feeder_combout\);

-- Location: LCFF_X1_Y26_N3
\uart1|rx_buffer[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \uart1|rx_buffer[4]~feeder_combout\,
	ena => \uart1|rx_buffer[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uart1|rx_buffer\(4));

-- Location: LCCOMB_X1_Y26_N12
\uart1|rx_buffer[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \uart1|rx_buffer[3]~feeder_combout\ = \uart1|rx_buffer\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart1|rx_buffer\(4),
	combout => \uart1|rx_buffer[3]~feeder_combout\);

-- Location: LCFF_X1_Y26_N13
\uart1|rx_buffer[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \uart1|rx_buffer[3]~feeder_combout\,
	ena => \uart1|rx_buffer[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uart1|rx_buffer\(3));

-- Location: LCCOMB_X2_Y26_N10
\uart1|rx_buffer[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \uart1|rx_buffer[2]~feeder_combout\ = \uart1|rx_buffer\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart1|rx_buffer\(3),
	combout => \uart1|rx_buffer[2]~feeder_combout\);

-- Location: LCFF_X2_Y26_N11
\uart1|rx_buffer[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \uart1|rx_buffer[2]~feeder_combout\,
	ena => \uart1|rx_buffer[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uart1|rx_buffer\(2));

-- Location: LCCOMB_X2_Y26_N0
\uart1|rx_buffer[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \uart1|rx_buffer[1]~feeder_combout\ = \uart1|rx_buffer\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart1|rx_buffer\(2),
	combout => \uart1|rx_buffer[1]~feeder_combout\);

-- Location: LCFF_X2_Y26_N1
\uart1|rx_buffer[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \uart1|rx_buffer[1]~feeder_combout\,
	ena => \uart1|rx_buffer[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uart1|rx_buffer\(1));

-- Location: LCCOMB_X2_Y26_N30
\uart1|rx_buffer[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \uart1|rx_buffer[0]~feeder_combout\ = \uart1|rx_buffer\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart1|rx_buffer\(1),
	combout => \uart1|rx_buffer[0]~feeder_combout\);

-- Location: LCFF_X2_Y26_N31
\uart1|rx_buffer[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \uart1|rx_buffer[0]~feeder_combout\,
	ena => \uart1|rx_buffer[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uart1|rx_buffer\(0));

-- Location: LCCOMB_X2_Y26_N20
\uart1|rx_data[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \uart1|rx_data[0]~feeder_combout\ = \uart1|rx_buffer\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart1|rx_buffer\(0),
	combout => \uart1|rx_data[0]~feeder_combout\);

-- Location: LCCOMB_X2_Y27_N16
\uart1|rx_data[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uart1|rx_data[3]~0_combout\ = (!\uart1|LessThan5~0_combout\ & (\uart1|rx_state~regout\ & (!\uart1|LessThan3~0_combout\ & \uart1|os_pulse~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart1|LessThan5~0_combout\,
	datab => \uart1|rx_state~regout\,
	datac => \uart1|LessThan3~0_combout\,
	datad => \uart1|os_pulse~regout\,
	combout => \uart1|rx_data[3]~0_combout\);

-- Location: LCFF_X2_Y26_N21
\uart1|rx_data[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \uart1|rx_data[0]~feeder_combout\,
	ena => \uart1|rx_data[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uart1|rx_data\(0));

-- Location: LCCOMB_X2_Y26_N22
\uart1|rx_data[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \uart1|rx_data[1]~feeder_combout\ = \uart1|rx_buffer\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart1|rx_buffer\(1),
	combout => \uart1|rx_data[1]~feeder_combout\);

-- Location: LCFF_X2_Y26_N23
\uart1|rx_data[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \uart1|rx_data[1]~feeder_combout\,
	ena => \uart1|rx_data[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uart1|rx_data\(1));

-- Location: LCCOMB_X2_Y26_N2
\uart1|rx_data[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \uart1|rx_data[3]~feeder_combout\ = \uart1|rx_buffer\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart1|rx_buffer\(3),
	combout => \uart1|rx_data[3]~feeder_combout\);

-- Location: LCFF_X2_Y26_N3
\uart1|rx_data[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \uart1|rx_data[3]~feeder_combout\,
	ena => \uart1|rx_data[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uart1|rx_data\(3));

-- Location: LCCOMB_X2_Y26_N12
\uart1|rx_data[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \uart1|rx_data[2]~feeder_combout\ = \uart1|rx_buffer\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart1|rx_buffer\(2),
	combout => \uart1|rx_data[2]~feeder_combout\);

-- Location: LCFF_X2_Y26_N13
\uart1|rx_data[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \uart1|rx_data[2]~feeder_combout\,
	ena => \uart1|rx_data[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uart1|rx_data\(2));

-- Location: LCCOMB_X2_Y26_N28
\seg_low|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg_low|Mux6~0_combout\ = (\uart1|rx_data\(3) & (\uart1|rx_data\(0) & (\uart1|rx_data\(1) $ (\uart1|rx_data\(2))))) # (!\uart1|rx_data\(3) & (!\uart1|rx_data\(1) & (\uart1|rx_data\(0) $ (\uart1|rx_data\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart1|rx_data\(0),
	datab => \uart1|rx_data\(1),
	datac => \uart1|rx_data\(3),
	datad => \uart1|rx_data\(2),
	combout => \seg_low|Mux6~0_combout\);

-- Location: LCCOMB_X2_Y26_N26
\seg_low|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg_low|Mux5~0_combout\ = (\uart1|rx_data\(1) & ((\uart1|rx_data\(0) & (\uart1|rx_data\(3))) # (!\uart1|rx_data\(0) & ((\uart1|rx_data\(2)))))) # (!\uart1|rx_data\(1) & (\uart1|rx_data\(2) & (\uart1|rx_data\(0) $ (\uart1|rx_data\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart1|rx_data\(0),
	datab => \uart1|rx_data\(1),
	datac => \uart1|rx_data\(3),
	datad => \uart1|rx_data\(2),
	combout => \seg_low|Mux5~0_combout\);

-- Location: LCCOMB_X2_Y26_N24
\seg_low|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg_low|Mux4~0_combout\ = (\uart1|rx_data\(3) & (\uart1|rx_data\(2) & ((\uart1|rx_data\(1)) # (!\uart1|rx_data\(0))))) # (!\uart1|rx_data\(3) & (!\uart1|rx_data\(0) & (\uart1|rx_data\(1) & !\uart1|rx_data\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart1|rx_data\(0),
	datab => \uart1|rx_data\(1),
	datac => \uart1|rx_data\(3),
	datad => \uart1|rx_data\(2),
	combout => \seg_low|Mux4~0_combout\);

-- Location: LCCOMB_X2_Y26_N18
\seg_low|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg_low|Mux3~0_combout\ = (\uart1|rx_data\(0) & (\uart1|rx_data\(1) $ (((!\uart1|rx_data\(2)))))) # (!\uart1|rx_data\(0) & ((\uart1|rx_data\(1) & (\uart1|rx_data\(3) & !\uart1|rx_data\(2))) # (!\uart1|rx_data\(1) & (!\uart1|rx_data\(3) & 
-- \uart1|rx_data\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100101100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart1|rx_data\(0),
	datab => \uart1|rx_data\(1),
	datac => \uart1|rx_data\(3),
	datad => \uart1|rx_data\(2),
	combout => \seg_low|Mux3~0_combout\);

-- Location: LCCOMB_X2_Y26_N4
\seg_low|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg_low|Mux2~0_combout\ = (\uart1|rx_data\(1) & (\uart1|rx_data\(0) & (!\uart1|rx_data\(3)))) # (!\uart1|rx_data\(1) & ((\uart1|rx_data\(2) & ((!\uart1|rx_data\(3)))) # (!\uart1|rx_data\(2) & (\uart1|rx_data\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart1|rx_data\(0),
	datab => \uart1|rx_data\(1),
	datac => \uart1|rx_data\(3),
	datad => \uart1|rx_data\(2),
	combout => \seg_low|Mux2~0_combout\);

-- Location: LCCOMB_X2_Y26_N6
\seg_low|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg_low|Mux1~0_combout\ = (\uart1|rx_data\(0) & (\uart1|rx_data\(3) $ (((\uart1|rx_data\(1)) # (!\uart1|rx_data\(2)))))) # (!\uart1|rx_data\(0) & (\uart1|rx_data\(1) & (!\uart1|rx_data\(3) & !\uart1|rx_data\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart1|rx_data\(0),
	datab => \uart1|rx_data\(1),
	datac => \uart1|rx_data\(3),
	datad => \uart1|rx_data\(2),
	combout => \seg_low|Mux1~0_combout\);

-- Location: LCCOMB_X2_Y26_N8
\seg_low|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg_low|Mux0~0_combout\ = (\uart1|rx_data\(0) & ((\uart1|rx_data\(3)) # (\uart1|rx_data\(1) $ (\uart1|rx_data\(2))))) # (!\uart1|rx_data\(0) & ((\uart1|rx_data\(1)) # (\uart1|rx_data\(3) $ (\uart1|rx_data\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart1|rx_data\(0),
	datab => \uart1|rx_data\(1),
	datac => \uart1|rx_data\(3),
	datad => \uart1|rx_data\(2),
	combout => \seg_low|Mux0~0_combout\);

-- Location: LCCOMB_X1_Y26_N26
\uart1|rx_data[7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \uart1|rx_data[7]~feeder_combout\ = \uart1|rx_buffer\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart1|rx_buffer\(7),
	combout => \uart1|rx_data[7]~feeder_combout\);

-- Location: LCFF_X1_Y26_N27
\uart1|rx_data[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \uart1|rx_data[7]~feeder_combout\,
	ena => \uart1|rx_data[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uart1|rx_data\(7));

-- Location: LCCOMB_X1_Y26_N0
\uart1|rx_data[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \uart1|rx_data[4]~feeder_combout\ = \uart1|rx_buffer\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart1|rx_buffer\(4),
	combout => \uart1|rx_data[4]~feeder_combout\);

-- Location: LCFF_X1_Y26_N1
\uart1|rx_data[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \uart1|rx_data[4]~feeder_combout\,
	ena => \uart1|rx_data[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uart1|rx_data\(4));

-- Location: LCCOMB_X1_Y26_N16
\uart1|rx_data[6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \uart1|rx_data[6]~feeder_combout\ = \uart1|rx_buffer\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart1|rx_buffer\(6),
	combout => \uart1|rx_data[6]~feeder_combout\);

-- Location: LCFF_X1_Y26_N17
\uart1|rx_data[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \uart1|rx_data[6]~feeder_combout\,
	ena => \uart1|rx_data[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uart1|rx_data\(6));

-- Location: LCCOMB_X1_Y26_N10
\uart1|rx_data[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \uart1|rx_data[5]~feeder_combout\ = \uart1|rx_buffer\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart1|rx_buffer\(5),
	combout => \uart1|rx_data[5]~feeder_combout\);

-- Location: LCFF_X1_Y26_N11
\uart1|rx_data[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \uart1|rx_data[5]~feeder_combout\,
	ena => \uart1|rx_data[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uart1|rx_data\(5));

-- Location: LCCOMB_X1_Y25_N16
\seg_high|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg_high|Mux6~0_combout\ = (\uart1|rx_data\(7) & (\uart1|rx_data\(4) & (\uart1|rx_data\(6) $ (\uart1|rx_data\(5))))) # (!\uart1|rx_data\(7) & (!\uart1|rx_data\(5) & (\uart1|rx_data\(4) $ (\uart1|rx_data\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart1|rx_data\(7),
	datab => \uart1|rx_data\(4),
	datac => \uart1|rx_data\(6),
	datad => \uart1|rx_data\(5),
	combout => \seg_high|Mux6~0_combout\);

-- Location: LCCOMB_X1_Y25_N26
\seg_high|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg_high|Mux5~0_combout\ = (\uart1|rx_data\(7) & ((\uart1|rx_data\(4) & ((\uart1|rx_data\(5)))) # (!\uart1|rx_data\(4) & (\uart1|rx_data\(6))))) # (!\uart1|rx_data\(7) & (\uart1|rx_data\(6) & (\uart1|rx_data\(4) $ (\uart1|rx_data\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart1|rx_data\(7),
	datab => \uart1|rx_data\(4),
	datac => \uart1|rx_data\(6),
	datad => \uart1|rx_data\(5),
	combout => \seg_high|Mux5~0_combout\);

-- Location: LCCOMB_X1_Y25_N8
\seg_high|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg_high|Mux4~0_combout\ = (\uart1|rx_data\(7) & (\uart1|rx_data\(6) & ((\uart1|rx_data\(5)) # (!\uart1|rx_data\(4))))) # (!\uart1|rx_data\(7) & (!\uart1|rx_data\(4) & (!\uart1|rx_data\(6) & \uart1|rx_data\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart1|rx_data\(7),
	datab => \uart1|rx_data\(4),
	datac => \uart1|rx_data\(6),
	datad => \uart1|rx_data\(5),
	combout => \seg_high|Mux4~0_combout\);

-- Location: LCCOMB_X1_Y25_N22
\seg_high|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg_high|Mux3~0_combout\ = (\uart1|rx_data\(4) & ((\uart1|rx_data\(6) $ (!\uart1|rx_data\(5))))) # (!\uart1|rx_data\(4) & ((\uart1|rx_data\(7) & (!\uart1|rx_data\(6) & \uart1|rx_data\(5))) # (!\uart1|rx_data\(7) & (\uart1|rx_data\(6) & 
-- !\uart1|rx_data\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001000011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart1|rx_data\(7),
	datab => \uart1|rx_data\(4),
	datac => \uart1|rx_data\(6),
	datad => \uart1|rx_data\(5),
	combout => \seg_high|Mux3~0_combout\);

-- Location: LCCOMB_X1_Y25_N24
\seg_high|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg_high|Mux2~0_combout\ = (\uart1|rx_data\(5) & (!\uart1|rx_data\(7) & (\uart1|rx_data\(4)))) # (!\uart1|rx_data\(5) & ((\uart1|rx_data\(6) & (!\uart1|rx_data\(7))) # (!\uart1|rx_data\(6) & ((\uart1|rx_data\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart1|rx_data\(7),
	datab => \uart1|rx_data\(4),
	datac => \uart1|rx_data\(6),
	datad => \uart1|rx_data\(5),
	combout => \seg_high|Mux2~0_combout\);

-- Location: LCCOMB_X1_Y25_N30
\seg_high|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg_high|Mux1~0_combout\ = (\uart1|rx_data\(4) & (\uart1|rx_data\(7) $ (((\uart1|rx_data\(5)) # (!\uart1|rx_data\(6)))))) # (!\uart1|rx_data\(4) & (!\uart1|rx_data\(7) & (!\uart1|rx_data\(6) & \uart1|rx_data\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart1|rx_data\(7),
	datab => \uart1|rx_data\(4),
	datac => \uart1|rx_data\(6),
	datad => \uart1|rx_data\(5),
	combout => \seg_high|Mux1~0_combout\);

-- Location: LCCOMB_X1_Y25_N20
\seg_high|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg_high|Mux0~0_combout\ = (\uart1|rx_data\(4) & ((\uart1|rx_data\(7)) # (\uart1|rx_data\(5) $ (\uart1|rx_data\(6))))) # (!\uart1|rx_data\(4) & ((\uart1|rx_data\(5)) # (\uart1|rx_data\(7) $ (\uart1|rx_data\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart1|rx_data\(7),
	datab => \uart1|rx_data\(4),
	datac => \uart1|rx_data\(5),
	datad => \uart1|rx_data\(6),
	combout => \seg_high|Mux0~0_combout\);

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

-- Location: LCCOMB_X5_Y25_N2
\uart1|tx_count[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \uart1|tx_count[0]~4_combout\ = (\uart1|baud_pulse~regout\ & (\uart1|tx_count\(0) $ (VCC))) # (!\uart1|baud_pulse~regout\ & (\uart1|tx_count\(0) & VCC))
-- \uart1|tx_count[0]~5\ = CARRY((\uart1|baud_pulse~regout\ & \uart1|tx_count\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart1|baud_pulse~regout\,
	datab => \uart1|tx_count\(0),
	datad => VCC,
	combout => \uart1|tx_count[0]~4_combout\,
	cout => \uart1|tx_count[0]~5\);

-- Location: LCFF_X3_Y25_N29
\proc_tx:cnt[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc_tx:cnt[30]~regout\);

-- Location: LCCOMB_X3_Y25_N18
\Add0~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~50_combout\ = (\proc_tx:cnt[25]~regout\ & (!\Add0~49\)) # (!\proc_tx:cnt[25]~regout\ & ((\Add0~49\) # (GND)))
-- \Add0~51\ = CARRY((!\Add0~49\) # (!\proc_tx:cnt[25]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \proc_tx:cnt[25]~regout\,
	datad => VCC,
	cin => \Add0~49\,
	combout => \Add0~50_combout\,
	cout => \Add0~51\);

-- Location: LCCOMB_X3_Y25_N20
\Add0~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~52_combout\ = (\proc_tx:cnt[26]~regout\ & (\Add0~51\ $ (GND))) # (!\proc_tx:cnt[26]~regout\ & (!\Add0~51\ & VCC))
-- \Add0~53\ = CARRY((\proc_tx:cnt[26]~regout\ & !\Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \proc_tx:cnt[26]~regout\,
	datad => VCC,
	cin => \Add0~51\,
	combout => \Add0~52_combout\,
	cout => \Add0~53\);

-- Location: LCCOMB_X3_Y25_N22
\Add0~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~54_combout\ = (\proc_tx:cnt[27]~regout\ & (!\Add0~53\)) # (!\proc_tx:cnt[27]~regout\ & ((\Add0~53\) # (GND)))
-- \Add0~55\ = CARRY((!\Add0~53\) # (!\proc_tx:cnt[27]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \proc_tx:cnt[27]~regout\,
	datad => VCC,
	cin => \Add0~53\,
	combout => \Add0~54_combout\,
	cout => \Add0~55\);

-- Location: LCFF_X3_Y25_N23
\proc_tx:cnt[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc_tx:cnt[27]~regout\);

-- Location: LCCOMB_X3_Y25_N24
\Add0~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~56_combout\ = (\proc_tx:cnt[28]~regout\ & (\Add0~55\ $ (GND))) # (!\proc_tx:cnt[28]~regout\ & (!\Add0~55\ & VCC))
-- \Add0~57\ = CARRY((\proc_tx:cnt[28]~regout\ & !\Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \proc_tx:cnt[28]~regout\,
	datad => VCC,
	cin => \Add0~55\,
	combout => \Add0~56_combout\,
	cout => \Add0~57\);

-- Location: LCCOMB_X3_Y25_N26
\Add0~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~58_combout\ = (\proc_tx:cnt[29]~regout\ & (!\Add0~57\)) # (!\proc_tx:cnt[29]~regout\ & ((\Add0~57\) # (GND)))
-- \Add0~59\ = CARRY((!\Add0~57\) # (!\proc_tx:cnt[29]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \proc_tx:cnt[29]~regout\,
	datad => VCC,
	cin => \Add0~57\,
	combout => \Add0~58_combout\,
	cout => \Add0~59\);

-- Location: LCFF_X3_Y25_N27
\proc_tx:cnt[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc_tx:cnt[29]~regout\);

-- Location: LCCOMB_X3_Y25_N28
\Add0~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~60_combout\ = (\proc_tx:cnt[30]~regout\ & (\Add0~59\ $ (GND))) # (!\proc_tx:cnt[30]~regout\ & (!\Add0~59\ & VCC))
-- \Add0~61\ = CARRY((\proc_tx:cnt[30]~regout\ & !\Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \proc_tx:cnt[30]~regout\,
	datad => VCC,
	cin => \Add0~59\,
	combout => \Add0~60_combout\,
	cout => \Add0~61\);

-- Location: LCFF_X3_Y25_N31
\proc_tx:cnt[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \Add0~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc_tx:cnt[31]~regout\);

-- Location: LCCOMB_X3_Y25_N30
\Add0~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~62_combout\ = \Add0~61\ $ (\proc_tx:cnt[31]~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \proc_tx:cnt[31]~regout\,
	cin => \Add0~61\,
	combout => \Add0~62_combout\);

-- Location: LCCOMB_X2_Y25_N12
\Equal0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~9_combout\ = (!\Add0~58_combout\ & (!\Add0~60_combout\ & (!\Add0~56_combout\ & !\Add0~62_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~58_combout\,
	datab => \Add0~60_combout\,
	datac => \Add0~56_combout\,
	datad => \Add0~62_combout\,
	combout => \Equal0~9_combout\);

-- Location: LCFF_X3_Y26_N9
\proc_tx:cnt[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc_tx:cnt[4]~regout\);

-- Location: LCCOMB_X3_Y26_N0
\Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = \proc_tx:cnt[0]~regout\ $ (VCC)
-- \Add0~1\ = CARRY(\proc_tx:cnt[0]~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc_tx:cnt[0]~regout\,
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCFF_X3_Y26_N1
\proc_tx:cnt[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc_tx:cnt[0]~regout\);

-- Location: LCCOMB_X3_Y26_N2
\Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (\proc_tx:cnt[1]~regout\ & (!\Add0~1\)) # (!\proc_tx:cnt[1]~regout\ & ((\Add0~1\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1\) # (!\proc_tx:cnt[1]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \proc_tx:cnt[1]~regout\,
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCFF_X3_Y26_N3
\proc_tx:cnt[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc_tx:cnt[1]~regout\);

-- Location: LCCOMB_X3_Y26_N4
\Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (\proc_tx:cnt[2]~regout\ & (\Add0~3\ $ (GND))) # (!\proc_tx:cnt[2]~regout\ & (!\Add0~3\ & VCC))
-- \Add0~5\ = CARRY((\proc_tx:cnt[2]~regout\ & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \proc_tx:cnt[2]~regout\,
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCFF_X3_Y26_N5
\proc_tx:cnt[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc_tx:cnt[2]~regout\);

-- Location: LCCOMB_X3_Y26_N8
\Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (\proc_tx:cnt[4]~regout\ & (\Add0~7\ $ (GND))) # (!\proc_tx:cnt[4]~regout\ & (!\Add0~7\ & VCC))
-- \Add0~9\ = CARRY((\proc_tx:cnt[4]~regout\ & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \proc_tx:cnt[4]~regout\,
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X3_Y26_N10
\Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (\proc_tx:cnt[5]~regout\ & (!\Add0~9\)) # (!\proc_tx:cnt[5]~regout\ & ((\Add0~9\) # (GND)))
-- \Add0~11\ = CARRY((!\Add0~9\) # (!\proc_tx:cnt[5]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \proc_tx:cnt[5]~regout\,
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X3_Y26_N12
\Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (\proc_tx:cnt[6]~regout\ & (\Add0~11\ $ (GND))) # (!\proc_tx:cnt[6]~regout\ & (!\Add0~11\ & VCC))
-- \Add0~13\ = CARRY((\proc_tx:cnt[6]~regout\ & !\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \proc_tx:cnt[6]~regout\,
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X2_Y26_N14
\Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (\Add0~14_combout\ & (!\Add0~8_combout\ & (!\Add0~12_combout\ & !\Add0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~14_combout\,
	datab => \Add0~8_combout\,
	datac => \Add0~12_combout\,
	datad => \Add0~10_combout\,
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X3_Y26_N14
\Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (\proc_tx:cnt[7]~regout\ & (!\Add0~13\)) # (!\proc_tx:cnt[7]~regout\ & ((\Add0~13\) # (GND)))
-- \Add0~15\ = CARRY((!\Add0~13\) # (!\proc_tx:cnt[7]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \proc_tx:cnt[7]~regout\,
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: LCCOMB_X2_Y25_N2
\cnt~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt~1_combout\ = (\Add0~14_combout\ & (((\cnt~0_combout\) # (!\Equal0~7_combout\)) # (!\Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~9_combout\,
	datab => \Add0~14_combout\,
	datac => \Equal0~7_combout\,
	datad => \cnt~0_combout\,
	combout => \cnt~1_combout\);

-- Location: LCFF_X2_Y25_N3
\proc_tx:cnt[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \cnt~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc_tx:cnt[7]~regout\);

-- Location: LCCOMB_X3_Y26_N18
\Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (\proc_tx:cnt[9]~regout\ & (!\Add0~17\)) # (!\proc_tx:cnt[9]~regout\ & ((\Add0~17\) # (GND)))
-- \Add0~19\ = CARRY((!\Add0~17\) # (!\proc_tx:cnt[9]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \proc_tx:cnt[9]~regout\,
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: LCFF_X3_Y26_N19
\proc_tx:cnt[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc_tx:cnt[9]~regout\);

-- Location: LCCOMB_X3_Y26_N20
\Add0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = (\proc_tx:cnt[10]~regout\ & (\Add0~19\ $ (GND))) # (!\proc_tx:cnt[10]~regout\ & (!\Add0~19\ & VCC))
-- \Add0~21\ = CARRY((\proc_tx:cnt[10]~regout\ & !\Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \proc_tx:cnt[10]~regout\,
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~20_combout\,
	cout => \Add0~21\);

-- Location: LCFF_X3_Y26_N23
\proc_tx:cnt[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc_tx:cnt[11]~regout\);

-- Location: LCCOMB_X3_Y26_N22
\Add0~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (\proc_tx:cnt[11]~regout\ & (!\Add0~21\)) # (!\proc_tx:cnt[11]~regout\ & ((\Add0~21\) # (GND)))
-- \Add0~23\ = CARRY((!\Add0~21\) # (!\proc_tx:cnt[11]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \proc_tx:cnt[11]~regout\,
	datad => VCC,
	cin => \Add0~21\,
	combout => \Add0~22_combout\,
	cout => \Add0~23\);

-- Location: LCCOMB_X2_Y25_N24
\Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!\Add0~16_combout\ & (!\Add0~20_combout\ & (!\Add0~18_combout\ & !\Add0~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~16_combout\,
	datab => \Add0~20_combout\,
	datac => \Add0~18_combout\,
	datad => \Add0~22_combout\,
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X3_Y26_N24
\Add0~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = (\proc_tx:cnt[12]~regout\ & (\Add0~23\ $ (GND))) # (!\proc_tx:cnt[12]~regout\ & (!\Add0~23\ & VCC))
-- \Add0~25\ = CARRY((\proc_tx:cnt[12]~regout\ & !\Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \proc_tx:cnt[12]~regout\,
	datad => VCC,
	cin => \Add0~23\,
	combout => \Add0~24_combout\,
	cout => \Add0~25\);

-- Location: LCCOMB_X4_Y25_N12
\cnt~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt~2_combout\ = (\Add0~24_combout\ & (((\cnt~0_combout\) # (!\Equal0~7_combout\)) # (!\Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~9_combout\,
	datab => \Add0~24_combout\,
	datac => \Equal0~7_combout\,
	datad => \cnt~0_combout\,
	combout => \cnt~2_combout\);

-- Location: LCFF_X4_Y25_N13
\proc_tx:cnt[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \cnt~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc_tx:cnt[12]~regout\);

-- Location: LCCOMB_X3_Y26_N26
\Add0~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = (\proc_tx:cnt[13]~regout\ & (!\Add0~25\)) # (!\proc_tx:cnt[13]~regout\ & ((\Add0~25\) # (GND)))
-- \Add0~27\ = CARRY((!\Add0~25\) # (!\proc_tx:cnt[13]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \proc_tx:cnt[13]~regout\,
	datad => VCC,
	cin => \Add0~25\,
	combout => \Add0~26_combout\,
	cout => \Add0~27\);

-- Location: LCCOMB_X2_Y25_N30
\cnt~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt~3_combout\ = (\Add0~26_combout\ & (((\cnt~0_combout\) # (!\Equal0~7_combout\)) # (!\Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~9_combout\,
	datab => \Add0~26_combout\,
	datac => \Equal0~7_combout\,
	datad => \cnt~0_combout\,
	combout => \cnt~3_combout\);

-- Location: LCFF_X2_Y25_N31
\proc_tx:cnt[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \cnt~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc_tx:cnt[13]~regout\);

-- Location: LCCOMB_X3_Y26_N28
\Add0~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = (\proc_tx:cnt[14]~regout\ & (\Add0~27\ $ (GND))) # (!\proc_tx:cnt[14]~regout\ & (!\Add0~27\ & VCC))
-- \Add0~29\ = CARRY((\proc_tx:cnt[14]~regout\ & !\Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \proc_tx:cnt[14]~regout\,
	datad => VCC,
	cin => \Add0~27\,
	combout => \Add0~28_combout\,
	cout => \Add0~29\);

-- Location: LCCOMB_X2_Y25_N18
\cnt~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt~5_combout\ = (\Add0~30_combout\ & (((\cnt~0_combout\) # (!\Equal0~7_combout\)) # (!\Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~9_combout\,
	datab => \Add0~30_combout\,
	datac => \Equal0~7_combout\,
	datad => \cnt~0_combout\,
	combout => \cnt~5_combout\);

-- Location: LCFF_X2_Y25_N19
\proc_tx:cnt[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \cnt~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc_tx:cnt[15]~regout\);

-- Location: LCCOMB_X3_Y26_N30
\Add0~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = (\proc_tx:cnt[15]~regout\ & (!\Add0~29\)) # (!\proc_tx:cnt[15]~regout\ & ((\Add0~29\) # (GND)))
-- \Add0~31\ = CARRY((!\Add0~29\) # (!\proc_tx:cnt[15]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \proc_tx:cnt[15]~regout\,
	datad => VCC,
	cin => \Add0~29\,
	combout => \Add0~30_combout\,
	cout => \Add0~31\);

-- Location: LCCOMB_X2_Y25_N0
\Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (\Add0~24_combout\ & (\Add0~28_combout\ & (\Add0~26_combout\ & \Add0~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~24_combout\,
	datab => \Add0~28_combout\,
	datac => \Add0~26_combout\,
	datad => \Add0~30_combout\,
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X2_Y25_N10
\Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~0_combout\ & (\Equal0~1_combout\ & (\Equal0~2_combout\ & \Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \Equal0~1_combout\,
	datac => \Equal0~2_combout\,
	datad => \Equal0~3_combout\,
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X2_Y25_N26
\cnt~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt~0_combout\ = (!\Equal0~4_combout\) # (!\Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~8_combout\,
	datad => \Equal0~4_combout\,
	combout => \cnt~0_combout\);

-- Location: LCCOMB_X4_Y25_N14
\cnt~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt~9_combout\ = (\Add0~42_combout\ & (((\cnt~0_combout\) # (!\Equal0~9_combout\)) # (!\Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~42_combout\,
	datab => \Equal0~7_combout\,
	datac => \Equal0~9_combout\,
	datad => \cnt~0_combout\,
	combout => \cnt~9_combout\);

-- Location: LCFF_X4_Y25_N15
\proc_tx:cnt[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \cnt~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc_tx:cnt[21]~regout\);

-- Location: LCCOMB_X4_Y25_N0
\cnt~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt~8_combout\ = (\Add0~40_combout\ & (((\cnt~0_combout\) # (!\Equal0~7_combout\)) # (!\Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~40_combout\,
	datab => \Equal0~9_combout\,
	datac => \Equal0~7_combout\,
	datad => \cnt~0_combout\,
	combout => \cnt~8_combout\);

-- Location: LCFF_X4_Y25_N1
\proc_tx:cnt[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \cnt~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc_tx:cnt[20]~regout\);

-- Location: LCCOMB_X2_Y25_N16
\cnt~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt~7_combout\ = (\Add0~38_combout\ & (((\cnt~0_combout\) # (!\Equal0~7_combout\)) # (!\Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~38_combout\,
	datab => \Equal0~9_combout\,
	datac => \Equal0~7_combout\,
	datad => \cnt~0_combout\,
	combout => \cnt~7_combout\);

-- Location: LCFF_X2_Y25_N17
\proc_tx:cnt[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \cnt~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc_tx:cnt[19]~regout\);

-- Location: LCCOMB_X4_Y25_N30
\cnt~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt~6_combout\ = (\Add0~34_combout\ & (((\cnt~0_combout\) # (!\Equal0~7_combout\)) # (!\Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~34_combout\,
	datab => \Equal0~9_combout\,
	datac => \Equal0~7_combout\,
	datad => \cnt~0_combout\,
	combout => \cnt~6_combout\);

-- Location: LCFF_X4_Y25_N31
\proc_tx:cnt[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \cnt~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc_tx:cnt[17]~regout\);

-- Location: LCCOMB_X3_Y25_N0
\Add0~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~32_combout\ = (\proc_tx:cnt[16]~regout\ & (\Add0~31\ $ (GND))) # (!\proc_tx:cnt[16]~regout\ & (!\Add0~31\ & VCC))
-- \Add0~33\ = CARRY((\proc_tx:cnt[16]~regout\ & !\Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \proc_tx:cnt[16]~regout\,
	datad => VCC,
	cin => \Add0~31\,
	combout => \Add0~32_combout\,
	cout => \Add0~33\);

-- Location: LCFF_X3_Y25_N1
\proc_tx:cnt[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc_tx:cnt[16]~regout\);

-- Location: LCCOMB_X3_Y25_N4
\Add0~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~36_combout\ = (\proc_tx:cnt[18]~regout\ & (\Add0~35\ $ (GND))) # (!\proc_tx:cnt[18]~regout\ & (!\Add0~35\ & VCC))
-- \Add0~37\ = CARRY((\proc_tx:cnt[18]~regout\ & !\Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \proc_tx:cnt[18]~regout\,
	datad => VCC,
	cin => \Add0~35\,
	combout => \Add0~36_combout\,
	cout => \Add0~37\);

-- Location: LCFF_X3_Y25_N5
\proc_tx:cnt[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc_tx:cnt[18]~regout\);

-- Location: LCCOMB_X3_Y25_N6
\Add0~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~38_combout\ = (\proc_tx:cnt[19]~regout\ & (!\Add0~37\)) # (!\proc_tx:cnt[19]~regout\ & ((\Add0~37\) # (GND)))
-- \Add0~39\ = CARRY((!\Add0~37\) # (!\proc_tx:cnt[19]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \proc_tx:cnt[19]~regout\,
	datad => VCC,
	cin => \Add0~37\,
	combout => \Add0~38_combout\,
	cout => \Add0~39\);

-- Location: LCCOMB_X3_Y25_N8
\Add0~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~40_combout\ = (\proc_tx:cnt[20]~regout\ & (\Add0~39\ $ (GND))) # (!\proc_tx:cnt[20]~regout\ & (!\Add0~39\ & VCC))
-- \Add0~41\ = CARRY((\proc_tx:cnt[20]~regout\ & !\Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \proc_tx:cnt[20]~regout\,
	datad => VCC,
	cin => \Add0~39\,
	combout => \Add0~40_combout\,
	cout => \Add0~41\);

-- Location: LCCOMB_X3_Y25_N10
\Add0~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~42_combout\ = (\proc_tx:cnt[21]~regout\ & (!\Add0~41\)) # (!\proc_tx:cnt[21]~regout\ & ((\Add0~41\) # (GND)))
-- \Add0~43\ = CARRY((!\Add0~41\) # (!\proc_tx:cnt[21]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \proc_tx:cnt[21]~regout\,
	datad => VCC,
	cin => \Add0~41\,
	combout => \Add0~42_combout\,
	cout => \Add0~43\);

-- Location: LCCOMB_X3_Y25_N12
\Add0~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~44_combout\ = (\proc_tx:cnt[22]~regout\ & (\Add0~43\ $ (GND))) # (!\proc_tx:cnt[22]~regout\ & (!\Add0~43\ & VCC))
-- \Add0~45\ = CARRY((\proc_tx:cnt[22]~regout\ & !\Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \proc_tx:cnt[22]~regout\,
	datad => VCC,
	cin => \Add0~43\,
	combout => \Add0~44_combout\,
	cout => \Add0~45\);

-- Location: LCCOMB_X2_Y25_N4
\Equal0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (\Add0~42_combout\ & \Add0~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~42_combout\,
	datad => \Add0~40_combout\,
	combout => \Equal0~6_combout\);

-- Location: LCCOMB_X2_Y25_N6
\Equal0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (\Add0~34_combout\ & (!\Add0~32_combout\ & (!\Add0~36_combout\ & \Add0~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~34_combout\,
	datab => \Add0~32_combout\,
	datac => \Add0~36_combout\,
	datad => \Add0~38_combout\,
	combout => \Equal0~5_combout\);

-- Location: LCCOMB_X2_Y25_N14
\Equal0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (\Add0~46_combout\ & (\Add0~44_combout\ & (\Equal0~6_combout\ & \Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~46_combout\,
	datab => \Add0~44_combout\,
	datac => \Equal0~6_combout\,
	datad => \Equal0~5_combout\,
	combout => \Equal0~7_combout\);

-- Location: LCCOMB_X4_Y25_N10
\cnt~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt~11_combout\ = (\Add0~46_combout\ & (((\cnt~0_combout\) # (!\Equal0~7_combout\)) # (!\Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~46_combout\,
	datab => \Equal0~9_combout\,
	datac => \Equal0~7_combout\,
	datad => \cnt~0_combout\,
	combout => \cnt~11_combout\);

-- Location: LCFF_X4_Y25_N11
\proc_tx:cnt[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \cnt~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc_tx:cnt[23]~regout\);

-- Location: LCCOMB_X2_Y25_N22
\Equal0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~8_combout\ = (!\Add0~48_combout\ & (\Add0~50_combout\ & (!\Add0~52_combout\ & !\Add0~54_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~48_combout\,
	datab => \Add0~50_combout\,
	datac => \Add0~52_combout\,
	datad => \Add0~54_combout\,
	combout => \Equal0~8_combout\);

-- Location: LCCOMB_X2_Y25_N20
\Equal0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~10_combout\ = (\Equal0~4_combout\ & (\Equal0~8_combout\ & (\Equal0~7_combout\ & \Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~4_combout\,
	datab => \Equal0~8_combout\,
	datac => \Equal0~7_combout\,
	datad => \Equal0~9_combout\,
	combout => \Equal0~10_combout\);

-- Location: LCFF_X2_Y25_N21
tx_ena : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tx_ena~regout\);

-- Location: LCCOMB_X5_Y25_N20
\uart1|tx_count[0]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \uart1|tx_count[0]~8_combout\ = (\tx_ena~regout\) # (\uart1|tx_state~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tx_ena~regout\,
	datad => \uart1|tx_state~regout\,
	combout => \uart1|tx_count[0]~8_combout\);

-- Location: LCFF_X5_Y25_N3
\uart1|tx_count[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \uart1|tx_count[0]~4_combout\,
	sclr => \uart1|ALT_INV_tx_state~regout\,
	ena => \uart1|tx_count[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uart1|tx_count\(0));

-- Location: LCCOMB_X5_Y25_N4
\uart1|tx_count[1]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \uart1|tx_count[1]~6_combout\ = (\uart1|tx_count\(1) & (!\uart1|tx_count[0]~5\)) # (!\uart1|tx_count\(1) & ((\uart1|tx_count[0]~5\) # (GND)))
-- \uart1|tx_count[1]~7\ = CARRY((!\uart1|tx_count[0]~5\) # (!\uart1|tx_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart1|tx_count\(1),
	datad => VCC,
	cin => \uart1|tx_count[0]~5\,
	combout => \uart1|tx_count[1]~6_combout\,
	cout => \uart1|tx_count[1]~7\);

-- Location: LCFF_X5_Y25_N5
\uart1|tx_count[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \uart1|tx_count[1]~6_combout\,
	sclr => \uart1|ALT_INV_tx_state~regout\,
	ena => \uart1|tx_count[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uart1|tx_count\(1));

-- Location: LCCOMB_X5_Y25_N8
\uart1|tx_count[3]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \uart1|tx_count[3]~11_combout\ = \uart1|tx_count\(3) $ (\uart1|tx_count[2]~10\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart1|tx_count\(3),
	cin => \uart1|tx_count[2]~10\,
	combout => \uart1|tx_count[3]~11_combout\);

-- Location: LCFF_X5_Y25_N9
\uart1|tx_count[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \uart1|tx_count[3]~11_combout\,
	sclr => \uart1|ALT_INV_tx_state~regout\,
	ena => \uart1|tx_count[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uart1|tx_count\(3));

-- Location: LCCOMB_X5_Y27_N20
\uart1|baud_pulse~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uart1|baud_pulse~0_combout\ = !\uart1|LessThan0~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart1|LessThan0~2_combout\,
	combout => \uart1|baud_pulse~0_combout\);

-- Location: LCFF_X5_Y27_N21
\uart1|baud_pulse\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \uart1|baud_pulse~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uart1|baud_pulse~regout\);

-- Location: LCCOMB_X5_Y25_N30
\uart1|tx_state~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uart1|tx_state~0_combout\ = (\uart1|tx_count\(2)) # (((\uart1|tx_count\(1)) # (!\uart1|baud_pulse~regout\)) # (!\uart1|tx_count\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart1|tx_count\(2),
	datab => \uart1|tx_count\(0),
	datac => \uart1|tx_count\(1),
	datad => \uart1|baud_pulse~regout\,
	combout => \uart1|tx_state~0_combout\);

-- Location: LCCOMB_X4_Y25_N28
\uart1|tx_state~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \uart1|tx_state~1_combout\ = (\uart1|tx_state~regout\ & ((\uart1|tx_state~0_combout\) # (!\uart1|tx_count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart1|tx_count\(3),
	datac => \uart1|tx_state~regout\,
	datad => \uart1|tx_state~0_combout\,
	combout => \uart1|tx_state~1_combout\);

-- Location: LCFF_X4_Y25_N29
\uart1|tx_state\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \uart1|tx_state~1_combout\,
	sdata => \tx_ena~regout\,
	sload => \uart1|ALT_INV_tx_state~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uart1|tx_state~regout\);

-- Location: LCFF_X1_Y25_N17
\tx_data[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \uart1|rx_data\(6),
	sload => VCC,
	ena => \Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => tx_data(6));

-- Location: LCCOMB_X5_Y25_N14
\uart1|tx_buffer[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \uart1|tx_buffer[0]~1_combout\ = \uart1|tx_count\(3) $ (((\uart1|tx_count\(2)) # ((\uart1|tx_count\(1)) # (\uart1|tx_count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart1|tx_count\(2),
	datab => \uart1|tx_count\(1),
	datac => \uart1|tx_count\(3),
	datad => \uart1|tx_count\(0),
	combout => \uart1|tx_buffer[0]~1_combout\);

-- Location: LCFF_X1_Y25_N11
\tx_data[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \uart1|rx_data\(7),
	sload => VCC,
	ena => \Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => tx_data(7));

-- Location: LCCOMB_X1_Y25_N10
\uart1|tx_buffer~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \uart1|tx_buffer~9_combout\ = (\uart1|tx_state~regout\ & (((!\uart1|tx_buffer\(7))))) # (!\uart1|tx_state~regout\ & ((\tx_ena~regout\ & (tx_data(7))) # (!\tx_ena~regout\ & ((!\uart1|tx_buffer\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart1|tx_state~regout\,
	datab => \tx_ena~regout\,
	datac => tx_data(7),
	datad => \uart1|tx_buffer\(7),
	combout => \uart1|tx_buffer~9_combout\);

-- Location: LCCOMB_X5_Y25_N0
\uart1|tx_buffer~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \uart1|tx_buffer~10_combout\ = (!\uart1|tx_buffer~9_combout\ & (((!\uart1|tx_buffer[0]~1_combout\) # (!\uart1|tx_state~regout\)) # (!\uart1|baud_pulse~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart1|baud_pulse~regout\,
	datab => \uart1|tx_state~regout\,
	datac => \uart1|tx_buffer[0]~1_combout\,
	datad => \uart1|tx_buffer~9_combout\,
	combout => \uart1|tx_buffer~10_combout\);

-- Location: LCFF_X5_Y25_N1
\uart1|tx_buffer[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \uart1|tx_buffer~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uart1|tx_buffer\(7));

-- Location: LCCOMB_X1_Y25_N28
\uart1|tx_buffer~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \uart1|tx_buffer~8_combout\ = (\uart1|tx_state~regout\ & ((\uart1|tx_buffer\(7)))) # (!\uart1|tx_state~regout\ & (!tx_data(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart1|tx_state~regout\,
	datac => tx_data(6),
	datad => \uart1|tx_buffer\(7),
	combout => \uart1|tx_buffer~8_combout\);

-- Location: LCCOMB_X5_Y25_N12
\uart1|tx_buffer[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \uart1|tx_buffer[0]~2_combout\ = (\uart1|tx_state~regout\ & (\uart1|baud_pulse~regout\ & (\uart1|tx_buffer[0]~1_combout\))) # (!\uart1|tx_state~regout\ & (((\tx_ena~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart1|baud_pulse~regout\,
	datab => \uart1|tx_state~regout\,
	datac => \uart1|tx_buffer[0]~1_combout\,
	datad => \tx_ena~regout\,
	combout => \uart1|tx_buffer[0]~2_combout\);

-- Location: LCFF_X1_Y25_N29
\uart1|tx_buffer[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \uart1|tx_buffer~8_combout\,
	ena => \uart1|tx_buffer[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uart1|tx_buffer\(6));

-- Location: LCCOMB_X1_Y25_N2
\uart1|tx_buffer~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \uart1|tx_buffer~7_combout\ = (\uart1|tx_state~regout\ & ((\uart1|tx_buffer\(6)))) # (!\uart1|tx_state~regout\ & (!tx_data(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_data(5),
	datac => \uart1|tx_state~regout\,
	datad => \uart1|tx_buffer\(6),
	combout => \uart1|tx_buffer~7_combout\);

-- Location: LCFF_X1_Y25_N3
\uart1|tx_buffer[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \uart1|tx_buffer~7_combout\,
	ena => \uart1|tx_buffer[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uart1|tx_buffer\(5));

-- Location: LCCOMB_X1_Y25_N12
\tx_data[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \tx_data[4]~feeder_combout\ = \uart1|rx_data\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart1|rx_data\(4),
	combout => \tx_data[4]~feeder_combout\);

-- Location: LCFF_X1_Y25_N13
\tx_data[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \tx_data[4]~feeder_combout\,
	ena => \Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => tx_data(4));

-- Location: LCCOMB_X1_Y25_N14
\uart1|tx_buffer~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \uart1|tx_buffer~6_combout\ = (\uart1|tx_state~regout\ & (\uart1|tx_buffer\(5))) # (!\uart1|tx_state~regout\ & ((!tx_data(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart1|tx_buffer\(5),
	datac => \uart1|tx_state~regout\,
	datad => tx_data(4),
	combout => \uart1|tx_buffer~6_combout\);

-- Location: LCFF_X1_Y25_N15
\uart1|tx_buffer[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \uart1|tx_buffer~6_combout\,
	ena => \uart1|tx_buffer[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uart1|tx_buffer\(4));

-- Location: LCFF_X1_Y25_N1
\tx_data[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \uart1|rx_data\(3),
	sload => VCC,
	ena => \Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => tx_data(3));

-- Location: LCCOMB_X1_Y25_N18
\uart1|tx_buffer~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \uart1|tx_buffer~5_combout\ = (\uart1|tx_state~regout\ & (\uart1|tx_buffer\(4))) # (!\uart1|tx_state~regout\ & ((!tx_data(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart1|tx_state~regout\,
	datac => \uart1|tx_buffer\(4),
	datad => tx_data(3),
	combout => \uart1|tx_buffer~5_combout\);

-- Location: LCFF_X1_Y25_N19
\uart1|tx_buffer[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \uart1|tx_buffer~5_combout\,
	ena => \uart1|tx_buffer[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uart1|tx_buffer\(3));

-- Location: LCCOMB_X1_Y25_N4
\uart1|tx_buffer~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \uart1|tx_buffer~4_combout\ = (\uart1|tx_state~regout\ & ((\uart1|tx_buffer\(3)))) # (!\uart1|tx_state~regout\ & (!tx_data(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010111000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_data(2),
	datab => \uart1|tx_buffer\(3),
	datac => \uart1|tx_state~regout\,
	combout => \uart1|tx_buffer~4_combout\);

-- Location: LCFF_X1_Y25_N5
\uart1|tx_buffer[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \uart1|tx_buffer~4_combout\,
	ena => \uart1|tx_buffer[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uart1|tx_buffer\(2));

-- Location: LCFF_X2_Y25_N5
\tx_data[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \uart1|rx_data\(1),
	sload => VCC,
	ena => \Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => tx_data(1));

-- Location: LCCOMB_X1_Y25_N6
\uart1|tx_buffer~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \uart1|tx_buffer~3_combout\ = (\uart1|tx_state~regout\ & (\uart1|tx_buffer\(2))) # (!\uart1|tx_state~regout\ & ((!tx_data(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart1|tx_state~regout\,
	datac => \uart1|tx_buffer\(2),
	datad => tx_data(1),
	combout => \uart1|tx_buffer~3_combout\);

-- Location: LCFF_X1_Y25_N7
\uart1|tx_buffer[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \uart1|tx_buffer~3_combout\,
	ena => \uart1|tx_buffer[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uart1|tx_buffer\(1));

-- Location: LCCOMB_X4_Y25_N22
\uart1|tx_buffer~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uart1|tx_buffer~0_combout\ = (\uart1|tx_state~regout\ & ((\uart1|tx_buffer\(1)))) # (!\uart1|tx_state~regout\ & (!tx_data(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_data(0),
	datac => \uart1|tx_buffer\(1),
	datad => \uart1|tx_state~regout\,
	combout => \uart1|tx_buffer~0_combout\);

-- Location: LCFF_X4_Y25_N23
\uart1|tx_buffer[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \uart1|tx_buffer~0_combout\,
	ena => \uart1|tx_buffer[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uart1|tx_buffer\(0));

-- Location: LCCOMB_X5_Y25_N18
\uart1|tx~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uart1|tx~0_combout\ = (\uart1|tx~regout\) # ((!\uart1|tx_count\(2) & !\uart1|tx_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart1|tx_count\(2),
	datac => \uart1|tx_count\(1),
	datad => \uart1|tx~regout\,
	combout => \uart1|tx~0_combout\);

-- Location: LCCOMB_X5_Y25_N10
\uart1|tx~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \uart1|tx~1_combout\ = (\uart1|LessThan8~0_combout\ & ((\uart1|tx_count\(3) & ((\uart1|tx~0_combout\))) # (!\uart1|tx_count\(3) & (!\uart1|tx_buffer\(0))))) # (!\uart1|LessThan8~0_combout\ & (!\uart1|tx_buffer\(0) & (\uart1|tx_count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart1|LessThan8~0_combout\,
	datab => \uart1|tx_buffer\(0),
	datac => \uart1|tx_count\(3),
	datad => \uart1|tx~0_combout\,
	combout => \uart1|tx~1_combout\);

-- Location: LCCOMB_X5_Y25_N28
\uart1|tx~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \uart1|tx~2_combout\ = (\uart1|baud_pulse~regout\ & ((\uart1|tx_state~regout\ & ((\uart1|tx~1_combout\))) # (!\uart1|tx_state~regout\ & (\uart1|tx~regout\)))) # (!\uart1|baud_pulse~regout\ & (((\uart1|tx~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart1|baud_pulse~regout\,
	datab => \uart1|tx_state~regout\,
	datac => \uart1|tx~regout\,
	datad => \uart1|tx~1_combout\,
	combout => \uart1|tx~2_combout\);

-- Location: LCFF_X5_Y25_N29
\uart1|tx\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \uart1|tx~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uart1|tx~regout\);

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
	datain => \seg_low|Mux6~0_combout\,
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
	datain => \seg_low|Mux5~0_combout\,
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
	datain => \seg_low|Mux4~0_combout\,
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
	datain => \seg_low|Mux3~0_combout\,
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
	datain => \seg_low|Mux2~0_combout\,
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
	datain => \seg_low|Mux1~0_combout\,
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
	datain => \seg_low|ALT_INV_Mux0~0_combout\,
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
	datain => \seg_high|Mux6~0_combout\,
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
	datain => \seg_high|Mux5~0_combout\,
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
	datain => \seg_high|Mux4~0_combout\,
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
	datain => \seg_high|Mux3~0_combout\,
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
	datain => \seg_high|Mux2~0_combout\,
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
	datain => \seg_high|Mux1~0_combout\,
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
	datain => \seg_high|ALT_INV_Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX7(6));

-- Location: PIN_B25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\UART_TXD~I\ : cycloneii_io
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
	datain => \uart1|tx~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_UART_TXD);
END structure;


