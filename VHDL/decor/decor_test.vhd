--Khai báo thư viện--
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
--Khai báo thực thể--
entity decor_test is
end decor_test;
--Mô tả kiến trúc--
architecture test of decor_test is
component decor is
port(
		I : in  std_logic_vector(2 downto 0);
		F : out std_logic
	);
end component;
signal I : std_logic_vector(2 downto 0);
signal F : std_logic;
begin
	creat_input : process
	begin
		I <= "011";
		wait for 100 ns;
		I <= "000";
		wait for 100 ns;
		I <= "100";
		wait for 100 ns;
		I <= "001";
		wait;
	end process creat_input;

	DUT : component decor
			port map(I => I, F => F);
end test;			