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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.0 Build 711 06/05/2020 SJ Lite Edition"

-- DATE "12/08/2020 05:38:42"

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
	a_r : IN std_logic_vector(23 DOWNTO 0);
	check : BUFFER std_logic
	);
END checker_CRC_8;

-- Design Ports Information
-- check	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_r[14]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_r[17]	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_r[18]	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_r[15]	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_r[16]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_r[6]	=>  Location: PIN_N10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_r[11]	=>  Location: PIN_N13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_r[9]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_r[21]	=>  Location: PIN_L11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_r[13]	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_r[10]	=>  Location: PIN_M11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_r[22]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_r[12]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_r[19]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_r[2]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_r[8]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_r[20]	=>  Location: PIN_K10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_r[23]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_r[7]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_r[0]	=>  Location: PIN_M13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_r[1]	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_r[5]	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_r[3]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_r[4]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_a_r : std_logic_vector(23 DOWNTO 0);
SIGNAL ww_check : std_logic;
SIGNAL \check~output_o\ : std_logic;
SIGNAL \a_r[15]~input_o\ : std_logic;
SIGNAL \a_r[1]~input_o\ : std_logic;
SIGNAL \a_r[12]~input_o\ : std_logic;
SIGNAL \a_r[14]~input_o\ : std_logic;
SIGNAL \a_r[23]~input_o\ : std_logic;
SIGNAL \a_r[8]~input_o\ : std_logic;
SIGNAL \error_1|y~0_combout\ : std_logic;
SIGNAL \a_r[13]~input_o\ : std_logic;
SIGNAL \a_r[21]~input_o\ : std_logic;
SIGNAL \a_r[11]~input_o\ : std_logic;
SIGNAL \a_r[9]~input_o\ : std_logic;
SIGNAL \encode_crc8|xor_13_5_3_1|y~combout\ : std_logic;
SIGNAL \error_1|y~1_combout\ : std_logic;
SIGNAL \a_r[17]~input_o\ : std_logic;
SIGNAL \a_r[5]~input_o\ : std_logic;
SIGNAL \a_r[10]~input_o\ : std_logic;
SIGNAL \error_5|y~1_combout\ : std_logic;
SIGNAL \a_r[16]~input_o\ : std_logic;
SIGNAL \a_r[20]~input_o\ : std_logic;
SIGNAL \error_5|y~0_combout\ : std_logic;
SIGNAL \error_5|y~2_combout\ : std_logic;
SIGNAL \a_r[18]~input_o\ : std_logic;
SIGNAL \a_r[4]~input_o\ : std_logic;
SIGNAL \error_4|y~0_combout\ : std_logic;
SIGNAL \a_r[22]~input_o\ : std_logic;
SIGNAL \error_4|y~1_combout\ : std_logic;
SIGNAL \error_3|y~0_combout\ : std_logic;
SIGNAL \a_r[3]~input_o\ : std_logic;
SIGNAL \error_3|y~1_combout\ : std_logic;
SIGNAL \check~2_combout\ : std_logic;
SIGNAL \a_r[19]~input_o\ : std_logic;
SIGNAL \encode_crc8|xor_14_11_4_2|y~0_combout\ : std_logic;
SIGNAL \a_r[7]~input_o\ : std_logic;
SIGNAL \encode_crc8|xor_10_9_8_7|y~combout\ : std_logic;
SIGNAL \error_7|y~0_combout\ : std_logic;
SIGNAL \encode_crc8|xor_a15_6|y~combout\ : std_logic;
SIGNAL \error_2|y~1_combout\ : std_logic;
SIGNAL \a_r[6]~input_o\ : std_logic;
SIGNAL \error_6|y~0_combout\ : std_logic;
SIGNAL \a_r[2]~input_o\ : std_logic;
SIGNAL \error_2|y~0_combout\ : std_logic;
SIGNAL \check~0_combout\ : std_logic;
SIGNAL \a_r[0]~input_o\ : std_logic;
SIGNAL \error_0|y~0_combout\ : std_logic;
SIGNAL \error_0|y~1_combout\ : std_logic;
SIGNAL \check~1_combout\ : std_logic;
SIGNAL \check~3_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_a_r <= a_r;
check <= ww_check;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X14_Y0_N2
\check~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \check~3_combout\,
	devoe => ww_devoe,
	o => \check~output_o\);

-- Location: IOIBUF_X26_Y0_N1
\a_r[15]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_r(15),
	o => \a_r[15]~input_o\);

-- Location: IOIBUF_X14_Y0_N8
\a_r[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_r(1),
	o => \a_r[1]~input_o\);

-- Location: IOIBUF_X22_Y0_N8
\a_r[12]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_r(12),
	o => \a_r[12]~input_o\);

