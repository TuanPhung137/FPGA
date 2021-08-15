--FREQUENCY DIVISION--
--Khai báo thư viện--
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
--Khai báo thực thể--
entity fre_divi is
generic(N : natural);
port(
		reset  : in  std_logic;
		clk_in : in  std_logic;
		clk_out: out std_logic
	);
end fre_divi;
--Khai báo kiến trúc--
architecture Behavioral of fre_divi is
signal cnt_reg : std_logic_vector(N-1 downto 0); --:= (others => '0');
signal clk_reg : std_logic;
begin
	--Chia 50Hz thành 1Hz--
	--scale=50/1=50--
	--counter=(50/2) -1 = 24--
	process(clk_in,cnt_reg)
	begin
		if(reset = '1') then
			cnt_reg <= (others => '0');
			clk_reg <= clk_in;
		elsif(rising_edge(clk_in)) then
			if(cnt_reg = 24) then
				cnt_reg <= (others => '0');
				clk_reg <= not(clk_reg);
			else	
				cnt_reg <= cnt_reg + 1;
			end if;
		end if;
	end process;	
	clk_out <= clk_reg;
end Behavioral;	
				