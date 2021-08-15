------TEST----------
--LIBRARY DECLARATION--
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
--ENTITY DECLARATION--
entity LS7483_test is
end LS7483_test;
--ARCHITECTURE DESCRIPTION--
architecture test of LS7483_test is
--Khai báo các thành phần bên trong kiến trúc
--Khai báo component mà ta tiến hành kiểm tra
component LS7483 
port(
		A   : in  std_logic_vector(3 downto 0);
		B   : in  std_logic_vector(3 downto 0);
		Cin : in  std_logic;
		Sum : out std_logic_vector(3 downto 0);
		Cout: out std_logic
	);
end component;
--Khai báo tín hiệu được gán các giá trị để các cổng của component tiến hành ánh xạ tới các tín hiệu đó
signal A    : std_logic_vector(3 downto 0) := "0101";
signal B    : std_logic_vector(3 downto 0) := "0000";
signal Cin  : std_logic                    := '1';
signal Sum  : std_logic_vector(3 downto 0);
signal Cout : std_logic;
begin
	creat_input : process--cả process là 1 câu lệnh và các thành phần bên trong nó được thực hiện tuần tự
	begin
		wait for 10 ns;
		A <= "1010";
		wait for 10 ns;
		A <= "1111";
		wait;
	end process;	
	
	DUT : component LS7483--Device under test--các cổng được ánh xạ tới các tín hiệu 1 cách song song concurrent
			port map(A => A, B => B, Cin => Cin,
					Sum => Sum, Cout => Cout);
end test;
