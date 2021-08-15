--TEST--
--Flie test là file về mặt bản chất là tạo ra tín hiệu đẻ kiểm tra tính đúng của thiết kế--
--Nên trong này ta chỉ cần các tín hiệu rồi đưa component cần kierm tra vào để tiến hành ánh xạ
--Và không tồn tại giao diện bên ngoài
--Khai báo thư viện--
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
--Khai baso thuực thể về mặt giao diện của khối thiết kế--
entity LS74139_test is
end LS74139_test;
--Khai báo kiến trúc--
--Bên trong này ta khai báo các tín hiệu bên trong cái thiết kế test này--
--Sau đó tiến hành ánh xạ các cổng của component cho các tín hiệu và ta tiến hành ánh xạ tường minh
--Ta khai báo khối con mà ta tiến hành kế thừa để sử dụng
architecture test of LS74139_test is
component LS74139
port(
		EBAa    : in  std_logic_vector(2 downto 0);
		EBAb    : in  std_logic_vector(2 downto 0);
		Ya      : out std_logic_vector(3 downto 0);
		Yb      : out std_logic_vector(3 downto 0)
	);
end component;
--input singal--
signal EBAa : std_logic_vector(2 downto 0) := "000";
signal EBAb : std_logic_vector(2 downto 0) := "000";
--output signal--
signal Ya : std_logic_vector(3 downto 0);
signal Yb : std_logic_vector(3 downto 0);
begin
	creat_input : process
	begin	
		wait for 10 ns;
		EBAa <= "001";
		EBAb <= "001";
		wait for 10 ns;
		EBAa <= "010";
		EBAb <= "010";
		wait for 10 ns;
		EBAa <= "011";
		EBAb <= "011";
		wait for 10 ns;
		EBAa <= "101";
		EBAb <= "101";
		wait;
	end process;
	
	DUT : component LS74139
			port map(EBAa => EBAa, EBAb => EBAb,
					Ya => Ya, Yb => Yb);
end test;					