--Khai báo thư viện--
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
--Khai báo thực thể--
entity detector_test is
end detector_test;
--Mô tả kiến trúc--
architecture test of detector_test is
component detector_001 is
port(
		clk   : in std_logic;
		rst   : in std_logic;
		s_in  : in std_logic;
		valid : out std_logic
	);
end component;
signal clk   : std_logic;
signal rst   : std_logic;
signal s_in  : std_logic;
signal valid : std_logic;
begin
	creat_clk : process
	begin
		clk <= '0';
		wait for 50 ns;
		clk <= '1';
		wait for 50 ns;
	end process creat_clk;
	
	creat_rst : process
	begin
		rst <= '1';
		wait for 50 ns;
		rst <= '0';
		wait;
	end process creat_rst;
		
	creat_input : process
	begin
		s_in <= '0';
		wait for 150 ns;
		s_in <= '1';
		wait for 100 ns;
		s_in <= '0';
		wait for 300 ns;
		s_in <= '1';
		wait for 100 ns;
		s_in <= '0';
		wait for 200 ns;
		s_in <= '1';
		wait;
	end process creat_input;
	
	DUT : component detector_001
			port map(clk => clk, rst => rst, s_in => s_in, valid => valid);
end test;			