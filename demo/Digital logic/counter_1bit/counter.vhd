--Couter bit 1--
--Khai báo thư viện--
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
--Khai báo thực thể--
entity counter is
port(
		A  : in  std_logic_vector(7 downto 0);
		B  : out std_logic_vector(2 downto 0)
	);
end counter;
--Khai báo kiến trúc--
architecture Behavioral of counter is
--signal cnt : std_logic_vector(2 downto 0);
begin
	process(A)
	variable i : INTEGER := 7;
	variable cnt : std_logic_vector(2 downto 0) := "000";
	begin
		cnt := "000";
		i := 7;
		while i >= 0 loop
			if(A(i) = '1') then
				cnt := cnt + 1;
			end if;
			i := i - 1;
		end loop;
		B <= cnt;
	end process;
end Behavioral;	
