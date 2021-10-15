--Khai bao thu vien--
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
--Khai bao thuc the--
entity counter_test is
end counter_test;
--Mô tả kiến trúc--
architecture test of counter_test is
component counter_FSM is
port(
		clk   : in  std_logic;
		reset : in  std_logic;
		state : out std_logic_vector(2 downto 0);
		Y     : out std_logic
	);
end component;
signal clk   : std_logic;
signal reset : std_logic;
signal state : std_logic_vector(2 downto 0);
signal Y     : std_logic;
begin
	creat_input : process
	begin
		clk <= '1';
		wait for 50 ns;
		clk  <= '0';
		wait for 50 ns;
	end process creat_input;
	
	creat_reset : process
	begin
		reset <= '1';
		wait for 50 ns;
		reset <= '0';
		wait;
	end process creat_reset;
	
	DUT : component counter_FSM 
			port map(clk => clk, reset => reset , state => state, Y => Y);
			
end test;
