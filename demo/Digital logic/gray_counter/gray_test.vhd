--TEST--
--Khai báo thư viện--
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
--Khai báo thực thể--
entity gray_test is
end gray_test;
--Khai báo kiến trúc--
architecture test of gray_test is
component gray
generic(N : natural);
port(
		cnt   : out std_logic_vector(N-1 downto 0);
		clk   : in  std_logic;
		reset : in  std_logic;
		enable: in  std_logic   
	);
end component;
signal cnt   : std_logic_vector(1 downto 0);
signal clk   : std_logic;
signal reset : std_logic;
signal enable: std_logic;
begin
	creat_clk : process
	begin
		clk <= '0';
		wait for 50 ns;
		clk <= '1';
		wait for 50 ns;
	end process creat_clk;

	creat_input : process
	begin
		reset  <= '1';
		enable <= '1';
		wait for 10 ns;
		reset <= '0';
		wait;
	end process creat_input;

	DUT : component gray
			generic map(N => 2)
			port map(cnt => cnt, clk => clk, reset => reset, enable => enable);
end test;			