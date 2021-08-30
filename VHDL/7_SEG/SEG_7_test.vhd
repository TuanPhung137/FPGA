--Khai báo thư viện--
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
--Khai báo thực thể--
entity SEG_7_test is
end SEG_7_test;
--Mô tả kiến trúc--
architecture test of SEG_7_test is
--Khai báo các thành phần được sử dụng để kiếm tra thiết kế--
component SEG_7 is
port(
		I_7SEG : in  std_logic_vector(3 downto 0);
		nRBI   : in  std_logic;--Đầu vào đảo
		nRBO   : in  std_logic;--Đầu vào đảo
		nLT    : in  std_logic;--Đầu vào đảo
		nO_7SEG: out std_logic_vector(6 downto 0)--<=>ABCDEFG
	);
end component;
--input signal--
signal I_7SEG : std_logic_vector(3 downto 0);
signal nRBI   : std_logic;--Đầu vào đảo
signal nRBO   : std_logic;--Đầu vào đảo
signal nLT    : std_logic;--Đầu vào đảo
--output signal--
signal nO_7SEG: std_logic_vector(6 downto 0);--<=>ABCDEFG
begin
	creat_input : process 
	begin
		I_7SEG <= "1011";
		nRBI   <= '0';
		nRBO   <= '1';
		nLT    <= '1';
		wait for 50 ns;
		I_7SEG <= "1011";
		nRBI   <= '1';
		nRBO   <= '0';
		nLT    <= '1';
		wait for 50 ns;
		I_7SEG <= "1011";
		nRBI   <= '1';
		nRBO   <= '1';
		nLT    <= '0';
		wait for 50 ns;
		I_7SEG <= "1000";
		nRBI   <= '1';
		nRBO   <= '1';
		nLT    <= '1';
		wait for 50 ns;
		I_7SEG <= "1001";
		nRBI   <= '1';
		nRBO   <= '1';
		nLT    <= '1';
		wait;
	end process creat_input;

	DUT : component SEG_7 
			port map(I_7SEG => I_7SEG, nLT => nLT, nRBI => nRBI, nRBO => nRBO, nO_7SEG => nO_7SEG);
end test;			
		
		