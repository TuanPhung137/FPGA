--Khai báo thư viện--
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
-- use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
--Khai báo thực thể--
entity bi_ther is
port(
		bi   : in  std_logic_vector(2 downto 0);
		ther : out std_logic_vector(7 downto 0)
	);
end bi_ther;
--Mô tả kiến trúc--
architecture Behavioral of bi_ther is
begin
	-- process(bi)
	-- variable i   : INTEGER;
	-- variable num : INTEGER;
	-- variable A   : std_logic_vector(7 downto 0) := (others => '0');
	-- begin
		-- A := (others => '0');
		-- num := to_integer(unsigned(bi));
		-- for i in 0 to num - 1 loop
			-- A(i) := '1';
		-- end loop;
		-- ther <= A;
	-- end process;
--------------------------------------------------------------------------	
	ther <= "00000000" when bi = "000" else
			"00000001" when bi = "001" else
			"00000011" when bi = "010" else
			"00000111" when bi = "011" else
			"00001111" when bi = "100" else
			"00011111" when bi = "101" else
			"00111111" when bi = "110" else
			"01111111";
	---------------------------------------------------------------
	--phương pháp này sử dụng phép dịch 1--
	process(bi)
	variable cnt : std_logic_vector(2 downto 0) := (others => '0');
	variable A   : std_logic_vector(7 downto 0) := (others => '0');
	begin
		cnt := (others => '0');
		A   := (others => '0');
		while (cnt < bi) loop
			A   := A(6 downto 0) & '1';
			cnt := cnt + 1;
		end loop;
		ther <= A;
	end process;	
end Behavioral;	
		