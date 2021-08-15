--TEST--
--Khai báo thưu viện--
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
--Khai báo thực thể--
entity fre_divi_test is
end fre_divi_test;
--Khai báo kiến trúc--
architecture test of fre_divi_test is
component fre_divi
generic(N : natural);
port(
		reset  : in  std_logic;
		clk_in : in  std_logic;
		clk_out: out std_logic
	);
end component;
signal clk_in : std_logic;
signal clk_out: std_logic;
signal reset  : std_logic;
begin
	creat_clk : process
	begin
		clk_in <= '0';
		wait for 50 ns;
		clk_in <= '1';
		wait for 50 ns;
	end process creat_clk;
	
	creat_input : process
	begin
		reset <= '1';
		wait for 10 ns;
		reset <= '0';
		wait;
	end process creat_input;	

	DUT : component fre_divi
			generic map(N => 5)
			port map(reset => reset,clk_in => clk_in, clk_out => clk_out);
end test;			