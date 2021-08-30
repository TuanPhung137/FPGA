--Khai báo thư viện--
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
--Khai báo thực thể--
entity MUX4_1_test is
end MUX4_1_test;
--Mô tả kiến trúc--
architecture test of MUX4_1_test is
--Khai báo các thành phần được sử dụng để kiểm tra thiết kế--
component MUX4_1
port(
		I : in  std_logic_vector(3 downto 0);
		S : in  std_logic_vector(1 downto 0);
		O : out std_logic
	);
end component;
--input signal--
signal I : std_logic_vector(3 downto 0);
signal S : std_logic_vector(1 downto 0);
--output signal--
signal O : std_logic;
begin
	creat_input : process
	begin
		I <= "1010";
		S <= "00";
		wait for 100 ns;
		I <= "1010";
		S <= "01";
		wait for 100 ns;
		I <= "1010";
		S <= "10";
		wait for 100 ns;
		I <= "1010";
		S <= "11";
		wait;
	end process creat_input;

	DUT : component MUX4_1
			port map(I => I, S => S, O => O );
end test;			
		