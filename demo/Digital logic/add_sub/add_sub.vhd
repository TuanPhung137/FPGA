--Khối cộng/ trừ--
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
--Khai báo thực thể--
entity add_sub is
port(
		A   : in  std_logic_vector(3 downto 0);
		B   : in  std_logic_vector(3 downto 0);
		SUB : in  std_logic;
		Cin : in  std_logic;
		S   : out std_logic_vector(3 downto 0);
		Cout: out std_logic
	);
end add_sub;
--Khai báo kiến trúc--
architecture Behavioral of add_sub is
signal SUB_temp : std_logic;
signal B_not    : std_logic_vector(3 downto 0);
signal S_temp   : std_logic_vector(4 downto 0);
signal A_temp   : std_logic_vector(4 downto 0);
signal B_temp   : std_logic_vector(4 downto 0);
begin
	SUB_temp <= SUB or Cin;
	B_not <= not(B) when SUB = '1' else
			 B;
	A_temp <= '0'& A;
	B_temp <= '0'& B_not;
	S_temp <= A_temp + B_temp + SUB_temp;
	S      <= S_temp(3 downto 0);
	Cout   <= S_temp(4);
end Behavioral;	