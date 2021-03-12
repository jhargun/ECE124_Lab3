-- Anish Aggarwal && Jaswin Hargun (Group 24) --
library ieee;
use ieee.std_logic_1164.all;
library work;

entity temp_mux is -- Mode Dependent 2 -> 1 Multiplexer for choosing Between Temperatures

 	port (
			desired_temp, vac_temp							 : in std_logic_vector(3 downto 0); -- Possible Temperature inputs for respective modes
			mux_select 											 : in std_logic; -- Vacation Mode Selector (0: Home Mode, 1: Vacation Mode)
			temp_out				 								 : out std_logic_vector(3 downto 0) -- 4-Bit Temp Output of Mux
			);

 end temp_mux;
 
----------------------------------------------------------------------------
-----------------------------Logic Architecture-----------------------------
----------------------------------------------------------------------------
 architecture mux_logic of temp_mux is
 
 begin
 
 -- for the multiplexing of the two temperatures
	with mux_select select -- Setting appropriate temp output depending on mux_select (vacation mode)
	temp_out	 <= vac_temp when '1',
					 desired_temp when '0';
 end mux_logic;
 
 