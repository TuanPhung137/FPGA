--ADDER N BIT--
--Khai báo thư viện--
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
--Khai báo thực thể--
entity adderN is
generic(N : natural := 32);
port(
		A   : in  std_logic_vector(N-1 downto 0);
		B   : in  std_logic_vector(N-1 downto 0);
		Cin : in  std_logic;
		Sum : out std_logic_vector(N-1 downto 0);
		Cout: out std_logic
	);
end adderN;
--Khai báo kiến trúc--
architecture Behavioral of adderN is
signal A_temp : std_logic_vector(N downto 0);
signal B_temp : std_logic_vector(N downto 0);
signal Sum_temp : std_logic_vector(N downto 0);
begin
	A_temp <= '0'&A;
	B_temp <= '0'&B;
	Sum_temp <= A_temp + B_temp + Cin;
	Sum <= Sum_temp(N-1 downto 0);
	Cout <= Sum_temp(N);
end Behavioral;	


architecture adderN_1 of adderN is
signal C : std_logic_vector(N downto 0);
begin
	--Ta tốn bit 0 gán cho đầu vào--
	--Khi đó bit thứ N là đầu ra cout--
	C(0) <= Cin;
	Cout <= C(N);
	adder : for i in 0 to N-1 generate
			Sum(i) <= A(i) xor B(i) xor C(i);--Trong này về mặt bản chất là các câu lệnh song song
	end generate;

	carry : for i in 1 to N generate
				C(i) <= (A(i-1) and B(i-1)) or (C(i-1) and (A(i-1) or B(i-1)));
	end generate;
end adderN_1;	

architecture adderN_2 of adderN is
signal C : std_logic_vector(N downto 0);
component full_adder
port(
		A   : in  std_logic;
		B   : in  std_logic;
		Cin : in  std_logic;
		Sum : out std_logic;
		Cout: out std_logic
	);
end component;
begin
	Cout <= C(N);
    C(0) <= Cin;
    full_adderx: for i in 0 to N-1 generate
    fa_inst: component full_adder
    port map 
    (A => A(i), B => B(i), Cin => C(i), Sum => Sum(i), Cout => C(i+1));
         
    end generate;
end adderN_2; 	