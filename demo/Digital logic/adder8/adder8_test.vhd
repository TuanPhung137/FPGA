--ADDER 8 TEST--
--Khai báo thư viện--
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
--Khai báo thực thể--
entity adder8_test is
end adder8_test;
--Khai báo kiến trúc--
architecture test of adder8_test is
component adder8 
port(
		A    : in  std_logic_vector(7 downto 0);
		B    : in  std_logic_vector(7 downto 0);
		Cin  : in  std_logic;
		S    : out std_logic_vector(7 downto 0);
		Cout : out std_logic
	);
end component;
--input signal--
signal A    : std_logic_vector(7 downto 0) := "11010011";
signal B    : std_logic_vector(7 downto 0) := "01101100" ;
signal Cin  : std_logic                    := '1'; 
--output signal--
signal S    : std_logic_vector(7 downto 0);
signal Cout : std_logic;
begin
	DUT : component adder8 --Device under test(Thiết bị được thử nghiệm)
			port map(A => A, B => B, Cin => Cin,
						S => S, Cout => Cout);
end test;			