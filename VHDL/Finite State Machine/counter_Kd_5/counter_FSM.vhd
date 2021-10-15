--Khai báo thư viện--
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
--Khai báo thực thể--
entity counter_FSM is
port(
		clk   : in  std_logic;
		reset : in  std_logic;
		state : out std_logic_vector(2 downto 0);
		Y     : out std_logic
	);
end counter_FSM;
--Mô tả kiến trúc--
architecture Behavioral of counter_FSM is
constant D0 : std_logic_vector(2 downto 0) := "000";
constant D1 : std_logic_vector(2 downto 0) := "001";
constant D2 : std_logic_vector(2 downto 0) := "010";
constant D3 : std_logic_vector(2 downto 0) := "011";
constant D4 : std_logic_vector(2 downto 0) := "100";
signal current_state, next_state : std_logic_vector(2 downto 0);
begin
	--State memory--
	process(clk, reset)
	begin
		if(reset = '1') then
			current_state <= D0;
		elsif(clk = '1' and clk'event) then
			current_state <= next_state;
		end if;
	end process;

	--next state F--
	process(current_state)--Cách này sẽ không sử dụng được nếu ta bắt sự kiện sườn dương clk vì khi xét xogn điều kiện khối mux current_state thì sự kiện sườn xung clk đồi với đầu vào rồi nên giá trị next_state luôn luôn là D0  
	begin
		case current_state is
			when D0 => 
					if(clk = '1') then
						next_state <= D1;
					else
						next_state <= D0;
					end if;
			when D1 =>
					if(clk = '1') then
						next_state <= D2;
					else
						next_state <= D1;
					end if;
			when D2 =>
					if(clk = '1') then
						next_state <= D3;
					else
						next_state <= D2;
					end if;
			when D3 => 
					if(clk = '1') then
						next_state <= D4;
					else
						next_state <= D3;
					end if;
			when D4 =>
					if(clk = '1') then
						next_state <= D0;
					else
						next_state <= D4;
					end if;
			when others => next_state <= D0;
		end case;
	end process;
	--process(clk)
	--begin
	--	if(clk = '1' and clk'event) then--Khi để clk ở vòng ngoài giống như có 2 tầng FF và tầng có FF state sẽ có đầu ra chậm hơn 1 chu kỳ--
	--		case current_state is
	--			when D0 => next_state <= D1;
	--			when D1 => next_state <= D2;
	--			when D2 => next_state <= D3;
	--			when D3 => next_state <= D4;
	--			when D4 => next_state <= D0;
	--			when others => next_state <= D0;
	--		end case;
	--	end if;
	--end process;
	
	--Output G--
	with current_state select
		Y <= '1' when D4,
			 '0' when others;
	state <= current_state;
end Behavioral;
	