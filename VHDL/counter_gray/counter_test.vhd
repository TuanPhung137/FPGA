--Khai báo thưc viện--
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
--Khai báo thực thể--
entity counter_test is
end counter_test;
--Mô tả kiến trúc--
architecture test of counter_test is
component counter_gray is
port(
		clk   : in  std_logic;
		reset : in  std_logic;
		enable: in  std_logic;
		cnt   : out std_logic_vector(1 downto 0)
	);
end component;
signal clk   : std_logic;
signal reset : std_logic;
signal enable: std_logic;
signal cnt   : std_logic_vector(1 downto 0);
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
		reset <= '1';
		enable <= '1';
		wait for 100 ns;
		reset <= '0';
		wait;
	end process creat_input;

	DUT : component counter_gray
			port map(clk => clk, reset => reset, enable => enable, cnt => cnt);
end test;			