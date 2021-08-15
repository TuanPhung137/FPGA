--Tách tổng của 2 số NBCD 4bit--
--Khai báo thư viện--
--Thư viện đầu tiên là thư viện cơ bản và quan trọng trong sử dụng tín hiệu logic
--Được sử dụng để khai báo các kiểu dữ liệu std_logic,std_logic_vector,std_ulogic,... và các hàm logic cơ bản cũng như các hàm chuyển đổi từ kiểu dữ liệu khác sang std_logic
--Thư viện thứ 2 được sử dụng để định nghĩa đối với các con số integer, signed, unsigned, small int cung cấp các hàm số học + - * / hay các ><>=<= và các hàm chuyển đổi từ kiể dữ liệu khác sang interger
--thư viện thứ 3 được sử dụng để cung cấp các hàm số học với các kiểu dữ liệu std_logic,interger và kết quả trả về là std-logic không dấu
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
--Khai báo thực thể--
entity saparater is
port(
		A  : in  std_logic_vector(3 downto 0);
		B  : in  std_logic_vector(3 downto 0);
		CD : out std_logic_vector(7 downto 0)
	);
end saparater;
--Khai baso kiến trúc--
architecture Behavioral of saparater is
signal A_temp : std_logic_vector(4 downto 0);
signal B_temp : std_logic_vector(4 downto 0);
signal S      : std_logic_vector(4 downto 0);
signal CD_temp: std_logic_vector(7 downto 0);
signal S_temp : std_logic_vector(4 downto 0);
begin
	A_temp <= '0'&A;
	B_temp <= '0'&B;
	S      <= A_temp + B_temp;
	CD_temp(7 downto 5) <= "000";
	--Nếu tràn thì >= 10 còn không thì < 10
	CD_temp(4) <= '1' when S(4) = '1' else '0';
	--Nếu lớn hơn 10 thì trừ đi 10 con không thì giữ nguyên
	with S(4) select S_temp <=
		S + "10110" when '1',
		S           when others;
	CD_temp(3 downto 0) <= S_temp(3 downto 0);
	CD <= CD_temp;
end Behavioral;	