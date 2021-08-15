--Trường thuộc tính gói chưa các thành phần component nếu như chúng quá dài khi khai báo--
--Khai báo thư viện--
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
--Khai báo trường thuộc tính gói có tên là ess_comp có chưa các component--
package ess_comp is
	component full_adder is
	port(
			A   : in  std_logic;
			B   : in  std_logic;
			Cin : in  std_logic;
			Sum : out std_logic;
			Cout: out std_logic
		);
	end component;
	
	component adder_2 is
	port(
			A    : in  std_logic_vector(1 downto 0);
			B    : in  std_logic_vector(1 downto 0);
			Cin  : in  std_logic;
			Cout : out std_logic;
			Sum  : out std_logic_vector(1 downto 0)
		);
	end component;
	
	component counter is
	generic(N : natural := 4);
	port(
			clk    : in  std_logic;
			reset  : in  std_logic;
			enable : in  std_logic;
			cnt    : out std_logic_vector(N-1 downto 0)
		);
	end component;
	
	component shifter is
    generic(N : natural := 4);
    port(
    		bitin  : in  std_logic_vector(1 downto 0);
    		clk    : in  std_logic;
    		reset  : in  std_logic;
    		enable : in  std_logic;
    		Load   : in  std_logic;
    		Din    : in  std_logic_vector(2*N-1 downto 0);
    		Dout   : out std_logic_vector(2*N-1 downto 0)
    	);
    end component;
end package;	