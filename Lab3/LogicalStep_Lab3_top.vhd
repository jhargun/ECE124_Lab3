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
	
--	component Tester port (
-- MC_TESTMODE				: in  std_logic;
-- I1EQI2,I1GTI2,I1LTI2	: in	std_logic;
--	input1					: in  std_logic_vector(3 downto 0);
--	input2					: in  std_logic_vector(3 downto 0);
--	TEST_PASS  				: out	std_logic							 
--	); 
--	end component;
--	
--	component HVAC 	port (
--	clk						: in std_logic; 
--	run_n		   			: in std_logic;
--	increase, decrease	: in std_logic;
--	temp						: out std_logic_vector (3 downto 0)
--	);
-- end component;

------------------------------------------------------------------
-- Add Other Components here
component Compx4
	port (
			hex_val_A, hex_val_B 		: in std_logic_vector(3 downto 0);
			AGTB, AEQB, ALTB				: out std_logic  -- Outputs are whether A is greater than, equal, less than B respectively
			);
end component;

------------------------------------------------------------------	
-- Create any signals to be used

------------------------------------------------------------------- 
	
-- Here the circuit begins

begin

comparator: Compx4 port map (sw(3 downto 0), sw(7 downto 4), leds(2), leds(1), leds(0));	

	
end design;

