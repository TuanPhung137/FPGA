--Shifter right--
--Khai báo thư viện--
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
--Khai báo thực thể--
entity shifter_test is
end shifter_test;
--Mô tả kiến trúc--
architecture test of shifter_test is
component shifter is
port(
		sh_in   : in  std_logic_vector(31 downto 0);--chuỗi bit cần dịch
		sh_val  : in  std_logic_vector(4 downto 0);--Gia tri dich có độ dài duoc xác định bằng = log2(n)=5 với n là độ dài chuoi bit
		sh_out  : out std_logic_vector(31 downto 0)
	);
end component;
signal sh_in   : std_logic_vector(31 downto 0);--chuỗi bit cần dịch
signal sh_val  : std_logic_vector(4 downto 0);--Gia tri dich có độ dài duoc xác định bằng = log2(n)=5 với n là độ dài chuoi bit
signal sh_out  : std_logic_vector(31 downto 0);
begin
	creat_input : process
	begin
		sh_in  <= x"AB1CEF45";
		sh_val <= "11010";--26--
		wait for 100 ns;
		sh_in  <= x"AB1CEF45";
		sh_val <= "10001";--17--
		wait;
	end process creat_input;

	DUT : component shifter
			port map(sh_in => sh_in, sh_val => sh_val, sh_out => sh_out);
end test;			