--Block test---
-----LIBRARY DECLARATION----
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
-----ENTITY DECLARATION----
--Khai báo 1 thực thể mà không có giao diện vì ở đây ta chỉ khởi tạo các tín hiệu sau đó ánh xạ cổng của khối thực hiện kiểm tra tới các tín hiệu
entity adder4_test is
end adder4_test;
--ARCHITECTURE DESCRIPTION--
architecture test of adder4_test is
--Khai báo các thành phần bên trong kiến trúc cụ thể là các tín hiệu trong--
signal A    : std_logic_vector(3 downto 0)	;
signal B    : std_logic_vector(3 downto 0)  ;
signal Cin	: std_logic                    ;
signal Sum  : std_logic_vector(3 downto 0);
signal Cout : std_logic;
--Khai báo thành phần cần kiểm tra hay component
component adder4 
port(
		A   : in  std_logic_vector(3 downto 0);
		B   : in  std_logic_vector(3 downto 0);
		Cin : in  std_logic;
		Sum : out std_logic_vector(3 downto 0);
		Cout: out std_logic
	);
end component;
--Tiếp theo là phần mô tả chức năng của kiến trúc hay khối số cụ thể là ánh xạ cổng của component vào các tín hiệu
begin
	--Đoạn này ta tiến hành thay đổi giá trị của A
	creat_input : process--tạo 1 quá trình mà không có 1 danh sách gì cả và cả process mới là 1 câu lệnh và các đoạn bên trong nó là tuần tự
	begin
		wait for 10 ns;
		A <= "0111";
		Cin <= '1';
		B <= "0000";
		wait for 10 ns;
		A <= "1000";
		Cin <= '0';
		wait;
	end process;	
	


	DUT : component adder4--ánh xạ 1 cách tường minh --DUT = Device under test
			port map(A => A, B => B, Cin => Cin,
					Sum => Sum, Cout => Cout);
end test;				