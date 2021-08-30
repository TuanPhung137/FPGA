--Khai báo thư viện--
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
--Khai báo thực thể--
entity adder4_test is
end adder4_test;
--Mô tả kiến trúc--
architecture test of adder4_test is
--Khai báo thành phần được sử dụng trong thiết kế này--
--Khai báo thiết kế cần được kiểm tra--
component adder4 
port(
		A    : in  std_logic_vector(3 downto 0);
		B    : in  std_logic_vector(3 downto 0);
		Cin  : in  std_logic;
		Sum  : out std_logic_vector(3 downto 0);
		Cout : out std_logic
	);
end component;
--input signal--
signal A    : std_logic_vector(3 downto 0);
signal B    : std_logic_vector(3 downto 0);
signal Cin  : std_logic;
--output signal--
signal Sum  : std_logic_vector(3 downto 0);
signal Cout : std_logic;
begin
	--Khởi tạo các tín hiệu để tiến hành kiểm tra thiết kế--
	creat_input : process
	begin
		A   <= "0110";
		B   <= "1011";
		Cin <= '0';
		wait for 100 ns;
		A   <= "1000";
		B   <= "0011";
		Cin <= '1';
		wait for 100 ns;
		A   <= "0010";
		B   <= "1011";
		Cin <= '0';
		wait;
	end process creat_input;
	--Ánh xạ các cổng của khối thiết kế con với các tín hiệu vào ra--
	DUT : component adder4
			port map(A => A, B => B, Cin => Cin,
					Sum => Sum, Cout => Cout);
end test;		