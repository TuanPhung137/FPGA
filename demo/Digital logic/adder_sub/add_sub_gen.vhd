--ADDER SUB--
--Khai báo thư viện--
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
--Khai báo thực thể--
entity add_sub_gen is
generic(N : natural := 4; SUB : BOOLEAN);
port(
		A    : in  std_logic_vector(N-1 downto 0);
		B    : in  std_logic_vector(N-1 downto 0);
		Cin  : in  std_logic;
		Cout : out std_logic;
		Sum  : out std_logic_vector(N-1 downto 0)
	);
end add_sub_gen;	
--Khai báo kiến trúc--
architecture Behavioral of add_sub_gen is
signal B_temp : std_logic_vector(N-1 downto 0);
signal C_temp : std_logic;
component adderN
generic(N : natural := 32);
port(
		A      : in  std_logic_vector(N-1 downto 0);
		B      : in  std_logic_vector(N-1 downto 0);
		Cin    : in  std_logic;
		Cout   : out std_logic;
		Sum    : out std_logic_vector(N-1 downto 0)
	);
end component;	

for DUT : adderN use entity work.adderN(add_3);

begin
	B_not : if SUB = TRUE generate
				B_temp <= not(B);
				C_temp <= '1';
	end generate;

	B_n   : if SUB = FALSE generate
				B_temp <= B;
				C_temp <= Cin;
	end generate;
	
	--C_temp <= SUB xor Cin;
	--B_temp <= not(B) when SUB = '1' else B;
	
	DUT : component adderN
			generic map(N => 4)
			port map(
						A => A,
						B => B_temp,
						Cin => C_temp,
						Cout => Cout,
						Sum => Sum
					);
	
end Behavioral;
				