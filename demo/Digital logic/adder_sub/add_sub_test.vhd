--TEST--
--Khai báo thư viện--
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
--Khai báo thực thể--
entity add_sub_test is
end add_sub_test;
--Khai báo kiến trúc--
architecture test of add_sub_test is
component add_sub_gen 
generic(N : natural := 4; SUB : BOOLEAN);
port(
		A    : in  std_logic_vector(N-1 downto 0);
		B    : in  std_logic_vector(N-1 downto 0);
		Cin  : in  std_logic;
		Cout : out std_logic;
		Sum  : out std_logic_vector(N-1 downto 0)
	);
end component;
signal A           :  std_logic_vector(3 downto 0) := "1101";
signal B           :  std_logic_vector(3 downto 0) := "0110";
signal Cin         :  std_logic                    := '0';
signal Cout1,Cout2 :  std_logic;
signal Sum1,Sum2   :  std_logic_vector(3 downto 0);
begin
	DUT1 : component add_sub_gen
			generic map(N => 4,SUB => TRUE)
			port map(A => A, B => B, Cin => Cin,
						Cout => Cout1, Sum => Sum1);
						
	DUT2 : component add_sub_gen
			generic map(N => 4,SUB => FALSE)
			port map(A => A, B => B, Cin => Cin,
						Cout => Cout2, Sum => Sum2);	
end test;						