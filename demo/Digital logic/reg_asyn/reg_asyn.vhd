--REGSIGTOR ASYNCHROUNOUS--
--Khai báo thư viện--
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
--Khai báo thực thể--
entity reg_asyn is
port(
		D     : in  std_logic_vector(15 downto 0);
		Q     : out std_logic_vector(15 downto 0);
		CLK   : in  std_logic;
		RESET : in  std_logic
	);
end reg_asyn;
--Khai báo kiến trúc--
architecture Behavioral of reg_asyn is
begin
	process(CLK,RESET)
	begin
		if(RESET = '1') then
			Q <= (others => '0');
		elsif(CLK = '1' and CLK'event) then
			Q <= D;
		end if;
	end process;
end Behavioral;	
	