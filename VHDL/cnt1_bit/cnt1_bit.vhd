--Khai báo thư viện--
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
--Khai báo thực thể--
entity cnt1_bit is
port(
		chuoi : in  std_logic_vector(7 downto 0);
		cnt   : out std_logic_vector(3 downto 0)
	);
end cnt1_bit;
--Mô tả kiến trúc--
--Biến bên trong process ngoài trừ for loop
architecture Behavioral of cnt1_bit is
begin
	process(chuoi)
	variable cnt_reg : std_logic_vector(3 downto 0) := (others => '0');
	begin
		cnt_reg := (others => '0');
		for i in 0 to 7 loop
				cnt_reg := cnt_reg + chuoi(i);
		end loop;
		cnt <= cnt_reg;
	end process;
end Behavioral;	
				
	
	