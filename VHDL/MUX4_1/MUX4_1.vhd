--Khai báo thư viện--
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
--Khai báo thực thể--
entity MUX4_1 is
port(
		I : in  std_logic_vector(3 downto 0);
		S : in  std_logic_vector(1 downto 0);
		O : out std_logic
	);
end MUX4_1;
--Mô tả kiến trúc--
architecture Behavioral of MUX4_1 is
begin
	--combinational circuit--
	O <= (I(0)and not(S(1)) and not(S(0))) or (I(1)and not(S(1)) and S(0)) or (I(2) and S(1) and not(S(0))) or (I(3) and S(1) and S(0));
	--sequential circuit--
	mux1 : process(I,S)
	begin
		case S is
			when "00" => O <= I(0);
			when "01" => O <= I(1);	
			when "10" => O <= I(2);
			when others => O <= I(3);
		end case;
	end process mux1;

	O <= I(0) when S = "00" else
		 I(1) when S = "01" else
		 I(2) when S = "10" else
		 I(3);
end Behavioral;		
			