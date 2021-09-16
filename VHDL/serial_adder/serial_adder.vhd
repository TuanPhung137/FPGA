--SERIAL ADDER--
--Khai báo thư viện--
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

library work;
use work.ess_comp.ALL;
--Khai báo thực thể--
entity serial_addder is
generic(N : natural := 4);
port(
		A 	         : in  std_logic_vector(2*N-1 downto 0);
		B            : in  std_logic_vector(2*N-1 downto 0);
		clk          : in  std_logic;
		reset        : in  std_logic;
		Load         : in  std_logic;
		Cin          : in  std_logic;
		Sum          : out std_logic_vector(2*N-1 downto 0);
		Cout         : out std_logic;
		result_valib : out std_logic
	);
end serial_addder;
--Khai báo kiến trúc--
architecture structure of serial_addder is
signal shifter_enable : std_logic;
signal counter_enable : std_logic;
signal regA           : std_logic_vector(2*N-1 downto 0);
signal regB           : std_logic_vector(2*N-1 downto 0);
signal regS           : std_logic_vector(2*N-1 downto 0);
signal A_temp         : std_logic_vector(1 downto 0);
signal B_temp         : std_logic_vector(1 downto 0);
signal cnt            : std_logic_vector(N-1 downto 0);
signal bit_Cin        : std_logic;
signal reg_Cin        : std_logic; 
signal reg_cout       : std_logic;
signal bitSum         : std_logic_vector(1 downto 0);
signal counter_reset  : std_logic;
constant zeros        : std_logic_vector(2*N-1 downto 0) := (others => '0');
----------------------------------------------------------------------------------
--signal cnt_valib      : std_logic_vector(N-1 downto 0) := (others => '0');
----------------------------------------------------------------------------------
begin
	shifter_enable <= '0' when (cnt = N or Load = '1') else '1';
	counter_enable <= shifter_enable;
	--MUX_Cin--
	bit_Cin <= Cin when Load = '1' else reg_cout;
	--counter reet--
	counter_reset <= reset or Load;
	--register Cin--
	process(clk,Cin)
	begin
		if(clk = '1' and clk'event) then
			reg_Cin <= bit_Cin;
		end if;
	end process;
	-------------------------------------
	----Vật đen tuyệt đối--
	----Được sử dụng để tính ra giá trị xác định result_valib--
	--vat_den_tuyet_doi : process(clk,Load,cnt)
	--begin
	--	if(Load = '1') then
	--		cnt_valib <= (others => '0');
	--	elsif(clk = '1' and clk'event) then
	--		if(cnt = N) then--Bắt đầu đếm khi cnt = N khi đó ta sẽ bắt cái sự kiện cnt_valib = 0
	--			cnt_valib <= cnt_valib + 1;
	--		end if;
	--	end if;
	--end process vat_den_tuyet_doi;	
	----------------------------------------------------------

	-------------------------------------
	shifter_A : component shifter	
				generic map(N)
				port map(cnt => cnt,bitin => "00",clk => clk,reset => reset, enable => shifter_enable, Load => Load, Din => A, Dout =>regA);
	A_temp  <= regA(1 downto 0);
	shifter_B : component shifter	
				generic map(N)
				port map(cnt => cnt,bitin => "00",clk => clk,reset => reset, enable => shifter_enable, Load => Load, Din => B, Dout =>regB);
	B_temp  <= regB(1 downto 0);			
	
	counter_1 : component counter
				generic map(N)
				port map(clk => clk, reset => counter_reset, enable => counter_enable, cnt => cnt );
	
	add_2bit  : component adder_2
				generic map(N => 2)
				port map(A => A_temp, B => B_temp, Cin => reg_Cin, Cout => reg_cout, Sum => bitSum);
	
	shifter_S : component shifter
				generic map(N)
				port map(cnt => cnt,bitin => bitSum,clk => clk,reset => reset, enable => shifter_enable, Load => Load, Din => zeros, Dout =>Sum);			
	--result_valib <= '1' when (cnt_valib = 0 and cnt = N) else '0';
	result_valib <= not shifter_enable;
	Cout         <= reg_cout;
end structure;	

--Kiến trúc kiểm tra--
architecture Behavioral of serial_addder is
signal A1_temp : std_logic_vector(2*N downto 0);
signal B1_temp : std_logic_vector(2*N downto 0);
signal S1_temp : std_logic_vector(2*N downto 0);
begin
	A1_temp  <= '0'&A;
	B1_temp  <= '0'&B;
	S1_temp  <= A1_temp + B1_temp + Cin;
	Sum      <= S1_temp(2*N-1 downto 0);
	Cout     <= S1_temp(2*N-1);
	result_valib <= '1';
end Behavioral;	