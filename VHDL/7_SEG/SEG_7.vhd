--Khai báo thư viện--
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
--Khai báo thực thể--
entity SEG_7 is
port(
		I_7SEG : in  std_logic_vector(3 downto 0);
		nRBI   : in  std_logic;--Đầu vào đảo
		nRBO   : in  std_logic;--Đầu vào đảo
		nLT    : in  std_logic;--Đầu vào đảo
		nO_7SEG: out std_logic_vector(6 downto 0)--<=>ABCDEFG
	);
end SEG_7;
--Mô tả kiến trúc--
architecture Behavioral of SEG_7 is
signal RBI,RBO,LT : std_logic;
signal O_7SEG : std_logic_vector(6 downto 0);
begin
	RBI <= not(nRBI);--luon gan muc khong--
	RBO <= not(nRBO);--neu duoc kich hoat se khong cho den sang--
	LT  <= not(nLT);--neu duoc kich hoat se sang tat--
	process(RBI,RBO,LT,I_7SEG)
	begin
		if(LT = '1') then
			O_7SEG <= "1111111";
		elsif(RBO = '1') then
			O_7SEG <= "0000000";
		elsif((RBI = '0') and (RBO = '0') and (LT = '0')) then
			if(I_7SEG = "0000") then
				O_7SEG <= "1111110";
			elsif(I_7SEG = "0001") then
				O_7SEG <= "0110000";
			elsif(I_7SEG = "0010") then
				O_7SEG <= "1101101";
			elsif(I_7SEG = "0011") then
				O_7SEG <= "1111001";
			elsif(I_7SEG = "0100") then
				O_7SEG <= "0110011";
			elsif(I_7SEG = "0101") then
				O_7SEG <= "1011011";
			elsif(I_7SEG = "0110") then
				O_7SEG <= "1011111";
			elsif(I_7SEG = "0111") then
				O_7SEG <= "1110001";	
			elsif(I_7SEG = "1000") then
				O_7SEG <= "1111111";
			else
				O_7SEG <= "1111011";
			end if;	
		else
			O_7SEG <= "0000000";
		end if;
	end process;
	nO_7SEG <= not(O_7SEG);
end Behavioral;	
	