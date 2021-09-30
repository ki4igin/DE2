----------------------------------------------------------------------------- 
-- Altera DSP Builder Advanced Flow Tools Release Version 13.0sp1
-- Quartus II development tool and MATLAB/Simulink Interface
-- 
-- Legal Notice: Copyright 2013 Altera Corporation.  All rights reserved.    
-- Your use of  Altera  Corporation's design tools,  logic functions and other 
-- software and tools,  and its AMPP  partner logic functions, and  any output 
-- files  any of the  foregoing  device programming or simulation files),  and 
-- any associated  documentation or information are expressly subject  to  the 
-- terms and conditions  of the Altera Program License Subscription Agreement, 
-- Altera  MegaCore  Function  License  Agreement, or other applicable license 
-- agreement,  including,  without limitation,  that your use  is for the sole 
-- purpose of  programming  logic  devices  manufactured by Altera and sold by 
-- Altera or its authorized  distributors.  Please  refer  to  the  applicable 
-- agreement for further details.
----------------------------------------------------------------------------- 

-- VHDL created from fir_0002_rtl
-- VHDL created on Mon Dec 14 12:08:31 2020


library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.NUMERIC_STD.all;
use IEEE.MATH_REAL.all;
use std.TextIO.all;
use work.dspba_library_package.all;

LIBRARY altera_mf;
USE altera_mf.altera_mf_components.all;
LIBRARY lpm;
USE lpm.lpm_components.all;

-- Text written from d:/SJ/nightly/13.0sp1/232/w32/p4/ip/aion/src/mip_common/hw_model.cpp:1303
entity fir_0002_rtl is
    port (
        xIn_v : in std_logic_vector(0 downto 0);
        xIn_c : in std_logic_vector(7 downto 0);
        xIn_0 : in std_logic_vector(15 downto 0);
        xOut_v : out std_logic_vector(0 downto 0);
        xOut_c : out std_logic_vector(7 downto 0);
        xOut_0 : out std_logic_vector(37 downto 0);
        clk : in std_logic;
        areset : in std_logic
        );
end;

