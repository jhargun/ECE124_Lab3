-- Anish Aggarwal && Jaswin Hargun (Group 24) --
library ieee;
use ieee.std_logic_1164.all;


entity LogicalStep_Lab3_top is port (
	clk_in		: in 	std_logic;
	pb				: in	std_logic_vector(3 downto 0);
 	sw   			: in  std_logic_vector(7 downto 0); 	
   leds			: out std_logic_vector(11 downto 0)		 
	
); 
end LogicalStep_Lab3_top;

architecture design of LogicalStep_Lab3_top is
--
-- Provided Project Components Used
------------------------------------------------------------------- 
component Tester port (
 MC_TESTMODE				: in  std_logic;
 I1EQI2,I1GTI2,I1LTI2	: in	std_logic;
	input1					: in  std_logic_vector(3 downto 0);
	input2					: in  std_logic_vector(3 downto 0);
	TEST_PASS  				: out	std_logic							 
	); 
	end component;
	
component HVAC 	port (
	clk						: in std_logic; 
	run_n		   			: in std_logic;
	increase, decrease	: in std_logic;
	temp						: out std_logic_vector (3 downto 0)
	);
 end component;

------------------------------------------------------------------
-- Add Other Components here
component Compx4
	port (
			hex_val_A, hex_val_B 		: in std_logic_vector(3 downto 0);
			AGTB, AEQB, ALTB				: out std_logic  -- Outputs are whether A is greater than, equal, less than B respectively
			);
end component;

component temp_mux -- Mode Dependent 2 -> 1 Multiplexer (Similar to 2-to-1 Mux from Lab 2)
 	port (
			desired_temp, vac_temp							 : in std_logic_vector(3 downto 0); -- Possible Temperature inputs for respective modes
			mux_select 											 : in std_logic; -- Vacation Mode Selector (0: Home Mode, 1: Vacation Mode)
			temp_out				 								 : out std_logic_vector(3 downto 0) -- 4-Bit Temp Output of Mux
			);
 end component;
 
component energy_ctrl_logic -- Energy Monitor & Control Logic Block
 	port (
			GREATER, EQUAL_TO, LESSER						 : in std_logic; -- Comparison of Current_Temp to Mux Temp
			VACA_MODE, MC_TEST, WIND_OPEN, DOOR_OPEN	 : in std_logic; -- HVAC Simulation Mode
			INCREASE, DECREASE, RUN_N						 : out std_logic; -- Variable Controllers for HVAC Simulation
			FURN, AT_TEMP, A_C, BLOWER, VAC_LED			 : out std_logic; -- Appliance Outputs
			DOOR_LED, WIND_LED								 : out std_logic -- Appliance Outputs
			);
 end component;
------------------------------------------------------------------	
-- Create any signals to be used
	signal desired_temp, vaca_temp, mux_temp	: std_logic_vector(3 downto 0);-- 4 4-bit Temperature Input Values
	signal mc_testmode, vaca_mode, window_open, door_open : std_logic; -- PB Active Signal
	
	signal increase, decrease, run_n : std_logic;
	signal current_temp : std_logic_vector(3 downto 0);
	signal LT, EQ_TO, GT : std_logic;
	signal mag_test_pass : std_logic;

------------------------------------------------------------------- 
	
-- Here the circuit begins

begin

----------------------------------------------------------------------------
-----------------------------INPUT PORT RESERVES----------------------------
----------------------------------------------------------------------------

	-- Temperature Inputs from Switches
	desired_temp <= sw(3 downto 0);
	vaca_temp <= sw(7 downto 4);
	
	-- HVAC SIM Modes and Dependencies
	vaca_mode <= pb(3);
	mc_testmode <= pb(2);
	window_open <= pb(1);
	door_open <= pb(0);

	
----------------------------------------------------------------------------
-----------------------------COMPONENT INSTANCES----------------------------
----------------------------------------------------------------------------
	
	-- Get Target Temperature using Mux and 2->1 Multiplier with Vacation Mode
	Target_Temp: temp_mux port map(desired_temp, vaca_temp, vaca_mode, mux_temp);
	
	-- Using HVAC_SIM to get the Current Temperature
	HVAC_Sim: HVAC port map(clk_in, run_n, increase, decrease, current_temp);
	
	-- Compare Current_Temp To Mux_Temp (Target Temperature) to get signals GT, EQ_TO, LT to their proper values. These values are used
	-- 	for the Energy Control Logic.
	Comparator: Compx4 port map(current_temp, mux_temp, GT, EQ_TO, LT);
	
	-- Control Logic Block Responsible for connecting all blocks together and the processing of logic outputs.
	Control_Energy: energy_ctrl_logic port map(GT, EQ_TO, LT, vaca_mode, mc_testmode, window_open, door_open,
															 increase, decrease, run_n, 
															 leds(0), leds(1), leds(2), leds(3), leds(7), leds(5), leds(4));
	
	-- Using Tester to test the Comparator Component made in Part A of the Lab.
	Tester1: Tester port map(mc_testmode, EQ_TO, GT, LT, current_temp, desired_temp, mag_test_pass);

	-- Setting the Current_Temperature after all adjustments and writing that signal to the corresponding output LEDS.
	leds(6) <= mag_test_pass OR (NOT mc_testmode);
	leds(11 downto 8) <= current_temp; 
	
end design;

