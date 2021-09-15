--Khai báo thư viện--
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
--Khai báo thực thể--
entity adder2 is
port(
		A    : in  std_logic_vector(1 downto 0);
		B    : in  std_logic_vector(1 downto 0);
		Cin  : in  std_logic;
		Sum  : out std_logic_vector(1 downto 0);
		Cout : out std_logic
	);
end adder2;
--Mô tả kiến trúc--
architecture structure of adder2 is
--Khai báo thành phần sử dụng trong khối thiết kế--
--Khai báo khối thiết kế con nằm trong khối thiết kế--
component full_adder
port(
		A    : in  std_logic;
		B    : in  std_logic;
		Cin  : in  std_logic;
		Sum  : out std_logic;
		Cout : out std_logic
	);
end component;	
--signal--
signal C : std_logic;
begin
	full_adder0 : component full_adder
					port map(A => A(0), B => B(0), Cin => Cin,
							Sum => Sum(0), Cout => C);
	
	full_adder1 : component full_adder
					port map(A => A(1), B => B(1), Cin => C,
							Sum => Sum(1), Cout => Cout);
end structure;							