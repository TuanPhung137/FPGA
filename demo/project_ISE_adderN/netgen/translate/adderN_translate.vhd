--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: adderN_translate.vhd
-- /___/   /\     Timestamp: Fri Apr 23 10:09:40 2021
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -rpw 100 -tpw 0 -ar Structure -tm adderN -w -dir netgen/translate -ofmt vhdl -sim adderN.ngd adderN_translate.vhd 
-- Device	: 4vsx35ff668-10
-- Input file	: adderN.ngd
-- Output file	: D:\Document FPGA\ThayThuy\FPGA\Virtex_4_ML402\project_ISE_adderN\netgen\translate\adderN_translate.vhd
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
library SIMPRIM;
use SIMPRIM.VCOMPONENTS.ALL;
use SIMPRIM.VPACKAGE.ALL;

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
  Madd_S_temp_lut_0_Q : X_LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      ADR0 => A_0_IBUF_4,
      ADR1 => B_0_IBUF_12,
      O => Madd_S_temp_lut(0)
    );
  Madd_S_temp_cy_0_Q : X_MUX2
    port map (
      IB => Cin_IBUF_17,
      IA => A_0_IBUF_4,
      SEL => Madd_S_temp_lut(0),
      O => Madd_S_temp_cy(0)
    );
  Madd_S_temp_xor_0_Q : X_XOR2
    port map (
      I0 => Cin_IBUF_17,
      I1 => Madd_S_temp_lut(0),
      O => Sum_0_OBUF_31
    );
  Madd_S_temp_lut_1_Q : X_LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      ADR0 => A_1_IBUF_5,
      ADR1 => B_1_IBUF_13,
      O => Madd_S_temp_lut(1)
    );
  Madd_S_temp_cy_1_Q : X_MUX2
    port map (
      IB => Madd_S_temp_cy(0),
      IA => A_1_IBUF_5,
      SEL => Madd_S_temp_lut(1),
      O => Madd_S_temp_cy(1)
    );
  Madd_S_temp_xor_1_Q : X_XOR2
    port map (
      I0 => Madd_S_temp_cy(0),
      I1 => Madd_S_temp_lut(1),
      O => Sum_1_OBUF_32
    );
  Madd_S_temp_lut_2_Q : X_LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      ADR0 => A_2_IBUF_6,
      ADR1 => B_2_IBUF_14,
      O => Madd_S_temp_lut(2)
    );
  Madd_S_temp_cy_2_Q : X_MUX2
    port map (
      IB => Madd_S_temp_cy(1),
      IA => A_2_IBUF_6,
      SEL => Madd_S_temp_lut(2),
      O => Madd_S_temp_cy(2)
    );
  Madd_S_temp_xor_2_Q : X_XOR2
    port map (
      I0 => Madd_S_temp_cy(1),
      I1 => Madd_S_temp_lut(2),
      O => Sum_2_OBUF_33
    );
  Madd_S_temp_lut_3_Q : X_LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      ADR0 => A_3_IBUF_7,
      ADR1 => B_3_IBUF_15,
      O => Madd_S_temp_lut(3)
    );
  Madd_S_temp_cy_3_Q : X_MUX2
    port map (
      IB => Madd_S_temp_cy(2),
      IA => A_3_IBUF_7,
      SEL => Madd_S_temp_lut(3),
      O => Madd_S_temp_cy(3)
    );
  Madd_S_temp_xor_3_Q : X_XOR2
    port map (
      I0 => Madd_S_temp_cy(2),
      I1 => Madd_S_temp_lut(3),
      O => Sum_3_OBUF_34
    );
  Cin_IBUF : X_BUF
    port map (
      I => Cin,
      O => Cin_IBUF_17
    );
  A_3_IBUF : X_BUF
    port map (
      I => A(3),
      O => A_3_IBUF_7
    );
  A_2_IBUF : X_BUF
    port map (
      I => A(2),
      O => A_2_IBUF_6
    );
  A_1_IBUF : X_BUF
    port map (
      I => A(1),
      O => A_1_IBUF_5
    );
  A_0_IBUF : X_BUF
    port map (
      I => A(0),
      O => A_0_IBUF_4
    );
  B_3_IBUF : X_BUF
    port map (
      I => B(3),
      O => B_3_IBUF_15
    );
  B_2_IBUF : X_BUF
    port map (
      I => B(2),
      O => B_2_IBUF_14
    );
  B_1_IBUF : X_BUF
    port map (
      I => B(1),
      O => B_1_IBUF_13
    );
  B_0_IBUF : X_BUF
    port map (
      I => B(0),
      O => B_0_IBUF_12
    );
  Cout_OBUF : X_OBUF
    port map (
      I => Madd_S_temp_cy(3),
      O => Cout
    );
  Sum_0_OBUF : X_OBUF
    port map (
      I => Sum_0_OBUF_31,
      O => Sum(0)
    );
  Sum_1_OBUF : X_OBUF
    port map (
      I => Sum_1_OBUF_32,
      O => Sum(1)
    );
  Sum_2_OBUF : X_OBUF
    port map (
      I => Sum_2_OBUF_33,
      O => Sum(2)
    );
  Sum_3_OBUF : X_OBUF
    port map (
      I => Sum_3_OBUF_34,
      O => Sum(3)
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

