--Khai báo thư viện--
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
--Khai báo thực thể--
entity clock_test is
end clock_test;
--Mô tả kiến trúc--
architecture test of clock_test is
component clock_divider is
port(
		clk_in  : in  std_logic;
		reset   : in  std_logic;
		clk_out : out std_logic
	);
end component;
signal clk_in  : std_logic;
signal reset   : std_logic;
signal clk_out : std_logic;
begin
	creat_reset : process
	begin
		reset <= '1';
		wait for 100 ns;
		reset <= '0';
		wait;
	end process creat_reset;

	creat_clk : process
	begin
		clk_in <= '0';
		wait for 50 ns;
		clk_in <= '1';
		wait for 50 ns;
	end process creat_clk;

	DUT : component clock_divider
			port map(clk_in => clk_in, reset => reset, clk_out => clk_out);
end test;			