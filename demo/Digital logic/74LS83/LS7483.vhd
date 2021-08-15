------------74LS83----------------
--LIBRARY DECLARATION--
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
--ENTITY DECLARATION--
entity LS7483 is
port(
		A   : in  std_logic_vector(3 downto 0);
		B   : in  std_logic_vector(3 downto 0);
		Cin : in  std_logic;
		Sum : out std_logic_vector(3 downto 0);
		Cout: out std_logic
	);
end LS7483;
--ARCHITECTURE DESCRIPTION--
-- architecture Behavioral of LS7483 is
-- signal A_temp : std_logic_vector(4 downto 0);
-- signal B_temp : std_logic_vector(4 downto 0);
-- signal S_temp : std_logic_vector(4 downto 0);
-- begin
	-- A_temp <= '0'& A;
	-- B_temp <= '0'& B;
	-- S_temp <= A_temp + B_temp + Cin;
	-- Sum <= S_temp(3 downto 0);
	-- Cout <= S_temp(4);
-- end Behavioral;	
architecture Behavioral of LS7483 is
signal C : std_logic_vector(4 downto 0);
signal Sum_temp : std_logic_vector(3 downto 0);
begin
	process(A,B,Cin,C,Sum_temp)
	variable i : INTEGER range 0 to 3;
	begin
		C(0) <= Cin;
		for i in 0 to 3 loop
			Sum_temp(i) <= A(i) xor B(i) xor C(i);
			C(i+1) <= (A(i) and B(i)) or (C(i) and (A(i) or B(i)));
		end loop;
		Cout <= C(4);
		Sum <= Sum_temp;
	end process;
end Behavioral;	
	
		
	
	