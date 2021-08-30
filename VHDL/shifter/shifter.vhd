--Shifter right--
--Khai báo thư viện--
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;--Thư viện được sử dụng để chuyển đổi std_logic_vector to integer--
--Khai báo thực thể--
entity shifter is
port(
		sh_in   : in  std_logic_vector(31 downto 0);--chuỗi bit cần dịch
		sh_val  : in  std_logic_vector(4 downto 0);--Gia tri dich có độ dài duoc xác định bằng = log2(n)=5 với n là độ dài chuoi bit
		sh_out  : out std_logic_vector(31 downto 0)
	);
end shifter;
--Mô tả kiến trúc--
--PP1 : sử dụng toán tử "&"--
-- architecture Behavioral of shifter is
-- signal sh_in4 : std_logic_vector(31 downto 0);
-- signal sh_in3 : std_logic_vector(31 downto 0);
-- signal sh_in2 : std_logic_vector(31 downto 0);
-- signal sh_in1 : std_logic_vector(31 downto 0);
-- begin
	-- with sh_val(4) select--nếu bằng 1 ta dịch 16 bit
		-- sh_in4 <= x"0000"&sh_in(31 downto 16) when '1',
				  -- sh_in(31 downto 0) when others;
	
	-- with sh_val(3) select 
		-- sh_in3 <= x"00"&sh_in4(31 downto 8) when '1',
				  -- sh_in4 when others;
	
	-- with sh_val(2) select
		-- sh_in2 <= x"0"&sh_in3(31 downto 4) when '1',
				  -- sh_in3 when others;
	-- with sh_val(1) select
		-- sh_in1 <= "00"&sh_in2(31 downto 2) when '1',
				  -- sh_in2 when others;
	-- with sh_val(0) select
		-- sh_out <= '0'&sh_in1(31 downto 1) when '1',
		          -- sh_in1 when others;
-- end Behavioral;
--PP2: Sử dụng các toán tử dịch trong thư viện--				  
--Công thức : 	sho srl shv--
--sho : kieu bit--
--shv : kieu integer--
architecture Behavioral of shifter is
signal sho   : bit_vector(31 downto 0);
signal shv   : integer;
signal sh_o1 : bit_vector(31 downto 0);
begin
	--Chuyển chuỗi ban đầu về bit_vector--
	sho <= to_bitvector(sh_in);
	--Chuyển số lần dịch thành integer--
	shv <= to_integer(unsigned(sh_val));
	--Tiến hành sử dụng toán tử dịch--
	--Mặc định nó thêm 0 vào--
	sh_o1 <= sho srl shv;
	--Chuyển kết quả về std_logic_vector--
	sh_out <= to_stdlogicvector(sh_o1);
end Behavioral;	