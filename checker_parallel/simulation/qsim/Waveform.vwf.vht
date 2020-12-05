-- Copyright (C) 2017  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "12/05/2020 16:58:27"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          checker_CRC_8
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY checker_CRC_8_vhd_vec_tst IS
END checker_CRC_8_vhd_vec_tst;
ARCHITECTURE checker_CRC_8_arch OF checker_CRC_8_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL a : STD_LOGIC_VECTOR(23 DOWNTO 0);
SIGNAL check : STD_LOGIC;
SIGNAL check_err : STD_LOGIC_VECTOR(7 DOWNTO 0);
COMPONENT checker_CRC_8
	PORT (
	a : IN STD_LOGIC_VECTOR(23 DOWNTO 0);
	check : OUT STD_LOGIC;
	check_err : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : checker_CRC_8
	PORT MAP (
-- list connections between master ports and signals
	a => a,
	check => check,
	check_err => check_err
	);
-- a[23]
t_prcs_a_23: PROCESS
BEGIN
	a(23) <= '1';
WAIT;
END PROCESS t_prcs_a_23;
-- a[22]
t_prcs_a_22: PROCESS
BEGIN
	a(22) <= '0';
WAIT;
END PROCESS t_prcs_a_22;
-- a[21]
t_prcs_a_21: PROCESS
BEGIN
	a(21) <= '0';
WAIT;
END PROCESS t_prcs_a_21;
-- a[20]
t_prcs_a_20: PROCESS
BEGIN
	a(20) <= '1';
WAIT;
END PROCESS t_prcs_a_20;
-- a[19]
t_prcs_a_19: PROCESS
BEGIN
	a(19) <= '0';
WAIT;
END PROCESS t_prcs_a_19;
-- a[18]
t_prcs_a_18: PROCESS
BEGIN
	a(18) <= '0';
WAIT;
END PROCESS t_prcs_a_18;
-- a[17]
t_prcs_a_17: PROCESS
BEGIN
	a(17) <= '0';
WAIT;
END PROCESS t_prcs_a_17;
-- a[16]
t_prcs_a_16: PROCESS
BEGIN
	a(16) <= '0';
WAIT;
END PROCESS t_prcs_a_16;
-- a[15]
t_prcs_a_15: PROCESS
BEGIN
	a(15) <= '1';
WAIT;
END PROCESS t_prcs_a_15;
-- a[14]
t_prcs_a_14: PROCESS
BEGIN
	a(14) <= '1';
WAIT;
END PROCESS t_prcs_a_14;
-- a[13]
t_prcs_a_13: PROCESS
BEGIN
	a(13) <= '1';
WAIT;
END PROCESS t_prcs_a_13;
-- a[12]
t_prcs_a_12: PROCESS
BEGIN
	a(12) <= '1';
WAIT;
END PROCESS t_prcs_a_12;
-- a[11]
t_prcs_a_11: PROCESS
BEGIN
	a(11) <= '0';
WAIT;
END PROCESS t_prcs_a_11;
-- a[10]
t_prcs_a_10: PROCESS
BEGIN
	a(10) <= '1';
WAIT;
END PROCESS t_prcs_a_10;
-- a[9]
t_prcs_a_9: PROCESS
BEGIN
	a(9) <= '1';
WAIT;
END PROCESS t_prcs_a_9;
-- a[8]
t_prcs_a_8: PROCESS
BEGIN
	a(8) <= '0';
WAIT;
END PROCESS t_prcs_a_8;
-- a[7]
t_prcs_a_7: PROCESS
BEGIN
	a(7) <= '0';
WAIT;
END PROCESS t_prcs_a_7;
-- a[6]
t_prcs_a_6: PROCESS
BEGIN
	a(6) <= '0';
WAIT;
END PROCESS t_prcs_a_6;
-- a[5]
t_prcs_a_5: PROCESS
BEGIN
	a(5) <= '0';
WAIT;
END PROCESS t_prcs_a_5;
-- a[4]
t_prcs_a_4: PROCESS
BEGIN
	a(4) <= '1';
WAIT;
END PROCESS t_prcs_a_4;
-- a[3]
t_prcs_a_3: PROCESS
BEGIN
	a(3) <= '1';
WAIT;
END PROCESS t_prcs_a_3;
-- a[2]
t_prcs_a_2: PROCESS
BEGIN
	a(2) <= '0';
WAIT;
END PROCESS t_prcs_a_2;
-- a[1]
t_prcs_a_1: PROCESS
BEGIN
	a(1) <= '0';
WAIT;
END PROCESS t_prcs_a_1;
-- a[0]
t_prcs_a_0: PROCESS
BEGIN
	a(0) <= '0';
WAIT;
END PROCESS t_prcs_a_0;
END checker_CRC_8_arch;
