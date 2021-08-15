--74LS138--
--Khái báo thư viện--
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
--Khai báo thực thể--
entity LS74138 is
port(
		A   : in  std_logic_vector(2 downto 0);
		E   : in  std_logic_vector(2 downto 0);
		Y   : out  std_logic_vector(7 downto 0)
	);
end LS74138;
--Khai báo kiến trúc--
--Bên trong này ta tiến hành khai báo các tín hiệu bên trong thực thi kết nối giữa các khối chức năng trong nó--
architecture dataflow of LS74138 is
signal E_temp : std_logic;
signal Y_temp : std_logic_vector(7 downto 0);
begin
	E_temp <= not((not E(0)) or E(1) or E(2));
	Y_temp(0)   <= (not A(0)) and (not A(1)) and (not A(2)) and E_temp;
	Y_temp(1)   <= A(0) and (not A(1)) and (not A(2)) and E_temp;
	Y_temp(2)	<= (not A(0)) and A(1) and (not A(2)) and E_temp;
	Y_temp(3)	<= A(0) and A(1) and (not A(2)) and E_temp;
	Y_temp(4)	<= (not A(0)) and (not A(1)) and A(2) and E_temp;
	Y_temp(5)	<= A(0) and (not A(1)) and A(2) and E_temp;
	Y_temp(6)	<= (not A(0)) and A(1) and A(2) and E_temp;
	Y_temp(7)	<= A(0) and A(1) and A(2) and E_temp;
	--Đảo bit đầu ra trước khi cho ra khỏi khối
	Y <= not(Y_temp);
end dataflow;	
	
	
	
	
	