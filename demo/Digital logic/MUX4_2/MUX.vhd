--Multipplixer--
--Khai báo thư viện--
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
--Khai baso thực thể--
--Khai báo về mặt giao diện bên ngoài cảu khối số--
entity MUX is
port(
		Ia  : in  std_logic_vector(3 downto 0);
		Ib  : in  std_logic_vector(3 downto 0);
		Ea  : in  std_logic;
		Eb  : in  std_logic;
		S   : in std_logic_vector(1 downto 0);
		Ya  : out std_logic;
		Yb  : out std_logic
	);
end MUX;
--Khai báo về mặt kiến trúc--
--Bên trong khai báo các tín hiệu kết nối bên trong khối số cũng như các component mà ta kế thừa--
-- architecture dataflow of MUX is
-- begin
	-- Ya <= (not Ea) and ((Ia(0) and (not S(0)) and (not S(1))) or (Ia(1) and S(0) and (not S(1))) or (Ia(2) and (not S(0)) and S(1)) or (Ia(3) and S(0) and S(0)));
	-- Yb <= (not Eb) and ((Ib(0) and (not S(0)) and (not S(1))) or (Ib(1) and S(0) and (not S(1))) or (Ib(2) and (not S(0)) and S(1)) or (Ib(3) and S(0) and S(0)));
-- end dataflow;


architecture dataflow of MUX is
begin
	process(Ea,Eb,S,Ia,Ib)
	begin
		if(Ea = '1') then
			Ya <= '0';
		else
			case S is
				when "00" => Ya <= Ia(0);
				when "01" => Ya <= Ia(1);
				when "10" => Ya <= Ia(2);
				when "11" => Ya <= Ia(3);
				when others => Ya <= '0';
			end case;	
		end if;

		if(Eb = '1') then
			Yb <= '0';
		else
			case S is
				when "00" => Yb <= Ib(0);
				when "01" => Ya <= Ib(1);
				when "10" => Yb <= Ib(2);
				when "11" => Yb <= Ib(3);
				when others => Yb <= '0';
			end case;
		end if;
	end process;	
end dataflow;
	