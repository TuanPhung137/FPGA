--TEST--
--Khai báo thư viện--
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNEd.ALL;
--Khai báo thực thể không có giao diện--
--Vì trong đây ta chỉ tiến hành ánh xạ khối cần kiểm tra tới các tín hiệu mà khối đó ta cần sử dụng và kế thừa nên ta khai báo
--vào đây
entity MUX_test is
end MUX_test;
--Khai báo kiến trúc--
architecture test of MUX_test is
--input signal--
signal  Ia  : std_logic_vector(3 downto 0) := "0001";
signal  Ib  : std_logic_vector(3 downto 0) := "0000";
signal 	Ea  : std_logic                    := '0';
signal 	Eb  : std_logic                    := '0';
signal 	S   :std_logic_vector(1 downto 0)  := "00";
--output signal--
signal 	Ya  : std_logic;
signal 	Yb  : std_logic;
--component--
component MUX 
port(
		Ia  : in  std_logic_vector(3 downto 0);
		Ib  : in  std_logic_vector(3 downto 0);
		Ea  : in  std_logic;
		Eb  : in  std_logic;
		S   : in std_logic_vector(1 downto 0);
		Ya  : out std_logic;
		Yb  : out std_logic
	);
end component;
begin
	DUT : component MUX
			port map(Ia => Ia, Ib => Ib, Ea => Ea, Eb => Eb, S => S, Ya => Ya, Yb => Yb);
end test;			