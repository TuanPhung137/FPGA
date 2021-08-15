--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: subtractionN_synthesis.vhd
-- /___/   /\     Timestamp: Fri Apr 23 12:38:18 2021
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm subtractionN -w -dir netgen/synthesis -ofmt vhdl -sim subtractionN.ngc subtractionN_synthesis.vhd 
-- Device	: xc4vsx35-10-ff668
-- Input file	: subtractionN.ngc
-- Output file	: D:\Document FPGA\ThayThuy\FPGA\Virtex_4_ML402\project_ISE_subtractionN\netgen\synthesis\subtractionN_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: subtractionN
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

entity subtractionN is
  port (
    Cout : out STD_LOGIC; 
    Sub : out STD_LOGIC_VECTOR ( 3 downto 0 ); 
    A : in STD_LOGIC_VECTOR ( 3 downto 0 ); 
    B : in STD_LOGIC_VECTOR ( 3 downto 0 ) 
  );
end subtractionN;

architecture Structure of subtractionN is
  signal A_0_IBUF_4 : STD_LOGIC; 
  signal A_1_IBUF_5 : STD_LOGIC; 
  signal A_2_IBUF_6 : STD_LOGIC; 
  signal A_3_IBUF_7 : STD_LOGIC; 
  signal B_0_IBUF_12 : STD_LOGIC; 
  signal B_1_IBUF_13 : STD_LOGIC; 
  signal B_2_IBUF_14 : STD_LOGIC; 
  signal B_3_IBUF_15 : STD_LOGIC; 
  signal N0 : STD_LOGIC; 
  signal N2 : STD_LOGIC; 
  signal Sub_0_OBUF_25 : STD_LOGIC; 
  signal Sub_1_OBUF_26 : STD_LOGIC; 
  signal Sub_2_OBUF_27 : STD_LOGIC; 
  signal Sub_3_OBUF_28 : STD_LOGIC; 
  signal Madd_S_temp_cy : STD_LOGIC_VECTOR ( 3 downto 2 ); 
begin
  Madd_S_temp_xor_0_11 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => A_0_IBUF_4,
      I1 => B_0_IBUF_12,
      O => Sub_0_OBUF_25
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
  Sub_3_OBUF : OBUF
    port map (
      I => Sub_3_OBUF_28,
      O => Sub(3)
    );
  Sub_2_OBUF : OBUF
    port map (
      I => Sub_2_OBUF_27,
      O => Sub(2)
    );
  Sub_1_OBUF : OBUF
    port map (
      I => Sub_1_OBUF_26,
      O => Sub(1)
    );
  Sub_0_OBUF : OBUF
    port map (
      I => Sub_0_OBUF_25,
      O => Sub(0)
    );
  Madd_S_temp_cy_3_11 : LUT3
    generic map(
      INIT => X"D4"
    )
    port map (
      I0 => B_3_IBUF_15,
      I1 => A_3_IBUF_7,
      I2 => Madd_S_temp_cy(2),
      O => Madd_S_temp_cy(3)
    );
  Madd_S_temp_cy_2_1_SW0 : LUT4
    generic map(
      INIT => X"8AEF"
    )
    port map (
      I0 => A_1_IBUF_5,
      I1 => A_0_IBUF_4,
      I2 => B_0_IBUF_12,
      I3 => B_1_IBUF_13,
      O => N0
    );
  Madd_S_temp_cy_2_1 : LUT3
    generic map(
      INIT => X"D4"
    )
    port map (
      I0 => B_2_IBUF_14,
      I1 => A_2_IBUF_6,
      I2 => N0,
      O => Madd_S_temp_cy(2)
    );
  Madd_S_temp_xor_1_11 : LUT4
    generic map(
      INIT => X"6966"
    )
    port map (
      I0 => A_1_IBUF_5,
      I1 => B_1_IBUF_13,
      I2 => A_0_IBUF_4,
      I3 => B_0_IBUF_12,
      O => Sub_1_OBUF_26
    );
  Madd_S_temp_xor_3_11 : LUT3
    generic map(
      INIT => X"69"
    )
    port map (
      I0 => A_3_IBUF_7,
      I1 => B_3_IBUF_15,
      I2 => Madd_S_temp_cy(2),
      O => Sub_3_OBUF_28
    );
  Madd_S_temp_xor_2_11_SW0 : LUT4
    generic map(
      INIT => X"7310"
    )
    port map (
      I0 => A_0_IBUF_4,
      I1 => A_1_IBUF_5,
      I2 => B_0_IBUF_12,
      I3 => B_1_IBUF_13,
      O => N2
    );
  Madd_S_temp_xor_2_11 : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => A_2_IBUF_6,
      I1 => B_2_IBUF_14,
      I2 => N2,
      O => Sub_2_OBUF_27
    );

end Structure;

