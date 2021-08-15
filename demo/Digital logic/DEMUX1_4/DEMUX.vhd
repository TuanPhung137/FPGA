--DMUX--
--Khai báo thư viện--
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
--Khai báo thực thể--
--Trong này ta tiến hành khai báo giao diện bên ngoài khối số--
entity DEMUX is
port(
		X   : in  std_logic;
		Eab : in  std_logic_vector(1 downto 0);
		Y   : out std_logic_vector(3 downto 0)
	);
end DEMUX;
--Khai báo kiến trúc bên trong thực thể bao gồm các tín hiệu kết nối giữa các thành phần con và cũng như các thành phần con được tái sử dụng--
architecture Behavioral of DEMUX is
begin
	with Eab select Y <=
			"000"&X    when "00",
			"00"&X&'0' when "01",
			'0'&X&"00" when "10",
			X&"000"    when "11",
			"0000"     when others;
end Behavioral;			