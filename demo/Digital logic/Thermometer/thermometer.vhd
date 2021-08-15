--Thermometer--
--Khai báo thư viện--
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;--Thư viện này giúp ta khai báo các kiểu dữ liệu logic : std_logic,std_logic_vector,std_ulogic,...ngoài ra cung cấp các hàm logic and, or, not,... vaf các hàm chuyển đổi từ kiểu dữ liệu khác sang kiểu logic
use IEEE.STD_LOGIC_ARITH.ALL;--Thư viện này giúp ta định nghĩa các kiểu dữ liệu signed, unsigned,interger,... ngoài ra còn cung cấp các hàm số học +,-,*,/ và >=,<=,>,< các hàm dịch trái, ... và hàm chuyển đổi từ kiểu dữ liệu khác sang kiểu số nguyên
--use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;--Thư viện này cung cấp các hàm số học với các kiểu dữ liệu std_logic, interger kết quả trả về là std_logic không dấu
--Khai báo thực thể--
entity thermometer is
port(
		A    : in  std_logic_vector(2 downto 0);
		B    : out std_logic_vector(7 downto 0)
	);
end thermometer;
--Khai báo kiến trúc--
architecture Behavioral of thermometer is
begin
	process(A)--Những tín hiệu trong process là những tín hiệu được theo dõi bởi wait và cũng là làm chho quá trình được thực hiện
	variable A_temp : std_logic_vector(2 downto 0) := "000";--biến trong quá trình ngoài trừ biến for loop nhân giá trị ban đầu của nó, và giá trị ban đầu của nó sẽ rõ ràng khi ta khai báo nó
	variable B_temp : std_logic_vector(7 downto 0) := "00000000";
	begin
		--A_temp := "000";--với những bộ đếm trong vòng lặp thì ta phải setup lại giá trị ban đầu để ta chuyển sang tín hiệu mới nếu không nó sẽ đếm tiếp
		while(A_temp < A)--sự khác biệt duy nhất giữa bài này và đếm số bit 1 là giá trị biến đếm ta so sánh là constant
		loop
			B_temp := B_temp(6 downto 0) & '1';
			A_temp := A_temp + 1;
		end loop;
		B <= B_temp;
	end process;
end Behavioral;	
--architecture Behavioral of thermometer is
--begin
--	process(A)
--	variable i : INTEGER := 0;
--	variable A_temp : INTEGER;
--	variable B_temp : std_logic_vector(7 downto 0);
--	begin
--		A_temp := to_integer(unsigned(A));
--		for i in 0 to A_temp -1 loop
--			B_temp(i) := '1';
--		end loop;
--		B <= B_temp;
--	end process;
--end Behavioral;	