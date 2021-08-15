--Máy bơm nước(FSM)--
--khai báo thư viện--
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
--Khai báo thực thể--
entity mbn is
port(
		clk : in std_logic;
		X   : in  std_logic_vector(1 downto 0);
		S   : out  std_logic_vector(1 downto 0);
		S_1   : out  std_logic_vector(1 downto 0);
		Y   : out std_logic
	);
end mbn;
--Khai báo kiến trúc--
architecture Behavioral of mbn is
subtype state_type is std_logic_vector(1 downto 0);
constant S0 : state_type := "00";
constant S1 : state_type := "01";
constant S2 : state_type := "10";
constant S3	: state_type := "11";
signal S_reg, S_next : state_type;
begin
	--state memory--
	process(clk)
	begin
		if(clk = '1' and clk'event) then
			S_reg <= S_next;
		end if;
	end process;
	S <= S_reg;
	S_1 <= S_next;
	--FSM--
	process(clk,X,S_reg)
	begin
		if(clk = '1' and clk'event) then
			case S_reg is
				when S0 => if(X = "00") then
								S_next <= S0;
							elsif(X = "01") then
								S_next <= S1;
							elsif(X = "11") then
								S_next <= S2;
							end if;
				when S1 => if(X = "00") then
								S_next <= S0;
							elsif(X = "01") then
								S_next <= S1;
							elsif(X = "11") then
								S_next <= S2;
							end if;
				when S2 => if(X = "00") then
								S_next <= S0;
							elsif(X = "01") then
								S_next <= S3;
							elsif(X = "11") then
								S_next <= S2;
							end if;			
				when S3 => if(X = "00") then
								S_next <= S0;
							elsif(X = "01") then
								S_next <= S3;
							elsif(X = "11") then
								S_next <= S2;
							end if;
				when others => S_next <= S1;
			end case;
		end if;
	end process;

	with S_reg select 
		Y <= '1' when S0|S1,
		     '0' when S2|S3,
			 '0' when others;
end Behavioral;			 
