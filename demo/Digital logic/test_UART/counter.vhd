--COUNTER--
--Khai báo thư viện--
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
--Khai báo thực thể--
entity counter is
generic(N : natural := 16);
port(
		clk    : in  std_logic;
		enable : in  std_logic;
		reset  : in  std_logic;
		cnt    : out std_logic_vector(N-1 downto 0)
	);
end counter;
--Khai báo kiến trúc--
architecture Behavioral of counter is
signal cnt_reg : std_logic_vector(N-1 downto 0);--Bài toán đếm luôn phải khời tạo giá trị ban đầu nếu có sử dụng reset mà đồng bộ thì nên cho time nó dài chút tới đoạn có sườn dương
begin
	process(clk)
	begin
			if(reset = '1') then
				cnt_reg <= (others => '0');
			elsif(rising_edge(clk)) then
			if(enable = '1') then
				cnt_reg <= cnt_reg + 1;
			end if;
		    end if;
	end process;
	cnt <= cnt_reg;
end Behavioral;	