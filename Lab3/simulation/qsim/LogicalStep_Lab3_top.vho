-- Copyright (C) 2019  Intel Corporation. All rights reserved.
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
-- VERSION "Version 19.1.0 Build 670 09/22/2019 SJ Lite Edition"

-- DATE "03/12/2021 16:46:39"

-- 
-- Device: Altera 10M08DAF484C8G Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_H9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_G9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_F8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	LogicalStep_Lab3_top IS
    PORT (
	clk_in : IN std_logic;
	pb : IN std_logic_vector(3 DOWNTO 0);
	sw : IN std_logic_vector(7 DOWNTO 0);
	leds : OUT std_logic_vector(11 DOWNTO 0)
	);
END LogicalStep_Lab3_top;

-- Design Ports Information
-- leds[0]	=>  Location: PIN_F5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[1]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[2]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[3]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[4]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[5]	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[6]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[7]	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[8]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[9]	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[10]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[11]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[7]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[3]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pb[3]	=>  Location: PIN_J8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[6]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[2]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[5]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[1]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[4]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[0]	=>  Location: PIN_J9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pb[0]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pb[1]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pb[2]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_in	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF LogicalStep_Lab3_top IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk_in : std_logic;
SIGNAL ww_pb : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_sw : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_leds : std_logic_vector(11 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \clk_in~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \leds[0]~output_o\ : std_logic;
SIGNAL \leds[1]~output_o\ : std_logic;
SIGNAL \leds[2]~output_o\ : std_logic;
SIGNAL \leds[3]~output_o\ : std_logic;
SIGNAL \leds[4]~output_o\ : std_logic;
SIGNAL \leds[5]~output_o\ : std_logic;
SIGNAL \leds[6]~output_o\ : std_logic;
SIGNAL \leds[7]~output_o\ : std_logic;
SIGNAL \leds[8]~output_o\ : std_logic;
SIGNAL \leds[9]~output_o\ : std_logic;
SIGNAL \leds[10]~output_o\ : std_logic;
SIGNAL \leds[11]~output_o\ : std_logic;
SIGNAL \sw[3]~input_o\ : std_logic;
SIGNAL \pb[3]~input_o\ : std_logic;
SIGNAL \sw[7]~input_o\ : std_logic;
SIGNAL \Target_Temp|temp_out[3]~0_combout\ : std_logic;
SIGNAL \sw[6]~input_o\ : std_logic;
SIGNAL \sw[2]~input_o\ : std_logic;
SIGNAL \Target_Temp|temp_out[2]~1_combout\ : std_logic;
SIGNAL \clk_in~input_o\ : std_logic;
SIGNAL \clk_in~inputclkctrl_outclk\ : std_logic;
SIGNAL \pb[2]~input_o\ : std_logic;
SIGNAL \pb[1]~input_o\ : std_logic;
SIGNAL \pb[0]~input_o\ : std_logic;
SIGNAL \Control_Energy|BLOWER~2_combout\ : std_logic;
SIGNAL \HVAC_Sim|Add0~1_cout\ : std_logic;
SIGNAL \HVAC_Sim|Add0~2_combout\ : std_logic;
SIGNAL \HVAC_Sim|counter:cnt[1]~0_combout\ : std_logic;
SIGNAL \HVAC_Sim|counter:cnt[1]~q\ : std_logic;
SIGNAL \sw[1]~input_o\ : std_logic;
SIGNAL \sw[5]~input_o\ : std_logic;
SIGNAL \Target_Temp|temp_out[1]~2_combout\ : std_logic;
SIGNAL \sw[0]~input_o\ : std_logic;
SIGNAL \sw[4]~input_o\ : std_logic;
SIGNAL \Comparator|comp0|AEQB~0_combout\ : std_logic;
SIGNAL \HVAC_Sim|Add0~3\ : std_logic;
SIGNAL \HVAC_Sim|Add0~4_combout\ : std_logic;
SIGNAL \HVAC_Sim|counter:cnt[2]~q\ : std_logic;
SIGNAL \Comparator|ALTB~2_combout\ : std_logic;
SIGNAL \Comparator|AEQB~0_combout\ : std_logic;
SIGNAL \Target_Temp|temp_out[0]~3_combout\ : std_logic;
SIGNAL \Comparator|AGTB~1_combout\ : std_logic;
SIGNAL \Comparator|AGTB~0_combout\ : std_logic;
SIGNAL \HVAC_Sim|counter:cnt[0]~0_combout\ : std_logic;
SIGNAL \HVAC_Sim|counter:cnt[0]~1_combout\ : std_logic;
SIGNAL \HVAC_Sim|counter:cnt[0]~2_combout\ : std_logic;
SIGNAL \HVAC_Sim|counter:cnt[0]~3_combout\ : std_logic;
SIGNAL \HVAC_Sim|counter:cnt[0]~q\ : std_logic;
SIGNAL \HVAC_Sim|counter~0_combout\ : std_logic;
SIGNAL \Comparator|ALTB~1_combout\ : std_logic;
SIGNAL \HVAC_Sim|counter~1_combout\ : std_logic;
SIGNAL \HVAC_Sim|Add0~5\ : std_logic;
SIGNAL \HVAC_Sim|Add0~6_combout\ : std_logic;
SIGNAL \HVAC_Sim|counter:cnt[3]~q\ : std_logic;
SIGNAL \Comparator|ALTB~0_combout\ : std_logic;
SIGNAL \Comparator|ALTB~3_combout\ : std_logic;
SIGNAL \Comparator|AGTB~2_combout\ : std_logic;
SIGNAL \Control_Energy|BLOWER~combout\ : std_logic;
SIGNAL \leds~3_combout\ : std_logic;
SIGNAL \leds~4_combout\ : std_logic;
SIGNAL \leds~5_combout\ : std_logic;
SIGNAL \leds~6_combout\ : std_logic;
SIGNAL \leds~7_combout\ : std_logic;
SIGNAL \leds~8_combout\ : std_logic;
SIGNAL \leds~0_combout\ : std_logic;
SIGNAL \leds~1_combout\ : std_logic;
SIGNAL \leds~2_combout\ : std_logic;
SIGNAL \leds~9_combout\ : std_logic;
SIGNAL \Control_Energy|ALT_INV_BLOWER~combout\ : std_logic;
SIGNAL \Comparator|ALT_INV_AEQB~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk_in <= clk_in;
ww_pb <= pb;
ww_sw <= sw;
leds <= ww_leds;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\clk_in~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk_in~input_o\);
\Control_Energy|ALT_INV_BLOWER~combout\ <= NOT \Control_Energy|BLOWER~combout\;
\Comparator|ALT_INV_AEQB~0_combout\ <= NOT \Comparator|AEQB~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X11_Y22_N20
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X10_Y22_N16
\leds[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Comparator|ALTB~3_combout\,
	devoe => ww_devoe,
	o => \leds[0]~output_o\);

