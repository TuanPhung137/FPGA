--Khai báo thư viện--
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
--Khai báo thực thể--
entity MUX2_1 is
port(
		A   : in  std_logic_vector(3 downto 0);
		B   : in  std_logic_vector(3 downto 0);
		Sel : in  std_logic;
		C   : out std_logic_vector(3 downto 0)
	);
end MUX2_1;
--Mô tả kiến trúc--
architecture Behavioral of MUX2_1 is
begin
	--if else--
	mux1 : process(A,B,Sel)
	begin
		if (Sel = '0') then
			C <= A;
		else 
			C <= B;
		end if;
	end process mux1;
	--case when--
	mux2 : process(A,B,Sel)
	begin
		case Sel is
			when '0' =>    C <= A;
			when others => C <= B;
		end case;
	end process mux2;
	--with select when--
	with Sel select
		C <= A when '0',
			 B when others;
	--when esle--
	C <= A when Sel = '0' else
		 B;
end Behavioral;		 