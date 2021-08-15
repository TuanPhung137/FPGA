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
generic(N : natural := 16);
port(
		clk    : in  std_logic;
		enable : in  std_logic;
		reset  : in  std_logic;
		cnt    : out std_logic_vector(N-1 downto 0)
	);
end component;
--input signal--
signal clk    : std_logic;
signal enable : std_logic;
signal reset  : std_logic;
--output signal--
signal cnt    : std_logic_vector(15 downto 0);
begin
	creat_clk : process
	begin
		clk <= '0';
		wait for 50 ns;
		clk <= '1';
		wait for 50 ns;
	end process creat_clk;

	creat_input: process
	begin
		reset  <= '1';
		enable <= '1';
		wait for 40 ns;
		reset  <= '0';
		wait;
	end process creat_input;

	DUT : component counter
			generic map(N => 16)--ánh xạ tham số tĩnh là 16
			port map(clk => clk, enable => enable, reset => reset,
						cnt => cnt);
end test;
