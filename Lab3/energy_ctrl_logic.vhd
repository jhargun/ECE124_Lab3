-- Anish Aggarwal && Jaswin Hargun (Group 24) --
library ieee;
use ieee.std_logic_1164.all;
library work;

entity energy_ctrl_logic is -- Energy Monitor & Control Logic Block
 	port (
			GREATER, EQUAL_TO, LESSER						 : in std_logic; -- Comparison of Current_Temp to Mux Temp
			VACA_MODE, MC_TEST, WIND_OPEN, DOOR_OPEN	 : in std_logic; -- HVAC Simulation Mode
			INCREASE, DECREASE, RUN_N						 : out std_logic; -- Variable Controllers for HVAC Simulation
			FURN, AT_TEMP, A_C, BLOWER, VAC_LED			 : out std_logic; -- Appliance Outputs
			DOOR_LED, WIND_LED								 : out std_logic -- Appliance Outputs
			);

 end energy_ctrl_logic;
 
----------------------------------------------------------------------------
-----------------------------Logic Architecture-----------------------------
----------------------------------------------------------------------------
architecture control_logic of energy_ctrl_logic is
 
 begin
 
 --======= Design Requirements ~ Energy Monitor Control Block ==============--
 
 -- 2&3) RUN_N is OFF when Window Open, Door Open, MC_Test Mode is On, or Current_Temp = Mux_Temp (Target Temp) [Note: RUN-N is ACTIVE-LOW]
 RUN_N <= (WIND_OPEN OR DOOR_OPEN OR MC_TEST OR EQUAL_TO);
 
 -- 4) A/C turns ON when Current_Temp > Mux_Temp (Target Temp) [Cooling Needed to get to Target Temp]
 A_C <= GREATER;
 
 -- 5) Furnace Turns when Current_Temp < Mux_Temp (Target Temp) [Heating Needed to get to Target Temp]
 FURN <= LESSER;
 
 -- 6) Indicator LED for when Current_Temp = Mux_Temp (Target Temp) 
 AT_TEMP <= EQUAL_TO;
 
 -- 7) Blower should be on when Doors are Closed, Windows are Closed, and MC_TEST Mode is OFF 
 BLOWER <= (NOT EQUAL_TO) AND (NOT (MC_TEST OR WIND_OPEN  OR DOOR_OPEN));
 
 -- 8&9) Door and Window Indicators are connected to their inputs to indicate whether they are opened or closed. 
 DOOR_LED <= DOOR_OPEN;
 WIND_LED <= WIND_OPEN;
 
 -- 10) Vacation Mode LED Indicator is wired to the the Vacation Mode Input.
 VAC_LED <= VACA_MODE;
 
 -- Update Commands to HVAC SIM adjust temperature (Cur_Temp) to get to target temperature (Mux_Temp).
 INCREASE <= LESSER;
 DECREASE <= GREATER;
 
 end control_logic;
 
 