--ADDER 2 bit--
--Khai báo thư viện--
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
--Khai báo thực thể--
entity adder_2 is
port(
		A    : in  std_logic_vector(1 downto 0);
		B    : in  std_logic_vector(1 downto 0);
		Cin  : in  std_logic;
		Cout : out std_logic;
		Sum  : out std_logic_vector(1 downto 0)
	);
end adder_2;
--Khai báo kiến trúc--
architecture structure of adder_2 is
signal C : std_logic;
component full_adder
port(
		A   : in  std_logic;
		B   : in  std_logic;
		Cin : in  std_logic;
		Sum : out std_logic;
		Cout: out std_logic
	);
end component;
begin
	u0 : component full_adder
			port map(A => A(0), B => B(0), Cin => Cin ,Sum => Sum(0), Cout => C);
			
	u1 : component full_adder
			port map(A => A(1), B => B(1), Cin => C ,Sum => Sum(1), Cout => Cout);
end structure;	