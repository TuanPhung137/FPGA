--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: add_mul_2bit_synthesis.vhd
-- /___/   /\     Timestamp: Fri Apr 23 14:16:40 2021
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm add_mul_2bit -w -dir netgen/synthesis -ofmt vhdl -sim add_mul_2bit.ngc add_mul_2bit_synthesis.vhd 
-- Device	: xc4vsx35-10-ff668
-- Input file	: add_mul_2bit.ngc
-- Output file	: D:\Document FPGA\ThayThuy\FPGA\Virtex_4_ML402\project_ISE_multiplier_adder\netgen\synthesis\add_mul_2bit_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: add_mul_2bit
-- Xilinx	: D:\Xilinx\Xilinx\14.7\ISE_DS\ISE\
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
use UNISIM.VPKG.ALL;

entity add_mul_2bit is
  port (
    mem_flag : out STD_LOGIC; 
    result : out STD_LOGIC_VECTOR ( 3 downto 0 ); 
    A : in STD_LOGIC_VECTOR ( 1 downto 0 ); 
    B : in STD_LOGIC_VECTOR ( 1 downto 0 ); 
    C : in STD_LOGIC_VECTOR ( 3 downto 0 ) 
  );
end add_mul_2bit;

architecture Structure of add_mul_2bit is
  signal A_0_IBUF_2 : STD_LOGIC; 
  signal A_1_IBUF_3 : STD_LOGIC; 
  signal B_0_IBUF_6 : STD_LOGIC; 
  signal C_0_IBUF_11 : STD_LOGIC; 
  signal C_1_IBUF_12 : STD_LOGIC; 
  signal C_2_IBUF_13 : STD_LOGIC; 
  signal C_3_IBUF_14 : STD_LOGIC; 
  signal Maddsub_temp_mult0000_1 : STD_LOGIC; 
  signal Maddsub_temp_mult0000_2 : STD_LOGIC; 
  signal Maddsub_temp_mult0000_A_0_x_B_1_mand_17 : STD_LOGIC; 
  signal Maddsub_temp_mult0000_A_0_x_B_1_mand1 : STD_LOGIC; 
  signal Maddsub_temp_mult0000_A_1_x_B_1_Q : STD_LOGIC; 
  signal Maddsub_temp_mult0000_Madd_xor_1_11 : STD_LOGIC; 
  signal Maddsub_temp_mult0000_Madd_xor_1_111_25 : STD_LOGIC; 
  signal Maddsub_temp_mult0000_Madd_xor_3_11 : STD_LOGIC; 
  signal Maddsub_temp_mult0000_Madd_xor_3_111_27 : STD_LOGIC; 
  signal N0 : STD_LOGIC; 
  signal result_0_OBUF_34 : STD_LOGIC; 
  signal result_1_OBUF_35 : STD_LOGIC; 
  signal result_2_OBUF_36 : STD_LOGIC; 
  signal result_3_OBUF_37 : STD_LOGIC; 
  signal Maddsub_temp_mult0000_Madd1_cy : STD_LOGIC_VECTOR ( 2 downto 1 ); 
  signal Maddsub_temp_mult0000_Madd1_lut : STD_LOGIC_VECTOR ( 1 downto 1 ); 
  signal Maddsub_temp_mult0000_Madd_cy : STD_LOGIC_VECTOR ( 1 downto 1 ); 
