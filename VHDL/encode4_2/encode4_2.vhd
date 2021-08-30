--Khai báo thư viện--
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
--Khai báo thực thể--
entity encode4_2 is 
port(
		A : in  std_logic_vector(3 downto 0);
		B : out std_logic_vector(1 downto 0)
	);
end encode4_2;
--Mô tả kiến trúc--
architecture Behavioral of encode4_2 is
signal num : std_logic_vector(1 downto 0);
begin
	process(A)
	variable i : INTEGER range 3 downto 0;
	begin
		case A is
			when "0000" =>  num <= "XX";
			when others =>
				i := 3;
				while (A(i) = '0') loop
					i := i-1;
				end loop;
				num <= std_logic_vector(to_unsigned(i,B'length));
		end case;			
	end process;
	B <= num;
end Behavioral;	
	