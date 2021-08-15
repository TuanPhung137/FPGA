--ADDER SUB--
--Khai báo thư viện--
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
--Khai báo thực thể--
entity adderN is
generic(N : natural := 32);
port(
		A      : in  std_logic_vector(N-1 downto 0);
		B      : in  std_logic_vector(N-1 downto 0);
		Cin    : in  std_logic;
		Cout   : out std_logic;
		Sum    : out std_logic_vector(N-1 downto 0)
	);
end adderN;	
--Khai báo kiến trúc--
architecture add_1 of adderN is
signal A_temp : std_logic_vector(N downto 0);
signal B_temp : std_logic_vector(N downto 0);
signal S_temp : std_logic_vector(N downto 0);
begin
	A_temp <= '0'&A;
	B_temp <= '0'&B;
	S_temp <= A_temp + B_temp + Cin;
	Sum    <= S_temp(N-1 downto 0);
	Cout   <= S_temp(N);
end add_1;


architecture add_2 of adderN is
component full_adder 
port(
		A   : in  std_logic;
		B   : in  std_logic;
		Cin : in  std_logic;
		Sum : out std_logic;
		Cout: out std_logic
	);
end component;
signal C : std_logic_vector(N downto 0);
begin
	C(0) <= Cin;
	Cout <= C(N);
	add_sub_for1 : for i in 0 to N-1 generate
						DUT : component full_adder
								port map(A => A(i), B => B(i), Cin => C(i),
										Sum => Sum(i), Cout => C(i+1));
	end generate;									
end add_2;


architecture add_3 of adderN is
signal C : std_logic_vector(N downto 0);
begin
	C(0) <= Cin;
	Cout <= C(N);
	add_sub_for2 : for i in 0 to N-1 generate
						Sum(i) <= A(i) xor B(i) xor C(i);
						C(i+1) <= (A(i) and B(i)) or (C(i) and (A(i) or B(i)));
	end generate;
end add_3;	