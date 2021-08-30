--Khai báo thư viện--
library IEEE;
use IEEE.STD_lOGIC_1164.ALL;
use IEEE.STD_lOGIC_ARITH.ALL;
use IEEE.STD_lOGIC_UNSIGNED.ALL;
--Khai báo thực thể--
entity clock_divider is
port(
		clk_in  : in  std_logic;
		reset   : in  std_logic;
		clk_out : out std_logic
	);
end clock_divider;
--Mô tả kiến trúc--
architecture Behavioral of clock_divider is
signal cnt : std_logic_vector(4 downto 0);--50/2-1=24=11000-- ta cung co the dem 49 nhưng vì đó là đếm cả 2 sườn nên thừa thãi không cần thiết nên ta chỉ đếm 1 sườn thôi
signal clk_temp : std_logic;
begin
	counter : process(clk_in,cnt,reset)--Nhiệm vụ khi đếm tới 24 thì quay cnt = 0 còn không cứ đếm tiếp--
	begin
		if(reset = '1') then
			cnt <= (others => '0');
		elsif(clk_in = '1' and clk_in'event) then
			if(cnt = "11000") then
				cnt <= (others => '0');
			else
				cnt <= cnt + 1;
			end if;
		end if;
	end process counter;
	
	clk : process(clk_in,reset,cnt,clk_temp)--Khi đếm tới 24 thì đảo lại giá trị trước đó là clk đang mang
	begin
		if(reset = '1') then
			clk_temp <= '0';
		elsif(clk_in = '1' and clk_in'event) then
			if(cnt = "11000") then
				clk_temp <= not(clk_temp);
			else	
				clk_temp <= clk_temp;
			end if;
		end if;
	end process clk;
	clk_out <= clk_temp;
end Behavioral;	
		
		
	