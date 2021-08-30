--Khai báo thư viện--
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
--Khai báo thực thể--
entity LS74138 is
port(
		A   : in  std_logic_vector(2 downto 0);
		E   : in  std_logic_vector(2 downto 0);
		Y   : out std_logic_vector(7 downto 0)
	);
end LS74138;
--Mô tả kiến trúc--
architecture Behavioral of LS74138 is
--Khai báo các thành phần sử dụng trong khối thiết kế--
signal E_temp : std_logic;
signal Y_temp : std_logic_vector(7 downto 0);
signal A_temp : std_logic_vector(3 downto 0);
begin
	--combinational cuicirt--
	E_temp    <= E(2) and not(E(1)) and not(E(0));
	Y_temp(0) <= not(A(2)) and not(A(1)) and not(A(0)) and E_temp;
	Y_temp(1) <= not(A(2)) and not(A(1)) and A(0) and E_temp;
	Y_temp(2) <= not(A(2)) and A(1) and not(A(0)) and E_temp;
	Y_temp(3) <= not(A(2)) and A(1) and A(0) and E_temp;
	Y_temp(4) <= A(2) and not(A(1)) and not(A(0)) and E_temp;
	Y_temp(5) <= A(2) and not(A(1)) and A(0) and E_temp;
	Y_temp(6) <= A(2) and A(1) and not(A(0)) and E_temp;
	Y_temp(7) <= A(2) and A(1) and A(0) and E_temp;
	--sequential cuicirt--
	-- A_temp(3 downto 1) <= A(2 downto 0);
	-- A_temp(0)          <= E_temp;
	-- Y_temp <= "00000001" when A_temp = "0001" else
			  -- "00000010" when A_temp = "0011" else
			  -- "00000100" when A_temp = "0101" else
			  -- "00001000" when A_temp = "0111" else
			  -- "00010000" when A_temp = "1001" else
			  -- "00100000" when A_temp = "1011" else
			  -- "01000000" when A_temp = "1101" else
			  -- "10000000" when A_temp = "1111" else
			  -- "00000000";
			  
	Y <= not(Y_temp);
end Behavioral;	