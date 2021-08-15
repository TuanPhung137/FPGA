--COUNTER GRAY--
--Khai báo thư viện--
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
--Khai báo thực thể--
entity gray is
generic(N : natural);
port(
		cnt   : out std_logic_vector(N-1 downto 0);
		clk   : in  std_logic;
		reset : in  std_logic;
		enable: in  std_logic   
	);
end gray;
architecture Behavioral of gray is
signal cnt_reg : std_logic_vector(N-1 downto 0);
begin
	process(clk, reset)
	begin
		if(reset = '1')then
			cnt_reg <= (others => '0');
		elsif(rising_edge(clk)) then
			if(enable = '1') then
				cnt_reg <= cnt_reg + 1;
			end if;
		end if;
	end process;
	--hàm xor--
	cnt(N-1) <= cnt_reg(N-1);
	gray_loop : for i in N-2 downto 0 generate
					cnt(i) <= cnt_reg(i) xor cnt_reg(i+1);
	end generate;				
end Behavioral;	