--TEST--
--Khai báo thư viện--
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
--Khai báo thực thể--
entity adderN_test is
end adderN_test;
--Khai báo kiến trúc--
architecture test of adderN_test is
component adderN 
generic(N : natural := 32);
port(
		A   : in  std_logic_vector(N-1 downto 0);
		B   : in  std_logic_vector(N-1 downto 0);
		Cin : in  std_logic;
		Sum : out std_logic_vector(N-1 downto 0);
		Cout: out std_logic
	);
end component;
signal A   :  std_logic_vector(3 downto 0);
signal B   :  std_logic_vector(3 downto 0);
signal Cin :  std_logic;
signal Sum :  std_logic_vector(3 downto 0);
signal Cout:  std_logic;
begin
	creat_input : process
	begin
		A <= "1011";
		B <= "1011";
		Cin <= '1';
		wait for 100 ns;
		A <= "1001";
		B <= "0001";
		Cin <= '0';
		wait;
	end process creat_input;

	DUT : component adderN 
			generic map(N => 4)
			port map(A => A , B => B, Cin => Cin,
						Sum => Sum, Cout => Cout);
end test;						