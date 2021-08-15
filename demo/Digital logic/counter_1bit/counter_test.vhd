--TEST--
--Khai báo thư viện--
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
--Khai báo thực thể--
entity counter_test is
end counter_test;
--Khai báo kiến trúc--
architecture test of counter_test is
component counter
port(
		A  : in  std_logic_vector(7 downto 0);
		B  : out std_logic_vector(2 downto 0)
	);
end component;
signal A  : std_logic_vector(7 downto 0);
signal B  : std_logic_vector(2 downto 0);
begin
	creat_input : process
	begin
		A <= "11011100";
		wait for 100 ns;
		A <= "10001011";
		wait;
	end process creat_input;

	DUT : component counter
			port map(A => A, B => B);
end test;
			