LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY gateXOR3 IS
  PORT (x0, x1, x2: IN STD_LOGIC;
        y: OUT STD_LOGIC);
END gateXOR3;

ARCHITECTURE logicFunction OF gateXOR3 IS
	signal y_tmp : std_logic;

	component gateXOR2
		port(x0,x1 : in STD_LOGIC;
					y: out STD_LOGIC);
	end component;

BEGIN

   xor_1: gateXOR2 port map(x0,x1,y_tmp);
	xor_final: gateXOR2 port map(y_tmp,x2,y);
  
END logicFunction;