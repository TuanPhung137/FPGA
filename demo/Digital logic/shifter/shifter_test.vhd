--TEST--
--Khai báo thư viện--
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
--Khai baso thực thể--
entity shifter_test is
end shifter_test;
--Khai báo kiến trúc--
architecture test of shifter_test is
component shifter 
port(
		sh_in  : in  std_logic_vector(7 downto 0);
		sh_val : in  std_logic_vector(2 downto 0);--giá trị dịch không được lớn hơn giá trị đầu vào
		sh_out : out std_logic_vector(7 downto 0)
	);
end component;
signal sh_in  : std_logic_vector(7 downto 0);
signal sh_val : std_logic_vector(2 downto 0);--giá trị dịch không được lớn hơn giá trị đầu vào
signal sh_out : std_logic_vector(7 downto 0);
begin
	creat_input : process
	begin
		sh_in  <= "10101110";
		sh_val <= "110";
		wait for 100 ns;
		sh_in  <= "11011111";
		wait;
	end process creat_input;
	
	DUT : component shifter 
			port map(sh_in => sh_in, sh_out => sh_out, sh_val => sh_val);
end test;			