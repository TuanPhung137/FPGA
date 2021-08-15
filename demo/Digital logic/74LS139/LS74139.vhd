--74LS139--
--Khai báo thư viện
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
--Khai báo thực thể--
entity LS74139 is
port(
		EBAa    : in  std_logic_vector(2 downto 0);
		EBAb    : in  std_logic_vector(2 downto 0);
		Ya      : out std_logic_vector(3 downto 0);
		Yb      : out std_logic_vector(3 downto 0)
	);
end LS74139;
--Khai báo kiến trúc--
--Trong phần này ta tiến hành khai báo những thành phần cũng như tín hiệu sử dụng bên trong thực thể này--
-- architecture Behavioral of LS74139 is
-- begin
	-- process(EBAa)--có đầu ra thuận
	-- begin
		-- case EBAa is
			-- when "000" => Ya <= "0001";
			-- when "001" => Ya <= "0010";
			-- when "010" => Ya <= "0100";
			-- when "011" => Ya <= "1000";
			-- when others => Ya <= "0000";
		-- end case;
	-- end process;
	
	-- process(EBAb)
	-- begin
		-- case EBAb is 
			-- when "000" => Yb <= "1110";
			-- when "001" => Yb <= "1101";
			-- when "010" => Yb <= "1011";
			-- when "011" => Yb <= "0111";
			-- when others => Yb <= "1111";
		-- end case;
	-- end process;
-- end Behavioral;


-- architecture Behavioral of LS74139 is
-- begin
	-- with EBAa select Ya <= 
		-- "0001" when "000",
		-- "0010" when "001",
		-- "0100" when "010",
		-- "1000" when "011",
		-- "0000" when others;
	
	-- with EBAb select Yb <=
		-- "1110" when "000",
		-- "1101" when "001",
		-- "1011" when "010",
		-- "0111" when "011",
		-- "1111" when others;
-- end Behavioral;		


architecture Behavioral of LS74139 is
begin
	Ya <= "0001" when EBAa = "000" else
		  "0010" when EBAa = "001" else
		  "0100" when EBAa = "010" else
		  "1000" when EBAa = "011" else
		  "0000" ;
	
	Yb <= "1110" when EBAb = "000" else
		  "1101" when EBAb = "001" else
		  "1011" when EBAb = "010" else
		  "0111" when EBAb = "011" else
		  "1111";
end Behavioral;		  