-- Location: IOOBUF_X10_Y22_N2
\leds[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Comparator|ALT_INV_AEQB~0_combout\,
	devoe => ww_devoe,
	o => \leds[1]~output_o\);

-- Location: IOOBUF_X10_Y22_N9
\leds[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Comparator|AGTB~2_combout\,
	devoe => ww_devoe,
	o => \leds[2]~output_o\);

-- Location: IOOBUF_X17_Y25_N23
\leds[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Control_Energy|ALT_INV_BLOWER~combout\,
	devoe => ww_devoe,
	o => \leds[3]~output_o\);

-- Location: IOOBUF_X15_Y25_N23
\leds[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pb[1]~input_o\,
	devoe => ww_devoe,
	o => \leds[4]~output_o\);

-- Location: IOOBUF_X17_Y25_N30
\leds[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pb[0]~input_o\,
	devoe => ww_devoe,
	o => \leds[5]~output_o\);

-- Location: IOOBUF_X13_Y25_N9
\leds[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \leds~9_combout\,
	devoe => ww_devoe,
	o => \leds[6]~output_o\);

-- Location: IOOBUF_X10_Y21_N9
\leds[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pb[3]~input_o\,
	devoe => ww_devoe,
	o => \leds[7]~output_o\);

-- Location: IOOBUF_X13_Y25_N2
\leds[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HVAC_Sim|counter:cnt[0]~q\,
	devoe => ww_devoe,
	o => \leds[8]~output_o\);

-- Location: IOOBUF_X10_Y22_N23
\leds[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HVAC_Sim|counter:cnt[1]~q\,
	devoe => ww_devoe,
	o => \leds[9]~output_o\);

-- Location: IOOBUF_X11_Y25_N30
\leds[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HVAC_Sim|counter:cnt[2]~q\,
	devoe => ww_devoe,
	o => \leds[10]~output_o\);

-- Location: IOOBUF_X13_Y25_N30
\leds[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HVAC_Sim|counter:cnt[3]~q\,
	devoe => ww_devoe,
	o => \leds[11]~output_o\);

