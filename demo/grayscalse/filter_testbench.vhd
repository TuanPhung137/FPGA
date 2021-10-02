--Khai báo thư viện--
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
--Khai báo thư viện làm việc với file--
library STD;
use STD.TEXTIO.ALL;
use STD.ENV.ALL;--Thư viện này sử dụng cho Modelsim 6.5
--Khai báo thực thể--
entity filter_testbench is
end filter_testbench;
--Khai báo kiến trúc--
architecture Behavioral of filter_testbench is
component median_filter is
generic(
		ADDR_WIDTH  : INTEGER := 16;-- adderss bus width--
		IM_SIZE_ROW : INTEGER := 66;-- row number--
		IM_SIZE_COL : INTEGER := 66-- collum number--
		);
port(
		clk       : in  std_logic;
		reset     : in  std_logic;
		data_vlib : out std_logic;--Sau mỗi lần nhân tích chập ra kết quả ta sẽ valib đầu ra này
		fil_px    : out integer
	);		
end component;
--Khai báo các tham số không đổi--
constant ADDR_WIDTH  : INTEGER := 16;-- adderss bus width--
constant IM_SIZE_ROW : INTEGER := 66;-- row number--
constant IM_SIZE_COL : INTEGER := 66;-- collum number--
--Khai báo các tín hiệu trong thành phần con--
signal clk       : std_logic := '0';
signal reset     : std_logic;
signal data_vlib : std_logic;--Sau mỗi lần nhân tích chập ra kết quả ta sẽ valib đầu ra này
signal fil_px    : integer;
constant Clk_period : time := 10 ns;    --clock period.

--Tạo 1 mảng để lưu trữ từng pixel ảnh sau khi lọc ở khối median_filter sau mỗi chu kỳ clk và valib = 1--
type image_fpga is array(0 to (IM_SIZE_ROW-2)*(IM_SIZE_COL - 2) - 1) of integer;
signal image_fpga_0 : image_fpga;
--Tạo mảng lưu trữ file matlab--
type image_matlab is array(0 to (IM_SIZE_ROW-2)*(IM_SIZE_COL - 2) - 1) of integer;
--Ta tạo ra 1 hàm có tên là image_matlab_initialize  và kết quả trả về các phần tử cùng kiểu với các phần tử của image_matlab
impure function image_matlab_initialize return image_matlab is
	variable line_var : line;--biến này đóng vai trò chưa thông tin về data và addr của các dòng--
    file text_var : text;--biến này đóng vai trò chưa thông tin về data và addr của file ta truy xuất--
    variable pixel : integer;--Biến này lưu trữ từng pixel sau khi đọc ra ngoài
    variable image_matlab_ram : image_matlab;--Biến mang thông tin về data và addr của các phần tử trong ô nhớ--
begin
	--Mở file sau đó đọc nó rồi đưa vào biến text_var--
	file_open(text_var,"gray_matlab.txt",read_mode);
	while(NOT ENDFILE(text_var)) loop--Ta vẫn sẽ đọc cho đến khi đọc hết file đó--
		--Ta để ý 1 vấn đề là ảnh của ta là 64x64 khi convert thành 4096x1 thì nó sẽ sắp xếp từng cột 1 sau khi hết cột 1
		--thì đến cột 2 v.v.. Vì vậy khi ta lấy từng phần tử trong cột đó là truy xuất đến từng hàng bởi vì cùng 1 cột thì các 
		--phần tử trong đó phải là từng hàng vậy phải đi hết IM_SIZE_ROW sau đó mới đến IM_SIZE_COL
		--for j in 0 to IM_SIZE_COL - 1 loop
			for i in 0 to (IM_SIZE_ROW-2)*(IM_SIZE_COL - 2) - 1 loop
				readline(text_var,line_var);--Tham chiếu đến vị trí ô nhớ của từng hàng--
				read(line_var,pixel);--Đọc dữ liệu trong hàng đó--
				--image_ram (i+(IM_SIZE_ROW-2)*j) := to_float(pixel,test,round_zero);
				image_matlab_ram(i) := pixel;
				--Có 2 cách để truy xuất dữ liệu 1 là dùng 2 vòng lặp, cách 2 chỉ dùng 1 vòng lặp
			end loop;
		--end loop;
	end loop;	
	file_close(text_var);--Đóng file sau khi đọc xong hết--
	--Sau đó trả các phần tử trong image_ram  cho im_ram_type
	return image_matlab_ram ;
