LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY encoder_CRC_8_v2 IS
  PORT (a : IN STD_LOGIC_VECTOR(15 downto 0);
        r : OUT STD_LOGIC_VECTOR(7 downto 0));
END encoder_CRC_8_v2;

ARCHITECTURE logicFunction OF encoder_CRC_8_v2 IS

	signal a6_4_3_1, a12_11_10, a11_10, a9_8_7, a9_8, a6_4, a3_1, a2_0, a15_0 : std_logic;

	component gateXOR2
		port(x0,x1 : in STD_LOGIC;
					y : out STD_LOGIC);
	end component;
	
	component gateXOR3
		port(x0,x1,x2 : in STD_LOGIC;
						y : out STD_LOGIC);
	end component;
	
	component gateXOR4
		port(x0,x1,x2,x3 : in STD_LOGIC;
							y : out STD_LOGIC);
	end component;
	
	component gateXOR5
		port(x0,x1,x2,x3,x4 : in STD_LOGIC;
								y : out STD_LOGIC);
	end component;
	
	component gateXOR6
		port(x0,x1,x2,x3,x4,x5 : in STD_LOGIC;
									y : out STD_LOGIC);
	end component;
	
	component gateXOR7
		port(x0,x1,x2,x3,x4,x5,x6 : in STD_LOGIC;
										y : out STD_LOGIC);
	end component;
	

BEGIN
	xor_a_15_0:		gateXOR2 port map(a(15), a(0), a15_0);				--a15 xor a0
	xor_a_2_0:		gateXOR2 port map(a(2), a(0), a2_0);				--a2 xor a0
	xor_a_3_1:		gateXOR2 port map(a(3), a(1), a3_1);				--a3 xor a1
	xor_a_6_4:		gateXOR2 port map(a(6), a(4), a6_4);				--a6 xor a4
	xor_a_9_8:		gateXOR2 port map(a(9), a(8), a9_8);				--a9 xor a8
	xor_a_11_10:	gateXOR2 port map(a(11), a(10), a11_10);				--a2 xor a1

	xor_a_987:		gateXOR2 port map(a9_8, a(7), a9_8_7);
	xor_a_121110:	gateXOR2 port map(a11_10, a(12), a12_11_10);
	
	xor6_4_3_1:		gateXOR2 port map(a6_4, a3_1, a6_4_3_1);	--
	
	--r7
	xor_r7:			gateXOR5 port map(a11_10, a9_8_7, a6_4, a(14), a(2), r(7));
	
	--r6
	xor_r6:			gateXOR6 port map(a9_8_7, a3_1, a(13), a(10), a(6), a(5), r(6));
	
	--r5
	xor_r5:			gateXOR5 port map(a9_8_7, a6_4, a(12), a(5), a2_0, r(5));
	
	--r4
	xor_r4:			gateXOR6 port map(a3_1, a(14), a(10), a(9), a(5), a(2), r(4));
		
	--r3
	xor_r3:			gateXOR5 port map(a9_8, a2_0, a(13), a(4), a(1), r(3));
		
	--r2
	xor_r2:			gateXOR6 port map(a6_4_3_1, a12_11_10, a15_0, a(14), a(9), a(2), r(2));
		
	--r1
	xor_r1:			gateXOR5 port map(a6_4_3_1, a15_0, a(13), a(7), a(5), r(1));
		
	--r0
	xor_r0:			gateXOR5 port map(a12_11_10, a9_8_7, a15_0, a(5), a(3), r(0));
	
	

	
  
END logicFunction;