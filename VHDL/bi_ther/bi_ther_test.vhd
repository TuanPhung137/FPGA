--Khai báo thư viện--
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
--Khai báo thực thể--
entity bi_ther_test is
end bi_ther_test;
--Mô tả kiến trúc--
architecture test of bi_ther_test is
component bi_ther is
port(
		bi   : in  std_logic_vector(2 downto 0);
		ther : out std_logic_vector(7 downto 0)
	);
end component;
signal bi   : std_logic_vector(2 downto 0);
signal ther : std_logic_vector(7 downto 0);
begin
	creat_input : process
	begin
		bi <= "000";
		wait for 100 ns;
		bi <= "010";
		wait for 100 ns;
		bi <= "111";
		wait for 100 ns;
		bi <= "011";
		wait for 100 ns;
		bi <= "001";
		wait;
	end process creat_input;

	DUT : component bi_ther
			port map(bi => bi, ther => ther);
end test;			
		
		
