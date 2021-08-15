--7485--
--Khai báo thư viện--
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_uNSIGNED.ALL;
--Khai báo thực thể--
entity LS7485 is
port(
		A   : in  std_logic_vector(3 downto 0);
		B   : in  std_logic_vector(3 downto 0);
		CS  : in  std_logic_vector(2 downto 0);
		CSO : out std_logic_vector(2 downto 0)
	);
end LS7485;
--Khai báo kiến trúc--
architecture Behavioral of LS7485 is
begin
	process(A,B,CS)
	begin
		if (A = B) then
			case CS is
				when "100" => CSO <= "110";
				when "010" => CSO <= "010";
				when "001" => CSO <= "001";
				when "110" => CSO <= "000";
				when "000" => CSO <= "001";
				when others => CSO <= "001";
			end case;
		elsif(A > B) then
			CSO <= "100";
		else
			CSO <= "010";
		end if;
	end process;
end Behavioral;	
			