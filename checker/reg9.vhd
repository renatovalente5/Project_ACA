LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY Register9 IS
	GENERIC(N : positive := 9);
	PORT(clk		: IN	std_logic;
		  dataIN	: IN	std_logic;
		  dataOUT: OUT	std_logic_vector((N-1) downto 0));

end Register;

architecture Behavioral of Register is

	signal s_cnt : integer :=0;

BEGIN
	process(clk)
	BEGIN
		if (rising_edge(clk)) then
			dataOUT(s_cnt) <= dataIN;
			s_cnt <= s_cnt+1;
			if(s_cnt = N) then
				s_cnt <= 0;
			end if;
		end if;
	end process;
end Behavioral;
