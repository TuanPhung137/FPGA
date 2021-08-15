--counter NBCD 4 bit--
--Khai báo thư viện--
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
--Khai báo thực thể--
entity NBCD is
generic(N : natural := 5);
port(
		clk    : in std_logic;
		reset  : in std_logic;
		enable : in std_logic;
		cnt    : out std_logic_vector(N-1 downto 0)
	);
end NBCD;
--Khai báo kiến trúc--
architecture Behavioral of NBCD is
signal cnt_reg : std_logic_vector(N-1 downto 0 ):= (others => '0') ;
begin
	process(clk)
	begin
		if(rising_edge(clk)) then
			if(reset = '1') then
				cnt_reg <= (others => '0');
			elsif(enable = '1') then
				if(cnt_reg = "1001") then
					cnt_reg <= (others => '0');
				else	
				    cnt_reg <= cnt_reg + 1;
				end if;
			end if;
		end if;
	end process;
	cnt <= cnt_reg;
end Behavioral;	