--SEQUENCE SHIFTER--
--Khai báo thư viện--
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
--Khai báo thực thể--
entity shif_seq is
generic(N : natural);
port(
		clk    : in  std_logic;
		reset  : in  std_logic;
		enable : in  std_logic;
		SL     : in  std_logic;
		DOUT   : out std_logic_vector(N-1 downto 0)
	);
end shif_seq;
--Khai báo kiến trúc--
architecture Behavioral of shif_seq is
signal shif_reg : std_logic_vector(N-1 downto 0);
begin
	process(clk,reset,shif_reg)
	begin
		if(reset = '1') then
			shif_reg <= (others => '0');
		elsif(rising_edge(clk)) then
			if(enable = '1')then
				shif_reg <= SL & shif_reg(N-1 downto 1);
			end if;
		end if;
	end process;
	DOUT <= shif_reg;
end Behavioral;	