--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: div_100Mhz_synthesis.vhd
-- /___/   /\     Timestamp: Tue Apr 27 09:48:06 2021
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm div_100Mhz -w -dir netgen/synthesis -ofmt vhdl -sim div_100Mhz.ngc div_100Mhz_synthesis.vhd 
-- Device	: xc4vsx35-10-ff668
-- Input file	: div_100Mhz.ngc
-- Output file	: D:\Document FPGA\ThayThuy\FPGA\Virtex_4_ML402\project_ISE_division50Mhz\netgen\synthesis\div_100Mhz_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: div_100Mhz
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

entity div_100Mhz is
  port (
    clk_out : inout STD_LOGIC; 
    clk_in : in STD_LOGIC := 'X' 
  );
end div_100Mhz;

architecture Structure of div_100Mhz is
  signal Mcount_cnt_cy_10_rt_2 : STD_LOGIC; 
  signal Mcount_cnt_cy_11_rt_4 : STD_LOGIC; 
  signal Mcount_cnt_cy_12_rt_6 : STD_LOGIC; 
  signal Mcount_cnt_cy_13_rt_8 : STD_LOGIC; 
  signal Mcount_cnt_cy_14_rt_10 : STD_LOGIC; 
  signal Mcount_cnt_cy_15_rt_12 : STD_LOGIC; 
  signal Mcount_cnt_cy_16_rt_14 : STD_LOGIC; 
  signal Mcount_cnt_cy_17_rt_16 : STD_LOGIC; 
  signal Mcount_cnt_cy_18_rt_18 : STD_LOGIC; 
  signal Mcount_cnt_cy_19_rt_20 : STD_LOGIC; 
  signal Mcount_cnt_cy_1_rt_22 : STD_LOGIC; 
  signal Mcount_cnt_cy_20_rt_24 : STD_LOGIC; 
  signal Mcount_cnt_cy_21_rt_26 : STD_LOGIC; 
  signal Mcount_cnt_cy_22_rt_28 : STD_LOGIC; 
  signal Mcount_cnt_cy_23_rt_30 : STD_LOGIC; 
  signal Mcount_cnt_cy_24_rt_32 : STD_LOGIC; 
  signal Mcount_cnt_cy_25_rt_34 : STD_LOGIC; 
  signal Mcount_cnt_cy_26_rt_36 : STD_LOGIC; 
  signal Mcount_cnt_cy_27_rt_38 : STD_LOGIC; 
  signal Mcount_cnt_cy_28_rt_40 : STD_LOGIC; 
  signal Mcount_cnt_cy_29_rt_42 : STD_LOGIC; 
  signal Mcount_cnt_cy_2_rt_44 : STD_LOGIC; 
  signal Mcount_cnt_cy_30_rt_46 : STD_LOGIC; 
  signal Mcount_cnt_cy_3_rt_48 : STD_LOGIC; 
  signal Mcount_cnt_cy_4_rt_50 : STD_LOGIC; 
  signal Mcount_cnt_cy_5_rt_52 : STD_LOGIC; 
  signal Mcount_cnt_cy_6_rt_54 : STD_LOGIC; 
  signal Mcount_cnt_cy_7_rt_56 : STD_LOGIC; 
  signal Mcount_cnt_cy_8_rt_58 : STD_LOGIC; 
  signal Mcount_cnt_cy_9_rt_60 : STD_LOGIC; 
  signal Mcount_cnt_xor_31_rt_62 : STD_LOGIC; 
  signal N0 : STD_LOGIC; 
  signal N1 : STD_LOGIC; 
  signal clk_in_BUFGP_98 : STD_LOGIC; 
  signal clk_out_OBUF_100 : STD_LOGIC; 
  signal clk_out_not0001 : STD_LOGIC; 
  signal cnt_0_rstpot_103 : STD_LOGIC; 
  signal cnt_10_rstpot_106 : STD_LOGIC; 
  signal cnt_11_rstpot_108 : STD_LOGIC; 
  signal cnt_12_rstpot_110 : STD_LOGIC; 
  signal cnt_13_rstpot_112 : STD_LOGIC; 
  signal cnt_14_rstpot_114 : STD_LOGIC; 
  signal cnt_15_rstpot_116 : STD_LOGIC; 
  signal cnt_16_rstpot_118 : STD_LOGIC; 
  signal cnt_17_rstpot_120 : STD_LOGIC; 
  signal cnt_18_rstpot_122 : STD_LOGIC; 
  signal cnt_19_rstpot_124 : STD_LOGIC; 
  signal cnt_1_rstpot_125 : STD_LOGIC; 
  signal cnt_20_rstpot_128 : STD_LOGIC; 
  signal cnt_21_rstpot_130 : STD_LOGIC; 
  signal cnt_22_rstpot_132 : STD_LOGIC; 
  signal cnt_23_rstpot_134 : STD_LOGIC; 
  signal cnt_24_rstpot_136 : STD_LOGIC; 
  signal cnt_25_rstpot_138 : STD_LOGIC; 
  signal cnt_2_rstpot_143 : STD_LOGIC; 
  signal cnt_3_rstpot_147 : STD_LOGIC; 
  signal cnt_4_rstpot_149 : STD_LOGIC; 
  signal cnt_5_rstpot_151 : STD_LOGIC; 
  signal cnt_6_rstpot_153 : STD_LOGIC; 
  signal cnt_7_rstpot_155 : STD_LOGIC; 
  signal cnt_8_rstpot_157 : STD_LOGIC; 
  signal cnt_9_rstpot_159 : STD_LOGIC; 
  signal cnt_cmp_eq0000 : STD_LOGIC; 
  signal Mcount_cnt_cy : STD_LOGIC_VECTOR ( 30 downto 0 ); 
  signal Mcount_cnt_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal Result : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal cnt : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal cnt_cmp_eq0000_wg_cy : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal cnt_cmp_eq0000_wg_lut : STD_LOGIC_VECTOR ( 7 downto 0 ); 
