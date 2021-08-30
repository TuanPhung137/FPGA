--Khai báo thư viện--
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
--Khai báo thực thể--
entity add_sub4_test is
end add_sub4_test;
--Mô tả kiến trúc--
architecture test of add_sub4_test is
--Khai báo các thành phần được sử dụng để kiếm tra thiết kế--
component add_sub4 is
port(
		A    : in  std_logic_vector(3 downto 0);
		B    : in  std_logic_vector(3 downto 0);
		Cin  : in  std_logic;
		Sub  : in std_logic;
		Cout : out std_logic;
		Sum  : out std_logic_vector(3 downto 0)
	);
end component;
--input signal--
signal A    : std_logic_vector(3 downto 0);
signal B    : std_logic_vector(3 downto 0);
signal Cin  : std_logic;
signal Sub  : std_logic;
--output signal--
signal Cout : std_logic;
signal Sum  : std_logic_vector(3 downto 0);
begin
	creat_input : process
	begin
		A   <= "1000";--8--
		B   <= "0100";--4--
		Cin <= '0';
		Sub <= '0';--cộng--
		wait for 100 ns;
		A   <= "1000";--8--
		B   <= "0100";--4--
		Cin <= '0';
		Sub <= '1';--trừ--
		wait for 100 ns;
		A   <= "1111";--15--
		B   <= "1111";--15--
		Cin <= '0';
		Sub <= '1';
		wait for 100 ns;
		A   <= "1000";--8--
		B   <= "0100";--4--
		Cin <= '1';
		Sub <= '0';
		wait for 100 ns;
		A   <= "1000";--8--
		B   <= "0100";--4--
		Cin <= '1';
		Sub <= '1';
		wait;
	end process creat_input;

	DUT : component add_sub4 
			port map(A => A, B => B, Cin => Cin,
						Sub => Sub, Cout => Cout, Sum => Sum);
end test;						
	