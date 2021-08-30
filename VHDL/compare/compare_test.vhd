--Khai báo thư viện--
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
--Khai báo thực thể--
entity compare_test is
end compare_test;
--Mô tả kiến trúc--
architecture test of compare_test is
component compare is
port(
		A   : in  std_logic_vector(3 downto 0);
		B   : in  std_logic_vector(3 downto 0);
		cp_i: in  std_logic_vector(2 downto 0); --lần lượt là >,<,=
		cp_o: out std_logic_vector(2 downto 0)
	);
end component;
--input signal--
signal A   : std_logic_vector(3 downto 0);
signal B   : std_logic_vector(3 downto 0);
signal cp_i: std_logic_vector(2 downto 0); --lần lượt là >,<,=
--output signal--
signal cp_o: std_logic_vector(2 downto 0);
begin
	creat_input : process
	begin
		A    <= "1001";
		B    <= "0110";
		cp_i <= "100";
		wait for 100 ns;
		A    <= "0101";
		B    <= "1010";
		cp_i <= "100";
		wait for 100 ns;
		A    <= "0101";
		B    <= "0010";
		cp_i <= "100";
		wait for 100 ns;
		A    <= "0011";
		B    <= "0110";
		cp_i <= "100";
		wait for 100 ns;
		A    <= "0111";
		B    <= "0100";
		cp_i <= "100";
		wait for 100 ns;
		A    <= "0001";
		B    <= "0010";
		cp_i <= "100";
		wait for 100 ns;
		A    <= "1111";
		B    <= "1110";
		cp_i <= "100";
		wait for 100 ns;
		A    <= "1110";
		B    <= "1111";
		cp_i <= "100";
		wait for 100 ns;
		A    <= "1111";
		B    <= "1111";
		cp_i <= "010";
		wait for 100 ns;
		A    <= "1111";
		B    <= "1111";
		cp_i <= "101";
		wait;
	end process creat_input;
	
	DUT : component compare
			port map(A => A, B => B, cp_i => cp_i, cp_o => cp_o);
end test;			
		
		
		