begin
  XST_GND : GND
    port map (
      G => N0
    );
  XST_VCC : VCC
    port map (
      P => N1
    );
  clk_out_3 : FDE
    port map (
      C => clk_in_BUFGP_98,
      CE => cnt_cmp_eq0000,
      D => clk_out_not0001,
      Q => clk_out_OBUF_100
    );
  cnt_26 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_in_BUFGP_98,
      D => Result(26),
      R => cnt_cmp_eq0000,
      Q => cnt(26)
    );
  cnt_27 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_in_BUFGP_98,
      D => Result(27),
      R => cnt_cmp_eq0000,
      Q => cnt(27)
    );
  cnt_28 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_in_BUFGP_98,
      D => Result(28),
      R => cnt_cmp_eq0000,
      Q => cnt(28)
    );
  cnt_29 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_in_BUFGP_98,
      D => Result(29),
      R => cnt_cmp_eq0000,
      Q => cnt(29)
    );
  cnt_30 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_in_BUFGP_98,
      D => Result(30),
      R => cnt_cmp_eq0000,
      Q => cnt(30)
    );
  cnt_31 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_in_BUFGP_98,
      D => Result(31),
      R => cnt_cmp_eq0000,
      Q => cnt(31)
    );
  Mcount_cnt_cy_0_Q : MUXCY
    port map (
      CI => N0,
      DI => N1,
      S => Mcount_cnt_lut(0),
      O => Mcount_cnt_cy(0)
    );
  Mcount_cnt_xor_0_Q : XORCY
    port map (
      CI => N0,
      LI => Mcount_cnt_lut(0),
      O => Result(0)
    );
  Mcount_cnt_cy_1_Q : MUXCY
    port map (
      CI => Mcount_cnt_cy(0),
      DI => N0,
      S => Mcount_cnt_cy_1_rt_22,
      O => Mcount_cnt_cy(1)
    );
  Mcount_cnt_xor_1_Q : XORCY
    port map (
      CI => Mcount_cnt_cy(0),
      LI => Mcount_cnt_cy_1_rt_22,
      O => Result(1)
    );
  Mcount_cnt_cy_2_Q : MUXCY
    port map (
      CI => Mcount_cnt_cy(1),
      DI => N0,
      S => Mcount_cnt_cy_2_rt_44,
      O => Mcount_cnt_cy(2)
    );
  Mcount_cnt_xor_2_Q : XORCY
    port map (
      CI => Mcount_cnt_cy(1),
      LI => Mcount_cnt_cy_2_rt_44,
      O => Result(2)
    );
  Mcount_cnt_cy_3_Q : MUXCY
    port map (
      CI => Mcount_cnt_cy(2),
      DI => N0,
      S => Mcount_cnt_cy_3_rt_48,
      O => Mcount_cnt_cy(3)
    );
  Mcount_cnt_xor_3_Q : XORCY
    port map (
      CI => Mcount_cnt_cy(2),
      LI => Mcount_cnt_cy_3_rt_48,
      O => Result(3)
    );
  Mcount_cnt_cy_4_Q : MUXCY
    port map (
      CI => Mcount_cnt_cy(3),
      DI => N0,
      S => Mcount_cnt_cy_4_rt_50,
      O => Mcount_cnt_cy(4)
    );
  Mcount_cnt_xor_4_Q : XORCY
    port map (
      CI => Mcount_cnt_cy(3),
      LI => Mcount_cnt_cy_4_rt_50,
      O => Result(4)
    );
  Mcount_cnt_cy_5_Q : MUXCY
    port map (
      CI => Mcount_cnt_cy(4),
      DI => N0,
      S => Mcount_cnt_cy_5_rt_52,
      O => Mcount_cnt_cy(5)
    );
  Mcount_cnt_xor_5_Q : XORCY
    port map (
      CI => Mcount_cnt_cy(4),
      LI => Mcount_cnt_cy_5_rt_52,
      O => Result(5)
    );
  Mcount_cnt_cy_6_Q : MUXCY
    port map (
      CI => Mcount_cnt_cy(5),
      DI => N0,
      S => Mcount_cnt_cy_6_rt_54,
      O => Mcount_cnt_cy(6)
    );
  Mcount_cnt_xor_6_Q : XORCY
    port map (
      CI => Mcount_cnt_cy(5),
      LI => Mcount_cnt_cy_6_rt_54,
      O => Result(6)
    );
  Mcount_cnt_cy_7_Q : MUXCY
    port map (
      CI => Mcount_cnt_cy(6),
      DI => N0,
      S => Mcount_cnt_cy_7_rt_56,
      O => Mcount_cnt_cy(7)
    );
  Mcount_cnt_xor_7_Q : XORCY
    port map (
      CI => Mcount_cnt_cy(6),
      LI => Mcount_cnt_cy_7_rt_56,
      O => Result(7)
    );
  Mcount_cnt_cy_8_Q : MUXCY
    port map (
      CI => Mcount_cnt_cy(7),
      DI => N0,
      S => Mcount_cnt_cy_8_rt_58,
      O => Mcount_cnt_cy(8)
    );
  Mcount_cnt_xor_8_Q : XORCY
    port map (
      CI => Mcount_cnt_cy(7),
      LI => Mcount_cnt_cy_8_rt_58,
      O => Result(8)
    );
  Mcount_cnt_cy_9_Q : MUXCY
    port map (
      CI => Mcount_cnt_cy(8),
      DI => N0,
      S => Mcount_cnt_cy_9_rt_60,
      O => Mcount_cnt_cy(9)
    );
  Mcount_cnt_xor_9_Q : XORCY
    port map (
      CI => Mcount_cnt_cy(8),
      LI => Mcount_cnt_cy_9_rt_60,
      O => Result(9)
    );
  Mcount_cnt_cy_10_Q : MUXCY
    port map (
      CI => Mcount_cnt_cy(9),
      DI => N0,
      S => Mcount_cnt_cy_10_rt_2,
      O => Mcount_cnt_cy(10)
    );
  Mcount_cnt_xor_10_Q : XORCY
    port map (
      CI => Mcount_cnt_cy(9),
      LI => Mcount_cnt_cy_10_rt_2,
      O => Result(10)
    );
  Mcount_cnt_cy_11_Q : MUXCY
    port map (
      CI => Mcount_cnt_cy(10),
      DI => N0,
      S => Mcount_cnt_cy_11_rt_4,
      O => Mcount_cnt_cy(11)
    );
  Mcount_cnt_xor_11_Q : XORCY
    port map (
      CI => Mcount_cnt_cy(10),
      LI => Mcount_cnt_cy_11_rt_4,
      O => Result(11)
    );
  Mcount_cnt_cy_12_Q : MUXCY
    port map (
      CI => Mcount_cnt_cy(11),
      DI => N0,
      S => Mcount_cnt_cy_12_rt_6,
      O => Mcount_cnt_cy(12)
    );
  Mcount_cnt_xor_12_Q : XORCY
    port map (
      CI => Mcount_cnt_cy(11),
      LI => Mcount_cnt_cy_12_rt_6,
      O => Result(12)
    );
  Mcount_cnt_cy_13_Q : MUXCY
    port map (
      CI => Mcount_cnt_cy(12),
      DI => N0,
      S => Mcount_cnt_cy_13_rt_8,
      O => Mcount_cnt_cy(13)
    );
  Mcount_cnt_xor_13_Q : XORCY
    port map (
      CI => Mcount_cnt_cy(12),
      LI => Mcount_cnt_cy_13_rt_8,
      O => Result(13)
    );
  Mcount_cnt_cy_14_Q : MUXCY
    port map (
      CI => Mcount_cnt_cy(13),
      DI => N0,
      S => Mcount_cnt_cy_14_rt_10,
      O => Mcount_cnt_cy(14)
    );
  Mcount_cnt_xor_14_Q : XORCY
    port map (
      CI => Mcount_cnt_cy(13),
      LI => Mcount_cnt_cy_14_rt_10,
      O => Result(14)
    );
  Mcount_cnt_cy_15_Q : MUXCY
    port map (
      CI => Mcount_cnt_cy(14),
      DI => N0,
      S => Mcount_cnt_cy_15_rt_12,
      O => Mcount_cnt_cy(15)
    );
  Mcount_cnt_xor_15_Q : XORCY
    port map (
      CI => Mcount_cnt_cy(14),
      LI => Mcount_cnt_cy_15_rt_12,
      O => Result(15)
    );
  Mcount_cnt_cy_16_Q : MUXCY
    port map (
      CI => Mcount_cnt_cy(15),
      DI => N0,
      S => Mcount_cnt_cy_16_rt_14,
      O => Mcount_cnt_cy(16)
    );
  Mcount_cnt_xor_16_Q : XORCY
    port map (
      CI => Mcount_cnt_cy(15),
      LI => Mcount_cnt_cy_16_rt_14,
      O => Result(16)
    );
  Mcount_cnt_cy_17_Q : MUXCY
    port map (
      CI => Mcount_cnt_cy(16),
      DI => N0,
      S => Mcount_cnt_cy_17_rt_16,
      O => Mcount_cnt_cy(17)
    );
  Mcount_cnt_xor_17_Q : XORCY
    port map (
      CI => Mcount_cnt_cy(16),
      LI => Mcount_cnt_cy_17_rt_16,
      O => Result(17)
    );
  Mcount_cnt_cy_18_Q : MUXCY
    port map (
      CI => Mcount_cnt_cy(17),
      DI => N0,
      S => Mcount_cnt_cy_18_rt_18,
      O => Mcount_cnt_cy(18)
    );
  Mcount_cnt_xor_18_Q : XORCY
    port map (
      CI => Mcount_cnt_cy(17),
      LI => Mcount_cnt_cy_18_rt_18,
      O => Result(18)
    );
  Mcount_cnt_cy_19_Q : MUXCY
    port map (
      CI => Mcount_cnt_cy(18),
      DI => N0,
      S => Mcount_cnt_cy_19_rt_20,
      O => Mcount_cnt_cy(19)
    );
  Mcount_cnt_xor_19_Q : XORCY
    port map (
      CI => Mcount_cnt_cy(18),
      LI => Mcount_cnt_cy_19_rt_20,
      O => Result(19)
    );
  Mcount_cnt_cy_20_Q : MUXCY
    port map (
      CI => Mcount_cnt_cy(19),
      DI => N0,
      S => Mcount_cnt_cy_20_rt_24,
      O => Mcount_cnt_cy(20)
    );
  Mcount_cnt_xor_20_Q : XORCY
    port map (
      CI => Mcount_cnt_cy(19),
      LI => Mcount_cnt_cy_20_rt_24,
      O => Result(20)
    );
  Mcount_cnt_cy_21_Q : MUXCY
    port map (
      CI => Mcount_cnt_cy(20),
      DI => N0,
      S => Mcount_cnt_cy_21_rt_26,
      O => Mcount_cnt_cy(21)
    );
  Mcount_cnt_xor_21_Q : XORCY
    port map (
      CI => Mcount_cnt_cy(20),
      LI => Mcount_cnt_cy_21_rt_26,
      O => Result(21)
    );
  Mcount_cnt_cy_22_Q : MUXCY
    port map (
      CI => Mcount_cnt_cy(21),
      DI => N0,
      S => Mcount_cnt_cy_22_rt_28,
      O => Mcount_cnt_cy(22)
    );
  Mcount_cnt_xor_22_Q : XORCY
    port map (
      CI => Mcount_cnt_cy(21),
      LI => Mcount_cnt_cy_22_rt_28,
      O => Result(22)
    );
  Mcount_cnt_cy_23_Q : MUXCY
    port map (
      CI => Mcount_cnt_cy(22),
      DI => N0,
      S => Mcount_cnt_cy_23_rt_30,
      O => Mcount_cnt_cy(23)
    );
  Mcount_cnt_xor_23_Q : XORCY
    port map (
      CI => Mcount_cnt_cy(22),
      LI => Mcount_cnt_cy_23_rt_30,
      O => Result(23)
    );
  Mcount_cnt_cy_24_Q : MUXCY
    port map (
      CI => Mcount_cnt_cy(23),
      DI => N0,
      S => Mcount_cnt_cy_24_rt_32,
      O => Mcount_cnt_cy(24)
    );
  Mcount_cnt_xor_24_Q : XORCY
    port map (
      CI => Mcount_cnt_cy(23),
      LI => Mcount_cnt_cy_24_rt_32,
      O => Result(24)
    );
  Mcount_cnt_cy_25_Q : MUXCY
    port map (
      CI => Mcount_cnt_cy(24),
      DI => N0,
      S => Mcount_cnt_cy_25_rt_34,
      O => Mcount_cnt_cy(25)
    );
  Mcount_cnt_xor_25_Q : XORCY
    port map (
      CI => Mcount_cnt_cy(24),
      LI => Mcount_cnt_cy_25_rt_34,
      O => Result(25)
    );
  Mcount_cnt_cy_26_Q : MUXCY
    port map (
      CI => Mcount_cnt_cy(25),
      DI => N0,
      S => Mcount_cnt_cy_26_rt_36,
      O => Mcount_cnt_cy(26)
    );
  Mcount_cnt_xor_26_Q : XORCY
    port map (
      CI => Mcount_cnt_cy(25),
      LI => Mcount_cnt_cy_26_rt_36,
      O => Result(26)
    );
  Mcount_cnt_cy_27_Q : MUXCY
    port map (
      CI => Mcount_cnt_cy(26),
      DI => N0,
      S => Mcount_cnt_cy_27_rt_38,
      O => Mcount_cnt_cy(27)
    );
  Mcount_cnt_xor_27_Q : XORCY
    port map (
      CI => Mcount_cnt_cy(26),
      LI => Mcount_cnt_cy_27_rt_38,
      O => Result(27)
    );
  Mcount_cnt_cy_28_Q : MUXCY
    port map (
      CI => Mcount_cnt_cy(27),
      DI => N0,
      S => Mcount_cnt_cy_28_rt_40,
      O => Mcount_cnt_cy(28)
    );
  Mcount_cnt_xor_28_Q : XORCY
    port map (
      CI => Mcount_cnt_cy(27),
      LI => Mcount_cnt_cy_28_rt_40,
      O => Result(28)
    );
  Mcount_cnt_cy_29_Q : MUXCY
    port map (
      CI => Mcount_cnt_cy(28),
      DI => N0,
      S => Mcount_cnt_cy_29_rt_42,
      O => Mcount_cnt_cy(29)
    );
  Mcount_cnt_xor_29_Q : XORCY
    port map (
      CI => Mcount_cnt_cy(28),
      LI => Mcount_cnt_cy_29_rt_42,
      O => Result(29)
    );
  Mcount_cnt_cy_30_Q : MUXCY
    port map (
      CI => Mcount_cnt_cy(29),
      DI => N0,
      S => Mcount_cnt_cy_30_rt_46,
      O => Mcount_cnt_cy(30)
    );
  Mcount_cnt_xor_30_Q : XORCY
    port map (
      CI => Mcount_cnt_cy(29),
      LI => Mcount_cnt_cy_30_rt_46,
      O => Result(30)
    );
  Mcount_cnt_xor_31_Q : XORCY
    port map (
      CI => Mcount_cnt_cy(30),
      LI => Mcount_cnt_xor_31_rt_62,
      O => Result(31)
    );
  cnt_cmp_eq0000_wg_lut_0_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => cnt(8),
      I1 => cnt(9),
      I2 => cnt(7),
      I3 => cnt(10),
      O => cnt_cmp_eq0000_wg_lut(0)
    );
  cnt_cmp_eq0000_wg_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => cnt_cmp_eq0000_wg_lut(0),
      O => cnt_cmp_eq0000_wg_cy(0)
    );
  cnt_cmp_eq0000_wg_lut_1_Q : LUT4
    generic map(
      INIT => X"4000"
    )
    port map (
      I0 => cnt(11),
      I1 => cnt(12),
      I2 => cnt(6),
      I3 => cnt(13),
      O => cnt_cmp_eq0000_wg_lut(1)
    );
  cnt_cmp_eq0000_wg_cy_1_Q : MUXCY
    port map (
      CI => cnt_cmp_eq0000_wg_cy(0),
      DI => N0,
      S => cnt_cmp_eq0000_wg_lut(1),
      O => cnt_cmp_eq0000_wg_cy(1)
    );
  cnt_cmp_eq0000_wg_lut_2_Q : LUT4
    generic map(
      INIT => X"4000"
    )
    port map (
      I0 => cnt(16),
      I1 => cnt(15),
      I2 => cnt(5),
      I3 => cnt(14),
      O => cnt_cmp_eq0000_wg_lut(2)
    );
  cnt_cmp_eq0000_wg_cy_2_Q : MUXCY
    port map (
      CI => cnt_cmp_eq0000_wg_cy(1),
      DI => N0,
      S => cnt_cmp_eq0000_wg_lut(2),
      O => cnt_cmp_eq0000_wg_cy(2)
    );
  cnt_cmp_eq0000_wg_lut_3_Q : LUT4
    generic map(
      INIT => X"4000"
    )
    port map (
      I0 => cnt(18),
      I1 => cnt(17),
      I2 => cnt(4),
      I3 => cnt(19),
      O => cnt_cmp_eq0000_wg_lut(3)
    );
  cnt_cmp_eq0000_wg_cy_3_Q : MUXCY
    port map (
      CI => cnt_cmp_eq0000_wg_cy(2),
      DI => N0,
      S => cnt_cmp_eq0000_wg_lut(3),
      O => cnt_cmp_eq0000_wg_cy(3)
    );
  cnt_cmp_eq0000_wg_lut_4_Q : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => cnt(20),
      I1 => cnt(21),
      I2 => cnt(3),
      I3 => cnt(22),
      O => cnt_cmp_eq0000_wg_lut(4)
    );
  cnt_cmp_eq0000_wg_cy_4_Q : MUXCY
    port map (
      CI => cnt_cmp_eq0000_wg_cy(3),
      DI => N0,
      S => cnt_cmp_eq0000_wg_lut(4),
      O => cnt_cmp_eq0000_wg_cy(4)
    );
  cnt_cmp_eq0000_wg_lut_5_Q : LUT4
    generic map(
      INIT => X"4000"
    )
    port map (
      I0 => cnt(24),
      I1 => cnt(23),
      I2 => cnt(2),
      I3 => cnt(25),
      O => cnt_cmp_eq0000_wg_lut(5)
    );
  cnt_cmp_eq0000_wg_cy_5_Q : MUXCY
    port map (
      CI => cnt_cmp_eq0000_wg_cy(4),
      DI => N0,
      S => cnt_cmp_eq0000_wg_lut(5),
      O => cnt_cmp_eq0000_wg_cy(5)
    );
  cnt_cmp_eq0000_wg_lut_6_Q : LUT4
    generic map(
      INIT => X"0010"
    )
    port map (
      I0 => cnt(26),
      I1 => cnt(27),
      I2 => cnt(1),
      I3 => cnt(28),
      O => cnt_cmp_eq0000_wg_lut(6)
    );
  cnt_cmp_eq0000_wg_cy_6_Q : MUXCY
    port map (
      CI => cnt_cmp_eq0000_wg_cy(5),
      DI => N0,
      S => cnt_cmp_eq0000_wg_lut(6),
      O => cnt_cmp_eq0000_wg_cy(6)
    );
  cnt_cmp_eq0000_wg_lut_7_Q : LUT4
    generic map(
      INIT => X"0010"
    )
    port map (
      I0 => cnt(29),
      I1 => cnt(30),
      I2 => cnt(0),
      I3 => cnt(31),
      O => cnt_cmp_eq0000_wg_lut(7)
    );
  cnt_cmp_eq0000_wg_cy_7_Q : MUXCY
    port map (
      CI => cnt_cmp_eq0000_wg_cy(6),
      DI => N0,
      S => cnt_cmp_eq0000_wg_lut(7),
      O => cnt_cmp_eq0000
    );
  clk_out_OBUF : OBUF
    port map (
      I => clk_out_OBUF_100,
      O => clk_out
    );
  Mcount_cnt_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => cnt(1),
      O => Mcount_cnt_cy_1_rt_22
    );
  Mcount_cnt_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => cnt(2),
      O => Mcount_cnt_cy_2_rt_44
    );
  Mcount_cnt_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => cnt(3),
      O => Mcount_cnt_cy_3_rt_48
    );
  Mcount_cnt_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => cnt(4),
      O => Mcount_cnt_cy_4_rt_50
    );
  Mcount_cnt_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => cnt(5),
      O => Mcount_cnt_cy_5_rt_52
    );
  Mcount_cnt_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => cnt(6),
      O => Mcount_cnt_cy_6_rt_54
    );
  Mcount_cnt_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => cnt(7),
      O => Mcount_cnt_cy_7_rt_56
    );
  Mcount_cnt_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => cnt(8),
      O => Mcount_cnt_cy_8_rt_58
    );
  Mcount_cnt_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => cnt(9),
      O => Mcount_cnt_cy_9_rt_60
    );
  Mcount_cnt_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => cnt(10),
      O => Mcount_cnt_cy_10_rt_2
    );
  Mcount_cnt_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => cnt(11),
      O => Mcount_cnt_cy_11_rt_4
    );
  Mcount_cnt_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => cnt(12),
      O => Mcount_cnt_cy_12_rt_6
    );
  Mcount_cnt_cy_13_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => cnt(13),
      O => Mcount_cnt_cy_13_rt_8
    );
  Mcount_cnt_cy_14_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => cnt(14),
      O => Mcount_cnt_cy_14_rt_10
    );
  Mcount_cnt_cy_15_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => cnt(15),
      O => Mcount_cnt_cy_15_rt_12
    );
  Mcount_cnt_cy_16_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => cnt(16),
      O => Mcount_cnt_cy_16_rt_14
    );
  Mcount_cnt_cy_17_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => cnt(17),
      O => Mcount_cnt_cy_17_rt_16
    );
  Mcount_cnt_cy_18_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => cnt(18),
      O => Mcount_cnt_cy_18_rt_18
    );
  Mcount_cnt_cy_19_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => cnt(19),
      O => Mcount_cnt_cy_19_rt_20
    );
  Mcount_cnt_cy_20_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => cnt(20),
      O => Mcount_cnt_cy_20_rt_24
    );
  Mcount_cnt_cy_21_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => cnt(21),
      O => Mcount_cnt_cy_21_rt_26
    );
  Mcount_cnt_cy_22_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => cnt(22),
      O => Mcount_cnt_cy_22_rt_28
    );
  Mcount_cnt_cy_23_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => cnt(23),
      O => Mcount_cnt_cy_23_rt_30
    );
  Mcount_cnt_cy_24_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => cnt(24),
      O => Mcount_cnt_cy_24_rt_32
    );
  Mcount_cnt_cy_25_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => cnt(25),
      O => Mcount_cnt_cy_25_rt_34
    );
  Mcount_cnt_cy_26_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => cnt(26),
      O => Mcount_cnt_cy_26_rt_36
    );
  Mcount_cnt_cy_27_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => cnt(27),
      O => Mcount_cnt_cy_27_rt_38
    );
  Mcount_cnt_cy_28_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => cnt(28),
      O => Mcount_cnt_cy_28_rt_40
    );
  Mcount_cnt_cy_29_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => cnt(29),
      O => Mcount_cnt_cy_29_rt_42
    );
  Mcount_cnt_cy_30_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => cnt(30),
      O => Mcount_cnt_cy_30_rt_46
    );
  Mcount_cnt_xor_31_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => cnt(31),
      O => Mcount_cnt_xor_31_rt_62
    );
  cnt_0_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(0),
      I1 => cnt_cmp_eq0000,
      O => cnt_0_rstpot_103
    );
  cnt_0 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_in_BUFGP_98,
      D => cnt_0_rstpot_103,
      Q => cnt(0)
    );
  cnt_1_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(1),
      I1 => cnt_cmp_eq0000,
      O => cnt_1_rstpot_125
    );
  cnt_1 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_in_BUFGP_98,
      D => cnt_1_rstpot_125,
      Q => cnt(1)
    );
  cnt_2_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(2),
      I1 => cnt_cmp_eq0000,
      O => cnt_2_rstpot_143
    );
  cnt_2 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_in_BUFGP_98,
      D => cnt_2_rstpot_143,
      Q => cnt(2)
    );
  cnt_3_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(3),
      I1 => cnt_cmp_eq0000,
      O => cnt_3_rstpot_147
    );
  cnt_3 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_in_BUFGP_98,
      D => cnt_3_rstpot_147,
      Q => cnt(3)
    );
  cnt_4_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(4),
      I1 => cnt_cmp_eq0000,
      O => cnt_4_rstpot_149
    );
  cnt_4 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_in_BUFGP_98,
      D => cnt_4_rstpot_149,
      Q => cnt(4)
    );
  cnt_5_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(5),
      I1 => cnt_cmp_eq0000,
      O => cnt_5_rstpot_151
    );
  cnt_5 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_in_BUFGP_98,
      D => cnt_5_rstpot_151,
      Q => cnt(5)
    );
  cnt_6_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(6),
      I1 => cnt_cmp_eq0000,
      O => cnt_6_rstpot_153
    );
  cnt_6 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_in_BUFGP_98,
      D => cnt_6_rstpot_153,
      Q => cnt(6)
    );
  cnt_7_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(7),
      I1 => cnt_cmp_eq0000,
      O => cnt_7_rstpot_155
    );
  cnt_7 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_in_BUFGP_98,
      D => cnt_7_rstpot_155,
      Q => cnt(7)
    );
  cnt_8_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(8),
      I1 => cnt_cmp_eq0000,
      O => cnt_8_rstpot_157
    );
  cnt_8 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_in_BUFGP_98,
      D => cnt_8_rstpot_157,
      Q => cnt(8)
    );
  cnt_9_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(9),
      I1 => cnt_cmp_eq0000,
      O => cnt_9_rstpot_159
    );
  cnt_9 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_in_BUFGP_98,
      D => cnt_9_rstpot_159,
      Q => cnt(9)
    );
  cnt_10_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(10),
      I1 => cnt_cmp_eq0000,
      O => cnt_10_rstpot_106
    );
  cnt_10 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_in_BUFGP_98,
      D => cnt_10_rstpot_106,
      Q => cnt(10)
    );
  cnt_11_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(11),
      I1 => cnt_cmp_eq0000,
      O => cnt_11_rstpot_108
    );
  cnt_11 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_in_BUFGP_98,
      D => cnt_11_rstpot_108,
      Q => cnt(11)
    );
  cnt_12_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(12),
      I1 => cnt_cmp_eq0000,
      O => cnt_12_rstpot_110
    );
  cnt_12 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_in_BUFGP_98,
      D => cnt_12_rstpot_110,
      Q => cnt(12)
    );
  cnt_13_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(13),
      I1 => cnt_cmp_eq0000,
      O => cnt_13_rstpot_112
    );
  cnt_13 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_in_BUFGP_98,
      D => cnt_13_rstpot_112,
      Q => cnt(13)
    );
  cnt_14_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(14),
      I1 => cnt_cmp_eq0000,
      O => cnt_14_rstpot_114
    );
  cnt_14 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_in_BUFGP_98,
      D => cnt_14_rstpot_114,
      Q => cnt(14)
    );
  cnt_15_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(15),
      I1 => cnt_cmp_eq0000,
      O => cnt_15_rstpot_116
    );
  cnt_15 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_in_BUFGP_98,
      D => cnt_15_rstpot_116,
      Q => cnt(15)
    );
  cnt_16_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(16),
      I1 => cnt_cmp_eq0000,
      O => cnt_16_rstpot_118
    );
  cnt_16 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_in_BUFGP_98,
      D => cnt_16_rstpot_118,
      Q => cnt(16)
    );
  cnt_17_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(17),
      I1 => cnt_cmp_eq0000,
      O => cnt_17_rstpot_120
    );
  cnt_17 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_in_BUFGP_98,
      D => cnt_17_rstpot_120,
      Q => cnt(17)
    );
  cnt_18_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(18),
      I1 => cnt_cmp_eq0000,
      O => cnt_18_rstpot_122
    );
  cnt_18 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_in_BUFGP_98,
      D => cnt_18_rstpot_122,
      Q => cnt(18)
    );
  cnt_19_rstpot : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => cnt_cmp_eq0000,
      I1 => Result(19),
      O => cnt_19_rstpot_124
    );
  cnt_19 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_in_BUFGP_98,
      D => cnt_19_rstpot_124,
      Q => cnt(19)
    );
  cnt_20_rstpot : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => cnt_cmp_eq0000,
      I1 => Result(20),
      O => cnt_20_rstpot_128
    );
  cnt_20 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_in_BUFGP_98,
      D => cnt_20_rstpot_128,
      Q => cnt(20)
    );
  cnt_21_rstpot : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => cnt_cmp_eq0000,
      I1 => Result(21),
      O => cnt_21_rstpot_130
    );
  cnt_21 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_in_BUFGP_98,
      D => cnt_21_rstpot_130,
      Q => cnt(21)
    );
  cnt_22_rstpot : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => cnt_cmp_eq0000,
      I1 => Result(22),
      O => cnt_22_rstpot_132
    );
  cnt_22 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_in_BUFGP_98,
      D => cnt_22_rstpot_132,
      Q => cnt(22)
    );
  cnt_23_rstpot : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => cnt_cmp_eq0000,
      I1 => Result(23),
      O => cnt_23_rstpot_134
    );
  cnt_23 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_in_BUFGP_98,
      D => cnt_23_rstpot_134,
      Q => cnt(23)
    );
  cnt_24_rstpot : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => cnt_cmp_eq0000,
      I1 => Result(24),
      O => cnt_24_rstpot_136
    );
  cnt_24 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_in_BUFGP_98,
      D => cnt_24_rstpot_136,
      Q => cnt(24)
    );
  cnt_25_rstpot : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => cnt_cmp_eq0000,
      I1 => Result(25),
      O => cnt_25_rstpot_138
    );
  cnt_25 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_in_BUFGP_98,
      D => cnt_25_rstpot_138,
      Q => cnt(25)
    );
  clk_in_BUFGP : BUFGP
    port map (
      I => clk_in,
      O => clk_in_BUFGP_98
    );
  Mcount_cnt_lut_0_INV_0 : INV
    port map (
      I => cnt(0),
      O => Mcount_cnt_lut(0)
    );
  clk_out_not00011_INV_0 : INV
    port map (
      I => clk_out_OBUF_100,
      O => clk_out_not0001
    );

end Structure;

