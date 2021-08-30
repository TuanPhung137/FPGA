--Khai báo thư viện--
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
--Khai báo thực thể--
entity LS74139_test is
end LS74139_test;
--Mô tả kiến trúc--
architecture test of LS74139_test is
--Khai báo thành phần cần kiểm tra trong khối thiết kế--
component LS74139 
port(
		A   : in  std_logic_vector(2 downto 0);
		B   : in  std_logic_vector(2 downto 0);
		Ya  : out std_logic_vector(3 downto 0);
		Yb  : out std_logic_vector(3 downto 0)
	);
end component;
--input signal--
signal A   : std_logic_vector(2 downto 0);
signal B   : std_logic_vector(2 downto 0);
--output signal--
signal Ya  : std_logic_vector(3 downto 0);
signal Yb  : std_logic_vector(3 downto 0);
begin
	creat_input : process
	begin
		A <= "000";
		B <= "000";
		wait for 100 ns;
		A <= "010";
		B <= "010";
		wait for 100 ns;
		A <= "100";
		B <= "100";
		wait for 100 ns;
		A <= "110";
		B <= "110";
		wait for 100 ns;
		A <= "011";
		B <= "101";
		wait;
	end process creat_input;

	DUT : component LS74139
			port map(A => A, B => B, Ya => Ya, Yb => Yb);
end test;			