-- Location: IOIBUF_X15_Y25_N1
\sw[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(3),
	o => \sw[3]~input_o\);

-- Location: IOIBUF_X10_Y21_N15
\pb[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pb(3),
	o => \pb[3]~input_o\);

-- Location: IOIBUF_X17_Y25_N1
\sw[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(7),
	o => \sw[7]~input_o\);

-- Location: LCCOMB_X14_Y22_N20
\Target_Temp|temp_out[3]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Target_Temp|temp_out[3]~0_combout\ = (\pb[3]~input_o\ & ((\sw[7]~input_o\))) # (!\pb[3]~input_o\ & (\sw[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sw[3]~input_o\,
	datac => \pb[3]~input_o\,
	datad => \sw[7]~input_o\,
	combout => \Target_Temp|temp_out[3]~0_combout\);

-- Location: IOIBUF_X10_Y21_N1
\sw[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(6),
	o => \sw[6]~input_o\);

-- Location: IOIBUF_X17_Y25_N8
\sw[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(2),
	o => \sw[2]~input_o\);

-- Location: LCCOMB_X14_Y22_N22
\Target_Temp|temp_out[2]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Target_Temp|temp_out[2]~1_combout\ = (\pb[3]~input_o\ & (\sw[6]~input_o\)) # (!\pb[3]~input_o\ & ((\sw[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pb[3]~input_o\,
	datac => \sw[6]~input_o\,
	datad => \sw[2]~input_o\,
	combout => \Target_Temp|temp_out[2]~1_combout\);

-- Location: IOIBUF_X0_Y6_N15
\clk_in~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_in,
	o => \clk_in~input_o\);

-- Location: CLKCTRL_G3
\clk_in~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk_in~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk_in~inputclkctrl_outclk\);

-- Location: IOIBUF_X15_Y25_N8
\pb[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pb(2),
	o => \pb[2]~input_o\);

-- Location: IOIBUF_X15_Y25_N29
\pb[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pb(1),
	o => \pb[1]~input_o\);

-- Location: IOIBUF_X17_Y25_N15
\pb[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pb(0),
	o => \pb[0]~input_o\);

-- Location: LCCOMB_X15_Y22_N28
\Control_Energy|BLOWER~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Control_Energy|BLOWER~2_combout\ = (\pb[2]~input_o\) # ((\pb[1]~input_o\) # (\pb[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pb[2]~input_o\,
	datac => \pb[1]~input_o\,
	datad => \pb[0]~input_o\,
	combout => \Control_Energy|BLOWER~2_combout\);

