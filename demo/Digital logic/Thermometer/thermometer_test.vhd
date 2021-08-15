--TEST--
--Khai báo thư viện--
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
--Khai báo thực thể--
entity thermometer_test is
end thermometer_test;
--Khai báo kiến trúc--
architecture test of thermometer_test is
component thermometer
port(
		A    : in  std_logic_vector(2 downto 0);
		B    : out std_logic_vector(7 downto 0)
	);
end component;
--input signal--
signal A    : std_logic_vector(2 downto 0);
--output signal--
signal B    : std_logic_vector(7 downto 0);
begin
	creat_input : process
	begin
		A <= "000";
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
		wait;
	end process creat_input;

	DUT : component thermometer
			port map(A => A, B => B);
end test;			