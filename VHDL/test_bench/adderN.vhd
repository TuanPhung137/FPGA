--ADDERN--
--Khai báo thư viện--
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
--Khai báo thực thể--
entity adderN is
generic(N : natural := 16);
port(
		A    : in  std_logic_vector(N-1 downto 0);
		B    : in  std_logic_vector(N-1 downto 0);
		Cin  : in  std_logic;
		Cout : out std_logic;
		Sum  : out std_logic_vector(N-1 downto 0)
	);
end adderN;
--Khai báo kiến trúc--
architecture add_operator of adderN is
signal A_temp : std_logic_vector(N downto 0);
signal B_temp : std_logic_vector(N downto 0);
signal S_temp : std_logic_vector(N downto 0);
begin
	A_temp <= '0'&A;
	B_temp <= '0'&B;
	S_temp <= A_temp + B_temp + Cin;
	Sum    <= S_temp(N-1 downto 0);
	Cout   <= S_temp(N);
end add_operator;


architecture add_1 of adderN is
component full_adder
port(
		A    : in  std_logic;
		B    : in  std_logic;
		Cin  : in  std_logic;
		Cout : out  std_logic;
		Sum  : out std_logic
	);
end component;
signal C : std_logic_vector(N downto 0);
begin
	C(0) <= Cin;
	Cout <= C(N);
	add_full : for i in 0 to N-1 generate
	add_full1 : component full_adder
					port map(A => A(i), B => B(i), Cin => C(i),
								Cout => C(i+1), Sum => Sum(i));
	end generate;							
	
end add_1;

architecture add_2 of adderN is
signal C : std_logic_vector(N downto 0);
signal C1 : std_logic;
signal C2 : std_logic;
signal A_temp : std_logic_vector(N downto 0);
signal B_temp : std_logic_vector(N downto 0);
signal S_temp : std_logic_vector(N downto 0);
begin
	C(0) <= Cin;
	--Vat den tuyet doi--
	A_temp <= '0'&A;
	B_temp <= '0'&B;
	S_temp <= A_temp + B_temp + Cin;
	C1 <= C(N) and '0' when (S_temp <= (2**N)-1) else C(N);--Khử harzard static 0
	--Vật đen tuyệt đối loại bỏ harzard static 0--
	C2 <= not(C1 and  '0') when (S_temp > (2**N)-1) else C1;--Khử harzard static 1
	--Vật đen tuyệt đối loại bỏ harzard static 1--
	Cout <= C2;
	add_temp : for i in 0 to N-1 generate
					Sum(i) <= A(i) xor B(i) xor C(i);
					C(i+1) <= (A(i) and B(i)) or (C(i) and (A(i) or B(i)));
	end generate;
end add_2;	