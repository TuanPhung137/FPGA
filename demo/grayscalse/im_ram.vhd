--Khai báo thư viện--
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
--Khai bao thu vien lam viec voi so thuc dau phay dong--
library floatfixlib;
use floatfixlib.float_pkg.ALL;
use floatfixlib.fixed_float_types.ALL;
use floatfixlib.fixed_pkg.ALL;
--Khai bao thư viện làm việc với text--
library STD;
use STD.TEXTIO.ALL;
--**********************************************************--
--Khai báo thực thể--
--Vì kích thước của ảnh là 4356 tương đương với 4356 ô nhớ vậy kích thước của bus addr là 4356 được mã hóa bởi 13 bit địa chỉ
--Nhưng thường bus địa chỉ là 8,16,20,24,32,64 thôi nên ta chọn 16 bit địa chỉ 
entity im_ram is
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
end im_ram;	
--Khai báo kiến trúc--
architecture Behavioral of im_ram is
--Khai báo một mảng về bản chất là ram để lưu trữ từng pixel ảnh và sau đó ta đọc các pixel đó từ file text vào--
--Mỗi phần tử trong mảng thuộc kiểu dữ liệu float32--
type im_ram_type is array (0 to  IM_SIZE_ROW*IM_SIZE_COL - 1) of float32;
--Ta tạo ra 1 hàm có tên là im_ram_initialize  và kết quả trả về các phần tử cùng kiểu với các phần tử của im_ram_type
impure function im_ram_initialize return im_ram_type is
	variable line_var : line;--biến này đóng vai trò chưa thông tin về data và addr của các dòng--
    file text_var : text;--biến này đóng vai trò chưa thông tin về data và addr của file ta truy xuất--
    variable pixel : integer;--Biến này lưu trữ từng pixel sau khi đọc ra ngoài
    variable image_ram : im_ram_type;--Biến mang thông tin về data và addr của các phần tử trong ô nhớ--
	variable test : float32;
begin
	--Mở file sau đó đọc nó rồi đưa vào biến text_var--
	file_open(text_var,"gray.txt",read_mode);
	while(NOT ENDFILE(text_var)) loop--Ta vẫn sẽ đọc cho đến khi đọc hết file đó--
		--Ta để ý 1 vấn đề là ảnh của ta là 66x66 khi convert thành 4356x1 thì nó sẽ sắp xếp từng cột 1 sau khi hết cột 1
		--thì đến cột 2 v.v.. Vì vậy khi ta lấy từng phần tử trong cột đó là truy xuất đến từng hàng bởi vì cùng 1 cột thì các 
		--phần tử trong đó phải là từng hàng vậy phải đi hết IM_SIZE_ROW sau đó mới đến IM_SIZE_COL
		--for j in 0 to IM_SIZE_COL - 1 loop
			for i in 0 to IM_SIZE_ROW*IM_SIZE_COL - 1 loop
				readline(text_var,line_var);--Tham chiếu đến vị trí ô nhớ của từng hàng--
				read(line_var,pixel);--Đọc dữ liệu trong hàng đó--
				--Vì dữ liệu là integer nên khi ta đọc xong ta phải chuyển đổi nó sang float32 rồi đưa nó vào ô nhớ trong ram--
				--image_ram (i+IM_SIZE_ROW*j) := to_float(pixel,test,round_zero);
				image_ram (i) := to_float(pixel,test,round_zero);
				--Có 2 cách để truy xuất dữ liệu 1 là dùng 2 vòng lặp, cách 2 chỉ dùng 1 vòng lặp
			end loop;
		--end loop;
	end loop;	
	file_close(text_var);--Đóng file sau khi đọc xong hết--
	--Sau đó trả các phần tử trong image_ram  cho im_ram_type
	return image_ram ;
end function;
--Khai báo và khởi tạo ram image
signal ram : im_ram_type := im_ram_initialize;
begin
	--process(clk,addr_in)
	--begin
	--	if(rising_edge(clk)) then
	--Đọc từng pixel đã được lưu trong từng phần tử của ram
			im_pixel <= ram(conv_integer(unsigned(addr_in)));
	--	end if;
	--end process;	
end Behavioral;	