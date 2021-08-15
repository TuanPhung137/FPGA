library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;

entity test_UART is
port(
		Rx     : in std_logic;
		RST    : in std_logic;
		reset  : out std_logic;
		enable : out std_logic;
		view   : out std_logic_vector(1 downto 0);
		clk    : in std_logic
	);
end test_UART;
architecture Behavioral of test_UART is
signal Rx_reg : std_logic;
signal state  : std_logic_vector(1 downto 0);
constant start  : std_logic_vector(1 downto 0) := "00";
constant idle   : std_logic_vector(1 downto 0) := "01";
constant data   : std_logic_vector(1 downto 0) := "10";
signal reset_temp, enable_temp : std_logic;
begin
	
	process(clk)
	begin	
		if(clk = '1' and clk'event) then
			Rx_reg <= Rx;
		end if;
	end process;
	
	process(clk,RX,Rx_reg)
	begin
		if(RST = '1') then	
			state <= idle;
		elsif(clk = '1' and clk'event) then
			case state is
			when idle =>
			reset_temp <= '0';
				enable_temp <= '0';
			if(Rx= '0' and Rx_reg = '1') then
				reset_temp <= '1';
				enable_temp <= '1';
				state  <= start;
			end if;
			when start =>
			reset_temp <= '0';
				if(Rx = '0') then
					enable_temp <= '1';
					state <= data;
				end if;	
			when data =>
				reset_temp <= '1';
		    when others => state <= idle;	
			end case;
		end if;
	end process	;
	reset <= reset_temp;
		enable <= enable_temp;
	view <= state;
end Behavioral;	
			
			