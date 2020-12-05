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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 17.1.0 Build 590 10/25/2017 SJ Lite Edition"

-- DATE "12/05/2020 17:01:49"

-- 
-- Device: Altera EP4CGX15BF14C6 Package FBGA169
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_NCEO~	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: 16mA
-- ~ALTERA_DATA0~	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_ASDO~	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_NCSO~	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO~~padout\ : std_logic;
SIGNAL \~ALTERA_NCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_ASDO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_NCSO~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	checker_CRC_8 IS
    PORT (
	a : IN std_logic_vector(23 DOWNTO 0);
	check_err : BUFFER std_logic_vector(7 DOWNTO 0);
	check : BUFFER std_logic
	);
END checker_CRC_8;

-- Design Ports Information
-- check_err[0]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- check_err[1]	=>  Location: PIN_K11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- check_err[2]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- check_err[3]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- check_err[4]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- check_err[5]	=>  Location: PIN_L12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- check_err[6]	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- check_err[7]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- check	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[22]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[17]	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[18]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[12]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[14]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[19]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[7]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[10]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[15]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[16]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[13]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[9]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[21]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[6]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[11]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[5]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[20]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[8]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[4]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[3]	=>  Location: PIN_K12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[2]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[23]	=>  Location: PIN_K13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[1]	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[0]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF checker_CRC_8 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_a : std_logic_vector(23 DOWNTO 0);
SIGNAL ww_check_err : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_check : std_logic;
SIGNAL \check_err[0]~output_o\ : std_logic;
SIGNAL \check_err[1]~output_o\ : std_logic;
SIGNAL \check_err[2]~output_o\ : std_logic;
SIGNAL \check_err[3]~output_o\ : std_logic;
SIGNAL \check_err[4]~output_o\ : std_logic;
SIGNAL \check_err[5]~output_o\ : std_logic;
SIGNAL \check_err[6]~output_o\ : std_logic;
SIGNAL \check_err[7]~output_o\ : std_logic;
SIGNAL \check~output_o\ : std_logic;
SIGNAL \a[16]~input_o\ : std_logic;
SIGNAL \a[10]~input_o\ : std_logic;
SIGNAL \a[7]~input_o\ : std_logic;
SIGNAL \a[15]~input_o\ : std_logic;
SIGNAL \error_7|y~0_combout\ : std_logic;
SIGNAL \a[14]~input_o\ : std_logic;
SIGNAL \a[18]~input_o\ : std_logic;
SIGNAL \a[17]~input_o\ : std_logic;
SIGNAL \a[12]~input_o\ : std_logic;
SIGNAL \error_2|y~0_combout\ : std_logic;
SIGNAL \a[22]~input_o\ : std_logic;
SIGNAL \a[19]~input_o\ : std_logic;
SIGNAL \error_7|y~1_combout\ : std_logic;
SIGNAL \error_6|y~0_combout\ : std_logic;
SIGNAL \a[6]~input_o\ : std_logic;
SIGNAL \a[9]~input_o\ : std_logic;
SIGNAL \a[21]~input_o\ : std_logic;
SIGNAL \a[13]~input_o\ : std_logic;
SIGNAL \error_1|y~0_combout\ : std_logic;
SIGNAL \a[11]~input_o\ : std_logic;
SIGNAL \error_6|y~1_combout\ : std_logic;
SIGNAL \a[5]~input_o\ : std_logic;
SIGNAL \error_5|y~0_combout\ : std_logic;
SIGNAL \a[20]~input_o\ : std_logic;
SIGNAL \a[8]~input_o\ : std_logic;
SIGNAL \error_5|y~1_combout\ : std_logic;
SIGNAL \error_5|y~2_combout\ : std_logic;
SIGNAL \a[4]~input_o\ : std_logic;
SIGNAL \error_4|y~0_combout\ : std_logic;
SIGNAL \encode_crc8|xor_a_2_1|y~combout\ : std_logic;
SIGNAL \error_4|y~combout\ : std_logic;
SIGNAL \a[3]~input_o\ : std_logic;
SIGNAL \error_3|y~0_combout\ : std_logic;
SIGNAL \error_3|y~combout\ : std_logic;
SIGNAL \a[23]~input_o\ : std_logic;
SIGNAL \error_2|y~2_combout\ : std_logic;
SIGNAL \error_2|y~3_combout\ : std_logic;
SIGNAL \a[2]~input_o\ : std_logic;
SIGNAL \error_2|y~1_combout\ : std_logic;
SIGNAL \error_2|y~combout\ : std_logic;
SIGNAL \a[1]~input_o\ : std_logic;
SIGNAL \error_1|y~1_combout\ : std_logic;
SIGNAL \error_1|y~2_combout\ : std_logic;
SIGNAL \a[0]~input_o\ : std_logic;
SIGNAL \error_0|y~0_combout\ : std_logic;
SIGNAL \error_0|y~1_combout\ : std_logic;
SIGNAL \check~1_combout\ : std_logic;
SIGNAL \check~0_combout\ : std_logic;
SIGNAL \check~2_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_a <= a;
check_err <= ww_check_err;
check <= ww_check;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X33_Y24_N2
\check_err[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \error_7|y~1_combout\,
	devoe => ww_devoe,
	o => \check_err[0]~output_o\);

