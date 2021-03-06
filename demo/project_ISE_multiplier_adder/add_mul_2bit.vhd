----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:08:26 04/23/2021 
-- Design Name: 
-- Module Name:    add_mul_2bit - Behavioral 
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
entity add_mul_2bit is
Port ( A        : in  STD_LOGIC_VECTOR (1 downto 0);
       B        : in  STD_LOGIC_VECTOR (1 downto 0);
       C        : in  STD_LOGIC_VECTOR (3 downto 0);
       result   : out STD_LOGIC_VECTOR (3 downto 0);
       mem_flag : out STD_LOGIC
	   );
end add_mul_2bit;
--Khai bao kien truc--
architecture Behavioral of add_mul_2bit is
signal temp : std_logic_vector(3 downto 0);
begin
	temp     <= A*B+C;
	result   <= temp;
	mem_flag <= temp(3);
end Behavioral;

