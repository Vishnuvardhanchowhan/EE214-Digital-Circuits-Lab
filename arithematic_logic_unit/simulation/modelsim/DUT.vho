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
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "09/26/2021 02:16:41"

-- 
-- Device: Altera 5M1270ZT144C5 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY IEEE;
LIBRARY MAXV;
USE IEEE.STD_LOGIC_1164.ALL;
USE MAXV.MAXV_COMPONENTS.ALL;

ENTITY 	DUT IS
    PORT (
	input_vector : IN std_logic_vector(9 DOWNTO 0);
	output_vector : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END DUT;

-- Design Ports Information


ARCHITECTURE structure OF DUT IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_input_vector : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_output_vector : std_logic_vector(7 DOWNTO 0);
SIGNAL \add_instance|op[0]~0_combout\ : std_logic;
SIGNAL \add_instance|op[1]~1_combout\ : std_logic;
SIGNAL \add_instance|op[1]~2_combout\ : std_logic;
SIGNAL \add_instance|op[1]~3_combout\ : std_logic;
SIGNAL \add_instance|op[2]~4_combout\ : std_logic;
SIGNAL \add_instance|carry~0_combout\ : std_logic;
SIGNAL \add_instance|sum~0_combout\ : std_logic;
SIGNAL \add_instance|op[2]~5_combout\ : std_logic;
SIGNAL \add_instance|op[3]~11_combout\ : std_logic;
SIGNAL \add_instance|carry~1_combout\ : std_logic;
SIGNAL \add_instance|carry~2_combout\ : std_logic;
SIGNAL \add_instance|sum~1_combout\ : std_logic;
SIGNAL \add_instance|op[3]~12_combout\ : std_logic;
SIGNAL \add_instance|carry~3_combout\ : std_logic;
SIGNAL \add_instance|op[4]~6_combout\ : std_logic;
SIGNAL \add_instance|op[4]~7_combout\ : std_logic;
SIGNAL \add_instance|op[5]~8_combout\ : std_logic;
SIGNAL \add_instance|op[6]~9_combout\ : std_logic;
SIGNAL \add_instance|op[7]~10_combout\ : std_logic;
SIGNAL \input_vector~combout\ : std_logic_vector(9 DOWNTO 0);

BEGIN

ww_input_vector <= input_vector;
output_vector <= ww_output_vector;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: PIN_67,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[9]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(9),
	combout => \input_vector~combout\(9));

-- Location: PIN_55,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(4),
	combout => \input_vector~combout\(4));

-- Location: PIN_45,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(0),
	combout => \input_vector~combout\(0));

-- Location: PIN_62,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(8),
	combout => \input_vector~combout\(8));

-- Location: LC_X9_Y4_N8
\add_instance|op[0]~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|op[0]~0_combout\ = (\input_vector~combout\(9) & (!\input_vector~combout\(8) & (\input_vector~combout\(4) $ (\input_vector~combout\(0))))) # (!\input_vector~combout\(9) & (\input_vector~combout\(0) $ (((\input_vector~combout\(4) & 
-- \input_vector~combout\(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1478",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(9),
	datab => \input_vector~combout\(4),
	datac => \input_vector~combout\(0),
	datad => \input_vector~combout\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|op[0]~0_combout\);

-- Location: LC_X9_Y4_N1
\add_instance|op[1]~1\ : maxv_lcell
-- Equation(s):
-- \add_instance|op[1]~1_combout\ = ((\input_vector~combout\(4) & ((\input_vector~combout\(0)) # (\input_vector~combout\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \input_vector~combout\(4),
	datac => \input_vector~combout\(0),
	datad => \input_vector~combout\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|op[1]~1_combout\);

-- Location: PIN_59,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(5),
	combout => \input_vector~combout\(5));

-- Location: PIN_57,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(1),
	combout => \input_vector~combout\(1));

-- Location: LC_X9_Y4_N6
\add_instance|op[1]~2\ : maxv_lcell
-- Equation(s):
-- \add_instance|op[1]~2_combout\ = (\input_vector~combout\(9) & (!\input_vector~combout\(8) & (\input_vector~combout\(5) $ (\input_vector~combout\(1))))) # (!\input_vector~combout\(9) & (\input_vector~combout\(1) $ (((\input_vector~combout\(5) & 
-- \input_vector~combout\(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1478",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(9),
	datab => \input_vector~combout\(5),
	datac => \input_vector~combout\(1),
	datad => \input_vector~combout\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|op[1]~2_combout\);