-- Location: LCCOMB_X13_Y22_N16
\HVAC_Sim|Add0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HVAC_Sim|Add0~1_cout\ = CARRY(\HVAC_Sim|counter:cnt[0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \HVAC_Sim|counter:cnt[0]~q\,
	datad => VCC,
	cout => \HVAC_Sim|Add0~1_cout\);

-- Location: LCCOMB_X13_Y22_N18
\HVAC_Sim|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HVAC_Sim|Add0~2_combout\ = (\HVAC_Sim|counter:cnt[1]~q\ & ((\HVAC_Sim|counter~1_combout\ & (!\HVAC_Sim|Add0~1_cout\)) # (!\HVAC_Sim|counter~1_combout\ & (\HVAC_Sim|Add0~1_cout\ & VCC)))) # (!\HVAC_Sim|counter:cnt[1]~q\ & ((\HVAC_Sim|counter~1_combout\ & 
-- ((\HVAC_Sim|Add0~1_cout\) # (GND))) # (!\HVAC_Sim|counter~1_combout\ & (!\HVAC_Sim|Add0~1_cout\))))
-- \HVAC_Sim|Add0~3\ = CARRY((\HVAC_Sim|counter:cnt[1]~q\ & (\HVAC_Sim|counter~1_combout\ & !\HVAC_Sim|Add0~1_cout\)) # (!\HVAC_Sim|counter:cnt[1]~q\ & ((\HVAC_Sim|counter~1_combout\) # (!\HVAC_Sim|Add0~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \HVAC_Sim|counter:cnt[1]~q\,
	datab => \HVAC_Sim|counter~1_combout\,
	datad => VCC,
	cin => \HVAC_Sim|Add0~1_cout\,
	combout => \HVAC_Sim|Add0~2_combout\,
	cout => \HVAC_Sim|Add0~3\);

-- Location: LCCOMB_X13_Y22_N0
\HVAC_Sim|counter:cnt[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HVAC_Sim|counter:cnt[1]~0_combout\ = (\HVAC_Sim|counter:cnt[0]~2_combout\ & ((\HVAC_Sim|Add0~2_combout\))) # (!\HVAC_Sim|counter:cnt[0]~2_combout\ & (\HVAC_Sim|counter:cnt[1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \HVAC_Sim|counter:cnt[0]~2_combout\,
	datac => \HVAC_Sim|counter:cnt[1]~q\,
	datad => \HVAC_Sim|Add0~2_combout\,
	combout => \HVAC_Sim|counter:cnt[1]~0_combout\);

-- Location: FF_X13_Y22_N1
\HVAC_Sim|counter:cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \HVAC_Sim|counter:cnt[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HVAC_Sim|counter:cnt[1]~q\);

-- Location: IOIBUF_X13_Y25_N15
\sw[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(1),
	o => \sw[1]~input_o\);

-- Location: IOIBUF_X15_Y25_N15
\sw[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(5),
	o => \sw[5]~input_o\);

-- Location: LCCOMB_X14_Y22_N0
\Target_Temp|temp_out[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Target_Temp|temp_out[1]~2_combout\ = (\pb[3]~input_o\ & ((\sw[5]~input_o\))) # (!\pb[3]~input_o\ & (\sw[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[1]~input_o\,
	datac => \pb[3]~input_o\,
	datad => \sw[5]~input_o\,
	combout => \Target_Temp|temp_out[1]~2_combout\);

-- Location: IOIBUF_X10_Y21_N22
\sw[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(0),
	o => \sw[0]~input_o\);

-- Location: IOIBUF_X13_Y25_N22
\sw[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(4),
	o => \sw[4]~input_o\);

-- Location: LCCOMB_X14_Y22_N8
\Comparator|comp0|AEQB~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Comparator|comp0|AEQB~0_combout\ = \HVAC_Sim|counter:cnt[0]~q\ $ (((\pb[3]~input_o\ & ((\sw[4]~input_o\))) # (!\pb[3]~input_o\ & (\sw[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[0]~input_o\,
	datab => \sw[4]~input_o\,
	datac => \pb[3]~input_o\,
	datad => \HVAC_Sim|counter:cnt[0]~q\,
	combout => \Comparator|comp0|AEQB~0_combout\);

-- Location: LCCOMB_X13_Y22_N20
\HVAC_Sim|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HVAC_Sim|Add0~4_combout\ = ((\HVAC_Sim|counter:cnt[2]~q\ $ (\HVAC_Sim|counter~1_combout\ $ (\HVAC_Sim|Add0~3\)))) # (GND)
-- \HVAC_Sim|Add0~5\ = CARRY((\HVAC_Sim|counter:cnt[2]~q\ & ((!\HVAC_Sim|Add0~3\) # (!\HVAC_Sim|counter~1_combout\))) # (!\HVAC_Sim|counter:cnt[2]~q\ & (!\HVAC_Sim|counter~1_combout\ & !\HVAC_Sim|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \HVAC_Sim|counter:cnt[2]~q\,
	datab => \HVAC_Sim|counter~1_combout\,
	datad => VCC,
	cin => \HVAC_Sim|Add0~3\,
	combout => \HVAC_Sim|Add0~4_combout\,
	cout => \HVAC_Sim|Add0~5\);

-- Location: FF_X13_Y22_N21
\HVAC_Sim|counter:cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \HVAC_Sim|Add0~4_combout\,
	ena => \HVAC_Sim|counter:cnt[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HVAC_Sim|counter:cnt[2]~q\);

-- Location: LCCOMB_X13_Y22_N28
\Comparator|ALTB~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Comparator|ALTB~2_combout\ = (\Target_Temp|temp_out[3]~0_combout\ & (\HVAC_Sim|counter:cnt[3]~q\ & (\Target_Temp|temp_out[2]~1_combout\ $ (!\HVAC_Sim|counter:cnt[2]~q\)))) # (!\Target_Temp|temp_out[3]~0_combout\ & (!\HVAC_Sim|counter:cnt[3]~q\ & 
-- (\Target_Temp|temp_out[2]~1_combout\ $ (!\HVAC_Sim|counter:cnt[2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Target_Temp|temp_out[3]~0_combout\,
	datab => \Target_Temp|temp_out[2]~1_combout\,
	datac => \HVAC_Sim|counter:cnt[3]~q\,
	datad => \HVAC_Sim|counter:cnt[2]~q\,
	combout => \Comparator|ALTB~2_combout\);

-- Location: LCCOMB_X14_Y22_N10
\Comparator|AEQB~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Comparator|AEQB~0_combout\ = (\Comparator|comp0|AEQB~0_combout\) # ((\HVAC_Sim|counter:cnt[1]~q\ $ (\Target_Temp|temp_out[1]~2_combout\)) # (!\Comparator|ALTB~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HVAC_Sim|counter:cnt[1]~q\,
	datab => \Target_Temp|temp_out[1]~2_combout\,
	datac => \Comparator|comp0|AEQB~0_combout\,
	datad => \Comparator|ALTB~2_combout\,
	combout => \Comparator|AEQB~0_combout\);

-- Location: LCCOMB_X14_Y22_N26
\Target_Temp|temp_out[0]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Target_Temp|temp_out[0]~3_combout\ = (\pb[3]~input_o\ & ((\sw[4]~input_o\))) # (!\pb[3]~input_o\ & (\sw[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[0]~input_o\,
	datac => \pb[3]~input_o\,
	datad => \sw[4]~input_o\,
	combout => \Target_Temp|temp_out[0]~3_combout\);

-- Location: LCCOMB_X13_Y22_N12
\Comparator|AGTB~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Comparator|AGTB~1_combout\ = (\Target_Temp|temp_out[1]~2_combout\ & (!\Target_Temp|temp_out[0]~3_combout\ & (\HVAC_Sim|counter:cnt[0]~q\ & \HVAC_Sim|counter:cnt[1]~q\))) # (!\Target_Temp|temp_out[1]~2_combout\ & ((\HVAC_Sim|counter:cnt[1]~q\) # 
-- ((!\Target_Temp|temp_out[0]~3_combout\ & \HVAC_Sim|counter:cnt[0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Target_Temp|temp_out[1]~2_combout\,
	datab => \Target_Temp|temp_out[0]~3_combout\,
	datac => \HVAC_Sim|counter:cnt[0]~q\,
	datad => \HVAC_Sim|counter:cnt[1]~q\,
	combout => \Comparator|AGTB~1_combout\);

-- Location: LCCOMB_X13_Y22_N26
\Comparator|AGTB~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Comparator|AGTB~0_combout\ = (\Target_Temp|temp_out[3]~0_combout\ & (!\Target_Temp|temp_out[2]~1_combout\ & (\HVAC_Sim|counter:cnt[3]~q\ & \HVAC_Sim|counter:cnt[2]~q\))) # (!\Target_Temp|temp_out[3]~0_combout\ & ((\HVAC_Sim|counter:cnt[3]~q\) # 
-- ((!\Target_Temp|temp_out[2]~1_combout\ & \HVAC_Sim|counter:cnt[2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Target_Temp|temp_out[3]~0_combout\,
	datab => \Target_Temp|temp_out[2]~1_combout\,
	datac => \HVAC_Sim|counter:cnt[3]~q\,
	datad => \HVAC_Sim|counter:cnt[2]~q\,
	combout => \Comparator|AGTB~0_combout\);

-- Location: LCCOMB_X13_Y22_N10
\HVAC_Sim|counter:cnt[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HVAC_Sim|counter:cnt[0]~0_combout\ = (\HVAC_Sim|counter:cnt[3]~q\) # ((\HVAC_Sim|counter:cnt[1]~q\) # ((\HVAC_Sim|counter:cnt[0]~q\) # (\HVAC_Sim|counter:cnt[2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HVAC_Sim|counter:cnt[3]~q\,
	datab => \HVAC_Sim|counter:cnt[1]~q\,
	datac => \HVAC_Sim|counter:cnt[0]~q\,
	datad => \HVAC_Sim|counter:cnt[2]~q\,
	combout => \HVAC_Sim|counter:cnt[0]~0_combout\);

-- Location: LCCOMB_X13_Y22_N24
\HVAC_Sim|counter:cnt[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HVAC_Sim|counter:cnt[0]~1_combout\ = (\HVAC_Sim|counter:cnt[0]~0_combout\ & ((\Comparator|AGTB~0_combout\) # ((\Comparator|AGTB~1_combout\ & \Comparator|ALTB~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Comparator|AGTB~1_combout\,
	datab => \Comparator|ALTB~2_combout\,
	datac => \Comparator|AGTB~0_combout\,
	datad => \HVAC_Sim|counter:cnt[0]~0_combout\,
	combout => \HVAC_Sim|counter:cnt[0]~1_combout\);

-- Location: LCCOMB_X13_Y22_N14
\HVAC_Sim|counter:cnt[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HVAC_Sim|counter:cnt[0]~2_combout\ = (!\Control_Energy|BLOWER~2_combout\ & (\Comparator|AEQB~0_combout\ & ((\HVAC_Sim|counter~1_combout\) # (\HVAC_Sim|counter:cnt[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control_Energy|BLOWER~2_combout\,
	datab => \HVAC_Sim|counter~1_combout\,
	datac => \Comparator|AEQB~0_combout\,
	datad => \HVAC_Sim|counter:cnt[0]~1_combout\,
	combout => \HVAC_Sim|counter:cnt[0]~2_combout\);

-- Location: LCCOMB_X13_Y22_N6
\HVAC_Sim|counter:cnt[0]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HVAC_Sim|counter:cnt[0]~3_combout\ = \HVAC_Sim|counter:cnt[0]~q\ $ (\HVAC_Sim|counter:cnt[0]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \HVAC_Sim|counter:cnt[0]~q\,
	datad => \HVAC_Sim|counter:cnt[0]~2_combout\,
	combout => \HVAC_Sim|counter:cnt[0]~3_combout\);

-- Location: FF_X13_Y22_N7
\HVAC_Sim|counter:cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \HVAC_Sim|counter:cnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HVAC_Sim|counter:cnt[0]~q\);

-- Location: LCCOMB_X13_Y22_N30
\HVAC_Sim|counter~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HVAC_Sim|counter~0_combout\ = (((!\HVAC_Sim|counter:cnt[2]~q\) # (!\HVAC_Sim|counter:cnt[3]~q\)) # (!\HVAC_Sim|counter:cnt[1]~q\)) # (!\HVAC_Sim|counter:cnt[0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HVAC_Sim|counter:cnt[0]~q\,
	datab => \HVAC_Sim|counter:cnt[1]~q\,
	datac => \HVAC_Sim|counter:cnt[3]~q\,
	datad => \HVAC_Sim|counter:cnt[2]~q\,
	combout => \HVAC_Sim|counter~0_combout\);

-- Location: LCCOMB_X13_Y22_N2
\Comparator|ALTB~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Comparator|ALTB~1_combout\ = (\Target_Temp|temp_out[1]~2_combout\ & (((\Target_Temp|temp_out[0]~3_combout\ & !\HVAC_Sim|counter:cnt[0]~q\)) # (!\HVAC_Sim|counter:cnt[1]~q\))) # (!\Target_Temp|temp_out[1]~2_combout\ & (\Target_Temp|temp_out[0]~3_combout\ 
-- & (!\HVAC_Sim|counter:cnt[1]~q\ & !\HVAC_Sim|counter:cnt[0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Target_Temp|temp_out[1]~2_combout\,
	datab => \Target_Temp|temp_out[0]~3_combout\,
	datac => \HVAC_Sim|counter:cnt[1]~q\,
	datad => \HVAC_Sim|counter:cnt[0]~q\,
	combout => \Comparator|ALTB~1_combout\);

-- Location: LCCOMB_X13_Y22_N8
\HVAC_Sim|counter~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HVAC_Sim|counter~1_combout\ = (\HVAC_Sim|counter~0_combout\ & ((\Comparator|ALTB~0_combout\) # ((\Comparator|ALTB~2_combout\ & \Comparator|ALTB~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HVAC_Sim|counter~0_combout\,
	datab => \Comparator|ALTB~2_combout\,
	datac => \Comparator|ALTB~0_combout\,
	datad => \Comparator|ALTB~1_combout\,
	combout => \HVAC_Sim|counter~1_combout\);

-- Location: LCCOMB_X13_Y22_N22
\HVAC_Sim|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HVAC_Sim|Add0~6_combout\ = \HVAC_Sim|counter:cnt[3]~q\ $ (\HVAC_Sim|Add0~5\ $ (!\HVAC_Sim|counter~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \HVAC_Sim|counter:cnt[3]~q\,
	datad => \HVAC_Sim|counter~1_combout\,
	cin => \HVAC_Sim|Add0~5\,
	combout => \HVAC_Sim|Add0~6_combout\);

-- Location: FF_X13_Y22_N23
\HVAC_Sim|counter:cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \HVAC_Sim|Add0~6_combout\,
	ena => \HVAC_Sim|counter:cnt[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HVAC_Sim|counter:cnt[3]~q\);

-- Location: LCCOMB_X13_Y22_N4
\Comparator|ALTB~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Comparator|ALTB~0_combout\ = (\Target_Temp|temp_out[3]~0_combout\ & (((\Target_Temp|temp_out[2]~1_combout\ & !\HVAC_Sim|counter:cnt[2]~q\)) # (!\HVAC_Sim|counter:cnt[3]~q\))) # (!\Target_Temp|temp_out[3]~0_combout\ & (\Target_Temp|temp_out[2]~1_combout\ 
-- & (!\HVAC_Sim|counter:cnt[3]~q\ & !\HVAC_Sim|counter:cnt[2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Target_Temp|temp_out[3]~0_combout\,
	datab => \Target_Temp|temp_out[2]~1_combout\,
	datac => \HVAC_Sim|counter:cnt[3]~q\,
	datad => \HVAC_Sim|counter:cnt[2]~q\,
	combout => \Comparator|ALTB~0_combout\);

-- Location: LCCOMB_X12_Y22_N0
\Comparator|ALTB~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Comparator|ALTB~3_combout\ = (\Comparator|ALTB~0_combout\) # ((\Comparator|ALTB~2_combout\ & \Comparator|ALTB~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Comparator|ALTB~0_combout\,
	datab => \Comparator|ALTB~2_combout\,
	datad => \Comparator|ALTB~1_combout\,
	combout => \Comparator|ALTB~3_combout\);

-- Location: LCCOMB_X12_Y22_N2
\Comparator|AGTB~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Comparator|AGTB~2_combout\ = (\Comparator|AGTB~0_combout\) # ((\Comparator|AGTB~1_combout\ & \Comparator|ALTB~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Comparator|AGTB~0_combout\,
	datac => \Comparator|AGTB~1_combout\,
	datad => \Comparator|ALTB~2_combout\,
	combout => \Comparator|AGTB~2_combout\);

-- Location: LCCOMB_X15_Y22_N30
\Control_Energy|BLOWER\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Control_Energy|BLOWER~combout\ = (\pb[0]~input_o\) # ((\pb[2]~input_o\) # ((\pb[1]~input_o\) # (!\Comparator|AEQB~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pb[0]~input_o\,
	datab => \pb[2]~input_o\,
	datac => \pb[1]~input_o\,
	datad => \Comparator|AEQB~0_combout\,
	combout => \Control_Energy|BLOWER~combout\);

-- Location: LCCOMB_X14_Y22_N14
\leds~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \leds~3_combout\ = (\HVAC_Sim|counter:cnt[1]~q\ & (\sw[0]~input_o\ & (!\HVAC_Sim|counter:cnt[0]~q\ & \sw[1]~input_o\))) # (!\HVAC_Sim|counter:cnt[1]~q\ & ((\sw[1]~input_o\) # ((\sw[0]~input_o\ & !\HVAC_Sim|counter:cnt[0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[0]~input_o\,
	datab => \HVAC_Sim|counter:cnt[0]~q\,
	datac => \HVAC_Sim|counter:cnt[1]~q\,
	datad => \sw[1]~input_o\,
	combout => \leds~3_combout\);

-- Location: LCCOMB_X14_Y22_N16
\leds~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \leds~4_combout\ = (\HVAC_Sim|counter:cnt[2]~q\ & (\leds~3_combout\ & \sw[2]~input_o\)) # (!\HVAC_Sim|counter:cnt[2]~q\ & ((\leds~3_combout\) # (\sw[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HVAC_Sim|counter:cnt[2]~q\,
	datac => \leds~3_combout\,
	datad => \sw[2]~input_o\,
	combout => \leds~4_combout\);

-- Location: LCCOMB_X14_Y22_N18
\leds~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \leds~5_combout\ = (\Comparator|ALTB~3_combout\ & ((\HVAC_Sim|counter:cnt[3]~q\ & (\sw[3]~input_o\ & \leds~4_combout\)) # (!\HVAC_Sim|counter:cnt[3]~q\ & ((\sw[3]~input_o\) # (\leds~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Comparator|ALTB~3_combout\,
	datab => \HVAC_Sim|counter:cnt[3]~q\,
	datac => \sw[3]~input_o\,
	datad => \leds~4_combout\,
	combout => \leds~5_combout\);

-- Location: LCCOMB_X14_Y22_N28
\leds~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \leds~6_combout\ = (\sw[2]~input_o\ & (\HVAC_Sim|counter:cnt[2]~q\ & (\sw[3]~input_o\ $ (!\HVAC_Sim|counter:cnt[3]~q\)))) # (!\sw[2]~input_o\ & (!\HVAC_Sim|counter:cnt[2]~q\ & (\sw[3]~input_o\ $ (!\HVAC_Sim|counter:cnt[3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[2]~input_o\,
	datab => \sw[3]~input_o\,
	datac => \HVAC_Sim|counter:cnt[2]~q\,
	datad => \HVAC_Sim|counter:cnt[3]~q\,
	combout => \leds~6_combout\);

-- Location: LCCOMB_X14_Y22_N2
\leds~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \leds~7_combout\ = (\sw[0]~input_o\ & (\HVAC_Sim|counter:cnt[0]~q\ & (\HVAC_Sim|counter:cnt[1]~q\ $ (!\sw[1]~input_o\)))) # (!\sw[0]~input_o\ & (!\HVAC_Sim|counter:cnt[0]~q\ & (\HVAC_Sim|counter:cnt[1]~q\ $ (!\sw[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[0]~input_o\,
	datab => \HVAC_Sim|counter:cnt[0]~q\,
	datac => \HVAC_Sim|counter:cnt[1]~q\,
	datad => \sw[1]~input_o\,
	combout => \leds~7_combout\);

-- Location: LCCOMB_X14_Y22_N4
\leds~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \leds~8_combout\ = ((!\Comparator|AEQB~0_combout\ & (\leds~6_combout\ & \leds~7_combout\))) # (!\pb[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Comparator|AEQB~0_combout\,
	datab => \leds~6_combout\,
	datac => \pb[2]~input_o\,
	datad => \leds~7_combout\,
	combout => \leds~8_combout\);

-- Location: LCCOMB_X14_Y22_N12
\leds~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \leds~0_combout\ = (\HVAC_Sim|counter:cnt[1]~q\ & (((!\sw[0]~input_o\ & \HVAC_Sim|counter:cnt[0]~q\)) # (!\sw[1]~input_o\))) # (!\HVAC_Sim|counter:cnt[1]~q\ & (!\sw[0]~input_o\ & (\HVAC_Sim|counter:cnt[0]~q\ & !\sw[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[0]~input_o\,
	datab => \HVAC_Sim|counter:cnt[0]~q\,
	datac => \HVAC_Sim|counter:cnt[1]~q\,
	datad => \sw[1]~input_o\,
	combout => \leds~0_combout\);

-- Location: LCCOMB_X14_Y22_N30
\leds~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \leds~1_combout\ = (\leds~0_combout\ & ((\HVAC_Sim|counter:cnt[2]~q\) # (!\sw[2]~input_o\))) # (!\leds~0_combout\ & (\HVAC_Sim|counter:cnt[2]~q\ & !\sw[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \leds~0_combout\,
	datac => \HVAC_Sim|counter:cnt[2]~q\,
	datad => \sw[2]~input_o\,
	combout => \leds~1_combout\);

-- Location: LCCOMB_X14_Y22_N24
\leds~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \leds~2_combout\ = (\Comparator|AGTB~2_combout\ & ((\leds~1_combout\ & ((\HVAC_Sim|counter:cnt[3]~q\) # (!\sw[3]~input_o\))) # (!\leds~1_combout\ & (!\sw[3]~input_o\ & \HVAC_Sim|counter:cnt[3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \leds~1_combout\,
	datab => \Comparator|AGTB~2_combout\,
	datac => \sw[3]~input_o\,
	datad => \HVAC_Sim|counter:cnt[3]~q\,
	combout => \leds~2_combout\);

-- Location: LCCOMB_X14_Y22_N6
\leds~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \leds~9_combout\ = (\leds~5_combout\) # ((\leds~8_combout\) # (\leds~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \leds~5_combout\,
	datac => \leds~8_combout\,
	datad => \leds~2_combout\,
	combout => \leds~9_combout\);

-- Location: UNVM_X0_Y11_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_end_addr => -1,
	addr_range2_offset => -1,
	addr_range3_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X10_Y24_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

ww_leds(0) <= \leds[0]~output_o\;

ww_leds(1) <= \leds[1]~output_o\;

ww_leds(2) <= \leds[2]~output_o\;

ww_leds(3) <= \leds[3]~output_o\;

ww_leds(4) <= \leds[4]~output_o\;

ww_leds(5) <= \leds[5]~output_o\;

ww_leds(6) <= \leds[6]~output_o\;

ww_leds(7) <= \leds[7]~output_o\;

ww_leds(8) <= \leds[8]~output_o\;

ww_leds(9) <= \leds[9]~output_o\;

ww_leds(10) <= \leds[10]~output_o\;

ww_leds(11) <= \leds[11]~output_o\;
END structure;


