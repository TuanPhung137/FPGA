--Khai báo thư viện--
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
--Khai báo thực thể--
entity MUX2_1_test is
end MUX2_1_test;
--Mô tả kiến trúc--
architecture test of MUX2_1_test is
--Khai báo thành phần được sử dụng trong khối thiết kế--
--Khai báo khối thiết kế cần được kiểm tra--
component MUX2_1
port(
		A   : in  std_logic_vector(3 downto 0);
		B   : in  std_logic_vector(3 downto 0);
		Sel : in  std_logic;
		C   : out std_logic_vector(3 downto 0)
	);
end component;
--input signal--
signal A   : std_logic_vector(3 downto 0);
signal B   : std_logic_vector(3 downto 0);
signal Sel : std_logic;
--output signal--
signal C   : std_logic_vector(3 downto 0);
begin
	creat_input : process
	begin
		A   <= "1011";
		B   <= "1111";
		Sel <= '0';
		wait for 100 ns;
		A   <= "1011";
		B   <= "1111";
		Sel <= '1';
		wait;
	end process creat_input;
	
	DUT : component MUX2_1
			port map(A => A, B => B, Sel => Sel, C => C);
end test;	