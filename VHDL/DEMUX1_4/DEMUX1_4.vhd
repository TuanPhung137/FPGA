--Khai báo thư viện--
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
--Khai báo thực thể--
entity DEMUX1_4 is
port(
		I : in  std_logic;
		S : in  std_logic_vector(1 downto 0);
		O : out std_logic_vector(3 downto 0)
	);
end DEMUX1_4;
--Mô tả kiến trúc--
architecture Behavioral of DEMUX1_4 is
begin
	--combinational circuit--
	O(0) <= I and not(S(1)) and not(S(0));
	O(1) <= I and not(S(1)) and S(0);
	O(2) <= I and S(1) and not(S(0));
	O(3) <= I and S(1) and S(0);
-------------------------------------------------------
	O <= "000"&I when S = "00" else
		 "00"&I&'0' when S = "01" else
		 '0'&I&"00" when S = "10" else
		 I&"000";
end Behavioral;		
			