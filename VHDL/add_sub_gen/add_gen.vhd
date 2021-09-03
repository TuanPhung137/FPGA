--adder N-bit--
--Khai báo thư viện--
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
--Khai báo thưc thể--
entity adderN is
generic(N : natural );
port(
		A    : in  std_logic_vector(N-1 downto 0);
		B    : in  std_logic_vector(N-1 downto 0);
		Cin  : in  std_logic;
		Cout : out std_logic;
		Sum  : out std_logic_vector(N-1 downto 0)
	);
end adderN;
--Mô tả kiến trúc--
--Use operator '+'--
architecture add_operater of adderN is
component full_adder is
port(
		A    : in  std_logic;
		B    : in  std_logic;
		Cin  : in  std_logic;
		Sum  : out std_logic;
		Cout : out std_logic
	);
end component;
signal A_temp : std_logic_vector(N downto 0);
signal B_temp : std_logic_vector(N downto 0);
signal Sum_temp : std_logic_vector(N downto 0);
begin
	A_temp   <= '0'& A;
	B_temp   <= '0'& B;
	Sum_temp <= A_temp + B_temp + Cin;
	Sum      <= Sum_temp(N-1 downto 0);
	Cout     <= Sum_temp(N);
end add_operater;
--Use dataflow for generate--
architecture dataflow of adderN is
signal C : std_logic_vector(N downto 0);
begin
	C(0) <= Cin;
	Cout <= C(N);
	--Sử dụng N full adder va su dung vong lap thay vi lam lai bang tay--
	Sum_loop : for i in 0 to N-1 generate 
					Sum(i) <= A(i) xor B(i) xor C(i);--concurrent statement--
	end generate;
	Carry_loop : for i in 0 to N-1 generate
					C(i+1) <= (A(i) and B(i)) or (C(0) and (A(i) or B(i)));
	end generate;
end dataflow;
--Use structure for generate--
architecture structure of adderN is
component full_adder is
port(
		A    : in  std_logic;
		B    : in  std_logic;
		Cin  : in  std_logic;
		Sum  : out std_logic;
		Cout : out std_logic
	);
end component;
signal C : std_logic_vector(N downto 0);
begin
	C(0) <= Cin;
	Cout <= C(N);
	adder_loop : for i in 0 to N-1 generate
					f_a_ins : component full_adder
								port map(A => A(i), B => B(i), Cin => C(i),
											Cout => C(i+1), Sum => Sum(i));
	end generate;
end structure;	
					