----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:21:13 04/23/2021 
-- Design Name: 
-- Module Name:    subtractionN - Behavioral 
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
entity subtractionN is
Port ( A 	: in  STD_LOGIC_VECTOR (3 downto 0);
       B 	: in  STD_LOGIC_VECTOR (3 downto 0);
       Cout : out  STD_LOGIC;
       Sub 	: out  STD_LOGIC_VECTOR (3 downto 0)
		 );
end subtractionN;
--Khai bao kien truc--
architecture Behavioral of subtractionN is
signal A_temp : std_logic_vector(4 downto 0);
signal B_temp : std_logic_vector(4 downto 0);
signal S_temp : std_logic_vector(4 downto 0);
constant Cin  : std_logic := '1';
begin
	A_temp <= '0'&A;
	B_temp <= '0'&not(B);
	S_temp <= A_temp + B_temp + Cin;
	Sub    <= S_temp(3 downto 0);
	Cout   <= S_temp(4);
end Behavioral;

