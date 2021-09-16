--counter--
--Khai báo thưc viện--
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
--Khai báo thực thể--
entity counter is
generic(N : natural := 4);
port(
		clk    : in  std_logic;
		reset  : in  std_logic;
		enable : in  std_logic;
		cnt    : out std_logic_vector(N-1 downto 0)
	);
end counter;
--Khai báo kiến trúc--
architecture Behavioral of counter is
signal cnt_reg : std_logic_vector(N-1 downto 0) := (others => '0');
begin
	process(clk)
	begin
		if(clk = '1' and clk'event) then
			if(reset = '1') then
				cnt_reg <= (others => '0');
			elsif(enable = '1') then
				cnt_reg <= cnt_reg + 1;
			end if;
		end if;
	end process;
	
	cnt <= cnt_reg;
end Behavioral;	