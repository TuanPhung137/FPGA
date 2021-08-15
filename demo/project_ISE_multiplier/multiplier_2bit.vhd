----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:44:53 04/23/2021 
-- Design Name: 
-- Module Name:    multiplier_2bit - Behavioral 
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
entity multiplier_2bit is
Port ( A   : in  STD_LOGIC_VECTOR (1 downto 0);
       B   : in  STD_LOGIC_VECTOR (1 downto 0);
       mul : out STD_LOGIC_VECTOR (3 downto 0)
		);
end multiplier_2bit;
--Khai bao kien truc--
architecture Behavioral of multiplier_2bit is
begin
	mul    <= A * B;
end Behavioral;

