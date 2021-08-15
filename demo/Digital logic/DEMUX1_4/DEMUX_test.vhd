--TEST--
--Khai báo thư viện--
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
--Khai báo thực thể không có giao diện--
entity DEMUX_test is
end DEMUX_test;
--Khai báo kiến trúc--
architecture test of DEMUX_test is
--input singal--
signal X   : std_logic := '0';
signal Eab : std_logic_vector(1 downto 0) := "00";
--output signal--
signal Y   : std_logic_vector(3 downto 0);
--component--
component DEMUX
port(
		X   : in  std_logic;
		Eab : in  std_logic_vector(1 downto 0);
		Y   : out std_logic_vector(3 downto 0)
	);
end component;
begin
	creat_input : process
	begin
		wait for 10 ns;
		X <= '1';
		Eab <= "01";
		wait for 10 ns;
		Eab <= "10";
		wait for 10  ns;
		Eab <= "11";
		wait;
	end process;

	DUT : component DEMUX
			port map(X => X, Eab => Eab, Y => Y);
end test;			