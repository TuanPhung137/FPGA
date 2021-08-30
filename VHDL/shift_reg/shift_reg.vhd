--Khai báo thư viện--
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
--Khai báo thực thể--
entity shift_reg is
port(
		SL     : in  std_logic;
		clk    : in  std_logic;
		reset  : in  std_logic;
		enable : in  std_logic;
		dout   : out std_logic_vector(5 downto 0)
	);
end shift_reg;
--Mô tả kiến trúc--
architecture Behavioral of shift_reg is
signal d_temp : std_logic_vector(5 downto 0);
begin
	process(clk,reset,d_temp)
	begin
		if(reset = '1') then
			d_temp <= (others => '0');
		elsif(rising_edge(clk)) then
			if(enable = '1') then
				d_temp <= SL & d_temp(5 downto 1);
			end if;	
		end if;
	end process;
	dout <= d_temp;
end Behavioral;	