-- Location: IOIBUF_X16_Y0_N8
\a_r[14]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_r(14),
	o => \a_r[14]~input_o\);

-- Location: IOIBUF_X20_Y0_N8
\a_r[23]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_r(23),
	o => \a_r[23]~input_o\);

-- Location: IOIBUF_X24_Y31_N1
\a_r[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_r(8),
	o => \a_r[8]~input_o\);

-- Location: LCCOMB_X23_Y3_N8
\error_1|y~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \error_1|y~0_combout\ = \a_r[12]~input_o\ $ (\a_r[14]~input_o\ $ (\a_r[23]~input_o\ $ (\a_r[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a_r[12]~input_o\,
	datab => \a_r[14]~input_o\,
	datac => \a_r[23]~input_o\,
	datad => \a_r[8]~input_o\,
	combout => \error_1|y~0_combout\);

-- Location: IOIBUF_X33_Y12_N8
\a_r[13]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_r(13),
	o => \a_r[13]~input_o\);

-- Location: IOIBUF_X31_Y0_N1
\a_r[21]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_r(21),
	o => \a_r[21]~input_o\);

-- Location: IOIBUF_X33_Y10_N8
\a_r[11]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_r(11),
	o => \a_r[11]~input_o\);

-- Location: IOIBUF_X12_Y0_N8
\a_r[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_r(9),
	o => \a_r[9]~input_o\);

