--Khai báo thư viện--
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
--Khai báo thực thể--
entity decor is
port(
		I : in  std_logic_vector(2 downto 0);
		F : out std_logic
	);
end decor;
--Mô tả thực thể--
architecture dataflow of decor is
signal D : std_logic_vector(7 downto 0);
begin
	--PP1:decorder 3 to 8--
	D(0) <= not(I(2)) and not(I(1)) and not(I(0));
	D(1) <= not(I(2)) and not(I(1)) and I(0);
	D(2) <= not(I(2)) and I(1) and not(I(0));
	D(3) <= not(I(2)) and I(1) and I(0);
	D(4) <= I(2) and not(I(1)) and not(I(0));
	D(5) <= I(2) and not(I(1)) and I(0);
	D(6) <= I(2) and I(1) and not(I(0));
	D(7) <= I(2) and I(1) and I(0);
	--PP2: sử dụng when else
	D <= "00000001" when I = "000" else
		 "00000010" when I = "001" else
		 "00000100" when I = "010" else
		 "00001000" when I = "011" else
		 "00010000" when I = "100" else
		 "00100000" when I = "101" else
		 "01000000" when I = "110" else
		 "10000000";
	--PP3: sử dụng with select when
	with I select 
		D <= "00000001" when "000",
	    	 "00000010" when "001",
	    	 "00000100" when "010",
	    	 "00001000" when "011",
	    	 "00010000" when "100",
	    	 "00100000" when "101",
	    	 "01000000" when "110",
	    	 "10000000" when others;
	--PP4: sử dụng case when
	process(I)
	begin
		case I is
			when "000" => D <= "00000001";
			when "001" => D <= "00000010";
			when "010" => D <= "00000100";
			when "011" => D <= "00001000";
			when "100" => D <= "00010000";
			when "101" => D <= "00100000";
			when "110" => D <= "01000000";
			when others => D <= "10000000";
		end case;
	end process;	
	--output--
	F <= D(1) or D(5) or D(7);
end dataflow;
	