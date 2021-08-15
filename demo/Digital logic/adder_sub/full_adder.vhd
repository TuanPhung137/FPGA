-------------------FULL_ADDER----------------
---------LIBRARY DECLARATION-----------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL; 
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
---------ENTITY DECLARATION-----------------
entity full_adder is
port(
		A   : in  std_logic;
		B   : in  std_logic;
		Cin : in  std_logic;
		Sum : out std_logic;
		Cout: out std_logic
	);
end full_adder;
---------ARCHITECTER DESCRIPTION------------
--full_adder is described as data flow because we describe in detail the data changed through basic logical elements and to the output.
architecture data_flow of full_adder is
begin
	Sum  <= A xor B xor Cin;
	Cout <= (A and B) or (Cin and (A or B));
end data_flow;