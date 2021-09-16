--TEST BENCH--
--Khai báo thư viện--
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

library STD;
use STD.TEXTIO.ALL;
use STD.ENV.ALL;
--Khai báo thực thể--
entity serial_adder_testbench is
end serial_adder_testbench;
--Khai báo kiến trúc--
architecture testbench of serial_adder_testbench is
component serial_addder is
generic(N : natural := 4);
port(
		A 	         : in  std_logic_vector(2*N-1 downto 0);
		B            : in  std_logic_vector(2*N-1 downto 0);
		clk          : in  std_logic;
		reset        : in  std_logic;
		Load         : in  std_logic;
		Cin          : in  std_logic;
		Sum          : out std_logic_vector(2*N-1 downto 0);
		Cout         : out std_logic;
		result_valib : out std_logic
	);
end component;
signal s_A 	          : std_logic_vector(7 downto 0):=(others => '0');
signal s_B            : std_logic_vector(7 downto 0):=(others => '0');
signal clk            : std_logic;
signal reset          : std_logic := '0';
signal Load           : std_logic := '1';
signal s_Cin          : std_logic                   := '0';
signal Sum_d,Sum_e    : std_logic_vector(7 downto 0);
signal Cout_d,Cout_e  : std_logic;
signal result_valib_d : std_logic; 
signal result_valib_e : std_logic; 

for DUT    : serial_addder use entity work.serial_addder(structure);
for ETALON : serial_addder use entity work.serial_addder(Behavioral);

begin
	creat_clk : process
	begin
		clk <= '0';
		wait for 50 ns;
		clk <= '1';
		wait for 50 ns;
	end process creat_clk;

	--creat_reset : process
	--begin	
	--	reset  <= '1';
	--	wait for 100 ns;
	--	reset  <= '0';
	--	--wait for 100 ns;
	--	--reset  <= '0';
	--	wait;
	--end process creat_reset;
	
	creat_load : process
    begin
		wait for 200 ns;
		Load <= '0';
		wait for 400 ns;
		Load <= '1';
	end process;

	process(clk,result_valib_d)
	variable cnt  : INTEGER := 0;
	variable info : line;
	file log_file : TEXT open WRITE_MODE is "./check_list.txt";
	begin
		if(result_valib_d = '1') then
		    if(clk = '1' and clk'event) then
			write(info, string'("Test # ")); 
			write(info, integer'(cnt + 1));
			write(info, string'(" a = ")); 
			write(info, integer'(conv_integer(s_A)));
			write(info, string'(" b =  ")); 
			write(info, integer'(conv_integer(s_B)));
			write(info, string'(" Cin =  ")); 
			write(info, integer'(conv_integer(s_Cin)));
			write(info, string'(" sum =  ")); 
			write(info, integer'(conv_integer(Sum_d)));
			write(info, string'(" CO =  ")); 
			write(info, integer'(conv_integer(Cout_d)));
			write(info, string'(" Result_valib_d = "));
			write(info, integer'(conv_integer(result_valib_d)));
			write(info, string'(" s_sum_e =  ")); 
			write(info, integer'(conv_integer(Sum_e)));
			write(info, string'(" Cout_e =  ")); 
			write(info, integer'(conv_integer(Cout_e)));
			write(info, string'(" Result_valib_e = "));
			write(info, integer'(conv_integer(result_valib_e)));
			if(Sum_d /= Sum_e and Cout_d /= Cout_e and result_valib_d /= result_valib_e) then
				write(info, string'("FALSE"));
			else 
				write(info, string'("OK"));
			end if;
			writeline(log_file,info);
			cnt := cnt + 1;
			s_Cin <= not(s_Cin);
			if(s_Cin = '1') then
				s_A <= s_A + 1;
			end if;
			if(s_A = 2**3 -1) then
				s_B <= s_B + 1;
			end if;
			assert cnt < 128 
			report "end simulation" severity FAILURE;
			end if;
		end if;
	end process;	
	
	DUT : component serial_addder
			generic map(N => 4)
			port map(A =>s_A, B => s_B, clk => clk,reset => reset, Load => Load,Cin => s_Cin, Sum => Sum_d, Cout => Cout_d,
						result_valib => result_valib_d);
						
	ETALON : component serial_addder
			generic map(N => 4)
			port map(A =>s_A, B => s_B, clk => clk,reset => reset, Load => Load,Cin => s_Cin, Sum => Sum_e, Cout => Cout_e,
						result_valib => result_valib_e);			
end testbench;						
			