--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: adderN_synthesis.vhd
-- /___/   /\     Timestamp: Tue Apr 27 10:20:49 2021
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm adderN -w -dir netgen/synthesis -ofmt vhdl -sim adderN.ngc adderN_synthesis.vhd 
-- Device	: xc4vsx35-10-ff668
-- Input file	: adderN.ngc
-- Output file	: D:\Document FPGA\ThayThuy\FPGA\Virtex_4_ML402\project_ISE_adderN\netgen\synthesis\adderN_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: adderN
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

entity adderN is
  port (
    Cout : out STD_LOGIC; 
    Cin : in STD_LOGIC := 'X'; 
    Sum : out STD_LOGIC_VECTOR ( 3 downto 0 ); 
    A : in STD_LOGIC_VECTOR ( 3 downto 0 ); 
    B : in STD_LOGIC_VECTOR ( 3 downto 0 ) 
  );
end adderN;

architecture Structure of adderN is
  signal A_0_IBUF_4 : STD_LOGIC; 
  signal A_1_IBUF_5 : STD_LOGIC; 
  signal A_2_IBUF_6 : STD_LOGIC; 
  signal A_3_IBUF_7 : STD_LOGIC; 
  signal B_0_IBUF_12 : STD_LOGIC; 
  signal B_1_IBUF_13 : STD_LOGIC; 
  signal B_2_IBUF_14 : STD_LOGIC; 
  signal B_3_IBUF_15 : STD_LOGIC; 
  signal Cin_IBUF_17 : STD_LOGIC; 
  signal Sum_0_OBUF_31 : STD_LOGIC; 
  signal Sum_1_OBUF_32 : STD_LOGIC; 
  signal Sum_2_OBUF_33 : STD_LOGIC; 
  signal Sum_3_OBUF_34 : STD_LOGIC; 
  signal Madd_S_temp_cy : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal Madd_S_temp_lut : STD_LOGIC_VECTOR ( 3 downto 0 ); 
begin
  Madd_S_temp_lut_0_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => A_0_IBUF_4,
      I1 => B_0_IBUF_12,
      O => Madd_S_temp_lut(0)
    );
  Madd_S_temp_cy_0_Q : MUXCY
    port map (
      CI => Cin_IBUF_17,
      DI => A_0_IBUF_4,
      S => Madd_S_temp_lut(0),
      O => Madd_S_temp_cy(0)
    );
  Madd_S_temp_xor_0_Q : XORCY
    port map (
      CI => Cin_IBUF_17,
      LI => Madd_S_temp_lut(0),
      O => Sum_0_OBUF_31
    );
  Madd_S_temp_lut_1_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => A_1_IBUF_5,
      I1 => B_1_IBUF_13,
      O => Madd_S_temp_lut(1)
    );
  Madd_S_temp_cy_1_Q : MUXCY
    port map (
      CI => Madd_S_temp_cy(0),
      DI => A_1_IBUF_5,
      S => Madd_S_temp_lut(1),
      O => Madd_S_temp_cy(1)
    );
  Madd_S_temp_xor_1_Q : XORCY
    port map (
      CI => Madd_S_temp_cy(0),
      LI => Madd_S_temp_lut(1),
      O => Sum_1_OBUF_32
    );
  Madd_S_temp_lut_2_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => A_2_IBUF_6,
      I1 => B_2_IBUF_14,
      O => Madd_S_temp_lut(2)
    );
  Madd_S_temp_cy_2_Q : MUXCY
    port map (
      CI => Madd_S_temp_cy(1),
      DI => A_2_IBUF_6,
      S => Madd_S_temp_lut(2),
      O => Madd_S_temp_cy(2)
    );
  Madd_S_temp_xor_2_Q : XORCY
    port map (
      CI => Madd_S_temp_cy(1),
      LI => Madd_S_temp_lut(2),
      O => Sum_2_OBUF_33
    );
  Madd_S_temp_lut_3_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => A_3_IBUF_7,
      I1 => B_3_IBUF_15,
      O => Madd_S_temp_lut(3)
    );
  Madd_S_temp_cy_3_Q : MUXCY
    port map (
      CI => Madd_S_temp_cy(2),
      DI => A_3_IBUF_7,
      S => Madd_S_temp_lut(3),
      O => Madd_S_temp_cy(3)
    );
  Madd_S_temp_xor_3_Q : XORCY
    port map (
      CI => Madd_S_temp_cy(2),
      LI => Madd_S_temp_lut(3),
      O => Sum_3_OBUF_34
    );
  Cin_IBUF : IBUF
    port map (
      I => Cin,
      O => Cin_IBUF_17
    );
  A_3_IBUF : IBUF
    port map (
      I => A(3),
      O => A_3_IBUF_7
    );
  A_2_IBUF : IBUF
    port map (
      I => A(2),
      O => A_2_IBUF_6
    );
  A_1_IBUF : IBUF
    port map (
      I => A(1),
      O => A_1_IBUF_5
    );
  A_0_IBUF : IBUF
    port map (
      I => A(0),
      O => A_0_IBUF_4
    );
  B_3_IBUF : IBUF
    port map (
      I => B(3),
      O => B_3_IBUF_15
    );
  B_2_IBUF : IBUF
    port map (
      I => B(2),
      O => B_2_IBUF_14
    );
  B_1_IBUF : IBUF
    port map (
      I => B(1),
      O => B_1_IBUF_13
    );
  B_0_IBUF : IBUF
    port map (
      I => B(0),
      O => B_0_IBUF_12
    );
  Cout_OBUF : OBUF
    port map (
      I => Madd_S_temp_cy(3),
      O => Cout
    );
  Sum_3_OBUF : OBUF
    port map (
      I => Sum_3_OBUF_34,
      O => Sum(3)
    );
  Sum_2_OBUF : OBUF
    port map (
      I => Sum_2_OBUF_33,
      O => Sum(2)
    );
  Sum_1_OBUF : OBUF
    port map (
      I => Sum_1_OBUF_32,
      O => Sum(1)
    );
  Sum_0_OBUF : OBUF
    port map (
      I => Sum_0_OBUF_31,
      O => Sum(0)
    );

end Structure;

