--BỘ ĐẾM SỬ DỤNG FSM--
--Khai báo thư viện--
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
--Khai báo thực thể--
--Trong này ta tiến hành khai báo giao diện bên ngoài của khối thiết kế--
entity counter is
port(
		clk   : in  std_logic;
		S     : out std_logic_vector(2 downto 0);
		Y     : out std_logic
	);
end counter;
--Khai báo kiến trúc--
--Trong này ta tiến hành khai báo các component mà ta tiến hành kế thừa nó và suwrw dụng trong khối số này và các tín hiệu trong--
architecture Behavioral of counter is
constant S0 : std_logic_vector(2 downto 0) := "000";
constant S1 : std_logic_vector(2 downto 0) := "001";
constant S2 : std_logic_vector(2 downto 0) := "010";
constant S3 : std_logic_vector(2 downto 0) := "011";
constant S4 : std_logic_vector(2 downto 0) := "100";
signal S_reg, S_next : std_logic_vector(2 downto 0);
begin
	--Gán trạng thái hiện tại bằng trạng thái tiếp theo--
	process(clk)
	begin
		if(clk ='1' and clk'event) then
			S_reg <= S_next;
		end if;
	end process;
	S <= S_reg;

	process(clk,S_reg)
	begin
		if(clk = '1' and clk'event) then
			case S_reg is
				when S0 => S_next <= S1;
				when S1 => S_next <= S2;
				when S2 => S_next <= S3;
				when S3 => S_next <= S4;
				when S4 => S_next <= S0;
				when others => S_next <= S0;
			end case;
		end if;
	end process;
		
	with S_reg select 
		Y <= '0' when S0|S1|S2|S3,
		     '1' when S4,
		     '0' when others;
	
end Behavioral;	