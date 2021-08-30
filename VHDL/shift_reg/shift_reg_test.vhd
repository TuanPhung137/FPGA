--Khai báo thư viện--
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
--Khai báo thực thể--
entity shift_reg_test is  
end shift_reg_test;
--Mô tả kiến trúc--
architecture test of shift_reg_test is
component shift_reg is
port(
		SL     : in  std_logic;
		clk    : in  std_logic;
		reset  : in  std_logic;
		enable : in  std_logic;
		dout   : out std_logic_vector(5 downto 0)
	);
end component;
signal SL     : std_logic;
signal clk    : std_logic;
signal reset  : std_logic;
signal enable : std_logic;
signal dout   : std_logic_vector(5 downto 0);
begin
	creat_clk: process
	begin
		clk <= '0';
		wait for 50 ns;
		clk <= '1';
		wait for 50 ns;
	end process creat_clk;

	creat_rst : process
	begin
		reset <= '1';
		enable <= '1';
		wait for 10 ns;
		reset <= '0';
		wait;
	end process creat_rst;
	
	creat_input : process
	begin
		SL <= '1';
		wait for 100 ns;
		SL <= '0';
		wait for 100 ns;
		SL <= '1';
		wait;
	end process creat_input;

	DUT : component shift_reg
			port map(SL => SL, clk => clk, reset => reset, enable => enable, dout => dout);
end test;			