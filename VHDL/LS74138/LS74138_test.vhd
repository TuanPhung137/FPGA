--Khai báo thư viện--
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
--Khai báo thực thể--
entity LS74138_test is
end LS74138_test;
--Mô tả kiến trúc--
architecture test of LS74138_test is
--Khai báo các thành phần được sử dụng để kiểm tra thiết kế--
component LS74138 
port(
		A   : in  std_logic_vector(2 downto 0);
		E   : in  std_logic_vector(2 downto 0);
		Y   : out std_logic_vector(7 downto 0)
	);
end component;
--input signal--
signal A   : std_logic_vector(2 downto 0);
signal E   : std_logic_vector(2 downto 0);
--output signal --
signal Y   : std_logic_vector(7 downto 0);
begin
	creat_input : process
	begin
		A <= "000";
		E <= "100";
		wait for 100 ns;
		A <= "001";
		E <= "100";
		wait for 100 ns;
		A <= "010";
		E <= "100";
		wait for 100 ns;
		A <= "011";
		E <= "100";
		wait for 100 ns;
		A <= "100";
		E <= "100";
		wait for 100 ns;
		A <= "101";
		E <= "100";
		wait for 100 ns;
		A <= "110";
		E <= "100";
		wait for 100 ns;
		A <= "111";
		E <= "100";
		wait for 100 ns;
		A <= "010";
		E <= "101";
		wait;
	end process creat_input;

	DUT : component LS74138
			port map(A => A, E => E, Y => Y);
end test;			