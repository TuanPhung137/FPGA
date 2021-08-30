--Khai báo thư viện--
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
--Khai báo thực thể--
entity LS74139 is
port(
		A   : in  std_logic_vector(2 downto 0);
		B   : in  std_logic_vector(2 downto 0);
		Ya  : out std_logic_vector(3 downto 0);
		Yb  : out std_logic_vector(3 downto 0)
	);
end LS74139;
--Mô tả kiến trúc--
architecture Behavioral of LS74139 is
--Khai báo các thành phần sử dụng trong khối thiết kế--
--signal--
signal Ya_temp : std_logic_vector(3 downto 0);
signal Yb_temp : std_logic_vector(3 downto 0);
begin
	--combinational circuit--
	-- Ya_temp(0) <= not(A(2)) and not(A(1)) and not(A(0));
	-- Ya_temp(1) <= not(A(2)) and A(1) and not(A(0));
	-- Ya_temp(2) <= A(2) and not(A(1)) and not(A(0));
	-- Ya_temp(3) <= A(2) and A(1) and not(A(0));
	
	-- Yb_temp(0) <= B(2) or B(1) or B(0);
	-- Yb_temp(1) <= B(2) or not(B(1)) or B(0);
	-- Yb_temp(2) <= not(B(2)) or B(1) or B(0);
	-- Yb_temp(3) <= not(B(2)) or not(B(1)) or B(0);
	--sequential circuit--
	mux1_a : process(A)
	begin
		case A is
			when "000" =>  Ya_temp <= "0001";
			when "010" =>  Ya_temp <= "0010";
			when "100" =>  Ya_temp <= "0100";
			when "110" =>  Ya_temp <= "1000";
			when others => Ya_temp <= "0000";
		end case;
	end process mux1_a;
	mux1_b : process(B)
	begin
		case B is
			when "000" =>  Yb_temp <= "1110";
			when "010" =>  Yb_temp <= "1101";
			when "100" =>  Yb_temp <= "1011";
			when "110" =>  Yb_temp <= "0111";
			when others => Yb_temp <= "1111";
		end case;
	end process mux1_b;
	Ya <= Ya_temp;
	Yb <= Yb_temp;
-- -----------------------------------------------------------------------------	
	-- Ya_temp <= "0001" when A = "000" else
			   -- "0010" when A = "010" else
			   -- "0100" when A = "100" else
			   -- "1000" when A = "110" else
			   -- "0000";
	-- Yb_temp <= "1110" when B = "000" else
			   -- "1101" when B = "010" else
			   -- "1011" when B = "100" else
			   -- "0111" when B = "110" else
			   -- "1111";	
	--Ya <= Ya_temp;
	--Yb <= Yb_temp;		   
end Behavioral;			   
	
					
					
				
	
	
	