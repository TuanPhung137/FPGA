--Khai báo thư viện--
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
--Khai báo thực thể--
entity adder8 is
port(
		A   : in  std_logic_vector(7 downto 0);
		B   : in  std_logic_vector(7 downto 0);
		Cin : in  std_logic;
		Cout: out std_logic;
		Sum : out std_logic_vector(7 downto 0)
	);
end adder8;
--Mô tả kiến trúc--
architecture structure of adder8 is
component adder4 is
port(
		A    : in  std_logic_vector(3 downto 0);
		B    : in  std_logic_vector(3 downto 0);
		Cin  : in  std_logic;
		Sum  : out std_logic_vector(3 downto 0);
		Cout : out std_logic
	);
end component;
signal C : std_logic;
begin
	u0 : component adder4 
			port map(A => A(3 downto 0), B => B(3 downto 0), Cin => Cin,
					Sum => Sum(3 downto 0), Cout => C);
	
	u1 : component adder4 
			port map(A => A(7 downto 4), B => B(7 downto 4), Cin => C,
					Sum => Sum(7 downto 4), Cout => Cout);
end structure;					