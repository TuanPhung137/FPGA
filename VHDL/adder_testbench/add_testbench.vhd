--Khai bao thu vien--
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
--Khai bao thu vien thuc thi voi dinh dang file--
library STD;
use STD.TEXTIO.ALL;
use STD.ENV.ALL;
--Khai bao thuc the--
entity add_testbench is
end add_testbench;
--Mo ta kien truc--
architecture test of add_testbench is
--Khai bao thuc the can su dung--
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
--Khai bao cac tin hieu de tien hanh anh xa cac cong cua thuc the con de kiem tra--
--input signal--
signal A    : std_logic_vector(3 downto 0) := "0000";
signal B    : std_logic_vector(3 downto 0) := "0000";
signal Cin  : std_logic := '0';
--output signal--
--ouput signal cua khoi ta thiet ke--
signal Cout_d : std_logic;
signal Sum_d  : std_logic_vector(3 downto 0);
--ouput signal cua khoi tieu chuan--
signal Cout_e : std_logic;
signal Sum_e  : std_logic_vector(3 downto 0);
--clock signal--
--O day ta tao 1 tin hieu clk de thay cho su dung delay vi ta biet tai 1 thoi diem thi tin hieu khong mang duoc nhieu gia tri--
--Vi vay ta trong phuong phap co dien ta su dung wait nhung vi nhieu truong hop khong the tao wait lien tuc nen ta su dung clk--
signal clk : std_logic := '0';
--Lua chon kien truc de tien hanh kiem dinh--
for DUT : adderN use entity work.adderN(dataflow);
for ETALON : adderN use entity work.adderN(add_operater);
begin
	creat_clock : process
	begin
		wait for 15 ns;
		clk <= not(clk) after 50 ns;--tuong duong giong viec ta su dung wait for 2 lan--
	end process creat_clock;
	
	block_testbench : process(clk)
	variable info  : line;--khai bao bien mang thong tin cua hang do de ta tham chieu va ghi du lieu--
	variable v_cnt : integer := 0;--bien nay de dem dong--
	--Vi khi ta tien hanh in ra std_output se ton rat nhieu tai nguyen he thong vi vay ta se in ra 1 file text de do ton tai nguyen hon--
	--Dong thoi trong file run.do ta khong can hien thi ra gian do song vi file gian do song chiem nhieu tai nguyen--
	file log_file : TEXT open WRITE_MODE is "./log.txt";
	begin
		--Khai gap clk thi ta se tien hanh thuc hien phep toan thay vi su dung wait--
		if(clk = '1' and clk'event) then
			write(info, string'("#Test = "));
			write(info, integer'(v_cnt + 1));
			write(info, string'(" A = "));
			write(info, integer'(conv_integer(A)));
			write(info, string'(" B = "));
			write(info, integer'(conv_integer(B)));
			write(info, string'(" Cin = "));
			write(info, integer'(conv_integer(Cin)));
			write(info, string'(" Cout_d = "));
			write(info, integer'(conv_integer(Cout_d)));
			write(info, string'(" Sum_d = "));
			write(info, integer'(conv_integer(Sum_d)));
			write(info, string'(" Cout_e = "));
			write(info, integer'(conv_integer(Cin)));
			write(info, string'(" Sum_e = "));
			write(info, integer'(conv_integer(Sum_e)));
			---------------------------------------------
			if(Sum_d /= Sum_e or Cout_d /= Cout_e) then
				write(info, string'("  FALSE"));
			else	
				write(info, string'("  TRUE"));
			end if;
			writeline(log_file, info);--in tat ca cac thong tin ma ta da viet luc nay ta dau ra--
			--Sau khi hoan thanh 1 hang ta se tang cac gia tri dem hang len 1 cac gia tri test len 1--
			v_cnt := v_cnt + 1;
			Cin <= not(Cin);
			if(Cin = '1') then
				A <= A+1;
			end if;
			if(A = "1111") then
				B <= B + 1;
			end if;
			if(v_cnt >= 512) then--Khai lon hon hoac bang 512 truong hop thi dung
				stop(0);
			end if;	
			--assert v_cnt < 512;
			--report "end simalation" severity FAILURE;
		end if;
	end process block_testbench;
	
	DUT : component adderN
			generic map(N => 4)
			port map(A => A, B => B, Cin => Cin,
						Cout => Cout_d, Sum => Sum_d);
						
	ETALON : component adderN
			generic map(N => 4)
			port map(A => A, B => B, Cin => Cin,
						Cout => Cout_e, Sum => Sum_e);
end test;
	
	
	
