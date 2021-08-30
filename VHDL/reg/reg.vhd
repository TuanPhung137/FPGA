--Khai báo thư viện--
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
--Khai báo thực thể--
entity reg is
port(
		clk  : in  std_logic;
		reset: in  std_logic;
		D    : in  std_logic_vector(3 downto 0);
		Q_1  : out std_logic_vector(3 downto 0);   
		Q    : out std_logic_vector(3 downto 0)
	);
end reg;
--Mô tả kiến trúc--
architecture Behavioral of reg is
signal Q1 : std_logic_vector(3 downto 0);
begin
	reg1 : process(clk,reset)
	begin
		if(reset = '1') then
			Q1 <= (others => '0');
		elsif(clk = '1' and clk'event)	then
			Q1 <= D;
		end if;
	end process reg1;
	Q_1 <= Q1;
	reg2 : process(clk,reset,Q1)
	begin
		if(reset = '1') then
			Q <= (others => '0');
		elsif(clk = '1' and clk'event)	then
			Q <= Q1;
		end if;
	end process reg2;
end Behavioral;	