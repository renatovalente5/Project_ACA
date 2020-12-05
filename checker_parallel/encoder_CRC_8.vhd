LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY encoder_CRC_8 IS
  PORT (a : IN STD_LOGIC_VECTOR(15 downto 0);
        r : OUT STD_LOGIC_VECTOR(7 downto 0));
END encoder_CRC_8;

ARCHITECTURE logicFunction OF encoder_CRC_8 IS

	signal a15_3_0, a12_11, a10_9, a8_7, a6_5, a2_1 : std_logic;

	component gateXOR2
		port(x0,x1 : in STD_LOGIC;
					y : out STD_LOGIC);
	end component;
	
	component gateXOR3
		port(x0,x1,x2 : in STD_LOGIC;
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

	xor_a_15_3_0:	gateXOR3 port map(a(15), a(3), a(0), a15_3_0);	--a15 xor a3 xor a0
	xor_a_12_11:	gateXOR2 port map(a(12), a(11), a12_11);			--a12 xor a11
	xor_a_10_9:		gateXOR2 port map(a(10), a(9), a10_9);				--a10 xor a9
	xor_a_8_7:		gateXOR2 port map(a(8), a(7), a8_7);				--a8 xor a7
	xor_a_6_5:		gateXOR2 port map(a(6), a(5), a6_5);				--a6 xor a5
	xor_a_2_1:		gateXOR2 port map(a(2), a(1), a2_1);				--a2 xor 1
	
	--r7
	xor_r7:			gateXOR7 port map(a10_9, a8_7, a(14), a(11), a(6), a(4), a(2), r(7));
	
	--r6
	xor_r6:			gateXOR6 port map(a10_9, a8_7, a6_5, a(13), a(3), a(1), r(6));
	
	--r5
	xor_r5:			gateXOR7 port map(a8_7, a6_5, a(12), a(9), a(4), a(2), a(0), r(5));
	
	--r4
	xor_r4:			gateXOR5 port map(a10_9, a2_1, a(14), a(5), a(3), r(4));
		
	--r3
	xor_r3:			gateXOR6 port map(a2_1, a(13), a(9), a(8), a(4), a(0), r(3));
		
	--r2
	xor_r2:			gateXOR7 port map(a15_3_0, a12_11, a10_9, a2_1, a(14), a(6), a(4), r(2));
		
	--r1
	xor_r1:			gateXOR6 port map(a15_3_0 , a6_5, a(13), a(7), a(4), a(1), r(1));
		
	--r0
	xor_r0:			gateXOR5 port map(a15_3_0, a12_11, a10_9, a8_7, a(5), r(0));
	
	

	
  
END logicFunction;