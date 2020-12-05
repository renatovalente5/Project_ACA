LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY checker_CRC_8 IS
  PORT (a_r  		  : IN  STD_LOGIC_VECTOR(23 downto 0); -- a + r
		  check 		  : OUT STD_LOGIC);
END checker_CRC_8;

ARCHITECTURE logicFunction OF checker_CRC_8 IS

	signal err: STD_LOGIC_VECTOR(7 downto 0);
	signal resto: STD_LOGIC_VECTOR(7 downto 0);

	component gateXOR2
		port(x0,x1 : in STD_LOGIC;
					y : out STD_LOGIC);
	end component;
	
	component encoder_CRC_8 IS
		port( a 	: IN  STD_LOGIC_VECTOR(15 downto 0);
				r 	: OUT  STD_LOGIC_VECTOR(7 downto 0));
	end component;

BEGIN
	
	encode_crc8 : encoder_CRC_8 port map( a_r(23 downto 8),
													  resto(7 downto 0));
	
	error_0 : gateXOR2  port map(resto(0),a_r(0), err(0));
	error_1 : gateXOR2  port map(resto(1),a_r(1), err(1));
	error_2 : gateXOR2  port map(resto(2),a_r(2), err(2));
	error_3 : gateXOR2  port map(resto(3),a_r(3), err(3));
	error_4 : gateXOR2  port map(resto(4),a_r(4), err(4));
	error_5 : gateXOR2  port map(resto(5),a_r(5), err(5));
	error_6 : gateXOR2  port map(resto(6),a_r(6), err(6));
	error_7 : gateXOR2  port map(resto(7),a_r(7), err(7));
	
	
	check <= err(0) or err(1) or err(2) or err(3) or err(4) or err(5) or err(6) or err(7);
	
END logicFunction;