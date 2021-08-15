--Khối dịch phải 2^N bit--
--Khai báo thư viện--
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
--use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;
--Khai báo thực thể--
entity shifter is
generic(N : natural := 3);
port(
		i_sh  : in  std_logic_vector((2**N)-1 downto 0);
		i_val : in  unsigned(N-1 downto 0);
		o_sh  : out std_logic_vector((2**N)-1 downto 0)
	);
end shifter;	
--Khai báo kiến trúc--
architecture Behavioral of shifter is
signal i_temp   : unsigned((2**N)-1 downto 0);
signal val_temp : integer;
signal o_temp   : unsigned((2**N)-1 downto 0);
begin
	--Để có thể sử dụng toán tử dịch ta đưa toán hạng bên trái về dạng bit_vector hoặc unsinged còn toán hạng trái về dạng interger
	--Bằng cách ép kiểu dữ liệu hay gọi là các tuyên bố--
	--Chuyển đầu vào sang únigned
	i_temp <= unsigned(i_sh);
	--Chuyển giá trị dịch--
	val_temp <= to_integer(i_val);
	o_temp <= i_temp srl val_temp;
	o_sh   <= std_logic_vector(o_temp);
end Behavioral;	
	