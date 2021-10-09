--Khai báo thư viện--
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
--Khai báo thực thể--
entity detector_001 is
port(
		clk   : in std_logic;
		rst   : in std_logic;
		s_in  : in std_logic;
		valid : out std_logic
	);
end detector_001;
--Mô tả kiến trúc--
architecture Behavioral of detector_001 is
--Khai báo các state--
constant IDLE : std_logic_vector(1 downto 0) := "00";
constant D0   : std_logic_vector(1 downto 0) := "01";
constant D00  : std_logic_vector(1 downto 0) := "10";
constant D001 : std_logic_vector(1 downto 0) := "11";
signal state_reg, state_next : std_logic_vector(1 downto 0);
begin
	--State memory--
	process(clk ,rst)
	begin
		if(rst = '1') then
			state_reg <= IDLE;
		elsif(clk = '1' and clk'event) then
			state_reg <= state_next;
		end if;
	end process;
	--Function F--
	process(state_reg)
	begin
		case state_reg is
			when IDLE =>  
				if(s_in = '0') then
					state_next <= D0;
				else
					state_next <= IDLE;
				end if;
			when D0 =>
				if(s_in = '0') then
					state_next <= D00;
				else
					state_next <= IDLE;
				end if;
			when D00 =>
				if(s_in = '0') then
					state_next <= D00;
				else
					state_next <= D001;
				end if;
			when others =>  
				if(s_in = '0') then
					state_next <= D0;
				else
					state_next <= IDLE;
				end if;
		end case;
	end process;
	--Function G--
	valid <= '1' when state_reg = D001 else	
		     '0';
end Behavioral;			 
							  