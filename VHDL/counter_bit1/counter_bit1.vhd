--Khai bao thư viện--
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
--use IEEE.NUMERIC_STD.ALL;
--Khai báo thực thể--
entity counter_bit1 is
port(
		A : in  std_logic_vector(2 downto 0);--chuoi bit can dem--
		B : out std_logic_vector(1 downto 0)--Gia tri dem--
	);
end counter_bit1;
--Mô tả kiến trúc--
--PP1 : sử dụng num là biến integer--
-- architecture Behavioral of counter_bit1 is
-- begin
	-- process(A)--Tạo ra 1 biến có nhiệm vụ đếm bit 1 và truyền tải giá trị đó ra thực thể đầu ra--
	-- variable i : INTEGER := 2;--vi tri cua bit trong chuoi A
	-- variable num : INTEGER := 0;-- Gia tri dem bit 1
	-- begin
		-- i := 2;
		-- num := 0;
		-- while i >= 0 loop
			-- if(A(i) = '1') then
				-- num := num + 1;
			-- end if;
			-- i := i - 1;
		-- end loop;
		-- B <= std_logic_vector(to_unsigned(num,B'length));
	-- end process;
-- end Behavioral;	
--PP2 : sử dụng num là std_logic_vector và là biến--
architecture Behavioral of counter_bit1 is
begin
	process(A)--Tạo ra 1 biến có nhiệm vụ đếm bit 1 và truyền tải giá trị đó ra thực thể đầu ra--
	variable num : std_logic_vector(1 downto 0) := (others => '0');-- Gia tri dem bit 1
	begin
		num := (others => '0');
		for i in 0 to 2 loop
			num := num + A(i);
		end loop;	
		B <= num;
	end process;
end Behavioral;	