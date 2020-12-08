LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY encoder_CRC_8_t IS
  PORT (a : IN STD_LOGIC_VECTOR(15 downto 0);
        r : OUT STD_LOGIC_VECTOR(7 downto 0));
END encoder_CRC_8_t;

ARCHITECTURE logicFunction OF encoder_CRC_8_t IS
	--lvl 1
	signal a14_2, a11_4, a10_9, a8_7, a13_1, a5_3, a12_0, a9_2, a6_5, a4_0, a15_6, a15_11 : std_logic;
	
	--lvl 2
	signal a14_11_4_2, a10_9_8_7, a12_0_3, a10_9_1, a13_5_3_1, a8_7_6_5: std_logic;
	
	--lvl 2,5
	signal a10_9_8_7_6: std_logic;
	
	
	--r signal
	signal r5_1, r5_2, r4_1, r3_1, r3_2, r2_1, r2_2, r1_1, r1_2, r0_1, r0_2: std_logic;

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
	
	

BEGIN

	--LVL 1
	xor_a14_2:		gateXOR2 port map(a(14), a(2), a14_2);				--a14 xor a2
	xor_a11_4:		gateXOR2 port map(a(11), a(4), a11_4);				--a11 xor a4
	xor_a10_9:		gateXOR2 port map(a(10), a(9), a10_9);				--a10 xor a9
	xor_a8_7 :		gateXOR2 port map(a(8 ), a(7), a8_7 );				--a8  xor a7
	xor_a13_1:		gateXOR2 port map(a(13), a(1), a13_1);				--a13 xor a1
	xor_a5_3 :		gateXOR2 port map(a(5 ), a(3), a5_3 );				--a5  xor a3
	xor_a12_0:		gateXOR2 port map(a(12), a(0), a12_0);				--a12 xor a0
	xor_a9_2 :		gateXOR2 port map(a(9 ), a(2), a9_2 );				--a9  xor a2
	xor_a6_5 :		gateXOR2 port map(a(6 ), a(5), a6_5 );				--a6  xor a5
	xor_a4_0 :		gateXOR2 port map(a(4 ), a(0), a4_0 );				--a4  xor a0
	xor_a15_6:		gateXOR2 port map(a(15), a(6), a15_6);				--a15 xor a6
	xor_a15_11:		gateXOR2 port map(a(15), a(11), a15_11);				--a15 xor a11
	
	-- LVL 2
	xor_14_11_4_2:	gateXOR2 port map(a14_2, a11_4, a14_11_4_2);		--a14 xor a11 xor a4 xor a2
	xor_10_9_8_7 :	gateXOR2 port map(a10_9, a8_7 , a10_9_8_7 );		--a10 xor a9  xor a8 xor a7
	xor_12_0_3	 : gateXOR2 port map(a12_0, a(3) , a12_0_3	);		--a12 xor a0  xor a3
	xor_10_9_1	 : gateXOR2 port map(a10_9, a(1)	, a10_9_1	);		--a10 xor a9  xor a1
	xor_13_5_3_1 : gateXOR2 port map(a13_1, a5_3 , a13_5_3_1	);		--a13 xor a5  xor a3 xor a1
	xor_8_7_6_5	 : gateXOR2 port map(a8_7 , a6_5 , a8_7_6_5	);		--a8  xor a7  xor a6 xor a5
	
	-- LVL 2,5
	
	xor_10_9_8_7_6:gateXOR2 port map(a10_9_8_7, a(6), a10_9_8_7_6); --a10 xor a9  xor a8 xor a7 xor a6
	
	
	--r7
	xor_r7:			gateXOR2 port map(a14_11_4_2, a10_9_8_7_6, r(7));
	
	--r6
	xor_r6:			gateXOR2 port map(a13_5_3_1 , a10_9_8_7_6, r(6));
	
	--r5
	xor_r5_1:		gateXOR2 port map(a12_0, a9_2, r5_1);
	xor_r5_2:		gateXOR2 port map(a8_7_6_5, a(4), r5_2);
	xor_r5:			gateXOR2 port map(r5_1, r5_2, r(5));
	
	--r4
	xor_r4_1:		gateXOR2 port map(a14_2, a10_9_1, r4_1);
	xor_r4:			gateXOR2 port map(a5_3, r4_1, r(4));
		
	--r3
	xor_r3_1:		gateXOR2 port map(a13_1, a9_2, r3_1);
	xor_r3_2:		gateXOR2 port map(a4_0, a(8), r3_2);
	xor_r3:			gateXOR2 port map(r3_1, r3_2, r(3));
		
	--r2
	xor_r2_1:		gateXOR2 port map(a15_6, a14_11_4_2, r2_1);
	xor_r2_2:		gateXOR2 port map(a12_0_3, a10_9_1, r2_2);
	xor_r2:			gateXOR2 port map(r2_1, r2_2, r(2));
		
	--r1
	xor_r1_1:		gateXOR2 port map(a15_6, a13_5_3_1, r1_1);
	xor_r1_2:		gateXOR2 port map(a4_0, a(7), r1_2);
	xor_r1:			gateXOR2 port map(r1_1, r1_2, r(1));
		
	--r0
	xor_r0_1:		gateXOR2 port map(a15_11, a12_0_3, r0_1);
	xor_r0_2:		gateXOR2 port map(a10_9_8_7, a(5), r0_2);
	xor_r0:			gateXOR2 port map(r0_1, r0_2, r(0));
	
  
END logicFunction;