--TEST BENCH--
--Khai báo thư viện--
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
--Khai báo thư viện hệ thống hay thư viện được sử dụng để đọc hoặc ghi dữ liệu dưới dạng các kiểu dữ liệu
--vd: character ,string, real,time,integer,bit từ các file, std_input,..
library STD;
use STD.TEXTIO.ALL;--Thư viện này sử dụng cho Modelsim 10.5
use STD.ENV.ALL;--Thư viện này sử dụng cho Modelsim 6.5
--Khai báo thực thể--
entity adder_testbench is
end adder_testbench;
--Khai báo kiến trúc--
architecture testbench of adder_testbench is
component adderN
generic(N : natural := 16);
port(
		A    : in  std_logic_vector(N-1 downto 0);
		B    : in  std_logic_vector(N-1 downto 0);
		Cin  : in  std_logic;
		Cout : out std_logic;
		Sum  : out std_logic_vector(N-1 downto 0)
	);
end component;
signal s_a      : std_logic_vector(4 downto 0) := "00000";
signal s_b      : std_logic_vector(4 downto 0) := "00000";
signal s_cin    : std_logic                    := '0';
signal cout_d   : std_logic;
signal cout_e   : std_logic;
signal sum_d    : std_logic_vector(4 downto 0);
signal sum_e    : std_logic_vector(4 downto 0);
signal clk      : std_logic                    := '0';

for DUT    : adderN use entity work.adderN(add_2);
for ETALON : adderN use entity work.adderN(add_operator);

begin
	creat_clk : process
	begin
		wait for 15 ns;
		clk <= not(clk) after 50 ns;
	end process creat_clk;
	
	check : process(clk)
	variable v_cnt    : integer := 0;--Biến này là biến đếm thực hiện ghi số thứ tự dòng cho text
	variable info     : line; --Đóng vai trò như địa chỉ của dòng
	file log_file : TEXT open WRITE_MODE is "./check_file.txt";
	begin
		if(clk = '1' and clk'event) then
			write(info, string'("Test # "));
			write(info, integer'(v_cnt + 1));
			write(info, string'(" a = "));
			write(info, integer'(conv_integer(s_a)));
			write(info, string'(" b = "));
			write(info, integer'(conv_integer(s_b)));
			write(info, string'(" Cin = "));
			write(info, integer'(conv_integer(s_cin)));
			write(info, string'(" sum_d = "));
			write(info, integer'(conv_integer(sum_d)));
            write(info, string'(" cout_d = "));
			write(info, integer'(conv_integer(cout_d)));
			write(info, string'(" sum_e = "));
			write(info, integer'(conv_integer(sum_e)));
            write(info, string'(" cout_e = "));
			write(info, integer'(conv_integer(cout_e)));
			if(sum_d /= sum_e or cout_d /= cout_e) then
				write(info, string'("FAILURE"));
			else	
				write(info, string'("OK"));
			end if;
			writeline(log_file, info);--print message to the screen --oupt -> STD_OUTPUT
			--input data generator
			v_cnt := v_cnt + 1;
			s_cin <= not(s_cin);
			if(s_cin = '1') then
				s_a <= s_a + 1;
			end if;
			if(s_a = 2**5-1) then
				s_b <= s_b + 1;
			end if;
			
			if(v_cnt >= 2048) then
				stop(0);
			end if;
		end if;
	end process check;

	DUT : component adderN
			generic map(N => 5)
			port map(A => s_a, B => s_b , Cin => s_cin,
						Cout => cout_d, Sum => sum_d);
			
	ETALON : component adderN
			generic map(N => 5)
			port map(A => s_a, B => s_b , Cin => s_cin,
						Cout => cout_e, Sum => sum_e);	
end testbench;						
		