begin
  XST_GND : GND
    port map (
      G => N0
    );
  Maddsub_temp_mult0000_A_0_x_B_1_mand : MULT_AND
    port map (
      I0 => A_0_IBUF_2,
      I1 => Maddsub_temp_mult0000_A_0_x_B_1_mand_17,
      LO => Maddsub_temp_mult0000_A_0_x_B_1_mand1
    );
  Maddsub_temp_mult0000_Madd1_lut_1_Q : LUT4
    generic map(
      INIT => X"6AC0"
    )
    port map (
      I0 => B_0_IBUF_6,
      I1 => Maddsub_temp_mult0000_A_0_x_B_1_mand_17,
      I2 => A_0_IBUF_2,
      I3 => A_1_IBUF_3,
      O => Maddsub_temp_mult0000_Madd1_lut(1)
    );
  Maddsub_temp_mult0000_Madd1_cy_1_Q : MUXCY
    port map (
      CI => N0,
      DI => Maddsub_temp_mult0000_A_0_x_B_1_mand1,
      S => Maddsub_temp_mult0000_Madd1_lut(1),
      O => Maddsub_temp_mult0000_Madd1_cy(1)
    );
  Maddsub_temp_mult0000_Madd1_xor_1_Q : XORCY
    port map (
      CI => N0,
      LI => Maddsub_temp_mult0000_Madd1_lut(1),
      O => Maddsub_temp_mult0000_1
    );
  Maddsub_temp_mult0000_Madd1_cy_2_Q : MUXCY
    port map (
      CI => Maddsub_temp_mult0000_Madd1_cy(1),
      DI => N0,
      S => Maddsub_temp_mult0000_A_1_x_B_1_Q,
      O => Maddsub_temp_mult0000_Madd1_cy(2)
    );
  Maddsub_temp_mult0000_Madd1_xor_2_Q : XORCY
    port map (
      CI => Maddsub_temp_mult0000_Madd1_cy(1),
      LI => Maddsub_temp_mult0000_A_1_x_B_1_Q,
      O => Maddsub_temp_mult0000_2
    );
  Maddsub_temp_mult0000_Madd_lut_0_1 : LUT3
    generic map(
      INIT => X"6A"
    )
    port map (
      I0 => C_0_IBUF_11,
      I1 => A_0_IBUF_2,
      I2 => B_0_IBUF_6,
      O => result_0_OBUF_34
    );
  Maddsub_temp_mult0000_A_1_x_B_1_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => A_1_IBUF_3,
      I1 => Maddsub_temp_mult0000_A_0_x_B_1_mand_17,
      O => Maddsub_temp_mult0000_A_1_x_B_1_Q
    );
  A_1_IBUF : IBUF
    port map (
      I => A(1),
      O => A_1_IBUF_3
    );
  A_0_IBUF : IBUF
    port map (
      I => A(0),
      O => A_0_IBUF_2
    );
  B_1_IBUF : IBUF
    port map (
      I => B(1),
      O => Maddsub_temp_mult0000_A_0_x_B_1_mand_17
    );
  B_0_IBUF : IBUF
    port map (
      I => B(0),
      O => B_0_IBUF_6
    );
  C_3_IBUF : IBUF
    port map (
      I => C(3),
      O => C_3_IBUF_14
    );
  C_2_IBUF : IBUF
    port map (
      I => C(2),
      O => C_2_IBUF_13
    );
  C_1_IBUF : IBUF
    port map (
      I => C(1),
      O => C_1_IBUF_12
    );
  C_0_IBUF : IBUF
    port map (
      I => C(0),
      O => C_0_IBUF_11
    );
  mem_flag_OBUF : OBUF
    port map (
      I => result_3_OBUF_37,
      O => mem_flag
    );
  result_3_OBUF : OBUF
    port map (
      I => result_3_OBUF_37,
      O => result(3)
    );
  result_2_OBUF : OBUF
    port map (
      I => result_2_OBUF_36,
      O => result(2)
    );
  result_1_OBUF : OBUF
    port map (
      I => result_1_OBUF_35,
      O => result(1)
    );
  result_0_OBUF : OBUF
    port map (
      I => result_0_OBUF_34,
      O => result(0)
    );
  Maddsub_temp_mult0000_Madd_cy_1_11 : LUT4
    generic map(
      INIT => X"BA20"
    )
    port map (
      I0 => C_1_IBUF_12,
      I1 => result_0_OBUF_34,
      I2 => C_0_IBUF_11,
      I3 => Maddsub_temp_mult0000_1,
      O => Maddsub_temp_mult0000_Madd_cy(1)
    );
  Maddsub_temp_mult0000_Madd_xor_2_11 : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => C_2_IBUF_13,
      I1 => Maddsub_temp_mult0000_2,
      I2 => Maddsub_temp_mult0000_Madd_cy(1),
      O => result_2_OBUF_36
    );
  Maddsub_temp_mult0000_Madd_xor_3_111 : LUT4
    generic map(
      INIT => X"9996"
    )
    port map (
      I0 => C_3_IBUF_14,
      I1 => Maddsub_temp_mult0000_Madd1_cy(2),
      I2 => C_2_IBUF_13,
      I3 => Maddsub_temp_mult0000_2,
      O => Maddsub_temp_mult0000_Madd_xor_3_11
    );
  Maddsub_temp_mult0000_Madd_xor_3_112 : LUT4
    generic map(
      INIT => X"9666"
    )
    port map (
      I0 => C_3_IBUF_14,
      I1 => Maddsub_temp_mult0000_Madd1_cy(2),
      I2 => C_2_IBUF_13,
      I3 => Maddsub_temp_mult0000_2,
      O => Maddsub_temp_mult0000_Madd_xor_3_111_27
    );
  Maddsub_temp_mult0000_Madd_xor_3_11_f5 : MUXF5
    port map (
      I0 => Maddsub_temp_mult0000_Madd_xor_3_111_27,
      I1 => Maddsub_temp_mult0000_Madd_xor_3_11,
      S => Maddsub_temp_mult0000_Madd_cy(1),
      O => result_3_OBUF_37
    );
  Maddsub_temp_mult0000_Madd_xor_1_111 : LUT4
    generic map(
      INIT => X"9555"
    )
    port map (
      I0 => C_1_IBUF_12,
      I1 => C_0_IBUF_11,
      I2 => A_0_IBUF_2,
      I3 => B_0_IBUF_6,
      O => Maddsub_temp_mult0000_Madd_xor_1_11
    );
  Maddsub_temp_mult0000_Madd_xor_1_112 : LUT4
    generic map(
      INIT => X"6AAA"
    )
    port map (
      I0 => C_1_IBUF_12,
      I1 => C_0_IBUF_11,
      I2 => A_0_IBUF_2,
      I3 => B_0_IBUF_6,
      O => Maddsub_temp_mult0000_Madd_xor_1_111_25
    );
  Maddsub_temp_mult0000_Madd_xor_1_11_f5 : MUXF5
    port map (
      I0 => Maddsub_temp_mult0000_Madd_xor_1_111_25,
      I1 => Maddsub_temp_mult0000_Madd_xor_1_11,
      S => Maddsub_temp_mult0000_1,
      O => result_1_OBUF_35
    );

end Structure;

