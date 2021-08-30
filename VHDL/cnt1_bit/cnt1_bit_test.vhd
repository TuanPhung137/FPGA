--Khai báo thư viện--
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
--Khai báo thực thể--
entity cnt1_bit_test is
end cnt1_bit_test;
--Mô tả kiến trúc--
architecture test of cnt1_bit_test is
component cnt1_bit is
port(
		chuoi : in  std_logic_vector(7 downto 0);
		cnt   : out std_logic_vector(3 downto 0)
	);
end component;
signal chuoi : std_logic_vector(7 downto 0);
signal cnt   : std_logic_vector(3 downto 0);
begin
	creat_input : process
	begin
		chuoi <= "10111001";
		wait for 100 ns;
		chuoi <= "00000000";
		wait for 100 ns;
		chuoi <= "01010001";
		wait for 100 ns;
		chuoi <= "11111111";
		wait for 100 ns;
		chuoi <= "01110111";
		wait;
	end process creat_input;

	DUT : component cnt1_bit
			port map(chuoi =>chuoi, cnt => cnt);
end test;			
		