end function;
--Khai báo và khởi tạo ram image matlab
signal image_matlab_0 : image_matlab := image_matlab_initialize;
--Tín hiệu adderss của image_fpga_0--
signal addr_f : std_logic_vector(ADDR_WIDTH - 1 downto 0);
signal valib : std_logic;
begin
	--Tiến hành ánh xạ các cổng của khối cần test vào các tín hiệu chứa giá trị cần kiếm tra--
	DUT : component median_filter
			generic map(ADDR_WIDTH,IM_SIZE_ROW,IM_SIZE_COL)
			port map(clk=>clk, reset => reset, data_vlib => data_vlib, fil_px => fil_px);
	--Tạo tín hiệu clk--
	clk <= not(clk) after Clk_period/2;
	--Tạo tín hiệu reset--
	creat_rst : process
	begin
		reset <= '1';
		wait for 10 ns;
		reset <= '0';
		wait;
	end process creat_rst;

	process(clk,reset,data_vlib)
	begin
		if(reset = '1') then
			addr_f <= (others => '0');
			valib  <= '0';
		elsif(rising_edge(clk) and data_vlib = '1') then
			if(conv_integer(unsigned(addr_f)) = (IM_SIZE_ROW-2)*(IM_SIZE_COL - 2) - 1) then
				--addr_f <= conv_std_logic_vector((IM_SIZE_ROW-2)*(IM_SIZE_COL - 2) - 1,addr_f'length);
				addr_f <= (others => '0');
				valib  <= '1';
			else
				addr_f <= addr_f + 1;
				valib  <= '0';
			end if;	
		end if;
	end process;	
	image_fpga_0(conv_integer(unsigned(addr_f))) <= fil_px;
	
	--Tạo khối testbench tiến hành đọc file matlab sau đó so sánh kết quả từ khối con rồi in kết quả đó ra màn hình--
	TESTBENCH_PROCESS : process(valib,clk,image_fpga_0,image_matlab_0)
	--Phần này là file in ra kết quả kiểm tra--
	variable info  : line;--Biến này mang thông tin là data và addr của dòng trong file testbench
	file log_file  : text;--Biến này thuộc kiểu dữ liệu file định dạng text mang thông tin là địa chỉ và dữ liệu của check_file
	--Phần này là file matlab ta đọc vào để so sánh rồi in kết quả kiểm tra ra check_file
	variable i : integer := 0;
	begin
		if(falling_edge(clk) and valib = '1') then
			file_open(log_file,"check_file.txt",write_mode);
			while(i<4096) loop
				write(info, string'("Test #"));
				write(info, integer'(i));
				write(info, string'(" image_fpga_0 = "));
				write(info, integer'(image_fpga_0(i)));
				write(info, string'(" image_matlab_0 = "));
				write(info, integer'(image_matlab_0(i)));
				if(image_fpga_0(i) = image_matlab_0(i)) then
					write(info,string'("  OK"));
				else	
					write(info, string'("  FAILURE"));
				end if;
				writeline(log_file, info);
				i := i + 1;
			end loop;
			file_close(log_file);
			assert i < 4096 report "Test: OK" severity failure;
				--Tạo file testbench để tiến hành so sánh sau mỗi sườn xuống xung clk--
				--Viết vào mỗi dòng nội dung đây là test bao nhiêu, pixel ảnh của fpga và matlab là bao nhiêu có khác nhau không
		end if;
	end process	TESTBENCH_PROCESS;
end Behavioral;
			
			
				