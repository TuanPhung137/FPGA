--counter--
--Khai báo thưc viện--
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
--Khai báo thực thể--
entity counter_gray is
port(
		clk   : in  std_logic;
		reset : in  std_logic;
		enable: in  std_logic;
		cnt   : out std_logic_vector(1 downto 0)
	);
end counter_gray;
--Mô tả kiến trúc--
architecture Behavioral of counter_gray is
signal cnt_reg : std_logic_vector(1 downto 0);
begin
	process(clk,reset,cnt_reg)--Tạo ra 1 reg và khối cộng trong đó đầu ra reg: cnt <= sum, khối cộng:sum <= cnt+1--
	begin
		if(reset = '1') then
			cnt_reg <= (others => '0');
		elsif(clk = '1' and clk'event) then
			if(enable = '1') then
				cnt_reg <= cnt_reg + 1;--đoạn này về mặt bản chất là gộp 2 công thức trên làm 1--
			end if;
		end if;
	end process;
	cnt(1) <= cnt_reg(1);
	cnt(0) <= cnt_reg(1) xor cnt_reg(0);
end Behavioral;	