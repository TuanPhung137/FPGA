----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    08:31:08 04/12/2021 
-- Design Name: 
-- Module Name:    control_led - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity control_led is
    Port ( sw     : in  std_logic_vector(3 downto 0);
			  button : in  std_logic_vector(4 downto 0);
           led    : out std_logic_vector(8 downto 0));
end control_led;

architecture Behavioral of control_led is

begin
	led(4 downto 0) <= button;
   led(8 downto 5) <= sw;

end Behavioral;

