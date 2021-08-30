--Khai bao thư viện--
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
--Khai báo thực thể--
entity counterbit1_test is
end counterbit1_test;
--Mô tả kiến trúc--
architecture test of counterbit1_test is
component counter_bit1 is
port(
		A : in  std_logic_vector(2 downto 0);--chuoi bit can dem--
		B : out std_logic_vector(1 downto 0)--Gia tri dem--
	);
end component;
--input signal--
signal A :  std_logic_vector(2 downto 0);
--output signal--
signal B :  std_logic_vector(1 downto 0);
begin
	creat_input : process
	begin	
		A <= "000";
		wait for 100 ns;
		A <= "010";
		wait for 100 ns;
		A <= "110";
		wait for 100 ns;
		A <= "100";
		wait for 100 ns;
		A <= "111";
		wait for 100 ns;
		A <= "000";
		wait;
	end process creat_input;

	DUT : component counter_bit1 
			port map(A => A, B => B);
end test;			
		