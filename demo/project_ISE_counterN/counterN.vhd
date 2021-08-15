----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:57:27 04/20/2021 
-- Design Name: 
-- Module Name:    counterN - Behavioral 
-- Project Name: 		
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
--Khai bao thu vien
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;
--Khai bao thuc the--
entity counterN is
generic(N : natural := 32);
Port ( clk    : in  STD_LOGIC;
       nreset : in  STD_LOGIC;
       enable : in  STD_LOGIC;
       cnt    : out STD_LOGIC_VECTOR (6 downto 0));
end counterN;
--Khai bao kien truc--
architecture Behavioral of counterN is
signal cnt_reg   : std_logic_vector(N-1 downto 0) := (others => '0');
signal reset     : std_logic;
begin
	reset <= not(nreset);
	process(clk)
	begin
		if(rising_edge(clk)) then
			if(reset = '1') then
				cnt_reg <= (others => '0');
			elsif(enable = '1') then
				cnt_reg <= cnt_reg + 1;
			end if;
		end if;	
	end process;
	-- De nhin voi thoi gian nhanh T = 1/3(s) <=> f = 3Hz thi cnt =(50*10^6)/3 thi ta c?n 24 bit d? d?m t? 0 d?n 23
	--Nên khi d?m d?y t? 0 d?n 23 s? có 1 nh?p nháy led hay 1 dao d?ng
	--Nên ta ch? c?n quan sát t? 24 d?n 31
	cnt       <= cnt_reg(N-1 downto N-7);
end Behavioral;

