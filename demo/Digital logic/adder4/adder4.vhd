------------ADDER 4 BIT ----------------
----------LIBRARY DECLARATION-----------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
----------ENTITY DECLARATION------------
entity adder4 is
port(
		A   : in  std_logic_vector(3 downto 0);
		B   : in  std_logic_vector(3 downto 0);
		Cin : in  std_logic;
		Sum : out std_logic_vector(3 downto 0);
		Cout: out std_logic
	);
end adder4;
------------ARCHITECTURE DESCRIPTION--------------
architecture structure of adder4 is
--Khai báo thành phần bên trong cho kiến trúc--
--architecture component---
--Connection signal between units has separate functions--
signal C : std_logic_vector(2 downto 0);
--full_adder component---
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
	
	u0 : component full_adder -- "=>" hay map thể hiện sự ánh xạ từ trái sang phải nghĩa là ánh xạ cổng của component sáng các đường tín hiệu
			port map(A => A(0), B => B(0), Cin => Cin, --thể hiện sự tường minh cấu trúc song song 
					Sum => Sum(0), Cout => C(0));
	u1 : component full_adder
			port map(A => A(1), B => B(1), Cin => C(0),
					Sum => Sum(1), Cout => C(1));
	u2 : component full_adder
			port map(A => A(2), B => B(2), Cin => C(1),
					Sum => Sum(2), Cout => C(2));
	u3 : component full_adder
			port map(A => A(3), B => B(3), Cin => C(2),
					Sum => Sum(3), Cout => Cout);
end structure;					