--TEST--
--Khai báo thư viện--
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
--Khai báo thực thể--
entity reg_test is
end reg_test;
--Khai báo kiến trúc--
architecture test of reg_test is
component reg_asyn
port(
		D     : in  std_logic_vector(15 downto 0);
		Q     : out std_logic_vector(15 downto 0);
		CLK   : in  std_logic;
		RESET : in  std_logic
	);
end component;
signal D     : std_logic_vector(15 downto 0);
signal Q     : std_logic_vector(15 downto 0);
signal CLK   : std_logic;
signal RESET : std_logic;
begin
	creat_clk : process
	begin
		CLK <= '0';
		wait for 50 ns;
		CLK <= '1';
		wait for 50 ns;
	end process creat_clk;

	creat_input : process
	begin
		RESET <= '1';
		D	  <= x"a000";
		wait for 10 ns;
		RESET <= '0';
		D     <= x"a000";
		wait for 100 ns;
		D     <= x"b120";
		wait for 70 ns;
		D     <= x"2345";
		wait;
	end process creat_input;

    DUT : component reg_asyn
			port map(D => D, Q => Q, CLK => CLK, RESET => RESET);
end test;			