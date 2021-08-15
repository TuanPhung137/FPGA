--ADDER 4 BIT--
--Khai báo thư viện--
--Thư viện đầu tiên dùng để kahi báo các kiểu dữ liệu cơ bản nhất về mức logic(std_logic,std_logic_vector,std_ulogic,...) và khai báo các hàm logic cơ bản
--Thư viện thứ 2 được sử dụng để khi chúng ta khai báo các biến dạng số thì chúng được định nghĩa thành dạng số thực, số nguyên, số có dấu và không dấu ngoài ra định nghĩa các phép toán số học + - * / > >= ngoài ra còn định nghĩa các hàm dịch trái, dịch phải
--thư viện thứ 3 được sử dụng để định nghĩa với các phép toán số học trên std_logic,interger
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
--Khai báo thực thể
--Trong này ta khai báo về mặt giao diện bên ngoài của khối số
--Bao gồm các cổng in out và các tham số tĩnh sử dụng trong toàn khối thiết kế
entity adder4 is
port(
		A   : in  std_logic_vector(3 downto 0);
		B   : in  std_logic_vector(3 downto 0);
		Cin : in  std_logic;
		S   : out std_logic_vector(3 downto 0);
		Cout: out std_logic 
	);
end adder4;
--Khai báo kiên trúc--
--Trong này ta khai báo các tín hiệu bên trong thực hiện kết nối giữa các cổng hay các compoenent và tiến hành mô ta chức năng của khối
-- architecture structure of adder4 is
--signal
-- signal C : std_logic_vector(2 downto 0);
--component
-- component full_adder is
-- port(
		-- A    : in  std_logic;
		-- B    : in  std_logic;
		-- Cin  : in std_logic;
		-- S    : out std_logic;
		-- Cout : out std_logic
	-- );
-- end compoenent;
-- begin 
	-- u0 : component full_adder
			-- port map(A => A(0), B => B(0), Cin => Cin,
						-- S => S(0), Cout => C(0));
	
	-- u1 : component full_adder
			-- port map(A => A(1), B => B(1), Cin => C(0),
						-- S => S(1), Cout => C(1));
	
	-- u2 :  component full_adder
			-- port map(A => A(2), B => B(2), Cin => C(1),
						-- S => S(2), Cout => C(2));
	-- u3 : component full_adder 
			-- port map(A => A(3), B => B(3), Cin => C(2),
						-- S => S(3), Cout => Cout);
-- end structure;	

architecture Behavioral of adder4 is
signal A_temp : std_logic_vector(4 downto 0);
signal B_temp : std_logic_vector(4 downto 0);
signal S_temp : std_logic_vector(4 downto 0);
begin
	A_temp <= '0'&A;
	B_temp <= '0'&B;
	S_temp <= A_temp + B_temp + Cin;
	S <= S_temp(3 downto 0);
	Cout <= S_temp(4);
end Behavioral;	

					