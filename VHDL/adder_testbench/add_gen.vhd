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
--Các tín hiệu trong khối xóa hazard--
signal A1 : std_logic_vector(N downto 0);
signal B1 : std_logic_vector(N downto 0);
signal Sum1 : std_logic_vector(N downto 0);
signal C_temp1 : std_logic;
signal C_temp2 : std_logic;
begin
	C(0) <= Cin;
	--Cout <= C(N);
	--Sử dụng N full adder va su dung vong lap thay vi lam lai bang tay--
	Sum_loop : for i in 0 to N-1 generate 
					Sum(i) <= A(i) xor B(i) xor C(i);--concurrent statement--
	end generate;
	Carry_loop : for i in 0 to N-1 generate
					C(i+1) <= (A(i) and B(i)) or (C(0) and (A(i) or B(i)));
	end generate;
--Ta sẽ tạo ra block clear hazard--
	A1 <= '0'&A;
	B1 <= '0'&B;
	Sum1 <= A1 + B1 + Cin;
--Loai bo hazard 0--
	C_temp1 <= C(N) and '0' when Sum1 <= ((2**N)-1) else 
				not(C(N) and '0');
--Loai bo hazard 1--
	C_temp2 <= not(C_temp1 and '0') when Sum1 > ((2**N)-1) else C_temp1;
----------------------------------------------------------------
	Cout <= C_temp2;
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
					