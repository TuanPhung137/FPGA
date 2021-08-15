--TEST--
--Khai báo thư viện--
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
--Khai báo thực thể--
entity counter_test is
end counter_test;
--Khai báo kiến trúc--
architecture test of counter_test is
component test_UART is
port(
		Rx     : in std_logic;
		RST    : in std_logic;
		reset  : out std_logic;
		enable : out std_logic;
		view   : out std_logic_vector(1 downto 0);
		clk    : in std_logic
	);
end component;
component counter is
generic(N : natural := 16);
port(
		clk    : in  std_logic;
		enable : in  std_logic;
		reset  : in  std_logic;
		cnt    : out std_logic_vector(N-1 downto 0)
	);
end component;
--input signal--
signal clk    : std_logic;
signal enable : std_logic;
signal reset  : std_logic;
signal Rx     : std_logic;
signal RST    : std_logic;
signal view   : std_logic_vector(1 downto 0);
signal cnt_reg : std_logic_vector(7 downto 0);
--output signal--
signal cnt    : std_logic_vector(7 downto 0);
begin
	creat_clk : process
	begin
		clk <= '0';
		wait for 4 ns;
		clk <= '1';
		wait for 4 ns;
	end process creat_clk;

	creat_input: process
	begin
		Rx <= '1';
		wait for 51 ns;
		RX <= '0';
		wait;
	end process creat_input;
	creat_in1: process
	begin
		RST		<= '1';
		wait for 5 ns;
		RST     <= '0';
		wait;
	end process creat_in1;

	DUT : component counter
			generic map(N => 8)--ánh xạ tham số tĩnh là 16
			port map(clk => clk, enable => enable, reset => reset,
						cnt => cnt_reg);
	DUT1:	component test_UART
			generic map(N => 8)
			port map(Rx =>Rx,RST =>RST,view => view,clk => clk,reset => reset, enable => enable);
end test;
