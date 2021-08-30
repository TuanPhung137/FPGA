--Khai báo thư viện--
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
--Khai báo thực thể--
entity adder8_test is
end adder8_test;
--Mô tả kiến trúc--
architecture test of adder8_test is
--Khai báo thành phần được sử dụng trong thiết kế này--
--Khai báo thiết kế cần được kiểm tra--
component adder8 
port(
		A   : in  std_logic_vector(7 downto 0);
		B   : in  std_logic_vector(7 downto 0);
		Cin : in  std_logic;
		Cout: out std_logic;
		Sum : out std_logic_vector(7 downto 0)
	);
end component;
--input signal--
signal A    : std_logic_vector(7 downto 0);
signal B    : std_logic_vector(7 downto 0);
signal Cin  : std_logic;
--output signal--
signal Sum  : std_logic_vector(7 downto 0);
signal Cout : std_logic;
begin
	--Khởi tạo các tín hiệu để tiến hành kiểm tra thiết kế--
	creat_input : process
	begin
		A   <= "01100111";
		B   <= "10111011";
		Cin <= '0';
		wait for 100 ns;
		A   <= "10000101";
		B   <= "00110011";
		Cin <= '1';
		wait for 100 ns;
		A   <= "00100011";
		B   <= "10110101";
		Cin <= '0';
		wait;
	end process creat_input;
	--Ánh xạ các cổng của khối thiết kế con với các tín hiệu vào ra--
	DUT : component adder8
			port map(A => A, B => B, Cin => Cin,
					Sum => Sum, Cout => Cout);
end test;		