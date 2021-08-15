----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:52:49 04/23/2021 
-- Design Name: 
-- Module Name:    div_100Mhz - Behavioral 
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
--Khai bao thu vien--
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;
--Khai bao thuc the--
entity div_100Mhz is
generic(cnt_div : INTEGER := 49999999);
Port ( 
		clk_in	 : in    STD_LOGIC;
      clk_out 	 : inout STD_LOGIC
		);
end div_100Mhz;
--Khai bao kien truc--
architecture Behavioral of div_100Mhz is
signal   cnt       : std_logic_vector(31 downto 0) := (others => '0');
begin
	--Nhunng bai taon nay ta nen tach lam 2 hoac 3 quy trinh --
	--Quy trinh dau tien la quy trinh dem cung nhu tac dong vao cnt--
	--Quy trinh 2 la quy trinh ta tac dong vao clk--
	--Quy trinh 1--
	process(clk_in,cnt)
	begin
		if(clk_in = '1' and clk_in'event) then
			if(cnt = cnt_div) then
				cnt <= (others =>'0');
			else
				cnt <= cnt + 1;
			end if;
		end if;
	end process;
	
	--Quy trinh 2--
	process(clk_in,cnt,clk_out)
	begin
		if(clk_in = '1' and clk_in'event) then
			if(cnt = cnt_div) then
				clk_out <= not(clk_out);
			end if;
		end if;	
	end process;		
end Behavioral;