-- Location: LCCOMB_X24_Y4_N26
\encode_crc8|xor_13_5_3_1|y\ : cycloneiv_lcell_comb
-- Equation(s):
-- \encode_crc8|xor_13_5_3_1|y~combout\ = \a_r[13]~input_o\ $ (\a_r[21]~input_o\ $ (\a_r[11]~input_o\ $ (\a_r[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a_r[13]~input_o\,
	datab => \a_r[21]~input_o\,
	datac => \a_r[11]~input_o\,
	datad => \a_r[9]~input_o\,
	combout => \encode_crc8|xor_13_5_3_1|y~combout\);

-- Location: LCCOMB_X23_Y3_N26
\error_1|y~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \error_1|y~1_combout\ = \a_r[15]~input_o\ $ (\a_r[1]~input_o\ $ (\error_1|y~0_combout\ $ (\encode_crc8|xor_13_5_3_1|y~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a_r[15]~input_o\,
	datab => \a_r[1]~input_o\,
	datac => \error_1|y~0_combout\,
	datad => \encode_crc8|xor_13_5_3_1|y~combout\,
	combout => \error_1|y~1_combout\);

-- Location: IOIBUF_X16_Y0_N1
\a_r[17]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_r(17),
	o => \a_r[17]~input_o\);

-- Location: IOIBUF_X29_Y0_N1
\a_r[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_r(5),
	o => \a_r[5]~input_o\);

-- Location: IOIBUF_X29_Y0_N8
\a_r[10]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_r(10),
	o => \a_r[10]~input_o\);

-- Location: LCCOMB_X24_Y4_N18
\error_5|y~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \error_5|y~1_combout\ = \a_r[17]~input_o\ $ (\a_r[5]~input_o\ $ (\a_r[12]~input_o\ $ (\a_r[10]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a_r[17]~input_o\,
	datab => \a_r[5]~input_o\,
	datac => \a_r[12]~input_o\,
	datad => \a_r[10]~input_o\,
	combout => \error_5|y~1_combout\);

-- Location: IOIBUF_X24_Y31_N8
\a_r[16]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_r(16),
	o => \a_r[16]~input_o\);

-- Location: IOIBUF_X31_Y0_N8
\a_r[20]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_r(20),
	o => \a_r[20]~input_o\);

-- Location: LCCOMB_X24_Y4_N0
\error_5|y~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \error_5|y~0_combout\ = \a_r[16]~input_o\ $ (\a_r[15]~input_o\ $ (\a_r[20]~input_o\ $ (\a_r[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a_r[16]~input_o\,
	datab => \a_r[15]~input_o\,
	datac => \a_r[20]~input_o\,
	datad => \a_r[8]~input_o\,
	combout => \error_5|y~0_combout\);

-- Location: LCCOMB_X24_Y4_N12
\error_5|y~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \error_5|y~2_combout\ = \a_r[13]~input_o\ $ (\error_5|y~1_combout\ $ (\a_r[14]~input_o\ $ (\error_5|y~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a_r[13]~input_o\,
	datab => \error_5|y~1_combout\,
	datac => \a_r[14]~input_o\,
	datad => \error_5|y~0_combout\,
	combout => \error_5|y~2_combout\);

-- Location: IOIBUF_X24_Y0_N8
\a_r[18]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_r(18),
	o => \a_r[18]~input_o\);

-- Location: IOIBUF_X33_Y16_N22
\a_r[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_r(4),
	o => \a_r[4]~input_o\);

-- Location: LCCOMB_X24_Y4_N10
\error_4|y~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \error_4|y~0_combout\ = \a_r[17]~input_o\ $ (\a_r[18]~input_o\ $ (\a_r[4]~input_o\ $ (\a_r[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a_r[17]~input_o\,
	datab => \a_r[18]~input_o\,
	datac => \a_r[4]~input_o\,
	datad => \a_r[9]~input_o\,
	combout => \error_4|y~0_combout\);

-- Location: IOIBUF_X20_Y0_N1
\a_r[22]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_r(22),
	o => \a_r[22]~input_o\);

-- Location: LCCOMB_X24_Y4_N28
\error_4|y~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \error_4|y~1_combout\ = \a_r[13]~input_o\ $ (\a_r[10]~input_o\ $ (\a_r[22]~input_o\ $ (\a_r[11]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a_r[13]~input_o\,
	datab => \a_r[10]~input_o\,
	datac => \a_r[22]~input_o\,
	datad => \a_r[11]~input_o\,
	combout => \error_4|y~1_combout\);

-- Location: LCCOMB_X24_Y4_N14
\error_3|y~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \error_3|y~0_combout\ = \a_r[9]~input_o\ $ (\a_r[10]~input_o\ $ (\a_r[17]~input_o\ $ (\a_r[21]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a_r[9]~input_o\,
	datab => \a_r[10]~input_o\,
	datac => \a_r[17]~input_o\,
	datad => \a_r[21]~input_o\,
	combout => \error_3|y~0_combout\);

-- Location: IOIBUF_X12_Y0_N1
\a_r[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_r(3),
	o => \a_r[3]~input_o\);

-- Location: LCCOMB_X24_Y4_N24
\error_3|y~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \error_3|y~1_combout\ = \a_r[3]~input_o\ $ (\a_r[8]~input_o\ $ (\a_r[12]~input_o\ $ (\a_r[16]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a_r[3]~input_o\,
	datab => \a_r[8]~input_o\,
	datac => \a_r[12]~input_o\,
	datad => \a_r[16]~input_o\,
	combout => \error_3|y~1_combout\);

-- Location: LCCOMB_X24_Y4_N6
\check~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \check~2_combout\ = (\error_4|y~0_combout\ & ((\error_3|y~0_combout\ $ (\error_3|y~1_combout\)) # (!\error_4|y~1_combout\))) # (!\error_4|y~0_combout\ & ((\error_4|y~1_combout\) # (\error_3|y~0_combout\ $ (\error_3|y~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \error_4|y~0_combout\,
	datab => \error_4|y~1_combout\,
	datac => \error_3|y~0_combout\,
	datad => \error_3|y~1_combout\,
	combout => \check~2_combout\);

-- Location: IOIBUF_X8_Y0_N1
\a_r[19]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_r(19),
	o => \a_r[19]~input_o\);

-- Location: LCCOMB_X24_Y4_N20
\encode_crc8|xor_14_11_4_2|y~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \encode_crc8|xor_14_11_4_2|y~0_combout\ = \a_r[19]~input_o\ $ (\a_r[22]~input_o\ $ (\a_r[12]~input_o\ $ (\a_r[10]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a_r[19]~input_o\,
	datab => \a_r[22]~input_o\,
	datac => \a_r[12]~input_o\,
	datad => \a_r[10]~input_o\,
	combout => \encode_crc8|xor_14_11_4_2|y~0_combout\);

-- Location: IOIBUF_X22_Y0_N1
\a_r[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_r(7),
	o => \a_r[7]~input_o\);

-- Location: LCCOMB_X24_Y4_N8
\encode_crc8|xor_10_9_8_7|y\ : cycloneiv_lcell_comb
-- Equation(s):
-- \encode_crc8|xor_10_9_8_7|y~combout\ = \a_r[17]~input_o\ $ (\a_r[18]~input_o\ $ (\a_r[15]~input_o\ $ (\a_r[16]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a_r[17]~input_o\,
	datab => \a_r[18]~input_o\,
	datac => \a_r[15]~input_o\,
	datad => \a_r[16]~input_o\,
	combout => \encode_crc8|xor_10_9_8_7|y~combout\);

-- Location: LCCOMB_X23_Y3_N12
\error_7|y~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \error_7|y~0_combout\ = \encode_crc8|xor_14_11_4_2|y~0_combout\ $ (\a_r[7]~input_o\ $ (\a_r[14]~input_o\ $ (\encode_crc8|xor_10_9_8_7|y~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encode_crc8|xor_14_11_4_2|y~0_combout\,
	datab => \a_r[7]~input_o\,
	datac => \a_r[14]~input_o\,
	datad => \encode_crc8|xor_10_9_8_7|y~combout\,
	combout => \error_7|y~0_combout\);

-- Location: LCCOMB_X24_Y4_N16
\encode_crc8|xor_a15_6|y\ : cycloneiv_lcell_comb
-- Equation(s):
-- \encode_crc8|xor_a15_6|y~combout\ = \a_r[23]~input_o\ $ (\a_r[14]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a_r[23]~input_o\,
	datac => \a_r[14]~input_o\,
	combout => \encode_crc8|xor_a15_6|y~combout\);

-- Location: LCCOMB_X24_Y4_N2
\error_2|y~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \error_2|y~1_combout\ = \a_r[9]~input_o\ $ (\a_r[18]~input_o\ $ (\a_r[17]~input_o\ $ (\encode_crc8|xor_a15_6|y~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a_r[9]~input_o\,
	datab => \a_r[18]~input_o\,
	datac => \a_r[17]~input_o\,
	datad => \encode_crc8|xor_a15_6|y~combout\,
	combout => \error_2|y~1_combout\);

-- Location: IOIBUF_X26_Y0_N8
\a_r[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_r(6),
	o => \a_r[6]~input_o\);

-- Location: LCCOMB_X23_Y3_N24
\error_6|y~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \error_6|y~0_combout\ = \a_r[6]~input_o\ $ (\encode_crc8|xor_13_5_3_1|y~combout\ $ (\a_r[14]~input_o\ $ (\encode_crc8|xor_10_9_8_7|y~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a_r[6]~input_o\,
	datab => \encode_crc8|xor_13_5_3_1|y~combout\,
	datac => \a_r[14]~input_o\,
	datad => \encode_crc8|xor_10_9_8_7|y~combout\,
	combout => \error_6|y~0_combout\);

-- Location: IOIBUF_X24_Y0_N1
\a_r[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_r(2),
	o => \a_r[2]~input_o\);

-- Location: LCCOMB_X24_Y4_N30
\error_2|y~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \error_2|y~0_combout\ = \a_r[2]~input_o\ $ (\a_r[8]~input_o\ $ (\a_r[20]~input_o\ $ (\a_r[11]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a_r[2]~input_o\,
	datab => \a_r[8]~input_o\,
	datac => \a_r[20]~input_o\,
	datad => \a_r[11]~input_o\,
	combout => \error_2|y~0_combout\);

-- Location: LCCOMB_X23_Y3_N10
\check~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \check~0_combout\ = (\error_6|y~0_combout\) # (\error_2|y~1_combout\ $ (\error_2|y~0_combout\ $ (\encode_crc8|xor_14_11_4_2|y~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \error_2|y~1_combout\,
	datab => \error_6|y~0_combout\,
	datac => \error_2|y~0_combout\,
	datad => \encode_crc8|xor_14_11_4_2|y~0_combout\,
	combout => \check~0_combout\);

-- Location: IOIBUF_X33_Y10_N1
\a_r[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_r(0),
	o => \a_r[0]~input_o\);

-- Location: LCCOMB_X24_Y4_N4
\error_0|y~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \error_0|y~0_combout\ = \a_r[0]~input_o\ $ (\a_r[8]~input_o\ $ (\a_r[20]~input_o\ $ (\a_r[11]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a_r[0]~input_o\,
	datab => \a_r[8]~input_o\,
	datac => \a_r[20]~input_o\,
	datad => \a_r[11]~input_o\,
	combout => \error_0|y~0_combout\);

-- Location: LCCOMB_X24_Y4_N22
\error_0|y~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \error_0|y~1_combout\ = \a_r[19]~input_o\ $ (\error_0|y~0_combout\ $ (\a_r[23]~input_o\ $ (\a_r[13]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a_r[19]~input_o\,
	datab => \error_0|y~0_combout\,
	datac => \a_r[23]~input_o\,
	datad => \a_r[13]~input_o\,
	combout => \error_0|y~1_combout\);

-- Location: LCCOMB_X23_Y3_N6
\check~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \check~1_combout\ = (\error_7|y~0_combout\) # ((\check~0_combout\) # (\encode_crc8|xor_10_9_8_7|y~combout\ $ (\error_0|y~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \error_7|y~0_combout\,
	datab => \encode_crc8|xor_10_9_8_7|y~combout\,
	datac => \check~0_combout\,
	datad => \error_0|y~1_combout\,
	combout => \check~1_combout\);

-- Location: LCCOMB_X23_Y3_N4
\check~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \check~3_combout\ = (\error_1|y~1_combout\) # ((\error_5|y~2_combout\) # ((\check~2_combout\) # (\check~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \error_1|y~1_combout\,
	datab => \error_5|y~2_combout\,
	datac => \check~2_combout\,
	datad => \check~1_combout\,
	combout => \check~3_combout\);

ww_check <= \check~output_o\;
END structure;


