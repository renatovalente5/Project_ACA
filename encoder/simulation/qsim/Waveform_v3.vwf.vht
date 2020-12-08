-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "12/08/2020 04:30:18"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          encoder_CRC_8_v3
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY encoder_CRC_8_v3_vhd_vec_tst IS
END encoder_CRC_8_v3_vhd_vec_tst;
ARCHITECTURE encoder_CRC_8_v3_arch OF encoder_CRC_8_v3_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL a : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL r : STD_LOGIC_VECTOR(7 DOWNTO 0);
COMPONENT encoder_CRC_8_v3
	PORT (
	a : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	r : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : encoder_CRC_8_v3
	PORT MAP (
-- list connections between master ports and signals
	a => a,
	r => r
	);
-- a[15]
t_prcs_a_15: PROCESS
BEGIN
	a(15) <= '1';
	WAIT FOR 610000 ps;
	a(15) <= '0';
WAIT;
END PROCESS t_prcs_a_15;
-- a[14]
t_prcs_a_14: PROCESS
BEGIN
	a(14) <= '0';
	WAIT FOR 410000 ps;
	a(14) <= '1';
WAIT;
END PROCESS t_prcs_a_14;
-- a[13]
t_prcs_a_13: PROCESS
BEGIN
	a(13) <= '1';
	WAIT FOR 80000 ps;
	a(13) <= '0';
	WAIT FOR 140000 ps;
	a(13) <= '1';
	WAIT FOR 390000 ps;
	a(13) <= '0';
WAIT;
END PROCESS t_prcs_a_13;
-- a[12]
t_prcs_a_12: PROCESS
BEGIN
	a(12) <= '0';
	WAIT FOR 80000 ps;
	a(12) <= '1';
	WAIT FOR 140000 ps;
	a(12) <= '0';
	WAIT FOR 590000 ps;
	a(12) <= '1';
WAIT;
END PROCESS t_prcs_a_12;
-- a[11]
t_prcs_a_11: PROCESS
BEGIN
	a(11) <= '1';
	WAIT FOR 80000 ps;
	a(11) <= '0';
	WAIT FOR 140000 ps;
	a(11) <= '1';
WAIT;
END PROCESS t_prcs_a_11;
-- a[10]
t_prcs_a_10: PROCESS
BEGIN
	a(10) <= '0';
	WAIT FOR 410000 ps;
	a(10) <= '1';
	WAIT FOR 200000 ps;
	a(10) <= '0';
WAIT;
END PROCESS t_prcs_a_10;
-- a[9]
t_prcs_a_9: PROCESS
BEGIN
	a(9) <= '0';
WAIT;
END PROCESS t_prcs_a_9;
-- a[8]
t_prcs_a_8: PROCESS
BEGIN
	a(8) <= '0';
	WAIT FOR 410000 ps;
	a(8) <= '1';
WAIT;
END PROCESS t_prcs_a_8;
-- a[7]
t_prcs_a_7: PROCESS
BEGIN
	a(7) <= '1';
	WAIT FOR 610000 ps;
	a(7) <= '0';
WAIT;
END PROCESS t_prcs_a_7;
-- a[6]
t_prcs_a_6: PROCESS
BEGIN
	a(6) <= '1';
	WAIT FOR 810000 ps;
	a(6) <= '0';
WAIT;
END PROCESS t_prcs_a_6;
-- a[5]
t_prcs_a_5: PROCESS
BEGIN
	a(5) <= '1';
WAIT;
END PROCESS t_prcs_a_5;
-- a[4]
t_prcs_a_4: PROCESS
BEGIN
	a(4) <= '1';
	WAIT FOR 410000 ps;
	a(4) <= '0';
	WAIT FOR 400000 ps;
	a(4) <= '1';
WAIT;
END PROCESS t_prcs_a_4;
-- a[3]
t_prcs_a_3: PROCESS
BEGIN
	a(3) <= '0';
WAIT;
END PROCESS t_prcs_a_3;
-- a[2]
t_prcs_a_2: PROCESS
BEGIN
	a(2) <= '1';
	WAIT FOR 410000 ps;
	a(2) <= '0';
	WAIT FOR 200000 ps;
	a(2) <= '1';
WAIT;
END PROCESS t_prcs_a_2;
-- a[1]
t_prcs_a_1: PROCESS
BEGIN
	a(1) <= '0';
	WAIT FOR 80000 ps;
	a(1) <= '1';
	WAIT FOR 140000 ps;
	a(1) <= '0';
	WAIT FOR 190000 ps;
	a(1) <= '1';
WAIT;
END PROCESS t_prcs_a_1;
-- a[0]
t_prcs_a_0: PROCESS
BEGIN
	a(0) <= '1';
	WAIT FOR 80000 ps;
	a(0) <= '0';
	WAIT FOR 140000 ps;
	a(0) <= '1';
	WAIT FOR 190000 ps;
	a(0) <= '0';
	WAIT FOR 200000 ps;
	a(0) <= '1';
WAIT;
END PROCESS t_prcs_a_0;
END encoder_CRC_8_v3_arch;