--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: multiplier_2bit_synthesis.vhd
-- /___/   /\     Timestamp: Sat May 15 20:03:59 2021
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm multiplier_2bit -w -dir netgen/synthesis -ofmt vhdl -sim multiplier_2bit.ngc multiplier_2bit_synthesis.vhd 
-- Device	: xc4vsx35-10-ff668
-- Input file	: multiplier_2bit.ngc
-- Output file	: D:\Document FPGA\ThayThuy\FPGA\Virtex_4_ML402\project_ISE_multiplier\netgen\synthesis\multiplier_2bit_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: multiplier_2bit
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

entity multiplier_2bit is
  port (
    mul : out STD_LOGIC_VECTOR ( 3 downto 0 ); 
    A : in STD_LOGIC_VECTOR ( 1 downto 0 ); 
    B : in STD_LOGIC_VECTOR ( 1 downto 0 ) 
  );
end multiplier_2bit;

architecture Structure of multiplier_2bit is
  signal A_0_IBUF_2 : STD_LOGIC; 
  signal A_1_IBUF_3 : STD_LOGIC; 
  signal B_0_IBUF_6 : STD_LOGIC; 
  signal B_1_IBUF_7 : STD_LOGIC; 
  signal Mmult_mul_A_0_x_B_0_Q : STD_LOGIC; 
  signal mul_1_OBUF_14 : STD_LOGIC; 
  signal mul_2_OBUF_15 : STD_LOGIC; 
  signal Mmult_mul_Madd_cy : STD_LOGIC_VECTOR ( 2 downto 2 ); 
begin
  Mmult_mul_A_0_x_B_0_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => A_0_IBUF_2,
      I1 => B_0_IBUF_6,
      O => Mmult_mul_A_0_x_B_0_Q
    );
  Mmult_mul_Madd_lut_1_1 : LUT4
    generic map(
      INIT => X"6AC0"
    )
    port map (
      I0 => B_1_IBUF_7,
      I1 => B_0_IBUF_6,
      I2 => A_1_IBUF_3,
      I3 => A_0_IBUF_2,
      O => mul_1_OBUF_14
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
      O => B_1_IBUF_7
    );
  B_0_IBUF : IBUF
    port map (
      I => B(0),
      O => B_0_IBUF_6
    );
  mul_3_OBUF : OBUF
    port map (
      I => Mmult_mul_Madd_cy(2),
      O => mul(3)
    );
  mul_2_OBUF : OBUF
    port map (
      I => mul_2_OBUF_15,
      O => mul(2)
    );
  mul_1_OBUF : OBUF
    port map (
      I => mul_1_OBUF_14,
      O => mul(1)
    );
  mul_0_OBUF : OBUF
    port map (
      I => Mmult_mul_A_0_x_B_0_Q,
      O => mul(0)
    );
  Mmult_mul_Madd_cy_2_11 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => A_1_IBUF_3,
      I1 => B_1_IBUF_7,
      I2 => B_0_IBUF_6,
      I3 => A_0_IBUF_2,
      O => Mmult_mul_Madd_cy(2)
    );
  Mmult_mul_Madd_xor_2_11 : LUT4
    generic map(
      INIT => X"0888"
    )
    port map (
      I0 => A_1_IBUF_3,
      I1 => B_1_IBUF_7,
      I2 => B_0_IBUF_6,
      I3 => A_0_IBUF_2,
      O => mul_2_OBUF_15
    );

end Structure;