-- Location: LC_X9_Y4_N3
\add_instance|op[1]~3\ : maxv_lcell
-- Equation(s):
-- \add_instance|op[1]~3_combout\ = (\add_instance|op[1]~2_combout\ $ (((\add_instance|op[1]~1_combout\ & \input_vector~combout\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3cf0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|op[1]~1_combout\,
	datac => \add_instance|op[1]~2_combout\,
	datad => \input_vector~combout\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|op[1]~3_combout\);

-- Location: PIN_84,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(2),
	combout => \input_vector~combout\(2));

-- Location: PIN_66,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(6),
	combout => \input_vector~combout\(6));

-- Location: LC_X11_Y4_N4
\add_instance|op[2]~4\ : maxv_lcell
-- Equation(s):
-- \add_instance|op[2]~4_combout\ = (\input_vector~combout\(8) & (\input_vector~combout\(9))) # (!\input_vector~combout\(8) & (\input_vector~combout\(2) $ (((\input_vector~combout\(9) & \input_vector~combout\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9ab8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(9),
	datab => \input_vector~combout\(8),
	datac => \input_vector~combout\(2),
	datad => \input_vector~combout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|op[2]~4_combout\);

-- Location: LC_X9_Y4_N5
\add_instance|carry~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|carry~0_combout\ = (\input_vector~combout\(1) & ((\input_vector~combout\(5)) # ((\input_vector~combout\(0) & \input_vector~combout\(4))))) # (!\input_vector~combout\(1) & (\input_vector~combout\(0) & (\input_vector~combout\(4) & 
-- \input_vector~combout\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f880",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(0),
	datab => \input_vector~combout\(4),
	datac => \input_vector~combout\(1),
	datad => \input_vector~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|carry~0_combout\);

-- Location: LC_X11_Y4_N3
\add_instance|sum~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|sum~0_combout\ = \add_instance|carry~0_combout\ $ (\input_vector~combout\(6) $ ((\input_vector~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9696",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|carry~0_combout\,
	datab => \input_vector~combout\(6),
	datac => \input_vector~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|sum~0_combout\);

-- Location: LC_X11_Y4_N7
\add_instance|op[2]~5\ : maxv_lcell
-- Equation(s):
-- \add_instance|op[2]~5_combout\ = (\add_instance|op[2]~4_combout\ & ((\input_vector~combout\(5)) # ((!\input_vector~combout\(8))))) # (!\add_instance|op[2]~4_combout\ & (((\input_vector~combout\(8) & \add_instance|sum~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "da8a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|op[2]~4_combout\,
	datab => \input_vector~combout\(5),
	datac => \input_vector~combout\(8),
	datad => \add_instance|sum~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|op[2]~5_combout\);

-- Location: PIN_60,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(7),
	combout => \input_vector~combout\(7));

-- Location: PIN_81,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(3),
	combout => \input_vector~combout\(3));

-- Location: LC_X11_Y4_N6
\add_instance|op[3]~11\ : maxv_lcell
-- Equation(s):
-- \add_instance|op[3]~11_combout\ = (\input_vector~combout\(8) & (!\input_vector~combout\(9))) # (!\input_vector~combout\(8) & (\input_vector~combout\(3) $ (((\input_vector~combout\(9) & \input_vector~combout\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5764",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(9),
	datab => \input_vector~combout\(8),
	datac => \input_vector~combout\(7),
	datad => \input_vector~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|op[3]~11_combout\);

-- Location: LC_X11_Y4_N5
\add_instance|carry~1\ : maxv_lcell
-- Equation(s):
-- \add_instance|carry~1_combout\ = ((\input_vector~combout\(2) & (\add_instance|carry~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \input_vector~combout\(2),
	datac => \add_instance|carry~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|carry~1_combout\);

-- Location: LC_X11_Y4_N1
\add_instance|carry~2\ : maxv_lcell
-- Equation(s):
-- \add_instance|carry~2_combout\ = (\input_vector~combout\(6) & ((\add_instance|carry~0_combout\) # ((\input_vector~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c8c8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|carry~0_combout\,
	datab => \input_vector~combout\(6),
	datac => \input_vector~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|carry~2_combout\);

-- Location: LC_X11_Y4_N0
\add_instance|sum~1\ : maxv_lcell
-- Equation(s):
-- \add_instance|sum~1_combout\ = \input_vector~combout\(7) $ (\input_vector~combout\(3) $ (((\add_instance|carry~1_combout\) # (\add_instance|carry~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e11e",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|carry~1_combout\,
	datab => \add_instance|carry~2_combout\,
	datac => \input_vector~combout\(7),
	datad => \input_vector~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|sum~1_combout\);

-- Location: LC_X11_Y4_N8
\add_instance|op[3]~12\ : maxv_lcell
-- Equation(s):
-- \add_instance|op[3]~12_combout\ = (\add_instance|op[3]~11_combout\ & ((\add_instance|sum~1_combout\) # ((!\input_vector~combout\(8))))) # (!\add_instance|op[3]~11_combout\ & (((\input_vector~combout\(8) & \input_vector~combout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "da8a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|op[3]~11_combout\,
	datab => \add_instance|sum~1_combout\,
	datac => \input_vector~combout\(8),
	datad => \input_vector~combout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|op[3]~12_combout\);

-- Location: LC_X11_Y4_N2
\add_instance|carry~3\ : maxv_lcell
-- Equation(s):
-- \add_instance|carry~3_combout\ = (\input_vector~combout\(7) & ((\add_instance|carry~1_combout\) # ((\add_instance|carry~2_combout\) # (\input_vector~combout\(3))))) # (!\input_vector~combout\(7) & (\input_vector~combout\(3) & 
-- ((\add_instance|carry~1_combout\) # (\add_instance|carry~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fee0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|carry~1_combout\,
	datab => \add_instance|carry~2_combout\,
	datac => \input_vector~combout\(7),
	datad => \input_vector~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|carry~3_combout\);

-- Location: LC_X9_Y4_N4
\add_instance|op[4]~6\ : maxv_lcell
-- Equation(s):
-- \add_instance|op[4]~6_combout\ = ((\input_vector~combout\(8) & ((\add_instance|carry~3_combout\))) # (!\input_vector~combout\(8) & (\input_vector~combout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \input_vector~combout\(4),
	datac => \add_instance|carry~3_combout\,
	datad => \input_vector~combout\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|op[4]~6_combout\);

-- Location: LC_X9_Y4_N2
\add_instance|op[4]~7\ : maxv_lcell
-- Equation(s):
-- \add_instance|op[4]~7_combout\ = (\input_vector~combout\(9) & (\input_vector~combout\(7) & ((\input_vector~combout\(8))))) # (!\input_vector~combout\(9) & (((\add_instance|op[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d850",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(9),
	datab => \input_vector~combout\(7),
	datac => \add_instance|op[4]~6_combout\,
	datad => \input_vector~combout\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|op[4]~7_combout\);

-- Location: LC_X9_Y4_N7
\add_instance|op[5]~8\ : maxv_lcell
-- Equation(s):
-- \add_instance|op[5]~8_combout\ = (!\input_vector~combout\(9) & (\input_vector~combout\(5) & ((!\input_vector~combout\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0044",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(9),
	datab => \input_vector~combout\(5),
	datad => \input_vector~combout\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|op[5]~8_combout\);

-- Location: LC_X11_Y4_N9
\add_instance|op[6]~9\ : maxv_lcell
-- Equation(s):
-- \add_instance|op[6]~9_combout\ = (!\input_vector~combout\(9) & (((!\input_vector~combout\(8) & \input_vector~combout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0500",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(9),
	datac => \input_vector~combout\(8),
	datad => \input_vector~combout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|op[6]~9_combout\);

-- Location: LC_X9_Y4_N9
\add_instance|op[7]~10\ : maxv_lcell
-- Equation(s):
-- \add_instance|op[7]~10_combout\ = (!\input_vector~combout\(9) & (\input_vector~combout\(7) & ((!\input_vector~combout\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0044",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(9),
	datab => \input_vector~combout\(7),
	datad => \input_vector~combout\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|op[7]~10_combout\);

-- Location: PIN_49,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|op[0]~0_combout\,
	oe => VCC,
	padio => ww_output_vector(0));

-- Location: PIN_52,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|op[1]~3_combout\,
	oe => VCC,
	padio => ww_output_vector(1));

-- Location: PIN_61,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|op[2]~5_combout\,
	oe => VCC,
	padio => ww_output_vector(2));

-- Location: PIN_51,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|op[3]~12_combout\,
	oe => VCC,
	padio => ww_output_vector(3));

-- Location: PIN_28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|op[4]~7_combout\,
	oe => VCC,
	padio => ww_output_vector(4));

-- Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|op[5]~8_combout\,
	oe => VCC,
	padio => ww_output_vector(5));

-- Location: PIN_63,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|op[6]~9_combout\,
	oe => VCC,
	padio => ww_output_vector(6));

-- Location: PIN_53,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|op[7]~10_combout\,
	oe => VCC,
	padio => ww_output_vector(7));
END structure;


