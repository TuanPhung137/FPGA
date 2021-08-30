--Khai báo thư viện--
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
--Khai báo thực thể--
entity encode4_2_test is
end encode4_2_test;
--Mô tả kiến trúc--
architecture test of encode4_2_test is
component encode4_2 is 
port(
		A : in  std_logic_vector(3 downto 0);
		B : out std_logic_vector(1 downto 0)
	);
end component;
signal A : std_logic_vector(3 downto 0);
signal B : std_logic_vector(1 downto 0);
begin
	creat_input : process 
	begin
		A <= "0110";
		wait for 100 ns;
		A <= "1000";
		wait for 100 ns;
		A <= "0001";
		wait for 100 ns;
		A <= "0000";
		wait;
	end process;

	DUT : component encode4_2
			port map(A => A, B => B);
end test;			