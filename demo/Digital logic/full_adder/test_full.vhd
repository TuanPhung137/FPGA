--TEST FULL ADDER--
--Khai bao thu vien--
library IEEE;
use IEEE.STD_LOGIC_1164.ALL; 
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
--Khai bao thuc the--
entity test_full is
end test_full;
--Khai bao kien truc--
architecture test of test_full is
component full_adder 
port(
		A   : in  std_logic;
		B   : in  std_logic;
		Cin : in  std_logic;
		Sum : out std_logic;
		Cout: out std_logic
	);
end component;
signal A   : std_logic;
signal B   : std_logic;
signal Cin : std_logic;
signal Sum : std_logic;
signal Cout: std_logic;
begin
	creat_input : process
	begin
		A   <= '0';
		B   <= '0';
		Cin <= '0';
		wait for 50 ns;
		A   <= '0';
		B   <= '0';
		Cin <= '1';
		wait for 50 ns;
		A   <= '0';
		B   <= '1';
		Cin <= '0';
		wait for 50 ns;
		A   <= '0';
		B   <= '1';
		Cin <= '1';
		wait for 50 ns;
		A   <= '1';
		B   <= '0';
		Cin <= '0';
		wait for 50 ns;
		A   <= '1';
		B   <= '0';
		Cin <= '1';
		wait for 50 ns;
		A   <= '1';
		B   <= '1';
		Cin <= '0';
		wait for 50 ns;
		A   <= '1';
		B   <= '1';
		Cin <= '1';
		wait ;
	end process creat_input;

	DUT : component full_adder
			port map(A => A, B => B, Cin => Cin, Cout => Cout, Sum => Sum);
end test;			