--TEST--
--Khai báo thư viện--
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
--use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;
--Khai báo thực thể--
entity shifter_test is
end shifter_test;
--Khai báo kiến trúc--
architecture test of shifter_test is
component shifter
generic(N : natural := 3);
port(
		i_sh  : in  std_logic_vector((2**N)-1 downto 0);
		i_val : in  unsigned(N-1 downto 0);
		o_sh  : out std_logic_vector((2**N)-1 downto 0)
	);
end component;
signal i_sh  :  std_logic_vector(7 downto 0) := "10110101";
signal i_val :  unsigned(2 downto 0)         := "101";
signal o_sh  :  std_logic_vector(7 downto 0);
begin
	DUT : component shifter
			generic map(N => 3)
			port map(i_sh => i_sh, i_val => i_val, o_sh => o_sh);
end test;			