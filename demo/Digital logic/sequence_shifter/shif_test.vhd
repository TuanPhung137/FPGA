--TEST--
--Khai báo thư viện--
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
--Khai báo thực thể--
entity shif_test is
end shif_test;
--Khai báo kiến trúc--
architecture test of shif_test is
component shif_seq 
generic(N : natural);
port(
		clk    : in  std_logic;
		reset  : in  std_logic;
		enable : in  std_logic;
		SL     : in  std_logic;
		DOUT   : out std_logic_vector(N-1 downto 0)
	);
end component;
signal clk    : std_logic;
signal reset  : std_logic;
signal enable : std_logic;
signal SL     : std_logic;
signal DOUT   : std_logic_vector(15 downto 0);
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
		reset  <= '1';
		enable <= '1';
		wait for 10 ns;
		reset <= '0';
		wait;
	end process creat_reset;
	
	creat_input : process
	begin
		SL <= '0';
		wait for 40 ns;
		SL <= '1';
		wait for 40 ns;
	end process creat_input;

	DUT : component shif_seq
			generic map(N => 16)
			port map(clk => clk, reset => reset, enable => enable,
						SL => SL, DOUT => DOUT);
end test;						