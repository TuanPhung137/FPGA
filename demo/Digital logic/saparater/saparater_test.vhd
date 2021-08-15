--TEST--
--Khai báo thư viện--
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
--Khai báo thực thể--
entity saparater_test is
end saparater_test;
--Khai báo kiến trúc--
architecture test of saparater_test is
component saparater
port(
		A  : in  std_logic_vector(3 downto 0);
		B  : in  std_logic_vector(3 downto 0);
		CD : out std_logic_vector(7 downto 0)
	);
end component;
signal A  : std_logic_vector(3 downto 0) ;
signal B  : std_logic_vector(3 downto 0) ;
signal CD : std_logic_vector(7 downto 0);
begin
	creat_input : process
	begin
		A <= "0110";
		B <= "0010";
		wait for 100 ns;
		A <= "1101";
		B <= "0100";
		wait;
	end process creat_input;

	DUT : component saparater
			port map(A => A, B => B, CD => CD);
end test;			
