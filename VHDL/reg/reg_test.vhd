--Khai báo thư viện--
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
--Khai báo thực thể--
entity reg_test is
end reg_test;
--Mô tả kiến trúc--
architecture test of reg_test is
component reg is
port(
		clk  : in  std_logic;
		reset: in  std_logic;
		D    : in  std_logic_vector(3 downto 0);
		Q_1  : out std_logic_vector(3 downto 0);  
		Q    : out std_logic_vector(3 downto 0)
	);
end component;
signal clk  : std_logic;
signal reset: std_logic;
signal D    : std_logic_vector(3 downto 0);
signal Q_1  : std_logic_vector(3 downto 0);  
signal Q    : std_logic_vector(3 downto 0);
begin
	creat_clk : process
	begin
		clk <= '0';
		wait for 50 ns;
		clk <= '1';
		wait for 50 ns;
	end process creat_clk;
		
	creat_reset : process
	begin
		reset <= '1';
		wait for 100 ns;
		reset <= '0';
		wait;
	end process creat_reset;

	creat_input : process
	begin
		D <= "0001";
		wait for 60 ns;
		D <= "0010";
		wait for 100 ns;
		D <= "0011";
		wait for 100 ns;
		D <= "0100";
		wait;
	end process creat_input;

	DUT : component reg
			port map(clk => clk, reset => reset, D => D,Q_1=>Q_1, Q => Q);
end test;			
		