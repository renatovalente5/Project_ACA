LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY checker_crc8 IS
  PORT (a		: IN STD_LOGIC_VECTOR(15 downto 0);
        r 		: IN STD_LOGIC_VECTOR(7 downto 0);
		  clk		: IN STD_LOGIC;
		  Grst	: IN STD_LOGIC;
		  error	: OUT STD_LOGIC);
END checker_crc8;

ARCHITECTURE logicFunction OF checker_crc8 IS
	signal a_r : STD_LOGIC_VECTOR(23 downto 0);
	
BEGIN

	a_r <= a & r;
	
	
	
	
  
END logicFunction;