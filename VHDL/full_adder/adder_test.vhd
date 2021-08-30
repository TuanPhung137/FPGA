--Khai báo thư viện--
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
--Khai báo thực thể--
entity adder_test is
end adder_test;
--Mô tả kiến trúc--
architecture test of adder_test is
--Khai báo tín hiệu để ánh xạ tới khối cần kiểm tra--
--input signal--
signal A   : std_logic;
signal B   : std_logic;
signal Cin : std_logic;
--output signal 
signal Cout : std_logic;
signal Sum  : std_logic;
--Khai báo khối thiết kế cần kiểm tra--
component full_adder
port(
		A    : in  std_logic;
		B    : in  std_logic;
		Cin  : in  std_logic;
		Sum  : out std_logic;
		Cout : out std_logic
	);
end component;
begin
	creat_input : process
	begin
		A   <= '0';
		B   <= '0';
		Cin <= '0';
		wait for 10 ns;
		A   <= '0';
		B   <= '0';
		Cin <= '1';
		wait for 10 ns;
		A   <= '0';
		B   <= '1';
		Cin <= '0';
		wait for 10 ns;
		A   <= '0';
		B   <= '1';
		Cin <= '1';
		wait for 10 ns;
		A   <= '1';
		B   <= '0';
		Cin <= '0';
		wait for 10 ns;
		A   <= '1';
		B   <= '0';
		Cin <= '1';
		wait for 10 ns;
		A   <= '1';
		B   <= '1';
		Cin <= '0';
		wait for 10 ns;
		A   <= '1';
		B   <= '1';
		Cin <= '1';
		wait;
	end process creat_input;	
	DUT : component full_adder --Device under test--
			port map(A => A, B => B, Cin => Cin, Sum => Sum, Cout => Cout);
end test;			