--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: counterN_synthesis.vhd
-- /___/   /\     Timestamp: Fri Apr 23 09:10:22 2021
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm counterN -w -dir netgen/synthesis -ofmt vhdl -sim counterN.ngc counterN_synthesis.vhd 
-- Device	: xc4vsx35-10-ff668
-- Input file	: counterN.ngc
-- Output file	: D:\Document FPGA\ThayThuy\FPGA\Virtex_4_ML402\project_ISE_counterN\netgen\synthesis\counterN_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: counterN
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

entity counterN is
  port (
    clk : in STD_LOGIC := 'X'; 
    nreset : in STD_LOGIC := 'X'; 
    enable : in STD_LOGIC := 'X'; 
    cnt : out STD_LOGIC_VECTOR ( 6 downto 0 ) 
  );
end counterN;

architecture Structure of counterN is
  signal Mcount_cnt_reg_cy_10_rt_2 : STD_LOGIC; 
  signal Mcount_cnt_reg_cy_11_rt_4 : STD_LOGIC; 
  signal Mcount_cnt_reg_cy_12_rt_6 : STD_LOGIC; 
  signal Mcount_cnt_reg_cy_13_rt_8 : STD_LOGIC; 
  signal Mcount_cnt_reg_cy_14_rt_10 : STD_LOGIC; 
  signal Mcount_cnt_reg_cy_15_rt_12 : STD_LOGIC; 
  signal Mcount_cnt_reg_cy_16_rt_14 : STD_LOGIC; 
  signal Mcount_cnt_reg_cy_17_rt_16 : STD_LOGIC; 
  signal Mcount_cnt_reg_cy_18_rt_18 : STD_LOGIC; 
  signal Mcount_cnt_reg_cy_19_rt_20 : STD_LOGIC; 
  signal Mcount_cnt_reg_cy_1_rt_22 : STD_LOGIC; 
  signal Mcount_cnt_reg_cy_20_rt_24 : STD_LOGIC; 
  signal Mcount_cnt_reg_cy_21_rt_26 : STD_LOGIC; 
  signal Mcount_cnt_reg_cy_22_rt_28 : STD_LOGIC; 
  signal Mcount_cnt_reg_cy_23_rt_30 : STD_LOGIC; 
  signal Mcount_cnt_reg_cy_24_rt_32 : STD_LOGIC; 
  signal Mcount_cnt_reg_cy_25_rt_34 : STD_LOGIC; 
  signal Mcount_cnt_reg_cy_26_rt_36 : STD_LOGIC; 
  signal Mcount_cnt_reg_cy_27_rt_38 : STD_LOGIC; 
  signal Mcount_cnt_reg_cy_28_rt_40 : STD_LOGIC; 
  signal Mcount_cnt_reg_cy_29_rt_42 : STD_LOGIC; 
  signal Mcount_cnt_reg_cy_2_rt_44 : STD_LOGIC; 
  signal Mcount_cnt_reg_cy_30_rt_46 : STD_LOGIC; 
  signal Mcount_cnt_reg_cy_3_rt_48 : STD_LOGIC; 
  signal Mcount_cnt_reg_cy_4_rt_50 : STD_LOGIC; 
  signal Mcount_cnt_reg_cy_5_rt_52 : STD_LOGIC; 
  signal Mcount_cnt_reg_cy_6_rt_54 : STD_LOGIC; 
  signal Mcount_cnt_reg_cy_7_rt_56 : STD_LOGIC; 
  signal Mcount_cnt_reg_cy_8_rt_58 : STD_LOGIC; 
  signal Mcount_cnt_reg_cy_9_rt_60 : STD_LOGIC; 
  signal Mcount_cnt_reg_xor_31_rt_62 : STD_LOGIC; 
  signal N0 : STD_LOGIC; 
  signal N1 : STD_LOGIC; 
  signal clk_BUFGP_98 : STD_LOGIC; 
  signal enable_IBUF_139 : STD_LOGIC; 
  signal nreset_IBUF_141 : STD_LOGIC; 
  signal reset : STD_LOGIC; 
  signal Mcount_cnt_reg_cy : STD_LOGIC_VECTOR ( 30 downto 0 ); 
  signal Mcount_cnt_reg_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal Result : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal cnt_reg : STD_LOGIC_VECTOR ( 31 downto 0 ); 
