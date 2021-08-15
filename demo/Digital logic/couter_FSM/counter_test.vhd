--TEST--
--Khai báo thư viện--
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
--Khai báo thực thể
entity counter_test is
end counter_test;
--Khai báo kiến trúc--
architecture test of counter_test is
component counter 
port(
		clk   : in  std_logic;
		S     : out std_logic_vector(2 downto 0);
		Y     : out std_logic
	);
end component;
signal clk   :  std_logic;
signal S     :  std_logic_vector(2 downto 0);
signal Y     :  std_logic;
begin
	creat_clk : process
	begin	
		clk <= '0';
		wait for 50 ns;
		clk <= '1';
		wait for 50 ns;
	end process creat_clk;


	DUT : component counter 
			port map(clk => clk, S => S, Y => Y);
end test;			
