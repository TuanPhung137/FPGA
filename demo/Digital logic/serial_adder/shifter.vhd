--SHIFTER REGISTER--
--Khai báo thư viện--
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
--Khai báo thực thể--
entity shifter is
generic(N : natural := 4);
port(
		bitin  : in  std_logic_vector(1 downto 0);
		clk    : in  std_logic;
		reset  : in  std_logic;
		enable : in  std_logic;
		Load   : in  std_logic;
		Din    : in  std_logic_vector(2*N-1 downto 0);
		Dout   : out std_logic_vector(2*N-1 downto 0)
	);
end shifter;
--Khai báo kiến trúc--
architecture Behavioral of shifter is
signal reg_in : std_logic_vector(2*N-1 downto 0);
signal reg_out: std_logic_vector(2*N-1 downto 0);
begin
	reg_in <= Din when Load  = '1' else (bitin & reg_out(2*N-1 downto 2));
	process(clk ,reset)
	begin
		--if(reset = '1') then 
		--	reg_out <= (others => '0');
		if(clk = '1' and clk'event) then
			reg_out <= reg_in;
		end if;
	end process;
	
	Dout <= reg_out;
end Behavioral;	