begin
  XST_GND : GND
    port map (
      G => N0
    );
  XST_VCC : VCC
    port map (
      P => N1
    );
  cnt_reg_0 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_98,
      CE => enable_IBUF_139,
      D => Result(0),
      R => reset,
      Q => cnt_reg(0)
    );
  cnt_reg_1 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_98,
      CE => enable_IBUF_139,
      D => Result(1),
      R => reset,
      Q => cnt_reg(1)
    );
  cnt_reg_2 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_98,
      CE => enable_IBUF_139,
      D => Result(2),
      R => reset,
      Q => cnt_reg(2)
    );
  cnt_reg_3 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_98,
      CE => enable_IBUF_139,
      D => Result(3),
      R => reset,
      Q => cnt_reg(3)
    );
  cnt_reg_4 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_98,
      CE => enable_IBUF_139,
      D => Result(4),
      R => reset,
      Q => cnt_reg(4)
    );
  cnt_reg_5 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_98,
      CE => enable_IBUF_139,
      D => Result(5),
      R => reset,
      Q => cnt_reg(5)
    );
  cnt_reg_6 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_98,
      CE => enable_IBUF_139,
      D => Result(6),
      R => reset,
      Q => cnt_reg(6)
    );
  cnt_reg_7 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_98,
      CE => enable_IBUF_139,
      D => Result(7),
      R => reset,
      Q => cnt_reg(7)
    );
  cnt_reg_8 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_98,
      CE => enable_IBUF_139,
      D => Result(8),
      R => reset,
      Q => cnt_reg(8)
    );
  cnt_reg_9 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_98,
      CE => enable_IBUF_139,
      D => Result(9),
      R => reset,
      Q => cnt_reg(9)
    );
  cnt_reg_10 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_98,
      CE => enable_IBUF_139,
      D => Result(10),
      R => reset,
      Q => cnt_reg(10)
    );
  cnt_reg_11 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_98,
      CE => enable_IBUF_139,
      D => Result(11),
      R => reset,
      Q => cnt_reg(11)
    );
  cnt_reg_12 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_98,
      CE => enable_IBUF_139,
      D => Result(12),
      R => reset,
      Q => cnt_reg(12)
    );
  cnt_reg_13 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_98,
      CE => enable_IBUF_139,
      D => Result(13),
      R => reset,
      Q => cnt_reg(13)
    );
  cnt_reg_14 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_98,
      CE => enable_IBUF_139,
      D => Result(14),
      R => reset,
      Q => cnt_reg(14)
    );
  cnt_reg_15 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_98,
      CE => enable_IBUF_139,
      D => Result(15),
      R => reset,
      Q => cnt_reg(15)
    );
  cnt_reg_16 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_98,
      CE => enable_IBUF_139,
      D => Result(16),
      R => reset,
      Q => cnt_reg(16)
    );
  cnt_reg_17 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_98,
      CE => enable_IBUF_139,
      D => Result(17),
      R => reset,
      Q => cnt_reg(17)
    );
  cnt_reg_18 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_98,
      CE => enable_IBUF_139,
      D => Result(18),
      R => reset,
      Q => cnt_reg(18)
    );
  cnt_reg_19 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_98,
      CE => enable_IBUF_139,
      D => Result(19),
      R => reset,
      Q => cnt_reg(19)
    );
  cnt_reg_20 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_98,
      CE => enable_IBUF_139,
      D => Result(20),
      R => reset,
      Q => cnt_reg(20)
    );
  cnt_reg_21 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_98,
      CE => enable_IBUF_139,
      D => Result(21),
      R => reset,
      Q => cnt_reg(21)
    );
  cnt_reg_22 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_98,
      CE => enable_IBUF_139,
      D => Result(22),
      R => reset,
      Q => cnt_reg(22)
    );
  cnt_reg_23 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_98,
      CE => enable_IBUF_139,
      D => Result(23),
      R => reset,
      Q => cnt_reg(23)
    );
  cnt_reg_24 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_98,
      CE => enable_IBUF_139,
      D => Result(24),
      R => reset,
      Q => cnt_reg(24)
    );
  cnt_reg_25 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_98,
      CE => enable_IBUF_139,
      D => Result(25),
      R => reset,
      Q => cnt_reg(25)
    );
  cnt_reg_26 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_98,
      CE => enable_IBUF_139,
      D => Result(26),
      R => reset,
      Q => cnt_reg(26)
    );
  cnt_reg_27 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_98,
      CE => enable_IBUF_139,
      D => Result(27),
      R => reset,
      Q => cnt_reg(27)
    );
  cnt_reg_28 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_98,
      CE => enable_IBUF_139,
      D => Result(28),
      R => reset,
      Q => cnt_reg(28)
    );
  cnt_reg_29 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_98,
      CE => enable_IBUF_139,
      D => Result(29),
      R => reset,
      Q => cnt_reg(29)
    );
  cnt_reg_30 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_98,
      CE => enable_IBUF_139,
      D => Result(30),
      R => reset,
      Q => cnt_reg(30)
    );
  cnt_reg_31 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_98,
      CE => enable_IBUF_139,
      D => Result(31),
      R => reset,
      Q => cnt_reg(31)
    );
  Mcount_cnt_reg_cy_0_Q : MUXCY
    port map (
      CI => N0,
      DI => N1,
      S => Mcount_cnt_reg_lut(0),
      O => Mcount_cnt_reg_cy(0)
    );
  Mcount_cnt_reg_xor_0_Q : XORCY
    port map (
      CI => N0,
      LI => Mcount_cnt_reg_lut(0),
      O => Result(0)
    );
  Mcount_cnt_reg_cy_1_Q : MUXCY
    port map (
      CI => Mcount_cnt_reg_cy(0),
      DI => N0,
      S => Mcount_cnt_reg_cy_1_rt_22,
      O => Mcount_cnt_reg_cy(1)
    );
  Mcount_cnt_reg_xor_1_Q : XORCY
    port map (
      CI => Mcount_cnt_reg_cy(0),
      LI => Mcount_cnt_reg_cy_1_rt_22,
      O => Result(1)
    );
  Mcount_cnt_reg_cy_2_Q : MUXCY
    port map (
      CI => Mcount_cnt_reg_cy(1),
      DI => N0,
      S => Mcount_cnt_reg_cy_2_rt_44,
      O => Mcount_cnt_reg_cy(2)
    );
  Mcount_cnt_reg_xor_2_Q : XORCY
    port map (
      CI => Mcount_cnt_reg_cy(1),
      LI => Mcount_cnt_reg_cy_2_rt_44,
      O => Result(2)
    );
  Mcount_cnt_reg_cy_3_Q : MUXCY
    port map (
      CI => Mcount_cnt_reg_cy(2),
      DI => N0,
      S => Mcount_cnt_reg_cy_3_rt_48,
      O => Mcount_cnt_reg_cy(3)
    );
  Mcount_cnt_reg_xor_3_Q : XORCY
    port map (
      CI => Mcount_cnt_reg_cy(2),
      LI => Mcount_cnt_reg_cy_3_rt_48,
      O => Result(3)
    );
  Mcount_cnt_reg_cy_4_Q : MUXCY
    port map (
      CI => Mcount_cnt_reg_cy(3),
      DI => N0,
      S => Mcount_cnt_reg_cy_4_rt_50,
      O => Mcount_cnt_reg_cy(4)
    );
  Mcount_cnt_reg_xor_4_Q : XORCY
    port map (
      CI => Mcount_cnt_reg_cy(3),
      LI => Mcount_cnt_reg_cy_4_rt_50,
      O => Result(4)
    );
  Mcount_cnt_reg_cy_5_Q : MUXCY
    port map (
      CI => Mcount_cnt_reg_cy(4),
      DI => N0,
      S => Mcount_cnt_reg_cy_5_rt_52,
      O => Mcount_cnt_reg_cy(5)
    );
  Mcount_cnt_reg_xor_5_Q : XORCY
    port map (
      CI => Mcount_cnt_reg_cy(4),
      LI => Mcount_cnt_reg_cy_5_rt_52,
      O => Result(5)
    );
  Mcount_cnt_reg_cy_6_Q : MUXCY
    port map (
      CI => Mcount_cnt_reg_cy(5),
      DI => N0,
      S => Mcount_cnt_reg_cy_6_rt_54,
      O => Mcount_cnt_reg_cy(6)
    );
  Mcount_cnt_reg_xor_6_Q : XORCY
    port map (
      CI => Mcount_cnt_reg_cy(5),
      LI => Mcount_cnt_reg_cy_6_rt_54,
      O => Result(6)
    );
  Mcount_cnt_reg_cy_7_Q : MUXCY
    port map (
      CI => Mcount_cnt_reg_cy(6),
      DI => N0,
      S => Mcount_cnt_reg_cy_7_rt_56,
      O => Mcount_cnt_reg_cy(7)
    );
  Mcount_cnt_reg_xor_7_Q : XORCY
    port map (
      CI => Mcount_cnt_reg_cy(6),
      LI => Mcount_cnt_reg_cy_7_rt_56,
      O => Result(7)
    );
  Mcount_cnt_reg_cy_8_Q : MUXCY
    port map (
      CI => Mcount_cnt_reg_cy(7),
      DI => N0,
      S => Mcount_cnt_reg_cy_8_rt_58,
      O => Mcount_cnt_reg_cy(8)
    );
  Mcount_cnt_reg_xor_8_Q : XORCY
    port map (
      CI => Mcount_cnt_reg_cy(7),
      LI => Mcount_cnt_reg_cy_8_rt_58,
      O => Result(8)
    );
  Mcount_cnt_reg_cy_9_Q : MUXCY
    port map (
      CI => Mcount_cnt_reg_cy(8),
      DI => N0,
      S => Mcount_cnt_reg_cy_9_rt_60,
      O => Mcount_cnt_reg_cy(9)
    );
  Mcount_cnt_reg_xor_9_Q : XORCY
    port map (
      CI => Mcount_cnt_reg_cy(8),
      LI => Mcount_cnt_reg_cy_9_rt_60,
      O => Result(9)
    );
  Mcount_cnt_reg_cy_10_Q : MUXCY
    port map (
      CI => Mcount_cnt_reg_cy(9),
      DI => N0,
      S => Mcount_cnt_reg_cy_10_rt_2,
      O => Mcount_cnt_reg_cy(10)
    );
  Mcount_cnt_reg_xor_10_Q : XORCY
    port map (
      CI => Mcount_cnt_reg_cy(9),
      LI => Mcount_cnt_reg_cy_10_rt_2,
      O => Result(10)
    );
  Mcount_cnt_reg_cy_11_Q : MUXCY
    port map (
      CI => Mcount_cnt_reg_cy(10),
      DI => N0,
      S => Mcount_cnt_reg_cy_11_rt_4,
      O => Mcount_cnt_reg_cy(11)
    );
  Mcount_cnt_reg_xor_11_Q : XORCY
    port map (
      CI => Mcount_cnt_reg_cy(10),
      LI => Mcount_cnt_reg_cy_11_rt_4,
      O => Result(11)
    );
  Mcount_cnt_reg_cy_12_Q : MUXCY
    port map (
      CI => Mcount_cnt_reg_cy(11),
      DI => N0,
      S => Mcount_cnt_reg_cy_12_rt_6,
      O => Mcount_cnt_reg_cy(12)
    );
  Mcount_cnt_reg_xor_12_Q : XORCY
    port map (
      CI => Mcount_cnt_reg_cy(11),
      LI => Mcount_cnt_reg_cy_12_rt_6,
      O => Result(12)
    );
  Mcount_cnt_reg_cy_13_Q : MUXCY
    port map (
      CI => Mcount_cnt_reg_cy(12),
      DI => N0,
      S => Mcount_cnt_reg_cy_13_rt_8,
      O => Mcount_cnt_reg_cy(13)
    );
  Mcount_cnt_reg_xor_13_Q : XORCY
    port map (
      CI => Mcount_cnt_reg_cy(12),
      LI => Mcount_cnt_reg_cy_13_rt_8,
      O => Result(13)
    );
  Mcount_cnt_reg_cy_14_Q : MUXCY
    port map (
      CI => Mcount_cnt_reg_cy(13),
      DI => N0,
      S => Mcount_cnt_reg_cy_14_rt_10,
      O => Mcount_cnt_reg_cy(14)
    );
  Mcount_cnt_reg_xor_14_Q : XORCY
    port map (
      CI => Mcount_cnt_reg_cy(13),
      LI => Mcount_cnt_reg_cy_14_rt_10,
      O => Result(14)
    );
  Mcount_cnt_reg_cy_15_Q : MUXCY
    port map (
      CI => Mcount_cnt_reg_cy(14),
      DI => N0,
      S => Mcount_cnt_reg_cy_15_rt_12,
      O => Mcount_cnt_reg_cy(15)
    );
  Mcount_cnt_reg_xor_15_Q : XORCY
    port map (
      CI => Mcount_cnt_reg_cy(14),
      LI => Mcount_cnt_reg_cy_15_rt_12,
      O => Result(15)
    );
  Mcount_cnt_reg_cy_16_Q : MUXCY
    port map (
      CI => Mcount_cnt_reg_cy(15),
      DI => N0,
      S => Mcount_cnt_reg_cy_16_rt_14,
      O => Mcount_cnt_reg_cy(16)
    );
  Mcount_cnt_reg_xor_16_Q : XORCY
    port map (
      CI => Mcount_cnt_reg_cy(15),
      LI => Mcount_cnt_reg_cy_16_rt_14,
      O => Result(16)
    );
  Mcount_cnt_reg_cy_17_Q : MUXCY
    port map (
      CI => Mcount_cnt_reg_cy(16),
      DI => N0,
      S => Mcount_cnt_reg_cy_17_rt_16,
      O => Mcount_cnt_reg_cy(17)
    );
  Mcount_cnt_reg_xor_17_Q : XORCY
    port map (
      CI => Mcount_cnt_reg_cy(16),
      LI => Mcount_cnt_reg_cy_17_rt_16,
      O => Result(17)
    );
  Mcount_cnt_reg_cy_18_Q : MUXCY
    port map (
      CI => Mcount_cnt_reg_cy(17),
      DI => N0,
      S => Mcount_cnt_reg_cy_18_rt_18,
      O => Mcount_cnt_reg_cy(18)
    );
  Mcount_cnt_reg_xor_18_Q : XORCY
    port map (
      CI => Mcount_cnt_reg_cy(17),
      LI => Mcount_cnt_reg_cy_18_rt_18,
      O => Result(18)
    );
  Mcount_cnt_reg_cy_19_Q : MUXCY
    port map (
      CI => Mcount_cnt_reg_cy(18),
      DI => N0,
      S => Mcount_cnt_reg_cy_19_rt_20,
      O => Mcount_cnt_reg_cy(19)
    );
  Mcount_cnt_reg_xor_19_Q : XORCY
    port map (
      CI => Mcount_cnt_reg_cy(18),
      LI => Mcount_cnt_reg_cy_19_rt_20,
      O => Result(19)
    );
  Mcount_cnt_reg_cy_20_Q : MUXCY
    port map (
      CI => Mcount_cnt_reg_cy(19),
      DI => N0,
      S => Mcount_cnt_reg_cy_20_rt_24,
      O => Mcount_cnt_reg_cy(20)
    );
  Mcount_cnt_reg_xor_20_Q : XORCY
    port map (
      CI => Mcount_cnt_reg_cy(19),
      LI => Mcount_cnt_reg_cy_20_rt_24,
      O => Result(20)
    );
  Mcount_cnt_reg_cy_21_Q : MUXCY
    port map (
      CI => Mcount_cnt_reg_cy(20),
      DI => N0,
      S => Mcount_cnt_reg_cy_21_rt_26,
      O => Mcount_cnt_reg_cy(21)
    );
  Mcount_cnt_reg_xor_21_Q : XORCY
    port map (
      CI => Mcount_cnt_reg_cy(20),
      LI => Mcount_cnt_reg_cy_21_rt_26,
      O => Result(21)
    );
  Mcount_cnt_reg_cy_22_Q : MUXCY
    port map (
      CI => Mcount_cnt_reg_cy(21),
      DI => N0,
      S => Mcount_cnt_reg_cy_22_rt_28,
      O => Mcount_cnt_reg_cy(22)
    );
  Mcount_cnt_reg_xor_22_Q : XORCY
    port map (
      CI => Mcount_cnt_reg_cy(21),
      LI => Mcount_cnt_reg_cy_22_rt_28,
      O => Result(22)
    );
  Mcount_cnt_reg_cy_23_Q : MUXCY
    port map (
      CI => Mcount_cnt_reg_cy(22),
      DI => N0,
      S => Mcount_cnt_reg_cy_23_rt_30,
      O => Mcount_cnt_reg_cy(23)
    );
  Mcount_cnt_reg_xor_23_Q : XORCY
    port map (
      CI => Mcount_cnt_reg_cy(22),
      LI => Mcount_cnt_reg_cy_23_rt_30,
      O => Result(23)
    );
  Mcount_cnt_reg_cy_24_Q : MUXCY
    port map (
      CI => Mcount_cnt_reg_cy(23),
      DI => N0,
      S => Mcount_cnt_reg_cy_24_rt_32,
      O => Mcount_cnt_reg_cy(24)
    );
  Mcount_cnt_reg_xor_24_Q : XORCY
    port map (
      CI => Mcount_cnt_reg_cy(23),
      LI => Mcount_cnt_reg_cy_24_rt_32,
      O => Result(24)
    );
  Mcount_cnt_reg_cy_25_Q : MUXCY
    port map (
      CI => Mcount_cnt_reg_cy(24),
      DI => N0,
      S => Mcount_cnt_reg_cy_25_rt_34,
      O => Mcount_cnt_reg_cy(25)
    );
  Mcount_cnt_reg_xor_25_Q : XORCY
    port map (
      CI => Mcount_cnt_reg_cy(24),
      LI => Mcount_cnt_reg_cy_25_rt_34,
      O => Result(25)
    );
  Mcount_cnt_reg_cy_26_Q : MUXCY
    port map (
      CI => Mcount_cnt_reg_cy(25),
      DI => N0,
      S => Mcount_cnt_reg_cy_26_rt_36,
      O => Mcount_cnt_reg_cy(26)
    );
  Mcount_cnt_reg_xor_26_Q : XORCY
    port map (
      CI => Mcount_cnt_reg_cy(25),
      LI => Mcount_cnt_reg_cy_26_rt_36,
      O => Result(26)
    );
  Mcount_cnt_reg_cy_27_Q : MUXCY
    port map (
      CI => Mcount_cnt_reg_cy(26),
      DI => N0,
      S => Mcount_cnt_reg_cy_27_rt_38,
      O => Mcount_cnt_reg_cy(27)
    );
  Mcount_cnt_reg_xor_27_Q : XORCY
    port map (
      CI => Mcount_cnt_reg_cy(26),
      LI => Mcount_cnt_reg_cy_27_rt_38,
      O => Result(27)
    );
  Mcount_cnt_reg_cy_28_Q : MUXCY
    port map (
      CI => Mcount_cnt_reg_cy(27),
      DI => N0,
      S => Mcount_cnt_reg_cy_28_rt_40,
      O => Mcount_cnt_reg_cy(28)
    );
  Mcount_cnt_reg_xor_28_Q : XORCY
    port map (
      CI => Mcount_cnt_reg_cy(27),
      LI => Mcount_cnt_reg_cy_28_rt_40,
      O => Result(28)
    );
  Mcount_cnt_reg_cy_29_Q : MUXCY
    port map (
      CI => Mcount_cnt_reg_cy(28),
      DI => N0,
      S => Mcount_cnt_reg_cy_29_rt_42,
      O => Mcount_cnt_reg_cy(29)
    );
  Mcount_cnt_reg_xor_29_Q : XORCY
    port map (
      CI => Mcount_cnt_reg_cy(28),
      LI => Mcount_cnt_reg_cy_29_rt_42,
      O => Result(29)
    );
  Mcount_cnt_reg_cy_30_Q : MUXCY
    port map (
      CI => Mcount_cnt_reg_cy(29),
      DI => N0,
      S => Mcount_cnt_reg_cy_30_rt_46,
      O => Mcount_cnt_reg_cy(30)
    );
  Mcount_cnt_reg_xor_30_Q : XORCY
    port map (
      CI => Mcount_cnt_reg_cy(29),
      LI => Mcount_cnt_reg_cy_30_rt_46,
      O => Result(30)
    );
  Mcount_cnt_reg_xor_31_Q : XORCY
    port map (
      CI => Mcount_cnt_reg_cy(30),
      LI => Mcount_cnt_reg_xor_31_rt_62,
      O => Result(31)
    );
  nreset_IBUF : IBUF
    port map (
      I => nreset,
      O => nreset_IBUF_141
    );
  enable_IBUF : IBUF
    port map (
      I => enable,
      O => enable_IBUF_139
    );
  cnt_6_OBUF : OBUF
    port map (
      I => cnt_reg(31),
      O => cnt(6)
    );
  cnt_5_OBUF : OBUF
    port map (
      I => cnt_reg(30),
      O => cnt(5)
    );
  cnt_4_OBUF : OBUF
    port map (
      I => cnt_reg(29),
      O => cnt(4)
    );
  cnt_3_OBUF : OBUF
    port map (
      I => cnt_reg(28),
      O => cnt(3)
    );
  cnt_2_OBUF : OBUF
    port map (
      I => cnt_reg(27),
      O => cnt(2)
    );
  cnt_1_OBUF : OBUF
    port map (
      I => cnt_reg(26),
      O => cnt(1)
    );
  cnt_0_OBUF : OBUF
    port map (
      I => cnt_reg(25),
      O => cnt(0)
    );
  Mcount_cnt_reg_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => cnt_reg(1),
      O => Mcount_cnt_reg_cy_1_rt_22
    );
  Mcount_cnt_reg_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => cnt_reg(2),
      O => Mcount_cnt_reg_cy_2_rt_44
    );
  Mcount_cnt_reg_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => cnt_reg(3),
      O => Mcount_cnt_reg_cy_3_rt_48
    );
  Mcount_cnt_reg_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => cnt_reg(4),
      O => Mcount_cnt_reg_cy_4_rt_50
    );
  Mcount_cnt_reg_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => cnt_reg(5),
      O => Mcount_cnt_reg_cy_5_rt_52
    );
  Mcount_cnt_reg_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => cnt_reg(6),
      O => Mcount_cnt_reg_cy_6_rt_54
    );
  Mcount_cnt_reg_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => cnt_reg(7),
      O => Mcount_cnt_reg_cy_7_rt_56
    );
  Mcount_cnt_reg_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => cnt_reg(8),
      O => Mcount_cnt_reg_cy_8_rt_58
    );
  Mcount_cnt_reg_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => cnt_reg(9),
      O => Mcount_cnt_reg_cy_9_rt_60
    );
  Mcount_cnt_reg_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => cnt_reg(10),
      O => Mcount_cnt_reg_cy_10_rt_2
    );
  Mcount_cnt_reg_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => cnt_reg(11),
      O => Mcount_cnt_reg_cy_11_rt_4
    );
  Mcount_cnt_reg_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => cnt_reg(12),
      O => Mcount_cnt_reg_cy_12_rt_6
    );
  Mcount_cnt_reg_cy_13_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => cnt_reg(13),
      O => Mcount_cnt_reg_cy_13_rt_8
    );
  Mcount_cnt_reg_cy_14_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => cnt_reg(14),
      O => Mcount_cnt_reg_cy_14_rt_10
    );
  Mcount_cnt_reg_cy_15_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => cnt_reg(15),
      O => Mcount_cnt_reg_cy_15_rt_12
    );
  Mcount_cnt_reg_cy_16_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => cnt_reg(16),
      O => Mcount_cnt_reg_cy_16_rt_14
    );
  Mcount_cnt_reg_cy_17_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => cnt_reg(17),
      O => Mcount_cnt_reg_cy_17_rt_16
    );
  Mcount_cnt_reg_cy_18_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => cnt_reg(18),
      O => Mcount_cnt_reg_cy_18_rt_18
    );
  Mcount_cnt_reg_cy_19_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => cnt_reg(19),
      O => Mcount_cnt_reg_cy_19_rt_20
    );
  Mcount_cnt_reg_cy_20_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => cnt_reg(20),
      O => Mcount_cnt_reg_cy_20_rt_24
    );
  Mcount_cnt_reg_cy_21_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => cnt_reg(21),
      O => Mcount_cnt_reg_cy_21_rt_26
    );
  Mcount_cnt_reg_cy_22_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => cnt_reg(22),
      O => Mcount_cnt_reg_cy_22_rt_28
    );
  Mcount_cnt_reg_cy_23_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => cnt_reg(23),
      O => Mcount_cnt_reg_cy_23_rt_30
    );
  Mcount_cnt_reg_cy_24_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => cnt_reg(24),
      O => Mcount_cnt_reg_cy_24_rt_32
    );
  Mcount_cnt_reg_cy_25_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => cnt_reg(25),
      O => Mcount_cnt_reg_cy_25_rt_34
    );
  Mcount_cnt_reg_cy_26_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => cnt_reg(26),
      O => Mcount_cnt_reg_cy_26_rt_36
    );
  Mcount_cnt_reg_cy_27_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => cnt_reg(27),
      O => Mcount_cnt_reg_cy_27_rt_38
    );
  Mcount_cnt_reg_cy_28_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => cnt_reg(28),
      O => Mcount_cnt_reg_cy_28_rt_40
    );
  Mcount_cnt_reg_cy_29_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => cnt_reg(29),
      O => Mcount_cnt_reg_cy_29_rt_42
    );
  Mcount_cnt_reg_cy_30_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => cnt_reg(30),
      O => Mcount_cnt_reg_cy_30_rt_46
    );
  Mcount_cnt_reg_xor_31_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => cnt_reg(31),
      O => Mcount_cnt_reg_xor_31_rt_62
    );
  clk_BUFGP : BUFGP
    port map (
      I => clk,
      O => clk_BUFGP_98
    );
  Mcount_cnt_reg_lut_0_INV_0 : INV
    port map (
      I => cnt_reg(0),
      O => Mcount_cnt_reg_lut(0)
    );
  reset1_INV_0 : INV
    port map (
      I => nreset_IBUF_141,
      O => reset
    );

end Structure;

