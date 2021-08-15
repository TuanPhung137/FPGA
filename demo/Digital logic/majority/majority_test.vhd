--TEST--
--Khai báo thư viện--
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
--Khai báo thực thể--
entity majority_test is
end majority_test;
--Khai báo kiến trúc--
architecture test of majority_test is
component majority
generic(N : natural := 3);
port(
		i_vector : in  std_logic_vector((2**N)-1 downto 0);
		o_value  : out unsigned(N downto 0)
	);
end component;
signal i_vector : std_logic_vector(7 downto 0);
signal o_value  : unsigned(3 downto 0);

for DUT : majority use entity work.majority(majority_3);

begin
	creat_input : process
	begin
		i_vector <= "10101101";
		wait for 100 ns;
		i_vector <= "11001001";
		wait;
	end process;

	DUT : component majority 
			generic map(N => 3)
			port map(i_vector => i_vector, o_value => o_value);
end test;			