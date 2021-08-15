--TEST--
--Khai báo thư viện--
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
--Khai báo thực thể--
entity add_sub_test is
end add_sub_test;
--Khai báo kiến trúc--
architecture test of add_sub_test is
component add_sub
port(
		A   : in  std_logic_vector(3 downto 0);
		B   : in  std_logic_vector(3 downto 0);
		SUB : in  std_logic;
		Cin : in  std_logic;
		S   : out std_logic_vector(3 downto 0);
		Cout: out std_logic
	);
end component;
--input signal --
signal A   :   std_logic_vector(3 downto 0) := "1011";
signal B   :   std_logic_vector(3 downto 0) := "0110";
signal SUB :   std_logic;
signal Cin :   std_logic                    := '0';
--output signal--
signal S   :  std_logic_vector(3 downto 0);
signal Cout:  std_logic;
begin
	creat_input : process
	begin
		SUB <= '1';
		wait for 100 ns;
		SUB <= '0';
		wait;
	end process creat_input;

	DUT : component add_sub
			port map(A => A, B => B, SUB => SUB, Cin => Cin,
						S => S, Cout => Cout);
end test;
						