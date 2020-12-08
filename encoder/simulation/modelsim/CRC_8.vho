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

-- DATE "12/08/2020 05:02:57"

-- 
-- Device: Altera EP4CE6E22C6 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_101,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	encoder_CRC_8 IS
    PORT (
	a : IN std_logic_vector(15 DOWNTO 0);
	r : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END encoder_CRC_8;

-- Design Ports Information
-- r[0]	=>  Location: PIN_50,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[1]	=>  Location: PIN_42,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[2]	=>  Location: PIN_38,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[3]	=>  Location: PIN_51,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[4]	=>  Location: PIN_138,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[5]	=>  Location: PIN_44,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[6]	=>  Location: PIN_39,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[7]	=>  Location: PIN_43,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[9]	=>  Location: PIN_137,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[10]	=>  Location: PIN_30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[7]	=>  Location: PIN_31,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[8]	=>  Location: PIN_32,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[5]	=>  Location: PIN_33,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[3]	=>  Location: PIN_46,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[0]	=>  Location: PIN_49,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[12]	=>  Location: PIN_76,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[11]	=>  Location: PIN_52,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[15]	=>  Location: PIN_136,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[1]	=>  Location: PIN_34,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[13]	=>  Location: PIN_24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[4]	=>  Location: PIN_25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[6]	=>  Location: PIN_55,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[2]	=>  Location: PIN_54,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[14]	=>  Location: PIN_53,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF encoder_CRC_8 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_a : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_r : std_logic_vector(7 DOWNTO 0);
SIGNAL \r[0]~output_o\ : std_logic;
SIGNAL \r[1]~output_o\ : std_logic;
SIGNAL \r[2]~output_o\ : std_logic;
SIGNAL \r[3]~output_o\ : std_logic;
SIGNAL \r[4]~output_o\ : std_logic;
SIGNAL \r[5]~output_o\ : std_logic;
SIGNAL \r[6]~output_o\ : std_logic;
SIGNAL \r[7]~output_o\ : std_logic;
SIGNAL \a[10]~input_o\ : std_logic;
SIGNAL \a[7]~input_o\ : std_logic;
SIGNAL \a[9]~input_o\ : std_logic;
SIGNAL \a[8]~input_o\ : std_logic;
SIGNAL \xor_10_9_8_7|y~combout\ : std_logic;
SIGNAL \a[0]~input_o\ : std_logic;
SIGNAL \a[3]~input_o\ : std_logic;
SIGNAL \a[5]~input_o\ : std_logic;
SIGNAL \a[12]~input_o\ : std_logic;
SIGNAL \xor_r0|xor_final|y~0_combout\ : std_logic;
SIGNAL \a[11]~input_o\ : std_logic;
SIGNAL \a[15]~input_o\ : std_logic;
SIGNAL \xor_r0|xor_final|y~1_combout\ : std_logic;
SIGNAL \a[4]~input_o\ : std_logic;
SIGNAL \a[6]~input_o\ : std_logic;
SIGNAL \xor_r1|xor_final|y~0_combout\ : std_logic;
SIGNAL \a[13]~input_o\ : std_logic;
SIGNAL \a[1]~input_o\ : std_logic;
SIGNAL \xor_13_5_3_1|y~combout\ : std_logic;
SIGNAL \xor_r1|xor_final|y~1_combout\ : std_logic;
SIGNAL \xor_10_9_1|y~combout\ : std_logic;
SIGNAL \a[14]~input_o\ : std_logic;
SIGNAL \a[2]~input_o\ : std_logic;
SIGNAL \xor_14_11_4_2|y~0_combout\ : std_logic;
SIGNAL \xor_r2|xor_final|y~0_combout\ : std_logic;
SIGNAL \xor_r2|xor_final|y~1_combout\ : std_logic;
SIGNAL \xor_r3|xor_final|y~0_combout\ : std_logic;
SIGNAL \xor_r3|xor_final|y~combout\ : std_logic;
SIGNAL \xor_r4|xor_final|y~2_combout\ : std_logic;
SIGNAL \xor_r4|xor_final|y~combout\ : std_logic;
SIGNAL \xor_r5|xor_final|y~0_combout\ : std_logic;
SIGNAL \xor_r5|xor_final|y~1_combout\ : std_logic;
SIGNAL \xor_r5|xor_final|y~2_combout\ : std_logic;
SIGNAL \xor_r6|y~combout\ : std_logic;
SIGNAL \xor_r7|y~combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_a <= a;
r <= ww_r;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X13_Y0_N2
\r[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \xor_r0|xor_final|y~1_combout\,
	devoe => ww_devoe,
	o => \r[0]~output_o\);

-- Location: IOOBUF_X3_Y0_N2
\r[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \xor_r1|xor_final|y~1_combout\,
	devoe => ww_devoe,
	o => \r[1]~output_o\);

-- Location: IOOBUF_X1_Y0_N23
\r[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \xor_r2|xor_final|y~1_combout\,
	devoe => ww_devoe,
	o => \r[2]~output_o\);

-- Location: IOOBUF_X16_Y0_N23
\r[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \xor_r3|xor_final|y~combout\,
	devoe => ww_devoe,
	o => \r[3]~output_o\);

-- Location: IOOBUF_X7_Y24_N9
\r[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \xor_r4|xor_final|y~combout\,
	devoe => ww_devoe,
	o => \r[4]~output_o\);

-- Location: IOOBUF_X5_Y0_N16
\r[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \xor_r5|xor_final|y~2_combout\,
	devoe => ww_devoe,
	o => \r[5]~output_o\);

-- Location: IOOBUF_X1_Y0_N16
\r[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \xor_r6|y~combout\,
	devoe => ww_devoe,
	o => \r[6]~output_o\);

-- Location: IOOBUF_X5_Y0_N23
\r[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \xor_r7|y~combout\,
	devoe => ww_devoe,
	o => \r[7]~output_o\);

-- Location: IOIBUF_X0_Y8_N15
\a[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(10),
	o => \a[10]~input_o\);

-- Location: IOIBUF_X0_Y7_N1
\a[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(7),
	o => \a[7]~input_o\);

-- Location: IOIBUF_X7_Y24_N1
\a[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(9),
	o => \a[9]~input_o\);

-- Location: IOIBUF_X0_Y6_N15
\a[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(8),
	o => \a[8]~input_o\);

-- Location: LCCOMB_X7_Y4_N24
\xor_10_9_8_7|y\ : cycloneive_lcell_comb
-- Equation(s):
-- \xor_10_9_8_7|y~combout\ = \a[10]~input_o\ $ (\a[7]~input_o\ $ (\a[9]~input_o\ $ (\a[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[10]~input_o\,
	datab => \a[7]~input_o\,
	datac => \a[9]~input_o\,
	datad => \a[8]~input_o\,
	combout => \xor_10_9_8_7|y~combout\);

-- Location: IOIBUF_X13_Y0_N15
\a[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(0),
	o => \a[0]~input_o\);

-- Location: IOIBUF_X7_Y0_N1
\a[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(3),
	o => \a[3]~input_o\);

-- Location: IOIBUF_X0_Y6_N22
\a[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(5),
	o => \a[5]~input_o\);

-- Location: IOIBUF_X34_Y4_N22
\a[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(12),
	o => \a[12]~input_o\);

-- Location: LCCOMB_X7_Y4_N2
\xor_r0|xor_final|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \xor_r0|xor_final|y~0_combout\ = \a[0]~input_o\ $ (\a[3]~input_o\ $ (\a[5]~input_o\ $ (\a[12]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[0]~input_o\,
	datab => \a[3]~input_o\,
	datac => \a[5]~input_o\,
	datad => \a[12]~input_o\,
	combout => \xor_r0|xor_final|y~0_combout\);

-- Location: IOIBUF_X16_Y0_N8
\a[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(11),
	o => \a[11]~input_o\);

-- Location: IOIBUF_X9_Y24_N8
\a[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(15),
	o => \a[15]~input_o\);

-- Location: LCCOMB_X7_Y4_N20
\xor_r0|xor_final|y~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \xor_r0|xor_final|y~1_combout\ = \xor_10_9_8_7|y~combout\ $ (\xor_r0|xor_final|y~0_combout\ $ (\a[11]~input_o\ $ (\a[15]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xor_10_9_8_7|y~combout\,
	datab => \xor_r0|xor_final|y~0_combout\,
	datac => \a[11]~input_o\,
	datad => \a[15]~input_o\,
	combout => \xor_r0|xor_final|y~1_combout\);

-- Location: IOIBUF_X0_Y11_N22
\a[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(4),
	o => \a[4]~input_o\);

-- Location: IOIBUF_X18_Y0_N15
\a[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(6),
	o => \a[6]~input_o\);

-- Location: LCCOMB_X7_Y4_N8
\xor_r1|xor_final|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \xor_r1|xor_final|y~0_combout\ = \a[15]~input_o\ $ (\a[4]~input_o\ $ (\a[0]~input_o\ $ (\a[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[15]~input_o\,
	datab => \a[4]~input_o\,
	datac => \a[0]~input_o\,
	datad => \a[6]~input_o\,
	combout => \xor_r1|xor_final|y~0_combout\);

-- Location: IOIBUF_X0_Y11_N15
\a[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(13),
	o => \a[13]~input_o\);

-- Location: IOIBUF_X0_Y5_N15
\a[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(1),
	o => \a[1]~input_o\);

-- Location: LCCOMB_X7_Y4_N6
\xor_13_5_3_1|y\ : cycloneive_lcell_comb
-- Equation(s):
-- \xor_13_5_3_1|y~combout\ = \a[13]~input_o\ $ (\a[5]~input_o\ $ (\a[1]~input_o\ $ (\a[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[13]~input_o\,
	datab => \a[5]~input_o\,
	datac => \a[1]~input_o\,
	datad => \a[3]~input_o\,
	combout => \xor_13_5_3_1|y~combout\);

-- Location: LCCOMB_X7_Y4_N10
\xor_r1|xor_final|y~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \xor_r1|xor_final|y~1_combout\ = \xor_r1|xor_final|y~0_combout\ $ (\a[7]~input_o\ $ (\xor_13_5_3_1|y~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \xor_r1|xor_final|y~0_combout\,
	datac => \a[7]~input_o\,
	datad => \xor_13_5_3_1|y~combout\,
	combout => \xor_r1|xor_final|y~1_combout\);

-- Location: LCCOMB_X7_Y4_N0
\xor_10_9_1|y\ : cycloneive_lcell_comb
-- Equation(s):
-- \xor_10_9_1|y~combout\ = \a[10]~input_o\ $ (\a[9]~input_o\ $ (\a[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[10]~input_o\,
	datab => \a[9]~input_o\,
	datac => \a[1]~input_o\,
	combout => \xor_10_9_1|y~combout\);

-- Location: IOIBUF_X16_Y0_N1
\a[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(14),
	o => \a[14]~input_o\);

-- Location: IOIBUF_X18_Y0_N22
\a[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(2),
	o => \a[2]~input_o\);

-- Location: LCCOMB_X7_Y4_N4
\xor_14_11_4_2|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \xor_14_11_4_2|y~0_combout\ = \a[11]~input_o\ $ (\a[4]~input_o\ $ (\a[14]~input_o\ $ (\a[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[11]~input_o\,
	datab => \a[4]~input_o\,
	datac => \a[14]~input_o\,
	datad => \a[2]~input_o\,
	combout => \xor_14_11_4_2|y~0_combout\);

-- Location: LCCOMB_X7_Y4_N30
\xor_r2|xor_final|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \xor_r2|xor_final|y~0_combout\ = \a[0]~input_o\ $ (\a[3]~input_o\ $ (\xor_14_11_4_2|y~0_combout\ $ (\a[12]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[0]~input_o\,
	datab => \a[3]~input_o\,
	datac => \xor_14_11_4_2|y~0_combout\,
	datad => \a[12]~input_o\,
	combout => \xor_r2|xor_final|y~0_combout\);

-- Location: LCCOMB_X7_Y4_N26
\xor_r2|xor_final|y~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \xor_r2|xor_final|y~1_combout\ = \a[15]~input_o\ $ (\xor_10_9_1|y~combout\ $ (\xor_r2|xor_final|y~0_combout\ $ (\a[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[15]~input_o\,
	datab => \xor_10_9_1|y~combout\,
	datac => \xor_r2|xor_final|y~0_combout\,
	datad => \a[6]~input_o\,
	combout => \xor_r2|xor_final|y~1_combout\);

-- Location: LCCOMB_X7_Y4_N28
\xor_r3|xor_final|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \xor_r3|xor_final|y~0_combout\ = \a[13]~input_o\ $ (\a[9]~input_o\ $ (\a[1]~input_o\ $ (\a[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[13]~input_o\,
	datab => \a[9]~input_o\,
	datac => \a[1]~input_o\,
	datad => \a[2]~input_o\,
	combout => \xor_r3|xor_final|y~0_combout\);

-- Location: LCCOMB_X7_Y4_N14
\xor_r3|xor_final|y\ : cycloneive_lcell_comb
-- Equation(s):
-- \xor_r3|xor_final|y~combout\ = \a[0]~input_o\ $ (\a[8]~input_o\ $ (\a[4]~input_o\ $ (\xor_r3|xor_final|y~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[0]~input_o\,
	datab => \a[8]~input_o\,
	datac => \a[4]~input_o\,
	datad => \xor_r3|xor_final|y~0_combout\,
	combout => \xor_r3|xor_final|y~combout\);

-- Location: LCCOMB_X7_Y4_N16
\xor_r4|xor_final|y~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \xor_r4|xor_final|y~2_combout\ = \a[5]~input_o\ $ (\a[3]~input_o\ $ (\a[14]~input_o\ $ (\a[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[5]~input_o\,
	datab => \a[3]~input_o\,
	datac => \a[14]~input_o\,
	datad => \a[2]~input_o\,
	combout => \xor_r4|xor_final|y~2_combout\);

-- Location: LCCOMB_X7_Y4_N22
\xor_r4|xor_final|y\ : cycloneive_lcell_comb
-- Equation(s):
-- \xor_r4|xor_final|y~combout\ = \a[10]~input_o\ $ (\a[1]~input_o\ $ (\a[9]~input_o\ $ (\xor_r4|xor_final|y~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[10]~input_o\,
	datab => \a[1]~input_o\,
	datac => \a[9]~input_o\,
	datad => \xor_r4|xor_final|y~2_combout\,
	combout => \xor_r4|xor_final|y~combout\);

-- Location: LCCOMB_X7_Y4_N18
\xor_r5|xor_final|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \xor_r5|xor_final|y~0_combout\ = \a[0]~input_o\ $ (\a[8]~input_o\ $ (\a[7]~input_o\ $ (\a[12]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[0]~input_o\,
	datab => \a[8]~input_o\,
	datac => \a[7]~input_o\,
	datad => \a[12]~input_o\,
	combout => \xor_r5|xor_final|y~0_combout\);

-- Location: LCCOMB_X7_Y4_N12
\xor_r5|xor_final|y~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \xor_r5|xor_final|y~1_combout\ = \a[5]~input_o\ $ (\a[4]~input_o\ $ (\a[9]~input_o\ $ (\a[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[5]~input_o\,
	datab => \a[4]~input_o\,
	datac => \a[9]~input_o\,
	datad => \a[2]~input_o\,
	combout => \xor_r5|xor_final|y~1_combout\);

-- Location: LCCOMB_X6_Y4_N24
\xor_r5|xor_final|y~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \xor_r5|xor_final|y~2_combout\ = \xor_r5|xor_final|y~0_combout\ $ (\xor_r5|xor_final|y~1_combout\ $ (\a[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \xor_r5|xor_final|y~0_combout\,
	datac => \xor_r5|xor_final|y~1_combout\,
	datad => \a[6]~input_o\,
	combout => \xor_r5|xor_final|y~2_combout\);

-- Location: LCCOMB_X6_Y4_N10
\xor_r6|y\ : cycloneive_lcell_comb
-- Equation(s):
-- \xor_r6|y~combout\ = \xor_13_5_3_1|y~combout\ $ (\xor_10_9_8_7|y~combout\ $ (\a[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xor_13_5_3_1|y~combout\,
	datab => \xor_10_9_8_7|y~combout\,
	datad => \a[6]~input_o\,
	combout => \xor_r6|y~combout\);

-- Location: LCCOMB_X6_Y4_N4
\xor_r7|y\ : cycloneive_lcell_comb
-- Equation(s):
-- \xor_r7|y~combout\ = \xor_14_11_4_2|y~0_combout\ $ (\xor_10_9_8_7|y~combout\ $ (\a[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xor_14_11_4_2|y~0_combout\,
	datab => \xor_10_9_8_7|y~combout\,
	datad => \a[6]~input_o\,
	combout => \xor_r7|y~combout\);

ww_r(0) <= \r[0]~output_o\;

ww_r(1) <= \r[1]~output_o\;

ww_r(2) <= \r[2]~output_o\;

ww_r(3) <= \r[3]~output_o\;

ww_r(4) <= \r[4]~output_o\;

ww_r(5) <= \r[5]~output_o\;

ww_r(6) <= \r[6]~output_o\;

ww_r(7) <= \r[7]~output_o\;
END structure;


