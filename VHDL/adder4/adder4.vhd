--Khai báo thư viện--
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
--Khai báo thực thể--
entity adder4 is
port(
		A    : in  std_logic_vector(3 downto 0);
		B    : in  std_logic_vector(3 downto 0);
		Cin  : in  std_logic;
		Sum  : out std_logic_vector(3 downto 0);
		Cout : out std_logic
	);
end adder4;
--Mô tả kiến trúc--
architecture structure of adder4 is
--Khai báo thành phần sử dụng trong khối thiết kế--
--Khai báo khối thiết kế con nằm trong khối thiết kế--
component full_adder
port(
		A    : in  std_logic;
		B    : in  std_logic;
		Cin  : in  std_logic;
		Sum  : out std_logic;
		Cout : out std_logic
	);
end component;	
--signal--
signal C : std_logic_vector(2 downto 0);
begin
	full_adder0 : component full_adder
					port map(A => A(0), B => B(0), Cin => Cin,
							Sum => Sum(0), Cout => C(0));
	
	full_adder1 : component full_adder
					port map(A => A(1), B => B(1), Cin => C(0),
							Sum => Sum(1), Cout => C(1));
	
	full_adder2 : component full_adder
					port map(A => A(2), B => B(2), Cin => C(1),
							Sum => Sum(2), Cout => C(2));
	
	full_adder3 : component full_adder
					port map(A => A(3), B => B(3), Cin => C(2),
							Sum => Sum(3), Cout => Cout);
end structure;							

-- architecture Behavioral of adder4 is
-- signal A_temp : std_logic_vector(4 downto 0);
-- signal B_temp : std_logic_vector(4 downto 0);
-- signal S_temp : std_logic_vector(4 downto 0);
-- begin
	-- A_temp <= '0'& A;
	-- B_temp <= '0'& B;
	-- S_temp <= A_temp + B_temp + Cin;
	-- Sum    <= S_temp(3 downto 0);
	-- Cout   <= S_temp(4);
-- end Behavioral;	