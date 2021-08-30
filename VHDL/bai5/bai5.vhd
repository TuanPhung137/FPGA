--Khai báo thư viện--
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
--Khai báo thực thể--
entity bai5 is
port(
		A  : in  std_logic_vector(3 downto 0);
		B  : in  std_logic_vector(3 downto 0);
		CD : out std_logic_vector(7 downto 0)
	);
end bai5;
--Mô tả kiến trúc--
architecture Behavioral of bai5 is
signal A_temp : std_logic_vector(7 downto 0);
signal B_temp : std_logic_vector(7 downto 0);
signal S_temp : std_logic_vector(7 downto 0);
signal S1     : std_logic_vector(7 downto 0);
signal CD_temp: std_logic_vector(7 downto 0);
begin
	--Thêm 4 bit vào các phép toán thứ 1 để thực hiện phép cộng nếu tràn bit thứ 2 nếu tràn lớn hơn 15 thì bit dấu lại thành bit tràn
	--Để tránh bị nhầm ta tăng hẳn lên 4 bit 0 --
	A_temp <= "0000"& A;
	B_temp <= "0000"& B;
	S_temp <= A_temp + B_temp;
	--Nếu nó lớn hơn hoặc bằng 10 thì ta lấy kết quả -10
	-- 10="1010" thêm 4 bit 0 để thể hiện dấu +10 = "00001010" => -10 = "11110101" mã bù 1 => mã bù 2 của -10 = "11110110"
	process(S_temp)
	begin
		if(S_temp >= 10) then
			CD_temp(7 downto 4) <= "0001";
			S1 <= S_temp + "11110110";
		else 
			CD_temp(7 downto 4) <= "0000";
			S1 <= S_temp;
		end if;
	end process;
	--Sau khi trừ 10 thì 4 bit cuối là 4 bit ta cần lấy--
	CD_temp(3 downto 0) <= S1(3 downto 0);
	CD <= CD_temp;
end Behavioral;	