-- Location: IOOBUF_X33_Y11_N2
\check_err[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \error_6|y~1_combout\,
	devoe => ww_devoe,
	o => \check_err[1]~output_o\);

-- Location: IOOBUF_X33_Y15_N9
\check_err[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \error_5|y~2_combout\,
	devoe => ww_devoe,
	o => \check_err[2]~output_o\);

-- Location: IOOBUF_X33_Y14_N2
\check_err[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \error_4|y~combout\,
	devoe => ww_devoe,
	o => \check_err[3]~output_o\);

-- Location: IOOBUF_X29_Y31_N2
\check_err[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \error_3|y~combout\,
	devoe => ww_devoe,
	o => \check_err[4]~output_o\);

-- Location: IOOBUF_X33_Y12_N2
\check_err[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \error_2|y~combout\,
	devoe => ww_devoe,
	o => \check_err[5]~output_o\);

-- Location: IOOBUF_X33_Y12_N9
\check_err[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \error_1|y~2_combout\,
	devoe => ww_devoe,
	o => \check_err[6]~output_o\);

-- Location: IOOBUF_X29_Y31_N9
\check_err[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \error_0|y~1_combout\,
	devoe => ww_devoe,
	o => \check_err[7]~output_o\);

-- Location: IOOBUF_X33_Y22_N9
\check~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \check~2_combout\,
	devoe => ww_devoe,
	o => \check~output_o\);

-- Location: IOIBUF_X26_Y31_N8
\a[16]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(16),
	o => \a[16]~input_o\);

-- Location: IOIBUF_X31_Y31_N8
\a[10]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(10),
	o => \a[10]~input_o\);

-- Location: IOIBUF_X31_Y31_N1
\a[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(7),
	o => \a[7]~input_o\);

-- Location: IOIBUF_X33_Y25_N1
\a[15]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(15),
	o => \a[15]~input_o\);

-- Location: LCCOMB_X31_Y27_N26
\error_7|y~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \error_7|y~0_combout\ = \a[16]~input_o\ $ (\a[10]~input_o\ $ (\a[7]~input_o\ $ (\a[15]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[16]~input_o\,
	datab => \a[10]~input_o\,
	datac => \a[7]~input_o\,
	datad => \a[15]~input_o\,
	combout => \error_7|y~0_combout\);

-- Location: IOIBUF_X20_Y31_N1
\a[14]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(14),
	o => \a[14]~input_o\);

-- Location: IOIBUF_X14_Y31_N1
\a[18]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(18),
	o => \a[18]~input_o\);

-- Location: IOIBUF_X16_Y0_N1
\a[17]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(17),
	o => \a[17]~input_o\);

-- Location: IOIBUF_X33_Y25_N8
\a[12]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(12),
	o => \a[12]~input_o\);