architecture normal of fir_0002_rtl is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name NOT_GATE_PUSH_BACK OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410";

    signal GND_q : std_logic_vector (0 downto 0);
    signal VCC_q : std_logic_vector (0 downto 0);
    signal d_u0_m0_wo0_memread_q_17_q : std_logic_vector (0 downto 0);
    signal d_u0_m0_wo0_wi0_phasedelay0_q_14_q : std_logic_vector (15 downto 0);
    signal u0_m0_wo0_wi0_delayr1_q : std_logic_vector (15 downto 0);
    signal d_u0_m0_wo0_wi0_delayr1_q_13_q : std_logic_vector (15 downto 0);
    signal u0_m0_wo0_wi0_delayr2_q : std_logic_vector (15 downto 0);
    signal u0_m0_wo0_wi0_delayr3_q : std_logic_vector (15 downto 0);
    signal d_u0_m0_wo0_wi0_delayr3_q_12_q : std_logic_vector (15 downto 0);
    signal u0_m0_wo0_wi0_delayr4_q : std_logic_vector (15 downto 0);
    signal d_u0_m0_wo0_wi0_delayr4_q_12_q : std_logic_vector (15 downto 0);
    signal u0_m0_wo0_wi0_delayr5_q : std_logic_vector (15 downto 0);
    signal d_u0_m0_wo0_wi0_delayr5_q_11_q : std_logic_vector (15 downto 0);
    signal u0_m0_wo0_wi0_delayr6_q : std_logic_vector (15 downto 0);
    signal u0_m0_wo0_wi0_delayr7_q : std_logic_vector (15 downto 0);
    signal u0_m0_wo0_wi0_delayr8_q : std_logic_vector (15 downto 0);
    signal u0_m0_wo0_wi0_delayr9_q : std_logic_vector (15 downto 0);
    signal d_u0_m0_wo0_wi0_delayr9_q_11_q : std_logic_vector (15 downto 0);
    signal u0_m0_wo0_wi0_delayr10_q : std_logic_vector (15 downto 0);
    signal u0_m0_wo0_wi0_delayr11_q : std_logic_vector (15 downto 0);
    signal u0_m0_wo0_wi0_delayr12_q : std_logic_vector (15 downto 0);
    signal u0_m0_wo0_wi0_delayr13_q : std_logic_vector (15 downto 0);
    signal d_u0_m0_wo0_wi0_delayr13_q_11_q : std_logic_vector (15 downto 0);
    signal u0_m0_wo0_wi0_delayr14_q : std_logic_vector (15 downto 0);
    signal u0_m0_wo0_wi0_delayr15_q : std_logic_vector (15 downto 0);
    signal u0_m0_wo0_wi0_delayr16_q : std_logic_vector (15 downto 0);
    signal u0_m0_wo0_wi0_delayr17_q : std_logic_vector (15 downto 0);
    signal u0_m0_wo0_wi0_delayr18_q : std_logic_vector (15 downto 0);
    signal d_u0_m0_wo0_wi0_delayr18_q_11_q : std_logic_vector (15 downto 0);
    signal u0_m0_wo0_wi0_delayr19_q : std_logic_vector (15 downto 0);
    signal u0_m0_wo0_wi0_delayr20_q : std_logic_vector (15 downto 0);
    signal u0_m0_wo0_wi0_delayr21_q : std_logic_vector (15 downto 0);
    signal d_u0_m0_wo0_wi0_delayr21_q_11_q : std_logic_vector (15 downto 0);
    signal u0_m0_wo0_wi0_delayr22_q : std_logic_vector (15 downto 0);
    signal u0_m0_wo0_wi0_delayr23_q : std_logic_vector (15 downto 0);
    signal u0_m0_wo0_wi0_delayr24_q : std_logic_vector (15 downto 0);
    signal u0_m0_wo0_wi0_delayr25_q : std_logic_vector (15 downto 0);
    signal d_u0_m0_wo0_wi0_delayr25_q_11_q : std_logic_vector (15 downto 0);
    signal u0_m0_wo0_wi0_delayr26_q : std_logic_vector (15 downto 0);
    signal u0_m0_wo0_wi0_delayr27_q : std_logic_vector (15 downto 0);
    signal u0_m0_wo0_wi0_delayr28_q : std_logic_vector (15 downto 0);
    signal u0_m0_wo0_wi0_delayr29_q : std_logic_vector (15 downto 0);
    signal d_u0_m0_wo0_wi0_delayr29_q_11_q : std_logic_vector (15 downto 0);
    signal u0_m0_wo0_wi0_delayr30_q : std_logic_vector (15 downto 0);
    signal u0_m0_wo0_wi0_delayr31_q : std_logic_vector (15 downto 0);
    signal u0_m0_wo0_wi0_delayr32_q : std_logic_vector (15 downto 0);
    signal u0_m0_wo0_wi0_delayr33_q : std_logic_vector (15 downto 0);
    signal d_u0_m0_wo0_wi0_delayr33_q_11_q : std_logic_vector (15 downto 0);
    signal u0_m0_wo0_wi0_delayr34_q : std_logic_vector (15 downto 0);
    signal u0_m0_wo0_wi0_delayr35_q : std_logic_vector (15 downto 0);
    signal u0_m0_wo0_wi0_delayr36_q : std_logic_vector (15 downto 0);
    signal u0_m0_wo0_cm0_q : std_logic_vector (12 downto 0);
    signal u0_m0_wo0_cm1_q : std_logic_vector (11 downto 0);
    signal u0_m0_wo0_cm4_q : std_logic_vector (12 downto 0);
    signal u0_m0_wo0_cm7_q : std_logic_vector (12 downto 0);
    signal u0_m0_wo0_cm8_q : std_logic_vector (13 downto 0);
    signal u0_m0_wo0_cm9_q : std_logic_vector (12 downto 0);
    signal u0_m0_wo0_cm12_q : std_logic_vector (13 downto 0);
    signal u0_m0_wo0_cm13_q : std_logic_vector (13 downto 0);
    signal u0_m0_wo0_cm15_q : std_logic_vector (14 downto 0);
    signal u0_m0_wo0_cm16_q : std_logic_vector (15 downto 0);
    signal u0_m0_wo0_cm17_q : std_logic_vector (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_36_a : std_logic_vector (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_36_b : std_logic_vector (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_36_s1 : std_logic_vector (28 downto 0);
    signal u0_m0_wo0_mtree_mult1_36_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_36_q : std_logic_vector (28 downto 0);
    signal u0_m0_wo0_mtree_mult1_35_a : std_logic_vector (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_35_b : std_logic_vector (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_35_s1 : std_logic_vector (27 downto 0);
    signal u0_m0_wo0_mtree_mult1_35_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_35_q : std_logic_vector (27 downto 0);
    signal u0_m0_wo0_mtree_mult1_32_a : std_logic_vector (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_32_b : std_logic_vector (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_32_s1 : std_logic_vector (28 downto 0);
    signal u0_m0_wo0_mtree_mult1_32_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_32_q : std_logic_vector (28 downto 0);
    signal u0_m0_wo0_mtree_mult1_29_a : std_logic_vector (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_29_b : std_logic_vector (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_29_s1 : std_logic_vector (28 downto 0);
    signal u0_m0_wo0_mtree_mult1_29_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_29_q : std_logic_vector (28 downto 0);
    signal u0_m0_wo0_mtree_mult1_28_a : std_logic_vector (13 downto 0);
    signal u0_m0_wo0_mtree_mult1_28_b : std_logic_vector (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_28_s1 : std_logic_vector (29 downto 0);
    signal u0_m0_wo0_mtree_mult1_28_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_28_q : std_logic_vector (29 downto 0);
    signal u0_m0_wo0_mtree_mult1_27_a : std_logic_vector (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_27_b : std_logic_vector (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_27_s1 : std_logic_vector (28 downto 0);
    signal u0_m0_wo0_mtree_mult1_27_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_27_q : std_logic_vector (28 downto 0);
    signal u0_m0_wo0_mtree_mult1_24_a : std_logic_vector (13 downto 0);
    signal u0_m0_wo0_mtree_mult1_24_b : std_logic_vector (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_24_s1 : std_logic_vector (29 downto 0);
    signal u0_m0_wo0_mtree_mult1_24_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_24_q : std_logic_vector (29 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_a : std_logic_vector (13 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_b : std_logic_vector (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_s1 : std_logic_vector (29 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_23_q : std_logic_vector (29 downto 0);
    signal u0_m0_wo0_mtree_mult1_21_a : std_logic_vector (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_21_b : std_logic_vector (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_21_s1 : std_logic_vector (30 downto 0);
    signal u0_m0_wo0_mtree_mult1_21_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_21_q : std_logic_vector (30 downto 0);
    signal u0_m0_wo0_mtree_mult1_20_a : std_logic_vector (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_20_b : std_logic_vector (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_20_s1 : std_logic_vector (31 downto 0);
    signal u0_m0_wo0_mtree_mult1_20_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_20_q : std_logic_vector (31 downto 0);
    signal u0_m0_wo0_mtree_mult1_19_a : std_logic_vector (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_19_b : std_logic_vector (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_19_s1 : std_logic_vector (31 downto 0);
    signal u0_m0_wo0_mtree_mult1_19_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_19_q : std_logic_vector (31 downto 0);
    signal u0_m0_wo0_mtree_mult1_17_a : std_logic_vector (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_17_b : std_logic_vector (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_17_s1 : std_logic_vector (31 downto 0);
    signal u0_m0_wo0_mtree_mult1_17_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_17_q : std_logic_vector (31 downto 0);
    signal u0_m0_wo0_mtree_mult1_16_a : std_logic_vector (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_16_b : std_logic_vector (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_16_s1 : std_logic_vector (31 downto 0);
    signal u0_m0_wo0_mtree_mult1_16_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_16_q : std_logic_vector (31 downto 0);
    signal u0_m0_wo0_mtree_mult1_15_a : std_logic_vector (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_15_b : std_logic_vector (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_15_s1 : std_logic_vector (30 downto 0);
    signal u0_m0_wo0_mtree_mult1_15_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_15_q : std_logic_vector (30 downto 0);
    signal u0_m0_wo0_mtree_mult1_13_a : std_logic_vector (13 downto 0);
    signal u0_m0_wo0_mtree_mult1_13_b : std_logic_vector (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_13_s1 : std_logic_vector (29 downto 0);
    signal u0_m0_wo0_mtree_mult1_13_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_13_q : std_logic_vector (29 downto 0);
    signal u0_m0_wo0_mtree_mult1_12_a : std_logic_vector (13 downto 0);
    signal u0_m0_wo0_mtree_mult1_12_b : std_logic_vector (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_12_s1 : std_logic_vector (29 downto 0);
    signal u0_m0_wo0_mtree_mult1_12_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_12_q : std_logic_vector (29 downto 0);
    signal u0_m0_wo0_mtree_mult1_9_a : std_logic_vector (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_9_b : std_logic_vector (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_9_s1 : std_logic_vector (28 downto 0);
    signal u0_m0_wo0_mtree_mult1_9_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_9_q : std_logic_vector (28 downto 0);
    signal u0_m0_wo0_mtree_mult1_8_a : std_logic_vector (13 downto 0);
    signal u0_m0_wo0_mtree_mult1_8_b : std_logic_vector (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_8_s1 : std_logic_vector (29 downto 0);
    signal u0_m0_wo0_mtree_mult1_8_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_8_q : std_logic_vector (29 downto 0);
    signal u0_m0_wo0_mtree_mult1_7_a : std_logic_vector (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_7_b : std_logic_vector (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_7_s1 : std_logic_vector (28 downto 0);
    signal u0_m0_wo0_mtree_mult1_7_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_7_q : std_logic_vector (28 downto 0);
    signal u0_m0_wo0_mtree_mult1_4_a : std_logic_vector (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_4_b : std_logic_vector (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_4_s1 : std_logic_vector (28 downto 0);
    signal u0_m0_wo0_mtree_mult1_4_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_4_q : std_logic_vector (28 downto 0);
    signal u0_m0_wo0_mtree_mult1_1_a : std_logic_vector (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_1_b : std_logic_vector (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_1_s1 : std_logic_vector (27 downto 0);
    signal u0_m0_wo0_mtree_mult1_1_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_1_q : std_logic_vector (27 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_a : std_logic_vector (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_b : std_logic_vector (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_s1 : std_logic_vector (28 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_0_q : std_logic_vector (28 downto 0);
    signal u0_m0_wo0_mtree_add0_0_a : std_logic_vector(29 downto 0);
    signal u0_m0_wo0_mtree_add0_0_b : std_logic_vector(29 downto 0);
    signal u0_m0_wo0_mtree_add0_0_o : std_logic_vector (29 downto 0);
    signal u0_m0_wo0_mtree_add0_0_q : std_logic_vector (29 downto 0);
    signal u0_m0_wo0_mtree_add0_2_a : std_logic_vector(29 downto 0);
    signal u0_m0_wo0_mtree_add0_2_b : std_logic_vector(29 downto 0);
    signal u0_m0_wo0_mtree_add0_2_o : std_logic_vector (29 downto 0);
    signal u0_m0_wo0_mtree_add0_2_q : std_logic_vector (29 downto 0);
    signal u0_m0_wo0_mtree_add0_4_a : std_logic_vector(30 downto 0);
    signal u0_m0_wo0_mtree_add0_4_b : std_logic_vector(30 downto 0);
    signal u0_m0_wo0_mtree_add0_4_o : std_logic_vector (30 downto 0);
    signal u0_m0_wo0_mtree_add0_4_q : std_logic_vector (30 downto 0);
    signal u0_m0_wo0_mtree_add0_6_a : std_logic_vector(30 downto 0);
    signal u0_m0_wo0_mtree_add0_6_b : std_logic_vector(30 downto 0);
    signal u0_m0_wo0_mtree_add0_6_o : std_logic_vector (30 downto 0);
    signal u0_m0_wo0_mtree_add0_6_q : std_logic_vector (30 downto 0);
    signal u0_m0_wo0_mtree_add0_8_a : std_logic_vector(32 downto 0);
    signal u0_m0_wo0_mtree_add0_8_b : std_logic_vector(32 downto 0);
    signal u0_m0_wo0_mtree_add0_8_o : std_logic_vector (32 downto 0);
    signal u0_m0_wo0_mtree_add0_8_q : std_logic_vector (32 downto 0);
    signal u0_m0_wo0_mtree_add0_9_a : std_logic_vector(32 downto 0);
    signal u0_m0_wo0_mtree_add0_9_b : std_logic_vector(32 downto 0);
    signal u0_m0_wo0_mtree_add0_9_o : std_logic_vector (32 downto 0);
    signal u0_m0_wo0_mtree_add0_9_q : std_logic_vector (32 downto 0);
    signal u0_m0_wo0_mtree_add0_10_a : std_logic_vector(32 downto 0);
    signal u0_m0_wo0_mtree_add0_10_b : std_logic_vector(32 downto 0);
    signal u0_m0_wo0_mtree_add0_10_o : std_logic_vector (32 downto 0);
    signal u0_m0_wo0_mtree_add0_10_q : std_logic_vector (32 downto 0);
    signal u0_m0_wo0_mtree_add0_12_a : std_logic_vector(30 downto 0);
    signal u0_m0_wo0_mtree_add0_12_b : std_logic_vector(30 downto 0);
    signal u0_m0_wo0_mtree_add0_12_o : std_logic_vector (30 downto 0);
    signal u0_m0_wo0_mtree_add0_12_q : std_logic_vector (30 downto 0);
    signal u0_m0_wo0_mtree_add0_14_a : std_logic_vector(30 downto 0);
    signal u0_m0_wo0_mtree_add0_14_b : std_logic_vector(30 downto 0);
    signal u0_m0_wo0_mtree_add0_14_o : std_logic_vector (30 downto 0);
    signal u0_m0_wo0_mtree_add0_14_q : std_logic_vector (30 downto 0);
    signal u0_m0_wo0_mtree_add0_16_a : std_logic_vector(29 downto 0);
    signal u0_m0_wo0_mtree_add0_16_b : std_logic_vector(29 downto 0);
    signal u0_m0_wo0_mtree_add0_16_o : std_logic_vector (29 downto 0);
    signal u0_m0_wo0_mtree_add0_16_q : std_logic_vector (29 downto 0);
    signal u0_m0_wo0_mtree_add1_0_a : std_logic_vector(30 downto 0);
    signal u0_m0_wo0_mtree_add1_0_b : std_logic_vector(30 downto 0);
    signal u0_m0_wo0_mtree_add1_0_o : std_logic_vector (30 downto 0);
    signal u0_m0_wo0_mtree_add1_0_q : std_logic_vector (30 downto 0);
    signal u0_m0_wo0_mtree_add1_1_a : std_logic_vector(30 downto 0);
    signal u0_m0_wo0_mtree_add1_1_b : std_logic_vector(30 downto 0);
    signal u0_m0_wo0_mtree_add1_1_o : std_logic_vector (30 downto 0);
    signal u0_m0_wo0_mtree_add1_1_q : std_logic_vector (30 downto 0);
    signal u0_m0_wo0_mtree_add1_2_a : std_logic_vector(31 downto 0);
    signal u0_m0_wo0_mtree_add1_2_b : std_logic_vector(31 downto 0);
    signal u0_m0_wo0_mtree_add1_2_o : std_logic_vector (31 downto 0);
    signal u0_m0_wo0_mtree_add1_2_q : std_logic_vector (31 downto 0);
    signal u0_m0_wo0_mtree_add1_3_a : std_logic_vector(32 downto 0);
    signal u0_m0_wo0_mtree_add1_3_b : std_logic_vector(32 downto 0);
    signal u0_m0_wo0_mtree_add1_3_o : std_logic_vector (32 downto 0);
    signal u0_m0_wo0_mtree_add1_3_q : std_logic_vector (32 downto 0);
    signal u0_m0_wo0_mtree_add1_4_a : std_logic_vector(33 downto 0);
    signal u0_m0_wo0_mtree_add1_4_b : std_logic_vector(33 downto 0);
    signal u0_m0_wo0_mtree_add1_4_o : std_logic_vector (33 downto 0);
    signal u0_m0_wo0_mtree_add1_4_q : std_logic_vector (33 downto 0);
    signal u0_m0_wo0_mtree_add1_5_a : std_logic_vector(33 downto 0);
    signal u0_m0_wo0_mtree_add1_5_b : std_logic_vector(33 downto 0);
    signal u0_m0_wo0_mtree_add1_5_o : std_logic_vector (33 downto 0);
    signal u0_m0_wo0_mtree_add1_5_q : std_logic_vector (33 downto 0);
    signal u0_m0_wo0_mtree_add1_6_a : std_logic_vector(31 downto 0);
    signal u0_m0_wo0_mtree_add1_6_b : std_logic_vector(31 downto 0);
    signal u0_m0_wo0_mtree_add1_6_o : std_logic_vector (31 downto 0);
    signal u0_m0_wo0_mtree_add1_6_q : std_logic_vector (31 downto 0);
    signal u0_m0_wo0_mtree_add1_7_a : std_logic_vector(31 downto 0);
    signal u0_m0_wo0_mtree_add1_7_b : std_logic_vector(31 downto 0);
    signal u0_m0_wo0_mtree_add1_7_o : std_logic_vector (31 downto 0);
    signal u0_m0_wo0_mtree_add1_7_q : std_logic_vector (31 downto 0);
    signal u0_m0_wo0_mtree_add1_8_a : std_logic_vector(30 downto 0);
    signal u0_m0_wo0_mtree_add1_8_b : std_logic_vector(30 downto 0);
    signal u0_m0_wo0_mtree_add1_8_o : std_logic_vector (30 downto 0);
    signal u0_m0_wo0_mtree_add1_8_q : std_logic_vector (30 downto 0);
    signal u0_m0_wo0_mtree_add2_0_a : std_logic_vector(31 downto 0);
    signal u0_m0_wo0_mtree_add2_0_b : std_logic_vector(31 downto 0);
    signal u0_m0_wo0_mtree_add2_0_o : std_logic_vector (31 downto 0);
    signal u0_m0_wo0_mtree_add2_0_q : std_logic_vector (31 downto 0);
    signal u0_m0_wo0_mtree_add2_1_a : std_logic_vector(33 downto 0);
    signal u0_m0_wo0_mtree_add2_1_b : std_logic_vector(33 downto 0);
    signal u0_m0_wo0_mtree_add2_1_o : std_logic_vector (33 downto 0);
    signal u0_m0_wo0_mtree_add2_1_q : std_logic_vector (33 downto 0);
    signal u0_m0_wo0_mtree_add2_2_a : std_logic_vector(34 downto 0);
    signal u0_m0_wo0_mtree_add2_2_b : std_logic_vector(34 downto 0);
    signal u0_m0_wo0_mtree_add2_2_o : std_logic_vector (34 downto 0);
    signal u0_m0_wo0_mtree_add2_2_q : std_logic_vector (34 downto 0);
    signal u0_m0_wo0_mtree_add2_3_a : std_logic_vector(32 downto 0);
    signal u0_m0_wo0_mtree_add2_3_b : std_logic_vector(32 downto 0);
    signal u0_m0_wo0_mtree_add2_3_o : std_logic_vector (32 downto 0);
    signal u0_m0_wo0_mtree_add2_3_q : std_logic_vector (32 downto 0);
    signal u0_m0_wo0_mtree_add2_4_a : std_logic_vector(31 downto 0);
    signal u0_m0_wo0_mtree_add2_4_b : std_logic_vector(31 downto 0);
    signal u0_m0_wo0_mtree_add2_4_o : std_logic_vector (31 downto 0);
    signal u0_m0_wo0_mtree_add2_4_q : std_logic_vector (31 downto 0);
    signal u0_m0_wo0_mtree_add3_0_a : std_logic_vector(34 downto 0);
    signal u0_m0_wo0_mtree_add3_0_b : std_logic_vector(34 downto 0);
    signal u0_m0_wo0_mtree_add3_0_o : std_logic_vector (34 downto 0);
    signal u0_m0_wo0_mtree_add3_0_q : std_logic_vector (34 downto 0);
    signal u0_m0_wo0_mtree_add3_1_a : std_logic_vector(35 downto 0);
    signal u0_m0_wo0_mtree_add3_1_b : std_logic_vector(35 downto 0);
    signal u0_m0_wo0_mtree_add3_1_o : std_logic_vector (35 downto 0);
    signal u0_m0_wo0_mtree_add3_1_q : std_logic_vector (35 downto 0);
    signal u0_m0_wo0_mtree_add4_0_a : std_logic_vector(36 downto 0);
    signal u0_m0_wo0_mtree_add4_0_b : std_logic_vector(36 downto 0);
    signal u0_m0_wo0_mtree_add4_0_o : std_logic_vector (36 downto 0);
    signal u0_m0_wo0_mtree_add4_0_q : std_logic_vector (36 downto 0);
    signal u0_m0_wo0_mtree_add5_0_a : std_logic_vector(37 downto 0);
    signal u0_m0_wo0_mtree_add5_0_b : std_logic_vector(37 downto 0);
    signal u0_m0_wo0_mtree_add5_0_o : std_logic_vector (37 downto 0);
    signal u0_m0_wo0_mtree_add5_0_q : std_logic_vector (37 downto 0);
    signal u0_m0_wo0_oseq_gated_reg_q : std_logic_vector (0 downto 0);
    signal u0_m0_wo0_mtree_mult1_33_add_1_a : std_logic_vector(19 downto 0);
    signal u0_m0_wo0_mtree_mult1_33_add_1_b : std_logic_vector(19 downto 0);
    signal u0_m0_wo0_mtree_mult1_33_add_1_o : std_logic_vector (19 downto 0);
    signal u0_m0_wo0_mtree_mult1_33_add_1_q : std_logic_vector (19 downto 0);
    signal u0_m0_wo0_mtree_mult1_33_sub_3_a : std_logic_vector(21 downto 0);
    signal u0_m0_wo0_mtree_mult1_33_sub_3_b : std_logic_vector(21 downto 0);
    signal u0_m0_wo0_mtree_mult1_33_sub_3_o : std_logic_vector (21 downto 0);
    signal u0_m0_wo0_mtree_mult1_33_sub_3_q : std_logic_vector (21 downto 0);
    signal u0_m0_wo0_mtree_mult1_33_add_5_a : std_logic_vector(27 downto 0);
    signal u0_m0_wo0_mtree_mult1_33_add_5_b : std_logic_vector(27 downto 0);
    signal u0_m0_wo0_mtree_mult1_33_add_5_o : std_logic_vector (27 downto 0);
    signal u0_m0_wo0_mtree_mult1_33_add_5_q : std_logic_vector (27 downto 0);
    signal u0_m0_wo0_mtree_mult1_31_add_1_a : std_logic_vector(19 downto 0);
    signal u0_m0_wo0_mtree_mult1_31_add_1_b : std_logic_vector(19 downto 0);
    signal u0_m0_wo0_mtree_mult1_31_add_1_o : std_logic_vector (19 downto 0);
    signal u0_m0_wo0_mtree_mult1_31_add_1_q : std_logic_vector (19 downto 0);
    signal u0_m0_wo0_mtree_mult1_31_add_3_a : std_logic_vector(19 downto 0);
    signal u0_m0_wo0_mtree_mult1_31_add_3_b : std_logic_vector(19 downto 0);
    signal u0_m0_wo0_mtree_mult1_31_add_3_o : std_logic_vector (19 downto 0);
    signal u0_m0_wo0_mtree_mult1_31_add_3_q : std_logic_vector (19 downto 0);
    signal u0_m0_wo0_mtree_mult1_31_sub_5_a : std_logic_vector(26 downto 0);
    signal u0_m0_wo0_mtree_mult1_31_sub_5_b : std_logic_vector(26 downto 0);
    signal u0_m0_wo0_mtree_mult1_31_sub_5_o : std_logic_vector (26 downto 0);
    signal u0_m0_wo0_mtree_mult1_31_sub_5_q : std_logic_vector (26 downto 0);
    signal u0_m0_wo0_mtree_mult1_25_add_1_a : std_logic_vector(18 downto 0);
    signal u0_m0_wo0_mtree_mult1_25_add_1_b : std_logic_vector(18 downto 0);
    signal u0_m0_wo0_mtree_mult1_25_add_1_o : std_logic_vector (18 downto 0);
    signal u0_m0_wo0_mtree_mult1_25_add_1_q : std_logic_vector (18 downto 0);
    signal u0_m0_wo0_mtree_mult1_25_add_3_a : std_logic_vector(21 downto 0);
    signal u0_m0_wo0_mtree_mult1_25_add_3_b : std_logic_vector(21 downto 0);
    signal u0_m0_wo0_mtree_mult1_25_add_3_o : std_logic_vector (21 downto 0);
    signal u0_m0_wo0_mtree_mult1_25_add_3_q : std_logic_vector (21 downto 0);
    signal u0_m0_wo0_mtree_mult1_25_sub_5_a : std_logic_vector(28 downto 0);
    signal u0_m0_wo0_mtree_mult1_25_sub_5_b : std_logic_vector(28 downto 0);
    signal u0_m0_wo0_mtree_mult1_25_sub_5_o : std_logic_vector (28 downto 0);
    signal u0_m0_wo0_mtree_mult1_25_sub_5_q : std_logic_vector (28 downto 0);
    signal u0_m0_wo0_mtree_mult1_18_sub_1_a : std_logic_vector(30 downto 0);
    signal u0_m0_wo0_mtree_mult1_18_sub_1_b : std_logic_vector(30 downto 0);
    signal u0_m0_wo0_mtree_mult1_18_sub_1_o : std_logic_vector (30 downto 0);
    signal u0_m0_wo0_mtree_mult1_18_sub_1_q : std_logic_vector (30 downto 0);
    signal u0_m0_wo0_mtree_mult1_11_add_1_a : std_logic_vector(18 downto 0);
    signal u0_m0_wo0_mtree_mult1_11_add_1_b : std_logic_vector(18 downto 0);
    signal u0_m0_wo0_mtree_mult1_11_add_1_o : std_logic_vector (18 downto 0);
    signal u0_m0_wo0_mtree_mult1_11_add_1_q : std_logic_vector (18 downto 0);
    signal u0_m0_wo0_mtree_mult1_11_add_3_a : std_logic_vector(21 downto 0);
    signal u0_m0_wo0_mtree_mult1_11_add_3_b : std_logic_vector(21 downto 0);
    signal u0_m0_wo0_mtree_mult1_11_add_3_o : std_logic_vector (21 downto 0);
    signal u0_m0_wo0_mtree_mult1_11_add_3_q : std_logic_vector (21 downto 0);
    signal u0_m0_wo0_mtree_mult1_11_sub_5_a : std_logic_vector(28 downto 0);
    signal u0_m0_wo0_mtree_mult1_11_sub_5_b : std_logic_vector(28 downto 0);
    signal u0_m0_wo0_mtree_mult1_11_sub_5_o : std_logic_vector (28 downto 0);
    signal u0_m0_wo0_mtree_mult1_11_sub_5_q : std_logic_vector (28 downto 0);
    signal u0_m0_wo0_mtree_mult1_5_add_1_a : std_logic_vector(19 downto 0);
    signal u0_m0_wo0_mtree_mult1_5_add_1_b : std_logic_vector(19 downto 0);
    signal u0_m0_wo0_mtree_mult1_5_add_1_o : std_logic_vector (19 downto 0);
    signal u0_m0_wo0_mtree_mult1_5_add_1_q : std_logic_vector (19 downto 0);
    signal u0_m0_wo0_mtree_mult1_5_add_3_a : std_logic_vector(19 downto 0);
    signal u0_m0_wo0_mtree_mult1_5_add_3_b : std_logic_vector(19 downto 0);
    signal u0_m0_wo0_mtree_mult1_5_add_3_o : std_logic_vector (19 downto 0);
    signal u0_m0_wo0_mtree_mult1_5_add_3_q : std_logic_vector (19 downto 0);
    signal u0_m0_wo0_mtree_mult1_5_sub_5_a : std_logic_vector(26 downto 0);
    signal u0_m0_wo0_mtree_mult1_5_sub_5_b : std_logic_vector(26 downto 0);
    signal u0_m0_wo0_mtree_mult1_5_sub_5_o : std_logic_vector (26 downto 0);
    signal u0_m0_wo0_mtree_mult1_5_sub_5_q : std_logic_vector (26 downto 0);
    signal u0_m0_wo0_mtree_mult1_3_add_1_a : std_logic_vector(19 downto 0);
    signal u0_m0_wo0_mtree_mult1_3_add_1_b : std_logic_vector(19 downto 0);
    signal u0_m0_wo0_mtree_mult1_3_add_1_o : std_logic_vector (19 downto 0);
    signal u0_m0_wo0_mtree_mult1_3_add_1_q : std_logic_vector (19 downto 0);
    signal u0_m0_wo0_mtree_mult1_3_sub_3_a : std_logic_vector(21 downto 0);
    signal u0_m0_wo0_mtree_mult1_3_sub_3_b : std_logic_vector(21 downto 0);
    signal u0_m0_wo0_mtree_mult1_3_sub_3_o : std_logic_vector (21 downto 0);
    signal u0_m0_wo0_mtree_mult1_3_sub_3_q : std_logic_vector (21 downto 0);
    signal u0_m0_wo0_mtree_mult1_3_add_5_a : std_logic_vector(27 downto 0);
    signal u0_m0_wo0_mtree_mult1_3_add_5_b : std_logic_vector(27 downto 0);
    signal u0_m0_wo0_mtree_mult1_3_add_5_o : std_logic_vector (27 downto 0);
    signal u0_m0_wo0_mtree_mult1_3_add_5_q : std_logic_vector (27 downto 0);
    signal u0_m0_wo0_mtree_mult1_33_shift0_q_int : std_logic_vector (18 downto 0);
    signal u0_m0_wo0_mtree_mult1_33_shift0_q : std_logic_vector (18 downto 0);
    signal u0_m0_wo0_mtree_mult1_33_shift2_q_int : std_logic_vector (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_33_shift2_q : std_logic_vector (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_31_shift0_q_int : std_logic_vector (18 downto 0);
    signal u0_m0_wo0_mtree_mult1_31_shift0_q : std_logic_vector (18 downto 0);
    signal u0_m0_wo0_mtree_mult1_31_shift2_q_int : std_logic_vector (18 downto 0);
    signal u0_m0_wo0_mtree_mult1_31_shift2_q : std_logic_vector (18 downto 0);
    signal u0_m0_wo0_mtree_mult1_25_shift0_q_int : std_logic_vector (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_25_shift0_q : std_logic_vector (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_25_shift2_q_int : std_logic_vector (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_25_shift2_q : std_logic_vector (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_18_shift0_q_int : std_logic_vector (29 downto 0);
    signal u0_m0_wo0_mtree_mult1_18_shift0_q : std_logic_vector (29 downto 0);
    signal u0_m0_wo0_mtree_mult1_11_shift0_q_int : std_logic_vector (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_11_shift0_q : std_logic_vector (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_11_shift2_q_int : std_logic_vector (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_11_shift2_q : std_logic_vector (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_5_shift0_q_int : std_logic_vector (18 downto 0);
    signal u0_m0_wo0_mtree_mult1_5_shift0_q : std_logic_vector (18 downto 0);
    signal u0_m0_wo0_mtree_mult1_5_shift2_q_int : std_logic_vector (18 downto 0);
    signal u0_m0_wo0_mtree_mult1_5_shift2_q : std_logic_vector (18 downto 0);
    signal u0_m0_wo0_mtree_mult1_3_shift0_q_int : std_logic_vector (18 downto 0);
    signal u0_m0_wo0_mtree_mult1_3_shift0_q : std_logic_vector (18 downto 0);
    signal u0_m0_wo0_mtree_mult1_3_shift2_q_int : std_logic_vector (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_3_shift2_q : std_logic_vector (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_33_shift4_q_int : std_logic_vector (26 downto 0);
    signal u0_m0_wo0_mtree_mult1_33_shift4_q : std_logic_vector (26 downto 0);
    signal u0_m0_wo0_mtree_mult1_33_shift6_q_int : std_logic_vector (28 downto 0);
    signal u0_m0_wo0_mtree_mult1_33_shift6_q : std_logic_vector (28 downto 0);
    signal u0_m0_wo0_mtree_mult1_31_shift4_q_int : std_logic_vector (25 downto 0);
    signal u0_m0_wo0_mtree_mult1_31_shift4_q : std_logic_vector (25 downto 0);
    signal u0_m0_wo0_mtree_mult1_31_shift6_q_int : std_logic_vector (28 downto 0);
    signal u0_m0_wo0_mtree_mult1_31_shift6_q : std_logic_vector (28 downto 0);
    signal u0_m0_wo0_mtree_mult1_25_shift4_q_int : std_logic_vector (27 downto 0);
    signal u0_m0_wo0_mtree_mult1_25_shift4_q : std_logic_vector (27 downto 0);
    signal u0_m0_wo0_mtree_mult1_25_shift6_q_int : std_logic_vector (29 downto 0);
    signal u0_m0_wo0_mtree_mult1_25_shift6_q : std_logic_vector (29 downto 0);
    signal u0_m0_wo0_mtree_mult1_18_shift2_q_int : std_logic_vector (31 downto 0);
    signal u0_m0_wo0_mtree_mult1_18_shift2_q : std_logic_vector (31 downto 0);
    signal u0_m0_wo0_mtree_mult1_11_shift4_q_int : std_logic_vector (27 downto 0);
    signal u0_m0_wo0_mtree_mult1_11_shift4_q : std_logic_vector (27 downto 0);
    signal u0_m0_wo0_mtree_mult1_11_shift6_q_int : std_logic_vector (29 downto 0);
    signal u0_m0_wo0_mtree_mult1_11_shift6_q : std_logic_vector (29 downto 0);
    signal u0_m0_wo0_mtree_mult1_5_shift4_q_int : std_logic_vector (25 downto 0);
    signal u0_m0_wo0_mtree_mult1_5_shift4_q : std_logic_vector (25 downto 0);
    signal u0_m0_wo0_mtree_mult1_5_shift6_q_int : std_logic_vector (28 downto 0);
    signal u0_m0_wo0_mtree_mult1_5_shift6_q : std_logic_vector (28 downto 0);
    signal u0_m0_wo0_mtree_mult1_3_shift4_q_int : std_logic_vector (26 downto 0);
    signal u0_m0_wo0_mtree_mult1_3_shift4_q : std_logic_vector (26 downto 0);
    signal u0_m0_wo0_mtree_mult1_3_shift6_q_int : std_logic_vector (28 downto 0);
    signal u0_m0_wo0_mtree_mult1_3_shift6_q : std_logic_vector (28 downto 0);
begin


	--VCC(CONSTANT,1)@0
    VCC_q <= "1";

	--xIn(PORTIN,2)@10

	--d_u0_m0_wo0_wi0_phasedelay0_q_14(DELAY,854)@10
    d_u0_m0_wo0_wi0_phasedelay0_q_14 : dspba_delay
    GENERIC MAP ( width => 16, depth => 4 )
    PORT MAP ( xin => xIn_0, xout => d_u0_m0_wo0_wi0_phasedelay0_q_14_q, clk => clk, aclr => areset );

	--u0_m0_wo0_cm0(CONSTANT,44)@0
    u0_m0_wo0_cm0_q <= "0100100001101";

	--u0_m0_wo0_mtree_mult1_36(MULT,81)@14
    u0_m0_wo0_mtree_mult1_36_a <= u0_m0_wo0_cm0_q;
    u0_m0_wo0_mtree_mult1_36_b <= d_u0_m0_wo0_wi0_phasedelay0_q_14_q;
    u0_m0_wo0_mtree_mult1_36_reset <= areset;

    u0_m0_wo0_mtree_mult1_36_component : lpm_mult
    GENERIC MAP (
    lpm_widtha => 13,
    lpm_widthb => 16,
    lpm_widthp => 29,
    lpm_widths => 1,
    lpm_type => "LPM_MULT",
    lpm_representation => "SIGNED",
    lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES,MAXIMIZE_SPEED=5",
    lpm_pipeline => 2
    )
    PORT MAP (
    dataa => u0_m0_wo0_mtree_mult1_36_a,
    datab => u0_m0_wo0_mtree_mult1_36_b,
    clken => VCC_q(0),
    aclr => u0_m0_wo0_mtree_mult1_36_reset,
    clock => clk,
    result => u0_m0_wo0_mtree_mult1_36_s1
    );
    u0_m0_wo0_mtree_mult1_36_q <= u0_m0_wo0_mtree_mult1_36_s1;

	--u0_m0_wo0_wi0_delayr1(DELAY,8)@10
    u0_m0_wo0_wi0_delayr1 : dspba_delay
    GENERIC MAP ( width => 16, depth => 1 )
    PORT MAP ( xin => xIn_0, xout => u0_m0_wo0_wi0_delayr1_q, ena => xIn_v(0), clk => clk, aclr => areset );

	--d_u0_m0_wo0_wi0_delayr1_q_13(DELAY,855)@10
    d_u0_m0_wo0_wi0_delayr1_q_13 : dspba_delay
    GENERIC MAP ( width => 16, depth => 3 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr1_q, xout => d_u0_m0_wo0_wi0_delayr1_q_13_q, clk => clk, aclr => areset );

	--u0_m0_wo0_cm1(CONSTANT,45)@0
    u0_m0_wo0_cm1_q <= "011011000110";

	--u0_m0_wo0_mtree_mult1_35(MULT,82)@13
    u0_m0_wo0_mtree_mult1_35_a <= u0_m0_wo0_cm1_q;
    u0_m0_wo0_mtree_mult1_35_b <= d_u0_m0_wo0_wi0_delayr1_q_13_q;
    u0_m0_wo0_mtree_mult1_35_reset <= areset;

    u0_m0_wo0_mtree_mult1_35_component : lpm_mult
    GENERIC MAP (
    lpm_widtha => 12,
    lpm_widthb => 16,
    lpm_widthp => 28,
    lpm_widths => 1,
    lpm_type => "LPM_MULT",
    lpm_representation => "SIGNED",
    lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES,MAXIMIZE_SPEED=5",
    lpm_pipeline => 2
    )
    PORT MAP (
    dataa => u0_m0_wo0_mtree_mult1_35_a,
    datab => u0_m0_wo0_mtree_mult1_35_b,
    clken => VCC_q(0),
    aclr => u0_m0_wo0_mtree_mult1_35_reset,
    clock => clk,
    result => u0_m0_wo0_mtree_mult1_35_s1
    );
    u0_m0_wo0_mtree_mult1_35_q <= u0_m0_wo0_mtree_mult1_35_s1;

	--u0_m0_wo0_mtree_mult1_33_shift2(BITSHIFT,185)@12
    u0_m0_wo0_mtree_mult1_33_shift2_q_int <= d_u0_m0_wo0_wi0_delayr3_q_12_q & "00000";
    u0_m0_wo0_mtree_mult1_33_shift2_q <= u0_m0_wo0_mtree_mult1_33_shift2_q_int(20 downto 0);

	--u0_m0_wo0_wi0_delayr2(DELAY,9)@10
    u0_m0_wo0_wi0_delayr2 : dspba_delay
    GENERIC MAP ( width => 16, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr1_q, xout => u0_m0_wo0_wi0_delayr2_q, ena => xIn_v(0), clk => clk, aclr => areset );

	--u0_m0_wo0_wi0_delayr3(DELAY,10)@10
    u0_m0_wo0_wi0_delayr3 : dspba_delay
    GENERIC MAP ( width => 16, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr2_q, xout => u0_m0_wo0_wi0_delayr3_q, ena => xIn_v(0), clk => clk, aclr => areset );

	--d_u0_m0_wo0_wi0_delayr3_q_12(DELAY,856)@10
    d_u0_m0_wo0_wi0_delayr3_q_12 : dspba_delay
    GENERIC MAP ( width => 16, depth => 2 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr3_q, xout => d_u0_m0_wo0_wi0_delayr3_q_12_q, clk => clk, aclr => areset );

	--u0_m0_wo0_mtree_mult1_33_sub_3(SUB,186)@12
    u0_m0_wo0_mtree_mult1_33_sub_3_a <= STD_LOGIC_VECTOR((21 downto 16 => d_u0_m0_wo0_wi0_delayr3_q_12_q(15)) & d_u0_m0_wo0_wi0_delayr3_q_12_q);
    u0_m0_wo0_mtree_mult1_33_sub_3_b <= STD_LOGIC_VECTOR((21 downto 21 => u0_m0_wo0_mtree_mult1_33_shift2_q(20)) & u0_m0_wo0_mtree_mult1_33_shift2_q);
    u0_m0_wo0_mtree_mult1_33_sub_3: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_33_sub_3_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_33_sub_3_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_33_sub_3_a) - SIGNED(u0_m0_wo0_mtree_mult1_33_sub_3_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_33_sub_3_q <= u0_m0_wo0_mtree_mult1_33_sub_3_o(21 downto 0);


	--u0_m0_wo0_mtree_mult1_33_shift4(BITSHIFT,187)@13
    u0_m0_wo0_mtree_mult1_33_shift4_q_int <= u0_m0_wo0_mtree_mult1_33_sub_3_q & "00000";
    u0_m0_wo0_mtree_mult1_33_shift4_q <= u0_m0_wo0_mtree_mult1_33_shift4_q_int(26 downto 0);

	--u0_m0_wo0_mtree_mult1_33_shift0(BITSHIFT,183)@12
    u0_m0_wo0_mtree_mult1_33_shift0_q_int <= d_u0_m0_wo0_wi0_delayr3_q_12_q & "000";
    u0_m0_wo0_mtree_mult1_33_shift0_q <= u0_m0_wo0_mtree_mult1_33_shift0_q_int(18 downto 0);

	--u0_m0_wo0_mtree_mult1_33_add_1(ADD,184)@12
    u0_m0_wo0_mtree_mult1_33_add_1_a <= STD_LOGIC_VECTOR((19 downto 16 => d_u0_m0_wo0_wi0_delayr3_q_12_q(15)) & d_u0_m0_wo0_wi0_delayr3_q_12_q);
    u0_m0_wo0_mtree_mult1_33_add_1_b <= STD_LOGIC_VECTOR((19 downto 19 => u0_m0_wo0_mtree_mult1_33_shift0_q(18)) & u0_m0_wo0_mtree_mult1_33_shift0_q);
    u0_m0_wo0_mtree_mult1_33_add_1: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_33_add_1_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_33_add_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_33_add_1_a) + SIGNED(u0_m0_wo0_mtree_mult1_33_add_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_33_add_1_q <= u0_m0_wo0_mtree_mult1_33_add_1_o(19 downto 0);


	--u0_m0_wo0_mtree_mult1_33_add_5(ADD,188)@13
    u0_m0_wo0_mtree_mult1_33_add_5_a <= STD_LOGIC_VECTOR((27 downto 20 => u0_m0_wo0_mtree_mult1_33_add_1_q(19)) & u0_m0_wo0_mtree_mult1_33_add_1_q);
    u0_m0_wo0_mtree_mult1_33_add_5_b <= STD_LOGIC_VECTOR((27 downto 27 => u0_m0_wo0_mtree_mult1_33_shift4_q(26)) & u0_m0_wo0_mtree_mult1_33_shift4_q);
    u0_m0_wo0_mtree_mult1_33_add_5: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_33_add_5_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_33_add_5_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_33_add_5_a) + SIGNED(u0_m0_wo0_mtree_mult1_33_add_5_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_33_add_5_q <= u0_m0_wo0_mtree_mult1_33_add_5_o(27 downto 0);


	--u0_m0_wo0_mtree_mult1_33_shift6(BITSHIFT,189)@14
    u0_m0_wo0_mtree_mult1_33_shift6_q_int <= u0_m0_wo0_mtree_mult1_33_add_5_q & "0";
    u0_m0_wo0_mtree_mult1_33_shift6_q <= u0_m0_wo0_mtree_mult1_33_shift6_q_int(28 downto 0);

	--u0_m0_wo0_wi0_delayr4(DELAY,11)@10
    u0_m0_wo0_wi0_delayr4 : dspba_delay
    GENERIC MAP ( width => 16, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr3_q, xout => u0_m0_wo0_wi0_delayr4_q, ena => xIn_v(0), clk => clk, aclr => areset );

	--d_u0_m0_wo0_wi0_delayr4_q_12(DELAY,857)@10
    d_u0_m0_wo0_wi0_delayr4_q_12 : dspba_delay
    GENERIC MAP ( width => 16, depth => 2 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr4_q, xout => d_u0_m0_wo0_wi0_delayr4_q_12_q, clk => clk, aclr => areset );

	--u0_m0_wo0_cm4(CONSTANT,48)@0
    u0_m0_wo0_cm4_q <= "1010001011101";

	--u0_m0_wo0_mtree_mult1_32(MULT,85)@12
    u0_m0_wo0_mtree_mult1_32_a <= u0_m0_wo0_cm4_q;
    u0_m0_wo0_mtree_mult1_32_b <= d_u0_m0_wo0_wi0_delayr4_q_12_q;
    u0_m0_wo0_mtree_mult1_32_reset <= areset;

    u0_m0_wo0_mtree_mult1_32_component : lpm_mult
    GENERIC MAP (
    lpm_widtha => 13,
    lpm_widthb => 16,
    lpm_widthp => 29,
    lpm_widths => 1,
    lpm_type => "LPM_MULT",
    lpm_representation => "SIGNED",
    lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES,MAXIMIZE_SPEED=5",
    lpm_pipeline => 2
    )
    PORT MAP (
    dataa => u0_m0_wo0_mtree_mult1_32_a,
    datab => u0_m0_wo0_mtree_mult1_32_b,
    clken => VCC_q(0),
    aclr => u0_m0_wo0_mtree_mult1_32_reset,
    clock => clk,
    result => u0_m0_wo0_mtree_mult1_32_s1
    );
    u0_m0_wo0_mtree_mult1_32_q <= u0_m0_wo0_mtree_mult1_32_s1;

	--u0_m0_wo0_mtree_add0_16(ADD,134)@14
    u0_m0_wo0_mtree_add0_16_a <= STD_LOGIC_VECTOR((29 downto 29 => u0_m0_wo0_mtree_mult1_32_q(28)) & u0_m0_wo0_mtree_mult1_32_q);
    u0_m0_wo0_mtree_add0_16_b <= STD_LOGIC_VECTOR((29 downto 29 => u0_m0_wo0_mtree_mult1_33_shift6_q(28)) & u0_m0_wo0_mtree_mult1_33_shift6_q);
    u0_m0_wo0_mtree_add0_16: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_16_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_16_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_16_a) + SIGNED(u0_m0_wo0_mtree_add0_16_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_16_q <= u0_m0_wo0_mtree_add0_16_o(29 downto 0);


	--u0_m0_wo0_mtree_add1_8(ADD,144)@15
    u0_m0_wo0_mtree_add1_8_a <= STD_LOGIC_VECTOR((30 downto 30 => u0_m0_wo0_mtree_add0_16_q(29)) & u0_m0_wo0_mtree_add0_16_q);
    u0_m0_wo0_mtree_add1_8_b <= STD_LOGIC_VECTOR((30 downto 28 => u0_m0_wo0_mtree_mult1_35_q(27)) & u0_m0_wo0_mtree_mult1_35_q);
    u0_m0_wo0_mtree_add1_8: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add1_8_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add1_8_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add1_8_a) + SIGNED(u0_m0_wo0_mtree_add1_8_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add1_8_q <= u0_m0_wo0_mtree_add1_8_o(30 downto 0);


	--u0_m0_wo0_mtree_add2_4(ADD,149)@16
    u0_m0_wo0_mtree_add2_4_a <= STD_LOGIC_VECTOR((31 downto 31 => u0_m0_wo0_mtree_add1_8_q(30)) & u0_m0_wo0_mtree_add1_8_q);
    u0_m0_wo0_mtree_add2_4_b <= STD_LOGIC_VECTOR((31 downto 29 => u0_m0_wo0_mtree_mult1_36_q(28)) & u0_m0_wo0_mtree_mult1_36_q);
    u0_m0_wo0_mtree_add2_4: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add2_4_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add2_4_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add2_4_a) + SIGNED(u0_m0_wo0_mtree_add2_4_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add2_4_q <= u0_m0_wo0_mtree_add2_4_o(31 downto 0);


	--u0_m0_wo0_mtree_mult1_31_shift2(BITSHIFT,202)@11
    u0_m0_wo0_mtree_mult1_31_shift2_q_int <= d_u0_m0_wo0_wi0_delayr5_q_11_q & "000";
    u0_m0_wo0_mtree_mult1_31_shift2_q <= u0_m0_wo0_mtree_mult1_31_shift2_q_int(18 downto 0);

	--u0_m0_wo0_wi0_delayr5(DELAY,12)@10
    u0_m0_wo0_wi0_delayr5 : dspba_delay
    GENERIC MAP ( width => 16, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr4_q, xout => u0_m0_wo0_wi0_delayr5_q, ena => xIn_v(0), clk => clk, aclr => areset );

	--d_u0_m0_wo0_wi0_delayr5_q_11(DELAY,858)@10
    d_u0_m0_wo0_wi0_delayr5_q_11 : dspba_delay
    GENERIC MAP ( width => 16, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr5_q, xout => d_u0_m0_wo0_wi0_delayr5_q_11_q, clk => clk, aclr => areset );

	--u0_m0_wo0_mtree_mult1_31_add_3(ADD,203)@11
    u0_m0_wo0_mtree_mult1_31_add_3_a <= STD_LOGIC_VECTOR((19 downto 16 => d_u0_m0_wo0_wi0_delayr5_q_11_q(15)) & d_u0_m0_wo0_wi0_delayr5_q_11_q);
    u0_m0_wo0_mtree_mult1_31_add_3_b <= STD_LOGIC_VECTOR((19 downto 19 => u0_m0_wo0_mtree_mult1_31_shift2_q(18)) & u0_m0_wo0_mtree_mult1_31_shift2_q);
    u0_m0_wo0_mtree_mult1_31_add_3: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_31_add_3_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_31_add_3_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_31_add_3_a) + SIGNED(u0_m0_wo0_mtree_mult1_31_add_3_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_31_add_3_q <= u0_m0_wo0_mtree_mult1_31_add_3_o(19 downto 0);


	--u0_m0_wo0_mtree_mult1_31_shift4(BITSHIFT,204)@12
    u0_m0_wo0_mtree_mult1_31_shift4_q_int <= u0_m0_wo0_mtree_mult1_31_add_3_q & "000000";
    u0_m0_wo0_mtree_mult1_31_shift4_q <= u0_m0_wo0_mtree_mult1_31_shift4_q_int(25 downto 0);

	--u0_m0_wo0_mtree_mult1_31_shift0(BITSHIFT,200)@11
    u0_m0_wo0_mtree_mult1_31_shift0_q_int <= d_u0_m0_wo0_wi0_delayr5_q_11_q & "000";
    u0_m0_wo0_mtree_mult1_31_shift0_q <= u0_m0_wo0_mtree_mult1_31_shift0_q_int(18 downto 0);

	--u0_m0_wo0_mtree_mult1_31_add_1(ADD,201)@11
    u0_m0_wo0_mtree_mult1_31_add_1_a <= STD_LOGIC_VECTOR((19 downto 16 => d_u0_m0_wo0_wi0_delayr5_q_11_q(15)) & d_u0_m0_wo0_wi0_delayr5_q_11_q);
    u0_m0_wo0_mtree_mult1_31_add_1_b <= STD_LOGIC_VECTOR((19 downto 19 => u0_m0_wo0_mtree_mult1_31_shift0_q(18)) & u0_m0_wo0_mtree_mult1_31_shift0_q);
    u0_m0_wo0_mtree_mult1_31_add_1: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_31_add_1_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_31_add_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_31_add_1_a) + SIGNED(u0_m0_wo0_mtree_mult1_31_add_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_31_add_1_q <= u0_m0_wo0_mtree_mult1_31_add_1_o(19 downto 0);


	--u0_m0_wo0_mtree_mult1_31_sub_5(SUB,205)@12
    u0_m0_wo0_mtree_mult1_31_sub_5_a <= STD_LOGIC_VECTOR((26 downto 20 => u0_m0_wo0_mtree_mult1_31_add_1_q(19)) & u0_m0_wo0_mtree_mult1_31_add_1_q);
    u0_m0_wo0_mtree_mult1_31_sub_5_b <= STD_LOGIC_VECTOR((26 downto 26 => u0_m0_wo0_mtree_mult1_31_shift4_q(25)) & u0_m0_wo0_mtree_mult1_31_shift4_q);
    u0_m0_wo0_mtree_mult1_31_sub_5: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_31_sub_5_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_31_sub_5_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_31_sub_5_a) - SIGNED(u0_m0_wo0_mtree_mult1_31_sub_5_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_31_sub_5_q <= u0_m0_wo0_mtree_mult1_31_sub_5_o(26 downto 0);


	--u0_m0_wo0_mtree_mult1_31_shift6(BITSHIFT,206)@13
    u0_m0_wo0_mtree_mult1_31_shift6_q_int <= u0_m0_wo0_mtree_mult1_31_sub_5_q & "00";
    u0_m0_wo0_mtree_mult1_31_shift6_q <= u0_m0_wo0_mtree_mult1_31_shift6_q_int(28 downto 0);

	--u0_m0_wo0_wi0_delayr6(DELAY,13)@10
    u0_m0_wo0_wi0_delayr6 : dspba_delay
    GENERIC MAP ( width => 16, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr5_q, xout => u0_m0_wo0_wi0_delayr6_q, ena => xIn_v(0), clk => clk, aclr => areset );

	--u0_m0_wo0_wi0_delayr7(DELAY,14)@10
    u0_m0_wo0_wi0_delayr7 : dspba_delay
    GENERIC MAP ( width => 16, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr6_q, xout => u0_m0_wo0_wi0_delayr7_q, ena => xIn_v(0), clk => clk, aclr => areset );

	--u0_m0_wo0_cm7(CONSTANT,51)@0
    u0_m0_wo0_cm7_q <= "0101001111001";

	--u0_m0_wo0_mtree_mult1_29(MULT,88)@10
    u0_m0_wo0_mtree_mult1_29_a <= u0_m0_wo0_cm7_q;
    u0_m0_wo0_mtree_mult1_29_b <= u0_m0_wo0_wi0_delayr7_q;
    u0_m0_wo0_mtree_mult1_29_reset <= areset;

    u0_m0_wo0_mtree_mult1_29_component : lpm_mult
    GENERIC MAP (
    lpm_widtha => 13,
    lpm_widthb => 16,
    lpm_widthp => 29,
    lpm_widths => 1,
    lpm_type => "LPM_MULT",
    lpm_representation => "SIGNED",
    lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES,MAXIMIZE_SPEED=5",
    lpm_pipeline => 2
    )
    PORT MAP (
    dataa => u0_m0_wo0_mtree_mult1_29_a,
    datab => u0_m0_wo0_mtree_mult1_29_b,
    clken => VCC_q(0),
    aclr => u0_m0_wo0_mtree_mult1_29_reset,
    clock => clk,
    result => u0_m0_wo0_mtree_mult1_29_s1
    );
    u0_m0_wo0_mtree_mult1_29_q <= u0_m0_wo0_mtree_mult1_29_s1;

	--u0_m0_wo0_wi0_delayr8(DELAY,15)@10
    u0_m0_wo0_wi0_delayr8 : dspba_delay
    GENERIC MAP ( width => 16, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr7_q, xout => u0_m0_wo0_wi0_delayr8_q, ena => xIn_v(0), clk => clk, aclr => areset );

	--u0_m0_wo0_cm8(CONSTANT,52)@0
    u0_m0_wo0_cm8_q <= "01000001001011";

	--u0_m0_wo0_mtree_mult1_28(MULT,89)@10
    u0_m0_wo0_mtree_mult1_28_a <= u0_m0_wo0_cm8_q;
    u0_m0_wo0_mtree_mult1_28_b <= u0_m0_wo0_wi0_delayr8_q;
    u0_m0_wo0_mtree_mult1_28_reset <= areset;

    u0_m0_wo0_mtree_mult1_28_component : lpm_mult
    GENERIC MAP (
    lpm_widtha => 14,
    lpm_widthb => 16,
    lpm_widthp => 30,
    lpm_widths => 1,
    lpm_type => "LPM_MULT",
    lpm_representation => "SIGNED",
    lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES,MAXIMIZE_SPEED=5",
    lpm_pipeline => 2
    )
    PORT MAP (
    dataa => u0_m0_wo0_mtree_mult1_28_a,
    datab => u0_m0_wo0_mtree_mult1_28_b,
    clken => VCC_q(0),
    aclr => u0_m0_wo0_mtree_mult1_28_reset,
    clock => clk,
    result => u0_m0_wo0_mtree_mult1_28_s1
    );
    u0_m0_wo0_mtree_mult1_28_q <= u0_m0_wo0_mtree_mult1_28_s1;

	--u0_m0_wo0_mtree_add0_14(ADD,132)@12
    u0_m0_wo0_mtree_add0_14_a <= STD_LOGIC_VECTOR((30 downto 30 => u0_m0_wo0_mtree_mult1_28_q(29)) & u0_m0_wo0_mtree_mult1_28_q);
    u0_m0_wo0_mtree_add0_14_b <= STD_LOGIC_VECTOR((30 downto 29 => u0_m0_wo0_mtree_mult1_29_q(28)) & u0_m0_wo0_mtree_mult1_29_q);
    u0_m0_wo0_mtree_add0_14: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_14_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_14_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_14_a) + SIGNED(u0_m0_wo0_mtree_add0_14_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_14_q <= u0_m0_wo0_mtree_add0_14_o(30 downto 0);


	--u0_m0_wo0_mtree_add1_7(ADD,143)@13
    u0_m0_wo0_mtree_add1_7_a <= STD_LOGIC_VECTOR((31 downto 31 => u0_m0_wo0_mtree_add0_14_q(30)) & u0_m0_wo0_mtree_add0_14_q);
    u0_m0_wo0_mtree_add1_7_b <= STD_LOGIC_VECTOR((31 downto 29 => u0_m0_wo0_mtree_mult1_31_shift6_q(28)) & u0_m0_wo0_mtree_mult1_31_shift6_q);
    u0_m0_wo0_mtree_add1_7: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add1_7_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add1_7_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add1_7_a) + SIGNED(u0_m0_wo0_mtree_add1_7_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add1_7_q <= u0_m0_wo0_mtree_add1_7_o(31 downto 0);


	--u0_m0_wo0_wi0_delayr9(DELAY,16)@10
    u0_m0_wo0_wi0_delayr9 : dspba_delay
    GENERIC MAP ( width => 16, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr8_q, xout => u0_m0_wo0_wi0_delayr9_q, ena => xIn_v(0), clk => clk, aclr => areset );

	--d_u0_m0_wo0_wi0_delayr9_q_11(DELAY,859)@10
    d_u0_m0_wo0_wi0_delayr9_q_11 : dspba_delay
    GENERIC MAP ( width => 16, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr9_q, xout => d_u0_m0_wo0_wi0_delayr9_q_11_q, clk => clk, aclr => areset );

	--u0_m0_wo0_cm9(CONSTANT,53)@0
    u0_m0_wo0_cm9_q <= "0110011001101";

	--u0_m0_wo0_mtree_mult1_27(MULT,90)@11
    u0_m0_wo0_mtree_mult1_27_a <= u0_m0_wo0_cm9_q;
    u0_m0_wo0_mtree_mult1_27_b <= d_u0_m0_wo0_wi0_delayr9_q_11_q;
    u0_m0_wo0_mtree_mult1_27_reset <= areset;

    u0_m0_wo0_mtree_mult1_27_component : lpm_mult
    GENERIC MAP (
    lpm_widtha => 13,
    lpm_widthb => 16,
    lpm_widthp => 29,
    lpm_widths => 1,
    lpm_type => "LPM_MULT",
    lpm_representation => "SIGNED",
    lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES,MAXIMIZE_SPEED=5",
    lpm_pipeline => 2
    )
    PORT MAP (
    dataa => u0_m0_wo0_mtree_mult1_27_a,
    datab => u0_m0_wo0_mtree_mult1_27_b,
    clken => VCC_q(0),
    aclr => u0_m0_wo0_mtree_mult1_27_reset,
    clock => clk,
    result => u0_m0_wo0_mtree_mult1_27_s1
    );
    u0_m0_wo0_mtree_mult1_27_q <= u0_m0_wo0_mtree_mult1_27_s1;

	--u0_m0_wo0_mtree_mult1_25_shift2(BITSHIFT,237)@10
    u0_m0_wo0_mtree_mult1_25_shift2_q_int <= u0_m0_wo0_wi0_delayr11_q & "00000";
    u0_m0_wo0_mtree_mult1_25_shift2_q <= u0_m0_wo0_mtree_mult1_25_shift2_q_int(20 downto 0);

	--u0_m0_wo0_wi0_delayr10(DELAY,17)@10
    u0_m0_wo0_wi0_delayr10 : dspba_delay
    GENERIC MAP ( width => 16, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr9_q, xout => u0_m0_wo0_wi0_delayr10_q, ena => xIn_v(0), clk => clk, aclr => areset );

	--u0_m0_wo0_wi0_delayr11(DELAY,18)@10
    u0_m0_wo0_wi0_delayr11 : dspba_delay
    GENERIC MAP ( width => 16, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr10_q, xout => u0_m0_wo0_wi0_delayr11_q, ena => xIn_v(0), clk => clk, aclr => areset );

	--u0_m0_wo0_mtree_mult1_25_add_3(ADD,238)@10
    u0_m0_wo0_mtree_mult1_25_add_3_a <= STD_LOGIC_VECTOR((21 downto 16 => u0_m0_wo0_wi0_delayr11_q(15)) & u0_m0_wo0_wi0_delayr11_q);
    u0_m0_wo0_mtree_mult1_25_add_3_b <= STD_LOGIC_VECTOR((21 downto 21 => u0_m0_wo0_mtree_mult1_25_shift2_q(20)) & u0_m0_wo0_mtree_mult1_25_shift2_q);
    u0_m0_wo0_mtree_mult1_25_add_3: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_25_add_3_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_25_add_3_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_25_add_3_a) + SIGNED(u0_m0_wo0_mtree_mult1_25_add_3_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_25_add_3_q <= u0_m0_wo0_mtree_mult1_25_add_3_o(21 downto 0);


	--u0_m0_wo0_mtree_mult1_25_shift4(BITSHIFT,239)@11
    u0_m0_wo0_mtree_mult1_25_shift4_q_int <= u0_m0_wo0_mtree_mult1_25_add_3_q & "000000";
    u0_m0_wo0_mtree_mult1_25_shift4_q <= u0_m0_wo0_mtree_mult1_25_shift4_q_int(27 downto 0);

	--u0_m0_wo0_mtree_mult1_25_shift0(BITSHIFT,235)@10
    u0_m0_wo0_mtree_mult1_25_shift0_q_int <= u0_m0_wo0_wi0_delayr11_q & "00";
    u0_m0_wo0_mtree_mult1_25_shift0_q <= u0_m0_wo0_mtree_mult1_25_shift0_q_int(17 downto 0);

	--u0_m0_wo0_mtree_mult1_25_add_1(ADD,236)@10
    u0_m0_wo0_mtree_mult1_25_add_1_a <= STD_LOGIC_VECTOR((18 downto 16 => u0_m0_wo0_wi0_delayr11_q(15)) & u0_m0_wo0_wi0_delayr11_q);
    u0_m0_wo0_mtree_mult1_25_add_1_b <= STD_LOGIC_VECTOR((18 downto 18 => u0_m0_wo0_mtree_mult1_25_shift0_q(17)) & u0_m0_wo0_mtree_mult1_25_shift0_q);
    u0_m0_wo0_mtree_mult1_25_add_1: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_25_add_1_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_25_add_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_25_add_1_a) + SIGNED(u0_m0_wo0_mtree_mult1_25_add_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_25_add_1_q <= u0_m0_wo0_mtree_mult1_25_add_1_o(18 downto 0);


	--u0_m0_wo0_mtree_mult1_25_sub_5(SUB,240)@11
    u0_m0_wo0_mtree_mult1_25_sub_5_a <= STD_LOGIC_VECTOR((28 downto 19 => u0_m0_wo0_mtree_mult1_25_add_1_q(18)) & u0_m0_wo0_mtree_mult1_25_add_1_q);
    u0_m0_wo0_mtree_mult1_25_sub_5_b <= STD_LOGIC_VECTOR((28 downto 28 => u0_m0_wo0_mtree_mult1_25_shift4_q(27)) & u0_m0_wo0_mtree_mult1_25_shift4_q);
    u0_m0_wo0_mtree_mult1_25_sub_5: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_25_sub_5_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_25_sub_5_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_25_sub_5_a) - SIGNED(u0_m0_wo0_mtree_mult1_25_sub_5_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_25_sub_5_q <= u0_m0_wo0_mtree_mult1_25_sub_5_o(28 downto 0);


	--u0_m0_wo0_mtree_mult1_25_shift6(BITSHIFT,241)@12
    u0_m0_wo0_mtree_mult1_25_shift6_q_int <= u0_m0_wo0_mtree_mult1_25_sub_5_q & "0";
    u0_m0_wo0_mtree_mult1_25_shift6_q <= u0_m0_wo0_mtree_mult1_25_shift6_q_int(29 downto 0);

	--u0_m0_wo0_wi0_delayr12(DELAY,19)@10
    u0_m0_wo0_wi0_delayr12 : dspba_delay
    GENERIC MAP ( width => 16, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr11_q, xout => u0_m0_wo0_wi0_delayr12_q, ena => xIn_v(0), clk => clk, aclr => areset );

	--u0_m0_wo0_cm12(CONSTANT,56)@0
    u0_m0_wo0_cm12_q <= "10010011010111";

	--u0_m0_wo0_mtree_mult1_24(MULT,93)@10
    u0_m0_wo0_mtree_mult1_24_a <= u0_m0_wo0_cm12_q;
    u0_m0_wo0_mtree_mult1_24_b <= u0_m0_wo0_wi0_delayr12_q;
    u0_m0_wo0_mtree_mult1_24_reset <= areset;

    u0_m0_wo0_mtree_mult1_24_component : lpm_mult
    GENERIC MAP (
    lpm_widtha => 14,
    lpm_widthb => 16,
    lpm_widthp => 30,
    lpm_widths => 1,
    lpm_type => "LPM_MULT",
    lpm_representation => "SIGNED",
    lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES,MAXIMIZE_SPEED=5",
    lpm_pipeline => 2
    )
    PORT MAP (
    dataa => u0_m0_wo0_mtree_mult1_24_a,
    datab => u0_m0_wo0_mtree_mult1_24_b,
    clken => VCC_q(0),
    aclr => u0_m0_wo0_mtree_mult1_24_reset,
    clock => clk,
    result => u0_m0_wo0_mtree_mult1_24_s1
    );
    u0_m0_wo0_mtree_mult1_24_q <= u0_m0_wo0_mtree_mult1_24_s1;

	--u0_m0_wo0_mtree_add0_12(ADD,130)@12
    u0_m0_wo0_mtree_add0_12_a <= STD_LOGIC_VECTOR((30 downto 30 => u0_m0_wo0_mtree_mult1_24_q(29)) & u0_m0_wo0_mtree_mult1_24_q);
    u0_m0_wo0_mtree_add0_12_b <= STD_LOGIC_VECTOR((30 downto 30 => u0_m0_wo0_mtree_mult1_25_shift6_q(29)) & u0_m0_wo0_mtree_mult1_25_shift6_q);
    u0_m0_wo0_mtree_add0_12: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_12_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_12_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_12_a) + SIGNED(u0_m0_wo0_mtree_add0_12_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_12_q <= u0_m0_wo0_mtree_add0_12_o(30 downto 0);


	--u0_m0_wo0_mtree_add1_6(ADD,142)@13
    u0_m0_wo0_mtree_add1_6_a <= STD_LOGIC_VECTOR((31 downto 31 => u0_m0_wo0_mtree_add0_12_q(30)) & u0_m0_wo0_mtree_add0_12_q);
    u0_m0_wo0_mtree_add1_6_b <= STD_LOGIC_VECTOR((31 downto 29 => u0_m0_wo0_mtree_mult1_27_q(28)) & u0_m0_wo0_mtree_mult1_27_q);
    u0_m0_wo0_mtree_add1_6: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add1_6_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add1_6_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add1_6_a) + SIGNED(u0_m0_wo0_mtree_add1_6_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add1_6_q <= u0_m0_wo0_mtree_add1_6_o(31 downto 0);


	--u0_m0_wo0_mtree_add2_3(ADD,148)@14
    u0_m0_wo0_mtree_add2_3_a <= STD_LOGIC_VECTOR((32 downto 32 => u0_m0_wo0_mtree_add1_6_q(31)) & u0_m0_wo0_mtree_add1_6_q);
    u0_m0_wo0_mtree_add2_3_b <= STD_LOGIC_VECTOR((32 downto 32 => u0_m0_wo0_mtree_add1_7_q(31)) & u0_m0_wo0_mtree_add1_7_q);
    u0_m0_wo0_mtree_add2_3: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add2_3_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add2_3_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add2_3_a) + SIGNED(u0_m0_wo0_mtree_add2_3_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add2_3_q <= u0_m0_wo0_mtree_add2_3_o(32 downto 0);


	--u0_m0_wo0_wi0_delayr13(DELAY,20)@10
    u0_m0_wo0_wi0_delayr13 : dspba_delay
    GENERIC MAP ( width => 16, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr12_q, xout => u0_m0_wo0_wi0_delayr13_q, ena => xIn_v(0), clk => clk, aclr => areset );

	--d_u0_m0_wo0_wi0_delayr13_q_11(DELAY,860)@10
    d_u0_m0_wo0_wi0_delayr13_q_11 : dspba_delay
    GENERIC MAP ( width => 16, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr13_q, xout => d_u0_m0_wo0_wi0_delayr13_q_11_q, clk => clk, aclr => areset );

	--u0_m0_wo0_cm13(CONSTANT,57)@0
    u0_m0_wo0_cm13_q <= "10100011110101";

	--u0_m0_wo0_mtree_mult1_23(MULT,94)@11
    u0_m0_wo0_mtree_mult1_23_a <= u0_m0_wo0_cm13_q;
    u0_m0_wo0_mtree_mult1_23_b <= d_u0_m0_wo0_wi0_delayr13_q_11_q;
    u0_m0_wo0_mtree_mult1_23_reset <= areset;

    u0_m0_wo0_mtree_mult1_23_component : lpm_mult
    GENERIC MAP (
    lpm_widtha => 14,
    lpm_widthb => 16,
    lpm_widthp => 30,
    lpm_widths => 1,
    lpm_type => "LPM_MULT",
    lpm_representation => "SIGNED",
    lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES,MAXIMIZE_SPEED=5",
    lpm_pipeline => 2
    )
    PORT MAP (
    dataa => u0_m0_wo0_mtree_mult1_23_a,
    datab => u0_m0_wo0_mtree_mult1_23_b,
    clken => VCC_q(0),
    aclr => u0_m0_wo0_mtree_mult1_23_reset,
    clock => clk,
    result => u0_m0_wo0_mtree_mult1_23_s1
    );
    u0_m0_wo0_mtree_mult1_23_q <= u0_m0_wo0_mtree_mult1_23_s1;

	--u0_m0_wo0_wi0_delayr14(DELAY,21)@10
    u0_m0_wo0_wi0_delayr14 : dspba_delay
    GENERIC MAP ( width => 16, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr13_q, xout => u0_m0_wo0_wi0_delayr14_q, ena => xIn_v(0), clk => clk, aclr => areset );

	--u0_m0_wo0_wi0_delayr15(DELAY,22)@10
    u0_m0_wo0_wi0_delayr15 : dspba_delay
    GENERIC MAP ( width => 16, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr14_q, xout => u0_m0_wo0_wi0_delayr15_q, ena => xIn_v(0), clk => clk, aclr => areset );

	--u0_m0_wo0_cm15(CONSTANT,59)@0
    u0_m0_wo0_cm15_q <= "010011001101001";

	--u0_m0_wo0_mtree_mult1_21(MULT,96)@10
    u0_m0_wo0_mtree_mult1_21_a <= u0_m0_wo0_cm15_q;
    u0_m0_wo0_mtree_mult1_21_b <= u0_m0_wo0_wi0_delayr15_q;
    u0_m0_wo0_mtree_mult1_21_reset <= areset;

    u0_m0_wo0_mtree_mult1_21_component : lpm_mult
    GENERIC MAP (
    lpm_widtha => 15,
    lpm_widthb => 16,
    lpm_widthp => 31,
    lpm_widths => 1,
    lpm_type => "LPM_MULT",
    lpm_representation => "SIGNED",
    lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES,MAXIMIZE_SPEED=5",
    lpm_pipeline => 2
    )
    PORT MAP (
    dataa => u0_m0_wo0_mtree_mult1_21_a,
    datab => u0_m0_wo0_mtree_mult1_21_b,
    clken => VCC_q(0),
    aclr => u0_m0_wo0_mtree_mult1_21_reset,
    clock => clk,
    result => u0_m0_wo0_mtree_mult1_21_s1
    );
    u0_m0_wo0_mtree_mult1_21_q <= u0_m0_wo0_mtree_mult1_21_s1;

	--u0_m0_wo0_wi0_delayr16(DELAY,23)@10
    u0_m0_wo0_wi0_delayr16 : dspba_delay
    GENERIC MAP ( width => 16, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr15_q, xout => u0_m0_wo0_wi0_delayr16_q, ena => xIn_v(0), clk => clk, aclr => areset );

	--u0_m0_wo0_cm16(CONSTANT,60)@0
    u0_m0_wo0_cm16_q <= "0101000101111100";

	--u0_m0_wo0_mtree_mult1_20(MULT,97)@10
    u0_m0_wo0_mtree_mult1_20_a <= u0_m0_wo0_cm16_q;
    u0_m0_wo0_mtree_mult1_20_b <= u0_m0_wo0_wi0_delayr16_q;
    u0_m0_wo0_mtree_mult1_20_reset <= areset;

    u0_m0_wo0_mtree_mult1_20_component : lpm_mult
    GENERIC MAP (
    lpm_widtha => 16,
    lpm_widthb => 16,
    lpm_widthp => 32,
    lpm_widths => 1,
    lpm_type => "LPM_MULT",
    lpm_representation => "SIGNED",
    lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES,MAXIMIZE_SPEED=5",
    lpm_pipeline => 2
    )
    PORT MAP (
    dataa => u0_m0_wo0_mtree_mult1_20_a,
    datab => u0_m0_wo0_mtree_mult1_20_b,
    clken => VCC_q(0),
    aclr => u0_m0_wo0_mtree_mult1_20_reset,
    clock => clk,
    result => u0_m0_wo0_mtree_mult1_20_s1
    );
    u0_m0_wo0_mtree_mult1_20_q <= u0_m0_wo0_mtree_mult1_20_s1;

	--u0_m0_wo0_mtree_add0_10(ADD,128)@12
    u0_m0_wo0_mtree_add0_10_a <= STD_LOGIC_VECTOR((32 downto 32 => u0_m0_wo0_mtree_mult1_20_q(31)) & u0_m0_wo0_mtree_mult1_20_q);
    u0_m0_wo0_mtree_add0_10_b <= STD_LOGIC_VECTOR((32 downto 31 => u0_m0_wo0_mtree_mult1_21_q(30)) & u0_m0_wo0_mtree_mult1_21_q);
    u0_m0_wo0_mtree_add0_10: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_10_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_10_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_10_a) + SIGNED(u0_m0_wo0_mtree_add0_10_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_10_q <= u0_m0_wo0_mtree_add0_10_o(32 downto 0);


	--u0_m0_wo0_mtree_add1_5(ADD,141)@13
    u0_m0_wo0_mtree_add1_5_a <= STD_LOGIC_VECTOR((33 downto 33 => u0_m0_wo0_mtree_add0_10_q(32)) & u0_m0_wo0_mtree_add0_10_q);
    u0_m0_wo0_mtree_add1_5_b <= STD_LOGIC_VECTOR((33 downto 30 => u0_m0_wo0_mtree_mult1_23_q(29)) & u0_m0_wo0_mtree_mult1_23_q);
    u0_m0_wo0_mtree_add1_5: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add1_5_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add1_5_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add1_5_a) + SIGNED(u0_m0_wo0_mtree_add1_5_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add1_5_q <= u0_m0_wo0_mtree_add1_5_o(33 downto 0);


	--u0_m0_wo0_wi0_delayr17(DELAY,24)@10
    u0_m0_wo0_wi0_delayr17 : dspba_delay
    GENERIC MAP ( width => 16, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr16_q, xout => u0_m0_wo0_wi0_delayr17_q, ena => xIn_v(0), clk => clk, aclr => areset );

	--u0_m0_wo0_cm17(CONSTANT,61)@0
    u0_m0_wo0_cm17_q <= "0111001100111100";

	--u0_m0_wo0_mtree_mult1_19(MULT,98)@10
    u0_m0_wo0_mtree_mult1_19_a <= u0_m0_wo0_cm17_q;
    u0_m0_wo0_mtree_mult1_19_b <= u0_m0_wo0_wi0_delayr17_q;
    u0_m0_wo0_mtree_mult1_19_reset <= areset;

    u0_m0_wo0_mtree_mult1_19_component : lpm_mult
    GENERIC MAP (
    lpm_widtha => 16,
    lpm_widthb => 16,
    lpm_widthp => 32,
    lpm_widths => 1,
    lpm_type => "LPM_MULT",
    lpm_representation => "SIGNED",
    lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES,MAXIMIZE_SPEED=5",
    lpm_pipeline => 2
    )
    PORT MAP (
    dataa => u0_m0_wo0_mtree_mult1_19_a,
    datab => u0_m0_wo0_mtree_mult1_19_b,
    clken => VCC_q(0),
    aclr => u0_m0_wo0_mtree_mult1_19_reset,
    clock => clk,
    result => u0_m0_wo0_mtree_mult1_19_s1
    );
    u0_m0_wo0_mtree_mult1_19_q <= u0_m0_wo0_mtree_mult1_19_s1;

	--u0_m0_wo0_wi0_delayr18(DELAY,25)@10
    u0_m0_wo0_wi0_delayr18 : dspba_delay
    GENERIC MAP ( width => 16, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr17_q, xout => u0_m0_wo0_wi0_delayr18_q, ena => xIn_v(0), clk => clk, aclr => areset );

	--d_u0_m0_wo0_wi0_delayr18_q_11(DELAY,861)@10
    d_u0_m0_wo0_wi0_delayr18_q_11 : dspba_delay
    GENERIC MAP ( width => 16, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr18_q, xout => d_u0_m0_wo0_wi0_delayr18_q_11_q, clk => clk, aclr => areset );

	--u0_m0_wo0_mtree_mult1_18_shift0(BITSHIFT,294)@11
    u0_m0_wo0_mtree_mult1_18_shift0_q_int <= d_u0_m0_wo0_wi0_delayr18_q_11_q & "00000000000000";
    u0_m0_wo0_mtree_mult1_18_shift0_q <= u0_m0_wo0_mtree_mult1_18_shift0_q_int(29 downto 0);

	--u0_m0_wo0_mtree_mult1_18_sub_1(SUB,295)@11
    u0_m0_wo0_mtree_mult1_18_sub_1_a <= STD_LOGIC_VECTOR((30 downto 30 => u0_m0_wo0_mtree_mult1_18_shift0_q(29)) & u0_m0_wo0_mtree_mult1_18_shift0_q);
    u0_m0_wo0_mtree_mult1_18_sub_1_b <= STD_LOGIC_VECTOR((30 downto 16 => d_u0_m0_wo0_wi0_delayr18_q_11_q(15)) & d_u0_m0_wo0_wi0_delayr18_q_11_q);
    u0_m0_wo0_mtree_mult1_18_sub_1: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_18_sub_1_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_18_sub_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_18_sub_1_a) - SIGNED(u0_m0_wo0_mtree_mult1_18_sub_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_18_sub_1_q <= u0_m0_wo0_mtree_mult1_18_sub_1_o(30 downto 0);


	--u0_m0_wo0_mtree_mult1_18_shift2(BITSHIFT,296)@12
    u0_m0_wo0_mtree_mult1_18_shift2_q_int <= u0_m0_wo0_mtree_mult1_18_sub_1_q & "0";
    u0_m0_wo0_mtree_mult1_18_shift2_q <= u0_m0_wo0_mtree_mult1_18_shift2_q_int(31 downto 0);

	--u0_m0_wo0_mtree_add0_9(ADD,127)@12
    u0_m0_wo0_mtree_add0_9_a <= STD_LOGIC_VECTOR((32 downto 32 => u0_m0_wo0_mtree_mult1_18_shift2_q(31)) & u0_m0_wo0_mtree_mult1_18_shift2_q);
    u0_m0_wo0_mtree_add0_9_b <= STD_LOGIC_VECTOR((32 downto 32 => u0_m0_wo0_mtree_mult1_19_q(31)) & u0_m0_wo0_mtree_mult1_19_q);
    u0_m0_wo0_mtree_add0_9: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_9_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_9_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_9_a) + SIGNED(u0_m0_wo0_mtree_add0_9_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_9_q <= u0_m0_wo0_mtree_add0_9_o(32 downto 0);


	--u0_m0_wo0_wi0_delayr19(DELAY,26)@10
    u0_m0_wo0_wi0_delayr19 : dspba_delay
    GENERIC MAP ( width => 16, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr18_q, xout => u0_m0_wo0_wi0_delayr19_q, ena => xIn_v(0), clk => clk, aclr => areset );

	--u0_m0_wo0_mtree_mult1_17(MULT,100)@10
    u0_m0_wo0_mtree_mult1_17_a <= u0_m0_wo0_cm17_q;
    u0_m0_wo0_mtree_mult1_17_b <= u0_m0_wo0_wi0_delayr19_q;
    u0_m0_wo0_mtree_mult1_17_reset <= areset;

    u0_m0_wo0_mtree_mult1_17_component : lpm_mult
    GENERIC MAP (
    lpm_widtha => 16,
    lpm_widthb => 16,
    lpm_widthp => 32,
    lpm_widths => 1,
    lpm_type => "LPM_MULT",
    lpm_representation => "SIGNED",
    lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES,MAXIMIZE_SPEED=5",
    lpm_pipeline => 2
    )
    PORT MAP (
    dataa => u0_m0_wo0_mtree_mult1_17_a,
    datab => u0_m0_wo0_mtree_mult1_17_b,
    clken => VCC_q(0),
    aclr => u0_m0_wo0_mtree_mult1_17_reset,
    clock => clk,
    result => u0_m0_wo0_mtree_mult1_17_s1
    );
    u0_m0_wo0_mtree_mult1_17_q <= u0_m0_wo0_mtree_mult1_17_s1;

	--u0_m0_wo0_wi0_delayr20(DELAY,27)@10
    u0_m0_wo0_wi0_delayr20 : dspba_delay
    GENERIC MAP ( width => 16, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr19_q, xout => u0_m0_wo0_wi0_delayr20_q, ena => xIn_v(0), clk => clk, aclr => areset );

	--u0_m0_wo0_mtree_mult1_16(MULT,101)@10
    u0_m0_wo0_mtree_mult1_16_a <= u0_m0_wo0_cm16_q;
    u0_m0_wo0_mtree_mult1_16_b <= u0_m0_wo0_wi0_delayr20_q;
    u0_m0_wo0_mtree_mult1_16_reset <= areset;

    u0_m0_wo0_mtree_mult1_16_component : lpm_mult
    GENERIC MAP (
    lpm_widtha => 16,
    lpm_widthb => 16,
    lpm_widthp => 32,
    lpm_widths => 1,
    lpm_type => "LPM_MULT",
    lpm_representation => "SIGNED",
    lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES,MAXIMIZE_SPEED=5",
    lpm_pipeline => 2
    )
    PORT MAP (
    dataa => u0_m0_wo0_mtree_mult1_16_a,
    datab => u0_m0_wo0_mtree_mult1_16_b,
    clken => VCC_q(0),
    aclr => u0_m0_wo0_mtree_mult1_16_reset,
    clock => clk,
    result => u0_m0_wo0_mtree_mult1_16_s1
    );
    u0_m0_wo0_mtree_mult1_16_q <= u0_m0_wo0_mtree_mult1_16_s1;

	--u0_m0_wo0_mtree_add0_8(ADD,126)@12
    u0_m0_wo0_mtree_add0_8_a <= STD_LOGIC_VECTOR((32 downto 32 => u0_m0_wo0_mtree_mult1_16_q(31)) & u0_m0_wo0_mtree_mult1_16_q);
    u0_m0_wo0_mtree_add0_8_b <= STD_LOGIC_VECTOR((32 downto 32 => u0_m0_wo0_mtree_mult1_17_q(31)) & u0_m0_wo0_mtree_mult1_17_q);
    u0_m0_wo0_mtree_add0_8: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_8_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_8_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_8_a) + SIGNED(u0_m0_wo0_mtree_add0_8_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_8_q <= u0_m0_wo0_mtree_add0_8_o(32 downto 0);


	--u0_m0_wo0_mtree_add1_4(ADD,140)@13
    u0_m0_wo0_mtree_add1_4_a <= STD_LOGIC_VECTOR((33 downto 33 => u0_m0_wo0_mtree_add0_8_q(32)) & u0_m0_wo0_mtree_add0_8_q);
    u0_m0_wo0_mtree_add1_4_b <= STD_LOGIC_VECTOR((33 downto 33 => u0_m0_wo0_mtree_add0_9_q(32)) & u0_m0_wo0_mtree_add0_9_q);
    u0_m0_wo0_mtree_add1_4: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add1_4_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add1_4_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add1_4_a) + SIGNED(u0_m0_wo0_mtree_add1_4_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add1_4_q <= u0_m0_wo0_mtree_add1_4_o(33 downto 0);


	--u0_m0_wo0_mtree_add2_2(ADD,147)@14
    u0_m0_wo0_mtree_add2_2_a <= STD_LOGIC_VECTOR((34 downto 34 => u0_m0_wo0_mtree_add1_4_q(33)) & u0_m0_wo0_mtree_add1_4_q);
    u0_m0_wo0_mtree_add2_2_b <= STD_LOGIC_VECTOR((34 downto 34 => u0_m0_wo0_mtree_add1_5_q(33)) & u0_m0_wo0_mtree_add1_5_q);
    u0_m0_wo0_mtree_add2_2: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add2_2_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add2_2_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add2_2_a) + SIGNED(u0_m0_wo0_mtree_add2_2_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add2_2_q <= u0_m0_wo0_mtree_add2_2_o(34 downto 0);


	--u0_m0_wo0_mtree_add3_1(ADD,151)@15
    u0_m0_wo0_mtree_add3_1_a <= STD_LOGIC_VECTOR((35 downto 35 => u0_m0_wo0_mtree_add2_2_q(34)) & u0_m0_wo0_mtree_add2_2_q);
    u0_m0_wo0_mtree_add3_1_b <= STD_LOGIC_VECTOR((35 downto 33 => u0_m0_wo0_mtree_add2_3_q(32)) & u0_m0_wo0_mtree_add2_3_q);
    u0_m0_wo0_mtree_add3_1: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add3_1_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add3_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add3_1_a) + SIGNED(u0_m0_wo0_mtree_add3_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add3_1_q <= u0_m0_wo0_mtree_add3_1_o(35 downto 0);


	--u0_m0_wo0_wi0_delayr21(DELAY,28)@10
    u0_m0_wo0_wi0_delayr21 : dspba_delay
    GENERIC MAP ( width => 16, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr20_q, xout => u0_m0_wo0_wi0_delayr21_q, ena => xIn_v(0), clk => clk, aclr => areset );

	--d_u0_m0_wo0_wi0_delayr21_q_11(DELAY,862)@10
    d_u0_m0_wo0_wi0_delayr21_q_11 : dspba_delay
    GENERIC MAP ( width => 16, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr21_q, xout => d_u0_m0_wo0_wi0_delayr21_q_11_q, clk => clk, aclr => areset );

	--u0_m0_wo0_mtree_mult1_15(MULT,102)@11
    u0_m0_wo0_mtree_mult1_15_a <= u0_m0_wo0_cm15_q;
    u0_m0_wo0_mtree_mult1_15_b <= d_u0_m0_wo0_wi0_delayr21_q_11_q;
    u0_m0_wo0_mtree_mult1_15_reset <= areset;

    u0_m0_wo0_mtree_mult1_15_component : lpm_mult
    GENERIC MAP (
    lpm_widtha => 15,
    lpm_widthb => 16,
    lpm_widthp => 31,
    lpm_widths => 1,
    lpm_type => "LPM_MULT",
    lpm_representation => "SIGNED",
    lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES,MAXIMIZE_SPEED=5",
    lpm_pipeline => 2
    )
    PORT MAP (
    dataa => u0_m0_wo0_mtree_mult1_15_a,
    datab => u0_m0_wo0_mtree_mult1_15_b,
    clken => VCC_q(0),
    aclr => u0_m0_wo0_mtree_mult1_15_reset,
    clock => clk,
    result => u0_m0_wo0_mtree_mult1_15_s1
    );
    u0_m0_wo0_mtree_mult1_15_q <= u0_m0_wo0_mtree_mult1_15_s1;

	--u0_m0_wo0_wi0_delayr22(DELAY,29)@10
    u0_m0_wo0_wi0_delayr22 : dspba_delay
    GENERIC MAP ( width => 16, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr21_q, xout => u0_m0_wo0_wi0_delayr22_q, ena => xIn_v(0), clk => clk, aclr => areset );

	--u0_m0_wo0_wi0_delayr23(DELAY,30)@10
    u0_m0_wo0_wi0_delayr23 : dspba_delay
    GENERIC MAP ( width => 16, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr22_q, xout => u0_m0_wo0_wi0_delayr23_q, ena => xIn_v(0), clk => clk, aclr => areset );

	--u0_m0_wo0_mtree_mult1_13(MULT,104)@10
    u0_m0_wo0_mtree_mult1_13_a <= u0_m0_wo0_cm13_q;
    u0_m0_wo0_mtree_mult1_13_b <= u0_m0_wo0_wi0_delayr23_q;
    u0_m0_wo0_mtree_mult1_13_reset <= areset;

    u0_m0_wo0_mtree_mult1_13_component : lpm_mult
    GENERIC MAP (
    lpm_widtha => 14,
    lpm_widthb => 16,
    lpm_widthp => 30,
    lpm_widths => 1,
    lpm_type => "LPM_MULT",
    lpm_representation => "SIGNED",
    lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES,MAXIMIZE_SPEED=5",
    lpm_pipeline => 2
    )
    PORT MAP (
    dataa => u0_m0_wo0_mtree_mult1_13_a,
    datab => u0_m0_wo0_mtree_mult1_13_b,
    clken => VCC_q(0),
    aclr => u0_m0_wo0_mtree_mult1_13_reset,
    clock => clk,
    result => u0_m0_wo0_mtree_mult1_13_s1
    );
    u0_m0_wo0_mtree_mult1_13_q <= u0_m0_wo0_mtree_mult1_13_s1;

	--u0_m0_wo0_wi0_delayr24(DELAY,31)@10
    u0_m0_wo0_wi0_delayr24 : dspba_delay
    GENERIC MAP ( width => 16, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr23_q, xout => u0_m0_wo0_wi0_delayr24_q, ena => xIn_v(0), clk => clk, aclr => areset );

	--u0_m0_wo0_mtree_mult1_12(MULT,105)@10
    u0_m0_wo0_mtree_mult1_12_a <= u0_m0_wo0_cm12_q;
    u0_m0_wo0_mtree_mult1_12_b <= u0_m0_wo0_wi0_delayr24_q;
    u0_m0_wo0_mtree_mult1_12_reset <= areset;

    u0_m0_wo0_mtree_mult1_12_component : lpm_mult
    GENERIC MAP (
    lpm_widtha => 14,
    lpm_widthb => 16,
    lpm_widthp => 30,
    lpm_widths => 1,
    lpm_type => "LPM_MULT",
    lpm_representation => "SIGNED",
    lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES,MAXIMIZE_SPEED=5",
    lpm_pipeline => 2
    )
    PORT MAP (
    dataa => u0_m0_wo0_mtree_mult1_12_a,
    datab => u0_m0_wo0_mtree_mult1_12_b,
    clken => VCC_q(0),
    aclr => u0_m0_wo0_mtree_mult1_12_reset,
    clock => clk,
    result => u0_m0_wo0_mtree_mult1_12_s1
    );
    u0_m0_wo0_mtree_mult1_12_q <= u0_m0_wo0_mtree_mult1_12_s1;

	--u0_m0_wo0_mtree_add0_6(ADD,124)@12
    u0_m0_wo0_mtree_add0_6_a <= STD_LOGIC_VECTOR((30 downto 30 => u0_m0_wo0_mtree_mult1_12_q(29)) & u0_m0_wo0_mtree_mult1_12_q);
    u0_m0_wo0_mtree_add0_6_b <= STD_LOGIC_VECTOR((30 downto 30 => u0_m0_wo0_mtree_mult1_13_q(29)) & u0_m0_wo0_mtree_mult1_13_q);
    u0_m0_wo0_mtree_add0_6: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_6_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_6_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_6_a) + SIGNED(u0_m0_wo0_mtree_add0_6_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_6_q <= u0_m0_wo0_mtree_add0_6_o(30 downto 0);


	--u0_m0_wo0_mtree_add1_3(ADD,139)@13
    u0_m0_wo0_mtree_add1_3_a <= STD_LOGIC_VECTOR((32 downto 31 => u0_m0_wo0_mtree_add0_6_q(30)) & u0_m0_wo0_mtree_add0_6_q);
    u0_m0_wo0_mtree_add1_3_b <= STD_LOGIC_VECTOR((32 downto 31 => u0_m0_wo0_mtree_mult1_15_q(30)) & u0_m0_wo0_mtree_mult1_15_q);
    u0_m0_wo0_mtree_add1_3: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add1_3_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add1_3_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add1_3_a) + SIGNED(u0_m0_wo0_mtree_add1_3_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add1_3_q <= u0_m0_wo0_mtree_add1_3_o(32 downto 0);


	--u0_m0_wo0_mtree_mult1_11_shift2(BITSHIFT,351)@11
    u0_m0_wo0_mtree_mult1_11_shift2_q_int <= d_u0_m0_wo0_wi0_delayr25_q_11_q & "00000";
    u0_m0_wo0_mtree_mult1_11_shift2_q <= u0_m0_wo0_mtree_mult1_11_shift2_q_int(20 downto 0);

	--u0_m0_wo0_wi0_delayr25(DELAY,32)@10
    u0_m0_wo0_wi0_delayr25 : dspba_delay
    GENERIC MAP ( width => 16, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr24_q, xout => u0_m0_wo0_wi0_delayr25_q, ena => xIn_v(0), clk => clk, aclr => areset );

	--d_u0_m0_wo0_wi0_delayr25_q_11(DELAY,863)@10
    d_u0_m0_wo0_wi0_delayr25_q_11 : dspba_delay
    GENERIC MAP ( width => 16, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr25_q, xout => d_u0_m0_wo0_wi0_delayr25_q_11_q, clk => clk, aclr => areset );

	--u0_m0_wo0_mtree_mult1_11_add_3(ADD,352)@11
    u0_m0_wo0_mtree_mult1_11_add_3_a <= STD_LOGIC_VECTOR((21 downto 16 => d_u0_m0_wo0_wi0_delayr25_q_11_q(15)) & d_u0_m0_wo0_wi0_delayr25_q_11_q);
    u0_m0_wo0_mtree_mult1_11_add_3_b <= STD_LOGIC_VECTOR((21 downto 21 => u0_m0_wo0_mtree_mult1_11_shift2_q(20)) & u0_m0_wo0_mtree_mult1_11_shift2_q);
    u0_m0_wo0_mtree_mult1_11_add_3: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_11_add_3_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_11_add_3_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_11_add_3_a) + SIGNED(u0_m0_wo0_mtree_mult1_11_add_3_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_11_add_3_q <= u0_m0_wo0_mtree_mult1_11_add_3_o(21 downto 0);


	--u0_m0_wo0_mtree_mult1_11_shift4(BITSHIFT,353)@12
    u0_m0_wo0_mtree_mult1_11_shift4_q_int <= u0_m0_wo0_mtree_mult1_11_add_3_q & "000000";
    u0_m0_wo0_mtree_mult1_11_shift4_q <= u0_m0_wo0_mtree_mult1_11_shift4_q_int(27 downto 0);

	--u0_m0_wo0_mtree_mult1_11_shift0(BITSHIFT,349)@11
    u0_m0_wo0_mtree_mult1_11_shift0_q_int <= d_u0_m0_wo0_wi0_delayr25_q_11_q & "00";
    u0_m0_wo0_mtree_mult1_11_shift0_q <= u0_m0_wo0_mtree_mult1_11_shift0_q_int(17 downto 0);

	--u0_m0_wo0_mtree_mult1_11_add_1(ADD,350)@11
    u0_m0_wo0_mtree_mult1_11_add_1_a <= STD_LOGIC_VECTOR((18 downto 16 => d_u0_m0_wo0_wi0_delayr25_q_11_q(15)) & d_u0_m0_wo0_wi0_delayr25_q_11_q);
    u0_m0_wo0_mtree_mult1_11_add_1_b <= STD_LOGIC_VECTOR((18 downto 18 => u0_m0_wo0_mtree_mult1_11_shift0_q(17)) & u0_m0_wo0_mtree_mult1_11_shift0_q);
    u0_m0_wo0_mtree_mult1_11_add_1: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_11_add_1_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_11_add_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_11_add_1_a) + SIGNED(u0_m0_wo0_mtree_mult1_11_add_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_11_add_1_q <= u0_m0_wo0_mtree_mult1_11_add_1_o(18 downto 0);


	--u0_m0_wo0_mtree_mult1_11_sub_5(SUB,354)@12
    u0_m0_wo0_mtree_mult1_11_sub_5_a <= STD_LOGIC_VECTOR((28 downto 19 => u0_m0_wo0_mtree_mult1_11_add_1_q(18)) & u0_m0_wo0_mtree_mult1_11_add_1_q);
    u0_m0_wo0_mtree_mult1_11_sub_5_b <= STD_LOGIC_VECTOR((28 downto 28 => u0_m0_wo0_mtree_mult1_11_shift4_q(27)) & u0_m0_wo0_mtree_mult1_11_shift4_q);
    u0_m0_wo0_mtree_mult1_11_sub_5: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_11_sub_5_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_11_sub_5_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_11_sub_5_a) - SIGNED(u0_m0_wo0_mtree_mult1_11_sub_5_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_11_sub_5_q <= u0_m0_wo0_mtree_mult1_11_sub_5_o(28 downto 0);


	--u0_m0_wo0_mtree_mult1_11_shift6(BITSHIFT,355)@13
    u0_m0_wo0_mtree_mult1_11_shift6_q_int <= u0_m0_wo0_mtree_mult1_11_sub_5_q & "0";
    u0_m0_wo0_mtree_mult1_11_shift6_q <= u0_m0_wo0_mtree_mult1_11_shift6_q_int(29 downto 0);

	--u0_m0_wo0_wi0_delayr26(DELAY,33)@10
    u0_m0_wo0_wi0_delayr26 : dspba_delay
    GENERIC MAP ( width => 16, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr25_q, xout => u0_m0_wo0_wi0_delayr26_q, ena => xIn_v(0), clk => clk, aclr => areset );

	--u0_m0_wo0_wi0_delayr27(DELAY,34)@10
    u0_m0_wo0_wi0_delayr27 : dspba_delay
    GENERIC MAP ( width => 16, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr26_q, xout => u0_m0_wo0_wi0_delayr27_q, ena => xIn_v(0), clk => clk, aclr => areset );

	--u0_m0_wo0_mtree_mult1_9(MULT,108)@10
    u0_m0_wo0_mtree_mult1_9_a <= u0_m0_wo0_cm9_q;
    u0_m0_wo0_mtree_mult1_9_b <= u0_m0_wo0_wi0_delayr27_q;
    u0_m0_wo0_mtree_mult1_9_reset <= areset;

    u0_m0_wo0_mtree_mult1_9_component : lpm_mult
    GENERIC MAP (
    lpm_widtha => 13,
    lpm_widthb => 16,
    lpm_widthp => 29,
    lpm_widths => 1,
    lpm_type => "LPM_MULT",
    lpm_representation => "SIGNED",
    lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES,MAXIMIZE_SPEED=5",
    lpm_pipeline => 2
    )
    PORT MAP (
    dataa => u0_m0_wo0_mtree_mult1_9_a,
    datab => u0_m0_wo0_mtree_mult1_9_b,
    clken => VCC_q(0),
    aclr => u0_m0_wo0_mtree_mult1_9_reset,
    clock => clk,
    result => u0_m0_wo0_mtree_mult1_9_s1
    );
    u0_m0_wo0_mtree_mult1_9_q <= u0_m0_wo0_mtree_mult1_9_s1;

	--u0_m0_wo0_wi0_delayr28(DELAY,35)@10
    u0_m0_wo0_wi0_delayr28 : dspba_delay
    GENERIC MAP ( width => 16, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr27_q, xout => u0_m0_wo0_wi0_delayr28_q, ena => xIn_v(0), clk => clk, aclr => areset );

	--u0_m0_wo0_mtree_mult1_8(MULT,109)@10
    u0_m0_wo0_mtree_mult1_8_a <= u0_m0_wo0_cm8_q;
    u0_m0_wo0_mtree_mult1_8_b <= u0_m0_wo0_wi0_delayr28_q;
    u0_m0_wo0_mtree_mult1_8_reset <= areset;

    u0_m0_wo0_mtree_mult1_8_component : lpm_mult
    GENERIC MAP (
    lpm_widtha => 14,
    lpm_widthb => 16,
    lpm_widthp => 30,
    lpm_widths => 1,
    lpm_type => "LPM_MULT",
    lpm_representation => "SIGNED",
    lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES,MAXIMIZE_SPEED=5",
    lpm_pipeline => 2
    )
    PORT MAP (
    dataa => u0_m0_wo0_mtree_mult1_8_a,
    datab => u0_m0_wo0_mtree_mult1_8_b,
    clken => VCC_q(0),
    aclr => u0_m0_wo0_mtree_mult1_8_reset,
    clock => clk,
    result => u0_m0_wo0_mtree_mult1_8_s1
    );
    u0_m0_wo0_mtree_mult1_8_q <= u0_m0_wo0_mtree_mult1_8_s1;

	--u0_m0_wo0_mtree_add0_4(ADD,122)@12
    u0_m0_wo0_mtree_add0_4_a <= STD_LOGIC_VECTOR((30 downto 30 => u0_m0_wo0_mtree_mult1_8_q(29)) & u0_m0_wo0_mtree_mult1_8_q);
    u0_m0_wo0_mtree_add0_4_b <= STD_LOGIC_VECTOR((30 downto 29 => u0_m0_wo0_mtree_mult1_9_q(28)) & u0_m0_wo0_mtree_mult1_9_q);
    u0_m0_wo0_mtree_add0_4: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_4_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_4_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_4_a) + SIGNED(u0_m0_wo0_mtree_add0_4_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_4_q <= u0_m0_wo0_mtree_add0_4_o(30 downto 0);


	--u0_m0_wo0_mtree_add1_2(ADD,138)@13
    u0_m0_wo0_mtree_add1_2_a <= STD_LOGIC_VECTOR((31 downto 31 => u0_m0_wo0_mtree_add0_4_q(30)) & u0_m0_wo0_mtree_add0_4_q);
    u0_m0_wo0_mtree_add1_2_b <= STD_LOGIC_VECTOR((31 downto 30 => u0_m0_wo0_mtree_mult1_11_shift6_q(29)) & u0_m0_wo0_mtree_mult1_11_shift6_q);
    u0_m0_wo0_mtree_add1_2: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add1_2_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add1_2_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add1_2_a) + SIGNED(u0_m0_wo0_mtree_add1_2_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add1_2_q <= u0_m0_wo0_mtree_add1_2_o(31 downto 0);


	--u0_m0_wo0_mtree_add2_1(ADD,146)@14
    u0_m0_wo0_mtree_add2_1_a <= STD_LOGIC_VECTOR((33 downto 32 => u0_m0_wo0_mtree_add1_2_q(31)) & u0_m0_wo0_mtree_add1_2_q);
    u0_m0_wo0_mtree_add2_1_b <= STD_LOGIC_VECTOR((33 downto 33 => u0_m0_wo0_mtree_add1_3_q(32)) & u0_m0_wo0_mtree_add1_3_q);
    u0_m0_wo0_mtree_add2_1: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add2_1_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add2_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add2_1_a) + SIGNED(u0_m0_wo0_mtree_add2_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add2_1_q <= u0_m0_wo0_mtree_add2_1_o(33 downto 0);


	--u0_m0_wo0_wi0_delayr29(DELAY,36)@10
    u0_m0_wo0_wi0_delayr29 : dspba_delay
    GENERIC MAP ( width => 16, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr28_q, xout => u0_m0_wo0_wi0_delayr29_q, ena => xIn_v(0), clk => clk, aclr => areset );

	--d_u0_m0_wo0_wi0_delayr29_q_11(DELAY,864)@10
    d_u0_m0_wo0_wi0_delayr29_q_11 : dspba_delay
    GENERIC MAP ( width => 16, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr29_q, xout => d_u0_m0_wo0_wi0_delayr29_q_11_q, clk => clk, aclr => areset );

	--u0_m0_wo0_mtree_mult1_7(MULT,110)@11
    u0_m0_wo0_mtree_mult1_7_a <= u0_m0_wo0_cm7_q;
    u0_m0_wo0_mtree_mult1_7_b <= d_u0_m0_wo0_wi0_delayr29_q_11_q;
    u0_m0_wo0_mtree_mult1_7_reset <= areset;

    u0_m0_wo0_mtree_mult1_7_component : lpm_mult
    GENERIC MAP (
    lpm_widtha => 13,
    lpm_widthb => 16,
    lpm_widthp => 29,
    lpm_widths => 1,
    lpm_type => "LPM_MULT",
    lpm_representation => "SIGNED",
    lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES,MAXIMIZE_SPEED=5",
    lpm_pipeline => 2
    )
    PORT MAP (
    dataa => u0_m0_wo0_mtree_mult1_7_a,
    datab => u0_m0_wo0_mtree_mult1_7_b,
    clken => VCC_q(0),
    aclr => u0_m0_wo0_mtree_mult1_7_reset,
    clock => clk,
    result => u0_m0_wo0_mtree_mult1_7_s1
    );
    u0_m0_wo0_mtree_mult1_7_q <= u0_m0_wo0_mtree_mult1_7_s1;

	--u0_m0_wo0_mtree_mult1_5_shift2(BITSHIFT,386)@10
    u0_m0_wo0_mtree_mult1_5_shift2_q_int <= u0_m0_wo0_wi0_delayr31_q & "000";
    u0_m0_wo0_mtree_mult1_5_shift2_q <= u0_m0_wo0_mtree_mult1_5_shift2_q_int(18 downto 0);

	--u0_m0_wo0_wi0_delayr30(DELAY,37)@10
    u0_m0_wo0_wi0_delayr30 : dspba_delay
    GENERIC MAP ( width => 16, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr29_q, xout => u0_m0_wo0_wi0_delayr30_q, ena => xIn_v(0), clk => clk, aclr => areset );

	--u0_m0_wo0_wi0_delayr31(DELAY,38)@10
    u0_m0_wo0_wi0_delayr31 : dspba_delay
    GENERIC MAP ( width => 16, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr30_q, xout => u0_m0_wo0_wi0_delayr31_q, ena => xIn_v(0), clk => clk, aclr => areset );

	--u0_m0_wo0_mtree_mult1_5_add_3(ADD,387)@10
    u0_m0_wo0_mtree_mult1_5_add_3_a <= STD_LOGIC_VECTOR((19 downto 16 => u0_m0_wo0_wi0_delayr31_q(15)) & u0_m0_wo0_wi0_delayr31_q);
    u0_m0_wo0_mtree_mult1_5_add_3_b <= STD_LOGIC_VECTOR((19 downto 19 => u0_m0_wo0_mtree_mult1_5_shift2_q(18)) & u0_m0_wo0_mtree_mult1_5_shift2_q);
    u0_m0_wo0_mtree_mult1_5_add_3: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_5_add_3_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_5_add_3_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_5_add_3_a) + SIGNED(u0_m0_wo0_mtree_mult1_5_add_3_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_5_add_3_q <= u0_m0_wo0_mtree_mult1_5_add_3_o(19 downto 0);


	--u0_m0_wo0_mtree_mult1_5_shift4(BITSHIFT,388)@11
    u0_m0_wo0_mtree_mult1_5_shift4_q_int <= u0_m0_wo0_mtree_mult1_5_add_3_q & "000000";
    u0_m0_wo0_mtree_mult1_5_shift4_q <= u0_m0_wo0_mtree_mult1_5_shift4_q_int(25 downto 0);

	--u0_m0_wo0_mtree_mult1_5_shift0(BITSHIFT,384)@10
    u0_m0_wo0_mtree_mult1_5_shift0_q_int <= u0_m0_wo0_wi0_delayr31_q & "000";
    u0_m0_wo0_mtree_mult1_5_shift0_q <= u0_m0_wo0_mtree_mult1_5_shift0_q_int(18 downto 0);

	--u0_m0_wo0_mtree_mult1_5_add_1(ADD,385)@10
    u0_m0_wo0_mtree_mult1_5_add_1_a <= STD_LOGIC_VECTOR((19 downto 16 => u0_m0_wo0_wi0_delayr31_q(15)) & u0_m0_wo0_wi0_delayr31_q);
    u0_m0_wo0_mtree_mult1_5_add_1_b <= STD_LOGIC_VECTOR((19 downto 19 => u0_m0_wo0_mtree_mult1_5_shift0_q(18)) & u0_m0_wo0_mtree_mult1_5_shift0_q);
    u0_m0_wo0_mtree_mult1_5_add_1: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_5_add_1_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_5_add_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_5_add_1_a) + SIGNED(u0_m0_wo0_mtree_mult1_5_add_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_5_add_1_q <= u0_m0_wo0_mtree_mult1_5_add_1_o(19 downto 0);


	--u0_m0_wo0_mtree_mult1_5_sub_5(SUB,389)@11
    u0_m0_wo0_mtree_mult1_5_sub_5_a <= STD_LOGIC_VECTOR((26 downto 20 => u0_m0_wo0_mtree_mult1_5_add_1_q(19)) & u0_m0_wo0_mtree_mult1_5_add_1_q);
    u0_m0_wo0_mtree_mult1_5_sub_5_b <= STD_LOGIC_VECTOR((26 downto 26 => u0_m0_wo0_mtree_mult1_5_shift4_q(25)) & u0_m0_wo0_mtree_mult1_5_shift4_q);
    u0_m0_wo0_mtree_mult1_5_sub_5: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_5_sub_5_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_5_sub_5_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_5_sub_5_a) - SIGNED(u0_m0_wo0_mtree_mult1_5_sub_5_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_5_sub_5_q <= u0_m0_wo0_mtree_mult1_5_sub_5_o(26 downto 0);


	--u0_m0_wo0_mtree_mult1_5_shift6(BITSHIFT,390)@12
    u0_m0_wo0_mtree_mult1_5_shift6_q_int <= u0_m0_wo0_mtree_mult1_5_sub_5_q & "00";
    u0_m0_wo0_mtree_mult1_5_shift6_q <= u0_m0_wo0_mtree_mult1_5_shift6_q_int(28 downto 0);

	--u0_m0_wo0_wi0_delayr32(DELAY,39)@10
    u0_m0_wo0_wi0_delayr32 : dspba_delay
    GENERIC MAP ( width => 16, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr31_q, xout => u0_m0_wo0_wi0_delayr32_q, ena => xIn_v(0), clk => clk, aclr => areset );

	--u0_m0_wo0_mtree_mult1_4(MULT,113)@10
    u0_m0_wo0_mtree_mult1_4_a <= u0_m0_wo0_cm4_q;
    u0_m0_wo0_mtree_mult1_4_b <= u0_m0_wo0_wi0_delayr32_q;
    u0_m0_wo0_mtree_mult1_4_reset <= areset;

    u0_m0_wo0_mtree_mult1_4_component : lpm_mult
    GENERIC MAP (
    lpm_widtha => 13,
    lpm_widthb => 16,
    lpm_widthp => 29,
    lpm_widths => 1,
    lpm_type => "LPM_MULT",
    lpm_representation => "SIGNED",
    lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES,MAXIMIZE_SPEED=5",
    lpm_pipeline => 2
    )
    PORT MAP (
    dataa => u0_m0_wo0_mtree_mult1_4_a,
    datab => u0_m0_wo0_mtree_mult1_4_b,
    clken => VCC_q(0),
    aclr => u0_m0_wo0_mtree_mult1_4_reset,
    clock => clk,
    result => u0_m0_wo0_mtree_mult1_4_s1
    );
    u0_m0_wo0_mtree_mult1_4_q <= u0_m0_wo0_mtree_mult1_4_s1;

	--u0_m0_wo0_mtree_add0_2(ADD,120)@12
    u0_m0_wo0_mtree_add0_2_a <= STD_LOGIC_VECTOR((29 downto 29 => u0_m0_wo0_mtree_mult1_4_q(28)) & u0_m0_wo0_mtree_mult1_4_q);
    u0_m0_wo0_mtree_add0_2_b <= STD_LOGIC_VECTOR((29 downto 29 => u0_m0_wo0_mtree_mult1_5_shift6_q(28)) & u0_m0_wo0_mtree_mult1_5_shift6_q);
    u0_m0_wo0_mtree_add0_2: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_2_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_2_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_2_a) + SIGNED(u0_m0_wo0_mtree_add0_2_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_2_q <= u0_m0_wo0_mtree_add0_2_o(29 downto 0);


	--u0_m0_wo0_mtree_add1_1(ADD,137)@13
    u0_m0_wo0_mtree_add1_1_a <= STD_LOGIC_VECTOR((30 downto 30 => u0_m0_wo0_mtree_add0_2_q(29)) & u0_m0_wo0_mtree_add0_2_q);
    u0_m0_wo0_mtree_add1_1_b <= STD_LOGIC_VECTOR((30 downto 29 => u0_m0_wo0_mtree_mult1_7_q(28)) & u0_m0_wo0_mtree_mult1_7_q);
    u0_m0_wo0_mtree_add1_1: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add1_1_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add1_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add1_1_a) + SIGNED(u0_m0_wo0_mtree_add1_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add1_1_q <= u0_m0_wo0_mtree_add1_1_o(30 downto 0);


	--u0_m0_wo0_mtree_mult1_3_shift2(BITSHIFT,403)@11
    u0_m0_wo0_mtree_mult1_3_shift2_q_int <= d_u0_m0_wo0_wi0_delayr33_q_11_q & "00000";
    u0_m0_wo0_mtree_mult1_3_shift2_q <= u0_m0_wo0_mtree_mult1_3_shift2_q_int(20 downto 0);

	--u0_m0_wo0_wi0_delayr33(DELAY,40)@10
    u0_m0_wo0_wi0_delayr33 : dspba_delay
    GENERIC MAP ( width => 16, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr32_q, xout => u0_m0_wo0_wi0_delayr33_q, ena => xIn_v(0), clk => clk, aclr => areset );

	--d_u0_m0_wo0_wi0_delayr33_q_11(DELAY,865)@10
    d_u0_m0_wo0_wi0_delayr33_q_11 : dspba_delay
    GENERIC MAP ( width => 16, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr33_q, xout => d_u0_m0_wo0_wi0_delayr33_q_11_q, clk => clk, aclr => areset );

	--u0_m0_wo0_mtree_mult1_3_sub_3(SUB,404)@11
    u0_m0_wo0_mtree_mult1_3_sub_3_a <= STD_LOGIC_VECTOR((21 downto 16 => d_u0_m0_wo0_wi0_delayr33_q_11_q(15)) & d_u0_m0_wo0_wi0_delayr33_q_11_q);
    u0_m0_wo0_mtree_mult1_3_sub_3_b <= STD_LOGIC_VECTOR((21 downto 21 => u0_m0_wo0_mtree_mult1_3_shift2_q(20)) & u0_m0_wo0_mtree_mult1_3_shift2_q);
    u0_m0_wo0_mtree_mult1_3_sub_3: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_3_sub_3_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_3_sub_3_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_3_sub_3_a) - SIGNED(u0_m0_wo0_mtree_mult1_3_sub_3_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_3_sub_3_q <= u0_m0_wo0_mtree_mult1_3_sub_3_o(21 downto 0);


	--u0_m0_wo0_mtree_mult1_3_shift4(BITSHIFT,405)@12
    u0_m0_wo0_mtree_mult1_3_shift4_q_int <= u0_m0_wo0_mtree_mult1_3_sub_3_q & "00000";
    u0_m0_wo0_mtree_mult1_3_shift4_q <= u0_m0_wo0_mtree_mult1_3_shift4_q_int(26 downto 0);

	--u0_m0_wo0_mtree_mult1_3_shift0(BITSHIFT,401)@11
    u0_m0_wo0_mtree_mult1_3_shift0_q_int <= d_u0_m0_wo0_wi0_delayr33_q_11_q & "000";
    u0_m0_wo0_mtree_mult1_3_shift0_q <= u0_m0_wo0_mtree_mult1_3_shift0_q_int(18 downto 0);

	--u0_m0_wo0_mtree_mult1_3_add_1(ADD,402)@11
    u0_m0_wo0_mtree_mult1_3_add_1_a <= STD_LOGIC_VECTOR((19 downto 16 => d_u0_m0_wo0_wi0_delayr33_q_11_q(15)) & d_u0_m0_wo0_wi0_delayr33_q_11_q);
    u0_m0_wo0_mtree_mult1_3_add_1_b <= STD_LOGIC_VECTOR((19 downto 19 => u0_m0_wo0_mtree_mult1_3_shift0_q(18)) & u0_m0_wo0_mtree_mult1_3_shift0_q);
    u0_m0_wo0_mtree_mult1_3_add_1: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_3_add_1_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_3_add_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_3_add_1_a) + SIGNED(u0_m0_wo0_mtree_mult1_3_add_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_3_add_1_q <= u0_m0_wo0_mtree_mult1_3_add_1_o(19 downto 0);


	--u0_m0_wo0_mtree_mult1_3_add_5(ADD,406)@12
    u0_m0_wo0_mtree_mult1_3_add_5_a <= STD_LOGIC_VECTOR((27 downto 20 => u0_m0_wo0_mtree_mult1_3_add_1_q(19)) & u0_m0_wo0_mtree_mult1_3_add_1_q);
    u0_m0_wo0_mtree_mult1_3_add_5_b <= STD_LOGIC_VECTOR((27 downto 27 => u0_m0_wo0_mtree_mult1_3_shift4_q(26)) & u0_m0_wo0_mtree_mult1_3_shift4_q);
    u0_m0_wo0_mtree_mult1_3_add_5: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_3_add_5_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_3_add_5_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_3_add_5_a) + SIGNED(u0_m0_wo0_mtree_mult1_3_add_5_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_3_add_5_q <= u0_m0_wo0_mtree_mult1_3_add_5_o(27 downto 0);


	--u0_m0_wo0_mtree_mult1_3_shift6(BITSHIFT,407)@13
    u0_m0_wo0_mtree_mult1_3_shift6_q_int <= u0_m0_wo0_mtree_mult1_3_add_5_q & "0";
    u0_m0_wo0_mtree_mult1_3_shift6_q <= u0_m0_wo0_mtree_mult1_3_shift6_q_int(28 downto 0);

	--u0_m0_wo0_wi0_delayr34(DELAY,41)@10
    u0_m0_wo0_wi0_delayr34 : dspba_delay
    GENERIC MAP ( width => 16, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr33_q, xout => u0_m0_wo0_wi0_delayr34_q, ena => xIn_v(0), clk => clk, aclr => areset );

	--u0_m0_wo0_wi0_delayr35(DELAY,42)@10
    u0_m0_wo0_wi0_delayr35 : dspba_delay
    GENERIC MAP ( width => 16, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr34_q, xout => u0_m0_wo0_wi0_delayr35_q, ena => xIn_v(0), clk => clk, aclr => areset );

	--u0_m0_wo0_mtree_mult1_1(MULT,116)@10
    u0_m0_wo0_mtree_mult1_1_a <= u0_m0_wo0_cm1_q;
    u0_m0_wo0_mtree_mult1_1_b <= u0_m0_wo0_wi0_delayr35_q;
    u0_m0_wo0_mtree_mult1_1_reset <= areset;

    u0_m0_wo0_mtree_mult1_1_component : lpm_mult
    GENERIC MAP (
    lpm_widtha => 12,
    lpm_widthb => 16,
    lpm_widthp => 28,
    lpm_widths => 1,
    lpm_type => "LPM_MULT",
    lpm_representation => "SIGNED",
    lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES,MAXIMIZE_SPEED=5",
    lpm_pipeline => 2
    )
    PORT MAP (
    dataa => u0_m0_wo0_mtree_mult1_1_a,
    datab => u0_m0_wo0_mtree_mult1_1_b,
    clken => VCC_q(0),
    aclr => u0_m0_wo0_mtree_mult1_1_reset,
    clock => clk,
    result => u0_m0_wo0_mtree_mult1_1_s1
    );
    u0_m0_wo0_mtree_mult1_1_q <= u0_m0_wo0_mtree_mult1_1_s1;

	--u0_m0_wo0_wi0_delayr36(DELAY,43)@10
    u0_m0_wo0_wi0_delayr36 : dspba_delay
    GENERIC MAP ( width => 16, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr35_q, xout => u0_m0_wo0_wi0_delayr36_q, ena => xIn_v(0), clk => clk, aclr => areset );

	--u0_m0_wo0_mtree_mult1_0(MULT,117)@10
    u0_m0_wo0_mtree_mult1_0_a <= u0_m0_wo0_cm0_q;
    u0_m0_wo0_mtree_mult1_0_b <= u0_m0_wo0_wi0_delayr36_q;
    u0_m0_wo0_mtree_mult1_0_reset <= areset;

    u0_m0_wo0_mtree_mult1_0_component : lpm_mult
    GENERIC MAP (
    lpm_widtha => 13,
    lpm_widthb => 16,
    lpm_widthp => 29,
    lpm_widths => 1,
    lpm_type => "LPM_MULT",
    lpm_representation => "SIGNED",
    lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES,MAXIMIZE_SPEED=5",
    lpm_pipeline => 2
    )
    PORT MAP (
    dataa => u0_m0_wo0_mtree_mult1_0_a,
    datab => u0_m0_wo0_mtree_mult1_0_b,
    clken => VCC_q(0),
    aclr => u0_m0_wo0_mtree_mult1_0_reset,
    clock => clk,
    result => u0_m0_wo0_mtree_mult1_0_s1
    );
    u0_m0_wo0_mtree_mult1_0_q <= u0_m0_wo0_mtree_mult1_0_s1;

	--u0_m0_wo0_mtree_add0_0(ADD,118)@12
    u0_m0_wo0_mtree_add0_0_a <= STD_LOGIC_VECTOR((29 downto 29 => u0_m0_wo0_mtree_mult1_0_q(28)) & u0_m0_wo0_mtree_mult1_0_q);
    u0_m0_wo0_mtree_add0_0_b <= STD_LOGIC_VECTOR((29 downto 28 => u0_m0_wo0_mtree_mult1_1_q(27)) & u0_m0_wo0_mtree_mult1_1_q);
    u0_m0_wo0_mtree_add0_0: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_0_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_0_a) + SIGNED(u0_m0_wo0_mtree_add0_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_0_q <= u0_m0_wo0_mtree_add0_0_o(29 downto 0);


	--u0_m0_wo0_mtree_add1_0(ADD,136)@13
    u0_m0_wo0_mtree_add1_0_a <= STD_LOGIC_VECTOR((30 downto 30 => u0_m0_wo0_mtree_add0_0_q(29)) & u0_m0_wo0_mtree_add0_0_q);
    u0_m0_wo0_mtree_add1_0_b <= STD_LOGIC_VECTOR((30 downto 29 => u0_m0_wo0_mtree_mult1_3_shift6_q(28)) & u0_m0_wo0_mtree_mult1_3_shift6_q);
    u0_m0_wo0_mtree_add1_0: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add1_0_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add1_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add1_0_a) + SIGNED(u0_m0_wo0_mtree_add1_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add1_0_q <= u0_m0_wo0_mtree_add1_0_o(30 downto 0);


	--u0_m0_wo0_mtree_add2_0(ADD,145)@14
    u0_m0_wo0_mtree_add2_0_a <= STD_LOGIC_VECTOR((31 downto 31 => u0_m0_wo0_mtree_add1_0_q(30)) & u0_m0_wo0_mtree_add1_0_q);
    u0_m0_wo0_mtree_add2_0_b <= STD_LOGIC_VECTOR((31 downto 31 => u0_m0_wo0_mtree_add1_1_q(30)) & u0_m0_wo0_mtree_add1_1_q);
    u0_m0_wo0_mtree_add2_0: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add2_0_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add2_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add2_0_a) + SIGNED(u0_m0_wo0_mtree_add2_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add2_0_q <= u0_m0_wo0_mtree_add2_0_o(31 downto 0);


	--u0_m0_wo0_mtree_add3_0(ADD,150)@15
    u0_m0_wo0_mtree_add3_0_a <= STD_LOGIC_VECTOR((34 downto 32 => u0_m0_wo0_mtree_add2_0_q(31)) & u0_m0_wo0_mtree_add2_0_q);
    u0_m0_wo0_mtree_add3_0_b <= STD_LOGIC_VECTOR((34 downto 34 => u0_m0_wo0_mtree_add2_1_q(33)) & u0_m0_wo0_mtree_add2_1_q);
    u0_m0_wo0_mtree_add3_0: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add3_0_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add3_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add3_0_a) + SIGNED(u0_m0_wo0_mtree_add3_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add3_0_q <= u0_m0_wo0_mtree_add3_0_o(34 downto 0);


	--u0_m0_wo0_mtree_add4_0(ADD,152)@16
    u0_m0_wo0_mtree_add4_0_a <= STD_LOGIC_VECTOR((36 downto 35 => u0_m0_wo0_mtree_add3_0_q(34)) & u0_m0_wo0_mtree_add3_0_q);
    u0_m0_wo0_mtree_add4_0_b <= STD_LOGIC_VECTOR((36 downto 36 => u0_m0_wo0_mtree_add3_1_q(35)) & u0_m0_wo0_mtree_add3_1_q);
    u0_m0_wo0_mtree_add4_0: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add4_0_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add4_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add4_0_a) + SIGNED(u0_m0_wo0_mtree_add4_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add4_0_q <= u0_m0_wo0_mtree_add4_0_o(36 downto 0);


	--u0_m0_wo0_mtree_add5_0(ADD,153)@17
    u0_m0_wo0_mtree_add5_0_a <= STD_LOGIC_VECTOR((37 downto 37 => u0_m0_wo0_mtree_add4_0_q(36)) & u0_m0_wo0_mtree_add4_0_q);
    u0_m0_wo0_mtree_add5_0_b <= STD_LOGIC_VECTOR((37 downto 32 => u0_m0_wo0_mtree_add2_4_q(31)) & u0_m0_wo0_mtree_add2_4_q);
    u0_m0_wo0_mtree_add5_0: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add5_0_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add5_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add5_0_a) + SIGNED(u0_m0_wo0_mtree_add5_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add5_0_q <= u0_m0_wo0_mtree_add5_0_o(37 downto 0);


	--GND(CONSTANT,0)@0
    GND_q <= "0";

	--d_u0_m0_wo0_memread_q_17(DELAY,853)@10
    d_u0_m0_wo0_memread_q_17 : dspba_delay
    GENERIC MAP ( width => 1, depth => 7 )
    PORT MAP ( xin => xIn_v, xout => d_u0_m0_wo0_memread_q_17_q, clk => clk, aclr => areset );

	--u0_m0_wo0_oseq_gated_reg(REG,154)@17
    u0_m0_wo0_oseq_gated_reg: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_oseq_gated_reg_q <= "0";
        ELSIF rising_edge(clk) THEN
            u0_m0_wo0_oseq_gated_reg_q <= d_u0_m0_wo0_memread_q_17_q;
        END IF;
    END PROCESS;


	--xOut(PORTOUT,157)@18
    xOut_v <= u0_m0_wo0_oseq_gated_reg_q;
    xOut_c <= STD_LOGIC_VECTOR("0000000" & GND_q);
    xOut_0 <= u0_m0_wo0_mtree_add5_0_q;


end normal;
