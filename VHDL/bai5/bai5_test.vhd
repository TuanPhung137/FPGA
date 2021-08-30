--Khai báo thư viện--
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
--Khai báo thực thể--
entity bai5_test is
end bai5_test;
--Mô tả kiến trúc--
architecture test of bai5_test is
component bai5 is
port(
		A  : in  std_logic_vector(3 downto 0);
		B  : in  std_logic_vector(3 downto 0);
		CD : out std_logic_vector(7 downto 0)
	);
end component;
signal A  : std_logic_vector(3 downto 0);
signal B  : std_logic_vector(3 downto 0);
signal CD : std_logic_vector(7 downto 0);
begin
	creat_input : process
	begin
		A <= "1001";
		B <= "1000";
		wait for 100 ns;
		A <= "0110";
		B <= "1001";
		wait for 100 ns;
		A <= "0010";
		B <= "1000";
		wait for 100 ns;
		A <= "0001";
		B <= "0010";
		wait;
	end process creat_input;

	DUT : component bai5
			port map(A => A, B => B, CD => CD);
end test;			