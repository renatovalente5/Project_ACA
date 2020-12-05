LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY checker_CRC_8 IS
  PORT (a 	  		  : IN  STD_LOGIC_VECTOR(23 downto 0); -- a + r
		  check_err   : OUT STD_LOGIC_VECTOR(7 downto 0);
		  check 		  : OUT STD_LOGIC);
END checker_CRC_8;

ARCHITECTURE logicFunction OF checker_CRC_8 IS

	signal err_0, err_1, err_2, err_3, err_4, err_5, err_6, err_7: std_logic;
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
	
	encode_crc8 : encoder_CRC_8 port map( a(23 downto 8),
													  resto(7 downto 0));
	
	error_0 : gateXOR2  port map(resto(0),a(0), err_0);
	error_1 : gateXOR2  port map(resto(1),a(1), err_1);
	error_2 : gateXOR2  port map(resto(2),a(2), err_2);
	error_3 : gateXOR2  port map(resto(3),a(3), err_3);
	error_4 : gateXOR2  port map(resto(4),a(4), err_4);
	error_5 : gateXOR2  port map(resto(5),a(5), err_5);
	error_6 : gateXOR2  port map(resto(6),a(6), err_6);
	error_7 : gateXOR2  port map(resto(7),a(7), err_7);
	
	
	check <= err_0 or err_1 or err_2 or err_3 or err_4 or err_5 or err_6 or err_7;
	check_err <= err_0 & err_1 & err_2 & err_3 & err_4 & err_5 & err_6 & err_7;
	
END logicFunction;