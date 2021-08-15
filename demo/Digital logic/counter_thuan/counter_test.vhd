--TEST--
--Khai báo thư viện--
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
--Khai báo thực thể--
entity counter_test is
end counter_test;
--Khai báo kiến trúc--
architecture test of counter_test is
component counter 
generic(N : natural; Kd : integer := 9);
port    (
			clk    : in  std_logic;
			reset  : in  std_logic;
			enable : in  std_logic;
			cnt    : out std_logic_vector(N-1 downto 0)
			
		);
end component;
signal clk    :  std_logic;
signal reset  :  std_logic;
signal enable :  std_logic;
signal cnt    :  std_logic_vector(3 downto 0);
begin
	creat_clk : process
	begin
		clk <= '0';
		wait for 50 ns;
		clk <= '1';
		wait for 50 ns;
	end process creat_clk;

	creat_reset : process
	begin
		reset <= '1';
		enable <= '1';
		wait for 10 ns;
		reset <= '0';
		wait;
	end process creat_reset;

	DUT : component counter
				generic map(N => 4, Kd => 9)
			port map(clk => clk, reset => reset, enable => enable, cnt => cnt);
end test;			