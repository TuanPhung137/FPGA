--TEST--
--Khai báo thư viện--
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
--Khai báo thực thể--
entity serial_adder_test is
end serial_adder_test;
--Khai báo kiến trúc--
architecture Behavioral of serial_adder_test is
component serial_addder is
generic(N : natural := 4);
port(
		A 	         : in  std_logic_vector(2*N-1 downto 0);
		B            : in  std_logic_vector(2*N-1 downto 0);
		clk          : in  std_logic;
		reset        : in  std_logic;
		Load         : in  std_logic;
		Cin          : in  std_logic;
		Sum          : out std_logic_vector(2*N-1 downto 0);
		Cout         : out std_logic;
		result_valib : out std_logic
	);
end component;
signal A            : std_logic_vector(7 downto 0);
signal B            : std_logic_vector(7 downto 0);
signal clk          : std_logic;
signal reset        : std_logic;
signal Load         : std_logic;
signal Cin          : std_logic;
signal Sum          : std_logic_vector(7 downto 0);
signal Cout         : std_logic;
signal result_valib : std_logic;
begin
	creat_clock : process
	begin	
		clk <= '0';
		wait for 50 ns;
		clk <= '1';
		wait for 50 ns;
	end process creat_clock;

	creat_input : process
	begin
		A <= x"CB"; B <= x"1c"; Cin <= '1';
		reset <= '0';  Load <= '0';
		wait for 100 ns;
        reset <= '1';
		wait for 100 ns;
        reset <= '0';
        Load <= '1';
        wait for 100 ns;
        Load <= '0';
		wait for 1400 ns;
        A <= x"3A"; B <= x"4a"; Cin <= '1';
        Load <= '1';
        wait for 100 ns;
        Load <= '0';
        wait;
	end process creat_input;

	sba : component serial_addder
			generic map(N => 4)
			port map(A => A, 
					B => B,
					clk => clk,
					reset => reset,
					Load => Load,
					Cin => Cin,
					Sum => Sum,
					Cout => Cout,result_valib => result_valib);
end Behavioral;					