--Khai báo thư viện--
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
--Khai báo thực thể--
entity add_sub4 is
port(
		A    : in  std_logic_vector(3 downto 0);
		B    : in  std_logic_vector(3 downto 0);
		Cin  : in  std_logic;
		Sub  : in std_logic;
		Cout : out std_logic;
		Sum  : out std_logic_vector(3 downto 0)
	);
end add_sub4;
--Mô tả kiến trúc--
architecture Behavioral of add_sub4 is
--Tăng 1 bit để biểu diễn dấu thứ 2 để cho biết nếu thực hiện phép toán cộng không dấu thì có tràn hay không--
signal A_temp : std_logic_vector(4 downto 0);
signal B_temp : std_logic_vector(4 downto 0);
signal S_temp : std_logic_vector(4 downto 0);
signal C_temp : std_logic;
begin
	A_temp <= '0'& A;
	C_temp <= Sub or Cin;
	--Quyết định cộng hay trừ--
	B_temp <= '0'& B when Sub = '0' else
			  not('0'& B);
	S_temp <= A_temp + B_temp + C_temp;
	Sum  <= S_temp(3 downto 0);
	Cout <= S_temp(4);
end Behavioral;	
	
	