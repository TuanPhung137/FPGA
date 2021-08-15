--SHIFTERI RIGHT BLOCK--
--Khai báo thưu viện--
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
--use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;
--Khai báo thực thể--
entity shifter is
port(
		sh_in  : in  std_logic_vector(7 downto 0);
		sh_val : in  std_logic_vector(2 downto 0);--giá trị dịch không được lớn hơn giá trị đầu vào
		sh_out : out std_logic_vector(7 downto 0)
	);
end shifter;
--Khai báo kiến trúc--
--Đây là cách cơ bản nhất mà ta đã biết về mặt bản chất khối dịch là tập hợp các FF-D mắc nối tiếp đầu ra khối này là đầu vào khối kia
--Dựa vào sự kiện chốt dữ liệu theo sườn xung ta nhận được các đầu ra với chỉ 1 đầu vào D
--architecture Behavioral of shifter is
--signal sh_in1 : std_logic_vector(7 downto 0);
--signal sh_in2 : std_logic_vector(7 downto 0);
--begin
--	--Vì có 8 bit đầu vào dư liệu nên giá trị dịch phải nhiều nhất là 8 tương đương 3 bit
--	--Khối dịch thứ 1 : 2^2
--	sh_in1 <= "0000"&sh_in(7 downto 4) when sh_val(2) = '1' else sh_in;
--	--Khối dịch thứ 2 : 2^1
--	sh_in2 <= "00"&sh_in1(7 downto 2) when sh_val(1) = '1' else sh_in1;
--	--Khối dịch thứ 3 : 2^0
--	sh_out <= "0"&sh_in2(7 downto 1) when sh_val(0) = '1' else sh_in2;
--end Behavioral;	

Ở đây ta tiến hành xây dựng 1 kiến trúc có chức năng tương tự nhưng sử dụng các hàm chuyển đổi từ std_logic_vector sang số nguyên và ngược lại của lần lượt các thư viện 1164 và arith
Khai báo kiến trúc--
architecture shif_lib of shifter is
--Ta sẽ sử dụng toán tử slr,sll để dịch chỉ hỗ trợ kiểu bit_vector, kết quả trả về cùng kiểu với đầu vào
--vd : sh_in slr sh_val với sh_val là số nguyên còn sh_in phải thuộc kiểu bit hoặc boolean 
--Vì không thể chuyển đổi trực tiếp shi_val sang interger ta phải chuyển đổi trung gian sang unsigned
signal shi_temp : unsigned(7 downto 0);
--Đoạn này cũng có thể viết là
--shi_temp : IEEE.NUMERIC_STD.UNSIGNED(7 downto 0);
signal shv_temp : integer;
signal sho_temp : unsigned(7 downto 0);
begin
	--input signal--
	shi_temp <= unsigned(sh_in);
	--Đoạn trên có thể viết là shi_temp <= IEEE.NUMERIC_STD.UNSIGNED(sh_in)
	--toán tử shift_right cóphần tử thuộc kiểu unsigned và interger 
	--ở đây ta đang ép kiểu dữ liệu chứ không phải là chuyển--
	--value shif--
	--chuyển trung gian từ std_logic_vector sang unsigned sau đó từ unsigned sang integer ta phải xác định độ dài của vector cần chuyển đổi
	shv_temp  <= to_integer(unsigned(sh_val));
	--Sau khi chuyển ta tiến hành sử dụng toán tử slr
	sho_temp <= shift_right(shi_temp,shv_temp);
	sh_out   <= std_logic_vector(sho_temp);
end shif_lib;	
 