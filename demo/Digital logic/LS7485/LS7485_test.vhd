--TEST--
--Khai báo thư viện--
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
--Khai báo thực thể không có giao diện--
entity LS7485_test is
end LS7485_test;
--Khai báo kiến trúc--
architecture test of LS7485_test is
--input signal--
signal A   : std_logic_vector(3 downto 0) := "1011";
signal B   : std_logic_vector(3 downto 0) := "0011";
signal CS  : std_logic_vector(2 downto 0) := "010";
--output signal--
signal CSO : std_logic_vector(2 downto 0);
component LS7485 
port(
		A   : in  std_logic_vector(3 downto 0);
		B   : in  std_logic_vector(3 downto 0);
		CS  : in  std_logic_vector(2 downto 0);
		CSO : out std_logic_vector(2 downto 0)
	);
end component;
begin
	DUT : component LS7485
			port map(A => A, B => B, CS => CS, CSO => CSO);
end test;			