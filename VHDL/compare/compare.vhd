--Khai báo thư viện--
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
--Khai báo kiến trúc--
entity compare is
port(
		A   : in  std_logic_vector(3 downto 0);
		B   : in  std_logic_vector(3 downto 0);
		cp_i: in  std_logic_vector(2 downto 0); --lần lượt là >,<,=
		cp_o: out std_logic_vector(2 downto 0)
	);
end compare;
--Mô tả kiến trúc--
architecture Behavioral of compare is
begin
	mux1 : process(A,B,cp_i)
	begin
		if((A(3)>B(3)) or ((A(3)=B(3))and(A(2)>B(2))) or ((A(3)=B(3))and(A(2)=B(2))and(A(1)>(B(1)))) or ((A(3)=B(3))and(A(2)=B(2))and(A(1)=B(1))and(A(0)>(B(0))))) then
			cp_o <= "100";
		elsif((A(3)<B(3)) or ((A(3)=B(3))and(A(2)<B(2))) or ((A(3)=B(3))and(A(2)=B(2))and(A(1)<(B(1)))) or ((A(3)=B(3))and(A(2)=B(2))and(A(1)=B(1))and(A(0)<(B(0))))) then
			cp_o <= "010";
		else
			if(cp_i = "100") then
				cp_o <= "100";
			elsif(cp_i = "010") then
				cp_o <= "010";
			elsif(cp_i(0) = '1') then 
				cp_o <= "001";
			elsif(cp_i = "110") then
				cp_o <= "000";
			else
				cp_o <= "110";
			end if;
		end if;
	end process mux1;

	mux2 : process(A,B,cp_i)
	begin
		if(A>B) then
			cp_o <= "100";
		elsif(A < B) then
			cp_o <= "010";
		else
			if(cp_i = "100") then
				cp_o <= "100";
			elsif(cp_i = "010") then
				cp_o <= "010";
			elsif(cp_i(0) = '1') then 
				cp_o <= "001";
			elsif(cp_i = "110") then
				cp_o <= "000";
			else
				cp_o <= "110";
			end if;
		end if;
	end process mux2;
end Behavioral;	