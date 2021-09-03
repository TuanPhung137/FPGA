--Khoi thiet ke thuc hien phep toan cong va tru--
--Khai bao thu vien--
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
--Khai bao thuc the--
entity add_sub_gen is
generic(N : natural; SUB : BOOLEAN);--phan thuc the moi khai bao la 1 cau lenh-- con anh xa thi ca phan anh xa moi la 1 cau lenh--
port(
		A    : in  std_logic_vector(N-1 downto 0);
		B    : in  std_logic_vector(N-1 downto 0);
		--Sub  : in  std_logic;
		Cin  : in  std_logic;
		Cout : out std_logic;
		Sum  : out std_logic_vector(N-1 downto 0)
	);
end add_sub_gen;
--Mo ta kien truc--
architecture Behavioral of add_sub_gen is
component adderN is
generic(N : natural );
port(
		A    : in  std_logic_vector(N-1 downto 0);
		B    : in  std_logic_vector(N-1 downto 0);
		Cin  : in  std_logic;
		Cout : out std_logic;
		Sum  : out std_logic_vector(N-1 downto 0)
	);
end component;
for add_sub_inst : adderN use entity work.adderN(add_operater);
signal A_temp : std_logic_vector(N downto 0);
signal C_temp : std_logic;
signal B_temp : std_logic_vector(N downto 0);
signal Sum_temp : std_logic_vector(N downto 0);
begin
	--Su dung generate de mo ta cac thiet ke ma ta can biet ro rang cau truc phan cung--
	--Cac cau lenh trong generate la cac cau lenh song song--
	A_temp <= '0'&A;
	sub_gen : if SUB = TRUE generate
				C_temp <= '1';
				B_temp <= not('0'&B);
	end generate;
	
	adder_gen : if SUB = FALSE generate
				C_temp <= Cin;
				B_temp <= '0'&B;
	end generate;
	
	--sd cau truc when else--
	--B_temp <= B when Sub = '0' else not(B);
	--C_temp <= Sub or Cin;--
	add_sub_inst : component adderN
					generic map(N => N+1)--o day gia tri N co the duoc gan bang gia tri cung voi gia tri ta mo phong hoac de ap dung cho moi truong hop tuy y ta gan N
					port map(A => A_temp, B => B_temp, Cin => C_temp,
								Cout => open, Sum => Sum_temp);
	----------------------------------------------------------------
	Sum <= Sum_temp(N-1 downto 0);
	Cout <= Sum_temp(N);
end Behavioral;