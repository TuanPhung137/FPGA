--Khai bao thu vien--
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
--Khai bao thuc the--
entity add_sub_test is
end add_sub_test;
--Mo ta kien truc--
architecture test of add_sub_test is
component add_sub_gen is
generic(N : natural; SUB : BOOLEAN);--phan thuc the moi khai bao la 1 cau lenh-- con anh xa thi ca phan anh xa moi la 1 cau lenh--
port(
		A    : in  std_logic_vector(N-1 downto 0);
		B    : in  std_logic_vector(N-1 downto 0);
		--Sub  : in  std_logic;
		Cin  : in  std_logic;
		Cout : out std_logic;
		Sum  : out std_logic_vector(N-1 downto 0)
	);
end component;
signal A    : std_logic_vector(3 downto 0);
signal B    : std_logic_vector(3 downto 0);
signal Cin  : std_logic;
signal Cout1 : std_logic;
signal Sum1  : std_logic_vector(3 downto 0);
signal Cout2 : std_logic;
signal Sum2  : std_logic_vector(3 downto 0);
begin
	creat_input : process
	begin
		A   <= "1010";--4--
		B   <= "0111";--8--
		Cin <= '0';
		wait for 100 ns;
		A   <= "0110";--8--
		B   <= "1000";--4--
		Cin <= '0';
		wait;
	end process creat_input;
	
	DUT_1 : component add_sub_gen
				generic map(N => 4, SUB => TRUE)
				port map(A => A, B => B, Cin => Cin,
							Cout => Cout1, Sum => Sum1);
	
	DUT_2 : component add_sub_gen
				generic map(N => 4, SUB => FALSE)
				port map(A => A, B => B, Cin => Cin,
							Cout => Cout2, Sum => Sum2);
end test;