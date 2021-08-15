--MAJORITY--
--Khai báo thư viện--
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
--Khai báo thực thể--
entity majority is
generic(N : natural := 3);
port(
		i_vector : in  std_logic_vector((2**N)-1 downto 0);
		o_value  : out unsigned(N downto 0)
	);
end majority;
--Khai báo kiến trúc--
architecture majority_1 of majority is
--signal cnt_reg : unsigned(N downto 0) := (others => '0');--Bài này chỉ sd được variable mà không sử dụng được signal nếu ta biểu diễn thiết kế này trên diagram sẽ thấy giá trị đếm thay đổi liên tục tại cùng 1 thời điểm nhưng do là câu lệnh tuần tự nên giá trị đếm không phải là X
--và nó sẽ có giá trị chỉ bằng 1 nếu chỉ cần tồn tại bit 1 còn không là 0
begin
	process(i_vector)
	variable cnt_reg : unsigned(N downto 0) := (others => '0');
	begin
		cnt_reg := (others => '0');
		for i in 0 to (2**N)-1  loop
			if(i_vector(i) = '1') then
				cnt_reg := cnt_reg + 1;
			end if;
		end loop;
		o_value <= cnt_reg;
	end process;
end majority_1;	

architecture majority_2 of majority is
--signal cnt_reg : unsigned(N downto 0) := (others => '0');--Bài này chỉ sd được variable mà không sử dụng được signal nếu ta biểu diễn thiết kế này trên diagram sẽ thấy giá trị đếm thay đổi liên tục tại cùng 1 thời điểm nhưng do là câu lệnh tuần tự nên giá trị đếm không phải là X
--và nó sẽ có giá trị chỉ bằng 1 nếu chỉ cần tồn tại bit 1 còn không là 0
begin
	process(i_vector)
	variable cnt_reg : unsigned(N downto 0) := (others => '0');
	begin
		cnt_reg := (others => '0');
		for i in 0 to (2**N)-1  loop
				cnt_reg := cnt_reg + i_vector(i);
		end loop;
		o_value <= cnt_reg;
	end process;
end majority_2;	


architecture majority_3 of majority is
begin
	process(i_vector)
	variable i : INTEGER := (2**N)-1;
	variable cnt_reg : unsigned(N downto 0) := (others => '0');
	begin
		cnt_reg := (others => '0');
		i := (2**N)-1;
		while(i >= 0) loop
			cnt_reg := cnt_reg + i_vector(i);
			i := i-1;
		end loop;
		o_value <= cnt_reg;
	end process;
end majority_3;	