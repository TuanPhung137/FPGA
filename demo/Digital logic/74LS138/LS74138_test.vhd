--TEST--
--Khai báo thư viện--
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
--Khai báo thực thể không có giao diện vì đây ta chỉ tiến hành khởi tạo tín hiệu bên trong để ánh xạ ra component
entity LS74138_test is
end LS74138_test;
--Khai báo kiến trúc--
architecture test of LS74138_test is
--Phần này ta tiến hành khai báo các tín hiệu bên trong--
--Khai báo component--
--input signal--
signal  A : std_logic_vector(2 downto 0) := "000";
signal  E : std_logic_vector(2 downto 0) := "001";
--output signal--
signal Y : std_logic_vector(7 downto 0);
--compoenent--
component LS74138 
port(
		A   : in  std_logic_vector(2 downto 0);
		E   : in  std_logic_vector(2 downto 0);
		Y   : out  std_logic_vector(7 downto 0)
	);
end component;
begin
	creat_input : process
	begin
		wait for 10 ns;
		A <= "001";
		wait for 10 ns;
		A <= "010";
		wait for 10 ns;
		A <= "011";
		wait for 10 ns;
		A <= "100";
		wait for 10 ns;
		A <= "101";
		wait for 10 ns;
		A <= "110";
		wait for 10 ns;
		A <= "111";
		wait for 10 ns;
		A <= "110";
		E <= "101";
		wait;
	end process;
	
	DUT : component LS74138
			port map(A => A, E => E, Y => Y);
end test;			