-- Location: LCCOMB_X31_Y27_N24
\error_2|y~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \error_2|y~0_combout\ = \a[14]~input_o\ $ (\a[18]~input_o\ $ (\a[17]~input_o\ $ (\a[12]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[14]~input_o\,
	datab => \a[18]~input_o\,
	datac => \a[17]~input_o\,
	datad => \a[12]~input_o\,
	combout => \error_2|y~0_combout\);

-- Location: IOIBUF_X16_Y0_N8
\a[22]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(22),
	o => \a[22]~input_o\);

-- Location: IOIBUF_X33_Y24_N8
\a[19]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(19),
	o => \a[19]~input_o\);

-- Location: LCCOMB_X31_Y27_N12
\error_7|y~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \error_7|y~1_combout\ = \error_7|y~0_combout\ $ (\error_2|y~0_combout\ $ (\a[22]~input_o\ $ (\a[19]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \error_7|y~0_combout\,
	datab => \error_2|y~0_combout\,
	datac => \a[22]~input_o\,
	datad => \a[19]~input_o\,
	combout => \error_7|y~1_combout\);

-- Location: LCCOMB_X31_Y27_N16
\error_6|y~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \error_6|y~0_combout\ = \a[16]~input_o\ $ (\a[18]~input_o\ $ (\a[17]~input_o\ $ (\a[15]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[16]~input_o\,
	datab => \a[18]~input_o\,
	datac => \a[17]~input_o\,
	datad => \a[15]~input_o\,
	combout => \error_6|y~0_combout\);

-- Location: IOIBUF_X33_Y14_N8
\a[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(6),
	o => \a[6]~input_o\);

-- Location: IOIBUF_X24_Y31_N8
\a[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(9),
	o => \a[9]~input_o\);

-- Location: IOIBUF_X22_Y31_N1
\a[21]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(21),
	o => \a[21]~input_o\);

-- Location: IOIBUF_X33_Y27_N8
\a[13]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(13),
	o => \a[13]~input_o\);

-- Location: LCCOMB_X31_Y27_N14
\error_1|y~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \error_1|y~0_combout\ = \a[14]~input_o\ $ (\a[9]~input_o\ $ (\a[21]~input_o\ $ (\a[13]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[14]~input_o\,
	datab => \a[9]~input_o\,
	datac => \a[21]~input_o\,
	datad => \a[13]~input_o\,
	combout => \error_1|y~0_combout\);

-- Location: IOIBUF_X33_Y16_N8
\a[11]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(11),
	o => \a[11]~input_o\);

-- Location: LCCOMB_X31_Y26_N16
\error_6|y~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \error_6|y~1_combout\ = \error_6|y~0_combout\ $ (\a[6]~input_o\ $ (\error_1|y~0_combout\ $ (\a[11]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \error_6|y~0_combout\,
	datab => \a[6]~input_o\,
	datac => \error_1|y~0_combout\,
	datad => \a[11]~input_o\,
	combout => \error_6|y~1_combout\);

-- Location: IOIBUF_X33_Y16_N1
\a[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(5),
	o => \a[5]~input_o\);

-- Location: LCCOMB_X31_Y27_N10
\error_5|y~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \error_5|y~0_combout\ = \a[16]~input_o\ $ (\a[5]~input_o\ $ (\a[10]~input_o\ $ (\a[15]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[16]~input_o\,
	datab => \a[5]~input_o\,
	datac => \a[10]~input_o\,
	datad => \a[15]~input_o\,
	combout => \error_5|y~0_combout\);

-- Location: IOIBUF_X33_Y28_N8
\a[20]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(20),
	o => \a[20]~input_o\);

-- Location: IOIBUF_X33_Y28_N1
\a[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(8),
	o => \a[8]~input_o\);

-- Location: LCCOMB_X31_Y27_N20
\error_5|y~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \error_5|y~1_combout\ = \a[20]~input_o\ $ (\a[8]~input_o\ $ (\a[17]~input_o\ $ (\a[12]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[20]~input_o\,
	datab => \a[8]~input_o\,
	datac => \a[17]~input_o\,
	datad => \a[12]~input_o\,
	combout => \error_5|y~1_combout\);

-- Location: LCCOMB_X31_Y27_N30
\error_5|y~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \error_5|y~2_combout\ = \error_5|y~0_combout\ $ (\error_5|y~1_combout\ $ (\a[14]~input_o\ $ (\a[13]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \error_5|y~0_combout\,
	datab => \error_5|y~1_combout\,
	datac => \a[14]~input_o\,
	datad => \a[13]~input_o\,
	combout => \error_5|y~2_combout\);

-- Location: IOIBUF_X33_Y27_N1
\a[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(4),
	o => \a[4]~input_o\);

-- Location: LCCOMB_X31_Y27_N8
\error_4|y~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \error_4|y~0_combout\ = \a[4]~input_o\ $ (\a[18]~input_o\ $ (\a[17]~input_o\ $ (\a[13]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[4]~input_o\,
	datab => \a[18]~input_o\,
	datac => \a[17]~input_o\,
	datad => \a[13]~input_o\,
	combout => \error_4|y~0_combout\);

-- Location: LCCOMB_X31_Y27_N18
\encode_crc8|xor_a_2_1|y\ : cycloneiv_lcell_comb
-- Equation(s):
-- \encode_crc8|xor_a_2_1|y~combout\ = \a[9]~input_o\ $ (\a[10]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a[9]~input_o\,
	datac => \a[10]~input_o\,
	combout => \encode_crc8|xor_a_2_1|y~combout\);

-- Location: LCCOMB_X31_Y26_N10
\error_4|y\ : cycloneiv_lcell_comb
-- Equation(s):
-- \error_4|y~combout\ = \error_4|y~0_combout\ $ (\encode_crc8|xor_a_2_1|y~combout\ $ (\a[22]~input_o\ $ (\a[11]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \error_4|y~0_combout\,
	datab => \encode_crc8|xor_a_2_1|y~combout\,
	datac => \a[22]~input_o\,
	datad => \a[11]~input_o\,
	combout => \error_4|y~combout\);

-- Location: IOIBUF_X33_Y11_N8
\a[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(3),
	o => \a[3]~input_o\);

-- Location: LCCOMB_X31_Y27_N4
\error_3|y~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \error_3|y~0_combout\ = \a[3]~input_o\ $ (\a[12]~input_o\ $ (\a[17]~input_o\ $ (\a[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[3]~input_o\,
	datab => \a[12]~input_o\,
	datac => \a[17]~input_o\,
	datad => \a[8]~input_o\,
	combout => \error_3|y~0_combout\);

-- Location: LCCOMB_X31_Y27_N6
\error_3|y\ : cycloneiv_lcell_comb
-- Equation(s):
-- \error_3|y~combout\ = \a[16]~input_o\ $ (\error_3|y~0_combout\ $ (\a[21]~input_o\ $ (\encode_crc8|xor_a_2_1|y~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[16]~input_o\,
	datab => \error_3|y~0_combout\,
	datac => \a[21]~input_o\,
	datad => \encode_crc8|xor_a_2_1|y~combout\,
	combout => \error_3|y~combout\);

-- Location: IOIBUF_X33_Y15_N1
\a[23]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(23),
	o => \a[23]~input_o\);

-- Location: LCCOMB_X31_Y26_N12
\error_2|y~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \error_2|y~2_combout\ = \a[23]~input_o\ $ (\a[11]~input_o\ $ (\a[19]~input_o\ $ (\a[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[23]~input_o\,
	datab => \a[11]~input_o\,
	datac => \a[19]~input_o\,
	datad => \a[8]~input_o\,
	combout => \error_2|y~2_combout\);

-- Location: LCCOMB_X31_Y26_N14
\error_2|y~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \error_2|y~3_combout\ = \error_2|y~2_combout\ $ (\a[20]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \error_2|y~2_combout\,
	datac => \a[20]~input_o\,
	combout => \error_2|y~3_combout\);

-- Location: IOIBUF_X24_Y31_N1
\a[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(2),
	o => \a[2]~input_o\);

-- Location: LCCOMB_X31_Y27_N0
\error_2|y~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \error_2|y~1_combout\ = \a[9]~input_o\ $ (\a[10]~input_o\ $ (\a[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a[9]~input_o\,
	datac => \a[10]~input_o\,
	datad => \a[2]~input_o\,
	combout => \error_2|y~1_combout\);

-- Location: LCCOMB_X31_Y27_N2
\error_2|y\ : cycloneiv_lcell_comb
-- Equation(s):
-- \error_2|y~combout\ = \error_2|y~3_combout\ $ (\error_2|y~1_combout\ $ (\a[22]~input_o\ $ (\error_2|y~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \error_2|y~3_combout\,
	datab => \error_2|y~1_combout\,
	datac => \a[22]~input_o\,
	datad => \error_2|y~0_combout\,
	combout => \error_2|y~combout\);

-- Location: IOIBUF_X33_Y22_N1
\a[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(1),
	o => \a[1]~input_o\);

-- Location: LCCOMB_X31_Y26_N0
\error_1|y~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \error_1|y~1_combout\ = \a[23]~input_o\ $ (\a[11]~input_o\ $ (\a[1]~input_o\ $ (\a[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[23]~input_o\,
	datab => \a[11]~input_o\,
	datac => \a[1]~input_o\,
	datad => \a[8]~input_o\,
	combout => \error_1|y~1_combout\);

-- Location: LCCOMB_X31_Y26_N18
\error_1|y~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \error_1|y~2_combout\ = \a[15]~input_o\ $ (\error_1|y~1_combout\ $ (\error_1|y~0_combout\ $ (\a[12]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[15]~input_o\,
	datab => \error_1|y~1_combout\,
	datac => \error_1|y~0_combout\,
	datad => \a[12]~input_o\,
	combout => \error_1|y~2_combout\);

-- Location: IOIBUF_X26_Y31_N1
\a[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(0),
	o => \a[0]~input_o\);

-- Location: LCCOMB_X31_Y27_N28
\error_0|y~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \error_0|y~0_combout\ = \a[0]~input_o\ $ (\a[18]~input_o\ $ (\a[17]~input_o\ $ (\a[13]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[0]~input_o\,
	datab => \a[18]~input_o\,
	datac => \a[17]~input_o\,
	datad => \a[13]~input_o\,
	combout => \error_0|y~0_combout\);

-- Location: LCCOMB_X31_Y27_N22
\error_0|y~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \error_0|y~1_combout\ = \error_2|y~3_combout\ $ (\error_0|y~0_combout\ $ (\a[16]~input_o\ $ (\a[15]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \error_2|y~3_combout\,
	datab => \error_0|y~0_combout\,
	datac => \a[16]~input_o\,
	datad => \a[15]~input_o\,
	combout => \error_0|y~1_combout\);

-- Location: LCCOMB_X31_Y26_N6
\check~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \check~1_combout\ = (\error_4|y~combout\) # ((\error_3|y~combout\) # (\error_1|y~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \error_4|y~combout\,
	datac => \error_3|y~combout\,
	datad => \error_1|y~2_combout\,
	combout => \check~1_combout\);

-- Location: LCCOMB_X31_Y26_N4
\check~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \check~0_combout\ = (\error_0|y~1_combout\) # ((\error_7|y~1_combout\) # (\error_2|y~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \error_0|y~1_combout\,
	datab => \error_7|y~1_combout\,
	datac => \error_2|y~combout\,
	combout => \check~0_combout\);

-- Location: LCCOMB_X31_Y26_N24
\check~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \check~2_combout\ = (\check~1_combout\) # ((\check~0_combout\) # ((\error_5|y~2_combout\) # (\error_6|y~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \check~1_combout\,
	datab => \check~0_combout\,
	datac => \error_5|y~2_combout\,
	datad => \error_6|y~1_combout\,
	combout => \check~2_combout\);

ww_check_err(0) <= \check_err[0]~output_o\;

ww_check_err(1) <= \check_err[1]~output_o\;

ww_check_err(2) <= \check_err[2]~output_o\;

ww_check_err(3) <= \check_err[3]~output_o\;

ww_check_err(4) <= \check_err[4]~output_o\;

ww_check_err(5) <= \check_err[5]~output_o\;

ww_check_err(6) <= \check_err[6]~output_o\;

ww_check_err(7) <= \check_err[7]~output_o\;

ww_check <= \check~output_o\;
END structure;


