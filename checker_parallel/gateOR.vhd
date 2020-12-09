LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY gateOR2 IS
  PORT (x0, x1: IN STD_LOGIC;
        y: OUT STD_LOGIC);
END gateOR2;

ARCHITECTURE logicFunction OF gateOR2 IS
BEGIN
  y <= x0 OR x1;
END logicFunction;

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY gateOR8 IS
  PORT (x: IN STD_LOGIC_VECTOR(7 downto 0);
        y: OUT STD_LOGIC);
END gateOR8;

ARCHITECTURE logicFunction OF gateOR8 IS

	SIGNAL y_tmp: STD_LOGIC_VECTOR(5 downto 0);

	component gateOR2
		port(x0,x1 : in STD_LOGIC;
					y : out STD_LOGIC);
	end component;

BEGIN

	OR_0 : gateOR2  port map(x(0),x(1),y_tmp(0));
	OR_1 : gateOR2  port map(x(2),x(3),y_tmp(1));
	OR_2 : gateOR2  port map(x(4),x(5),y_tmp(2));
	OR_3 : gateOR2  port map(x(6),x(7),y_tmp(3));
	
	OR_4 : gateOR2  port map(y_tmp(0),y_tmp(1),y_tmp(4));
	OR_5 : gateOR2  port map(y_tmp(2),y_tmp(3),y_tmp(5));
	
	OR_FINAL : gateOR2  port map(y_tmp(4),y_tmp(5),y);

END logicFunction;