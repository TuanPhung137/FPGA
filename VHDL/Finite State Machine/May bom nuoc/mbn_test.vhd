--TEST--
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
--Khai bao thuc the--
entity mbn_test is
end mbn_test;
--khai bao kein truc--
architecture test of mbn_test is
component mbn
port(
		clk : in std_logic;
		rst : in std_logic;
		X   : in  std_logic_vector(1 downto 0);
		S   : out  std_logic_vector(1 downto 0);
		S_1   : out  std_logic_vector(1 downto 0);
		Y   : out std_logic
	);
end component;
signal clk : std_logic;
signal rst : std_logic;
signal X   : std_logic_vector(1 downto 0);
signal S   : std_logic_vector(1 downto 0);
signal S_1 : std_logic_vector(1 downto 0);
signal Y   : std_logic;
begin
	creat_clk : process
	begin
		clk <= '1';
		wait for 50 ns;
		clk <= '0';
		wait for 50 ns;
	end process creat_clk;
	
	creat_reset : process
	begin
		rst <= '1';
		wait for 50 ns;
		rst <= '0';
		wait;
	end process creat_reset;

	creat_input : process
	begin
		X <= "00";
		wait for 100 ns;
		X <= "01";
		wait for 100 ns;
		X <= "11";
		wait for 100 ns;
		X <= "01";
		wait for 100 ns;
		X <= "00";
		wait for 100 ns;
	end process creat_input;

	DUT : component mbn
			port map(clk => clk, rst => rst , X => X, S => S, Y => Y,S_1 => S_1);
end test;			