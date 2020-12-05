LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY gateXOR4 IS
  PORT (x0, x1, x2, x3: IN STD_LOGIC;
        y: OUT STD_LOGIC);
END gateXOR4;

ARCHITECTURE logicFunction OF gateXOR4 IS
	signal y0, y1 : std_logic;

	component gateXOR2
		port(x0,x1 : in STD_LOGIC;
					y: out STD_LOGIC);
	end component;

BEGIN

   xor_1: gateXOR2 port map(x0, x1, y0);
	xor_2: gateXOR2 port map(x2, x3, y1);
	xor_final: gateXOR2 port map(y0, y1 ,y);
  
END logicFunction;