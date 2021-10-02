--Khai báo thư viện--
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
--Khai báo thư viện số thực dấu phẩy động--
library floatfixlib;
use floatfixlib.float_pkg.ALL;
use floatfixlib.fixed_float_types.ALL;
use floatfixlib.fixed_pkg.ALL;
--************************************************************--

entity median_filter is
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
end median_filter;

architecture Behavioral of median_filter is
component im_ram is
generic(
		ADDR_WIDTH  : INTEGER := 16;-- adderss bus width--
		IM_SIZE_ROW : INTEGER := 66;-- row number--
		IM_SIZE_COL : INTEGER := 66-- collum number--
		);
port(
		clk      : in  std_logic;
		addr_in  : in  std_logic_vector(ADDR_WIDTH - 1 downto 0);
		im_pixel : out float32--ta can anh dang dau phay dong --
	);		
end component;
signal addr_in  : std_logic_vector(ADDR_WIDTH - 1 downto 0);
signal im_pixel : float32;
signal fil_px_temp : float32;
--median_filter--
type fil is array (0 to 8) of float32;
constant fil_m : fil := (
	"00111101111000111000100001100101",--1/9--
	"00111101111000111000100001100101",--1/9--
	"00111101111000111000100001100101",--1/9--
	"00111101111000111000100001100101",--1/9--
	"00111101111000111000100001100101",--1/9--
	"00111101111000111000100001100101",--1/9--
	"00111101111000111000100001100101",--1/9--
	"00111101111000111000100001100101",--1/9--
	"00111101111000111000100001100101"--1/9--
);
--Là mảng trung gian lưu trữ kết quả tính toán tích chập--
type temp is array (0 to  (IM_SIZE_ROW-2)*(IM_SIZE_COL - 2) - 1) of float32;
signal t_p : temp;
signal addr_t : std_logic_vector(ADDR_WIDTH - 1 downto 0);
--fifo--
type fifo is array (0 to  IM_SIZE_ROW*IM_SIZE_COL - 1) of float32;
signal fifo_p : fifo;
--*******************************--

signal cnt      : std_logic_vector(31 downto 0);
signal valib    : std_logic;
signal enable   : std_logic;
begin
	--Khởi tạo khối ram để truy xuất dữ liệu pixel ảnh để tiến hành tích chập--
	--Nếu ta thay đổi giá trị theo sự kiện clk thì giá trị im_pixel sẽ chốt chậm 1 chu kỳ vì có 2 tầng register--
	image_ram : component im_ram 
					generic map(ADDR_WIDTH,IM_SIZE_ROW,IM_SIZE_COL)
					port map(clk => clk, addr_in => addr_in, im_pixel => im_pixel);
	--Tạo 1 khối block làm nhiệm vụ tăng địa chỉ theo từng sự kiện clk sau đó đưa vào khối im_ram để lấy data bên trong đó rồi gửi vào 1 mảng fifo--
	
	process(clk,reset)
	begin
		if(reset = '1') then
			addr_in <= (others => '0');
			cnt     <= (others => '0');
			valib   <= '0';--Tín hiệu được sử dụng để sau khi chuyển hết dữ liệu vào fifo thì ta bắt đầu tính toán tích chập--
			enable  <= '1';--Tạo ra tín hiệu cho phép đếm để khi đến địa chỉ cuối cùng thì ta dừng tăng addr_in--
		elsif(rising_edge(clk)) then
			if(enable = '1') then
				if(conv_integer(unsigned(addr_in)) = IM_SIZE_ROW*IM_SIZE_COL - 1) then
					addr_in <= conv_std_logic_vector(IM_SIZE_ROW*IM_SIZE_COL - 1,addr_in'length);
					enable  <= '0';
					valib   <= '1';
				else
					addr_in <= addr_in + 1;
					enable  <= '1';
					valib   <= '0';
				end if;	
			end if;
		end if;
	end process;
	fifo_p(conv_integer(unsigned(addr_in))) <= im_pixel;	
	--Tạo một khối bắt đầu tính toán khi valib = 1--
	--Nếu sử dụng phương pháp chỉ dùng 1 vòng lặp thì ta không kiểm soát được nhân ma trận--
	--Vì số hàng tăng đều mà hàng của ta chỉ bằng kích thước  IM_SIZE_ROW - 3 thôi nên nếu ta chỉ dùng 1 vòng lặp dẫn đến--
	--Bộ lọc cuối ở hàng đó sẽ có hàng đầu là vị trí cuối của ma trận lớn còn các hàng sau bị nhảy sang cột bên cạnh--
	--Vì vậy ta phải sử dụng 2 vòng lặp để kiểm soát từng hàng và cột nếu sử dụng 1 vòng lặp ta không thể kiểm soát cả hàng và cột--
	process(valib)
	begin
		if(valib = '1') then
			for j in 0 to IM_SIZE_COL -3 loop
				for i in 0 to IM_SIZE_ROW - 3 loop
					t_p(i+(IM_SIZE_ROW-2)*j) <= fifo_p(i+IM_SIZE_ROW*j)*fil_m(0) + fifo_p(i+1+IM_SIZE_ROW*j)*fil_m(1) + fifo_p(i+2+IM_SIZE_ROW*j)*fil_m(2)--column 0--
							  + fifo_p(i+IM_SIZE_ROW+IM_SIZE_ROW*j)*fil_m(3) + fifo_p(i+1+IM_SIZE_ROW+IM_SIZE_ROW*j)*fil_m(4) + fifo_p(i+2+IM_SIZE_ROW+IM_SIZE_ROW*j)*fil_m(5) --column 1--
							  + fifo_p(i+2*IM_SIZE_ROW+IM_SIZE_ROW*j)*fil_m(6) + fifo_p(i+1+2*IM_SIZE_ROW+IM_SIZE_ROW*j)*fil_m(7) + fifo_p(i+2+2*IM_SIZE_ROW+IM_SIZE_ROW*j)*fil_m(8);--column 2--
				end loop;
			end loop;
		end if;	
	end process;
	data_vlib <= valib;--Tín hiệu xác định rằng kết quả tính tích chập đã hoàn thành có thể lấy để so sánh--
	--Khối này được sử dụng để sau khi đã tính xong từng chu kỳ clk sẽ đưa từng phần tử trong mảng trung gian kia ra để so sánh--
	process(clk,reset,valib)
	begin
		if(reset = '1') then
			addr_t <= (others => '0');
		elsif(rising_edge(clk) and valib = '1') then
			if(conv_integer(unsigned(addr_t)) = (IM_SIZE_ROW-2)*(IM_SIZE_COL - 2) - 1) then
				addr_t <= (others => '0');
			else
				addr_t <= addr_t + 1;
			end if;	
		end if;
	end process;	
	fil_px_temp <= t_p(conv_integer(unsigned(addr_t)));--Giá trị sau khi tính ta nhận được là một số thực--
	--Mà đầu ra ta cần là một interger nên ta chuyển đổi--
	fil_px <= to_integer(fil_px_temp,round_nearest,false);
	--Tham số đầu là float32 ta cần chuyển đổi, tham số 2 là kiểu làm tròn thành số nguyên phụ thuộc gần phần nguyên trên hay dưới
	--Tham số thứ 3 là kiểm tra lỗi vì ta không cần nên để flase
end Behavioral;
			