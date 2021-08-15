--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: counterN_translate.vhd
-- /___/   /\     Timestamp: Fri Apr 23 09:23:16 2021
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -rpw 100 -tpw 0 -ar Structure -tm counterN -w -dir netgen/translate -ofmt vhdl -sim counterN.ngd counterN_translate.vhd 
-- Device	: 4vsx35ff668-10
-- Input file	: counterN.ngd
-- Output file	: D:\Document FPGA\ThayThuy\FPGA\Virtex_4_ML402\project_ISE_counterN\netgen\translate\counterN_translate.vhd
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
library SIMPRIM;
use SIMPRIM.VCOMPONENTS.ALL;
use SIMPRIM.VPACKAGE.ALL;

entity counterN is
  port (
    clk : in STD_LOGIC := 'X'; 
    nreset : in STD_LOGIC := 'X'; 
    enable : in STD_LOGIC := 'X'; 
    cnt : out STD_LOGIC_VECTOR ( 6 downto 0 ) 
  );
end counterN;

architecture Structure of counterN is
  signal Mcount_cnt_reg_cy_10_rt_5 : STD_LOGIC; 
  signal Mcount_cnt_reg_cy_11_rt_7 : STD_LOGIC; 
  signal Mcount_cnt_reg_cy_12_rt_9 : STD_LOGIC; 
  signal Mcount_cnt_reg_cy_13_rt_11 : STD_LOGIC; 
  signal Mcount_cnt_reg_cy_14_rt_13 : STD_LOGIC; 
  signal Mcount_cnt_reg_cy_15_rt_15 : STD_LOGIC; 
  signal Mcount_cnt_reg_cy_16_rt_17 : STD_LOGIC; 
  signal Mcount_cnt_reg_cy_17_rt_19 : STD_LOGIC; 
  signal Mcount_cnt_reg_cy_18_rt_21 : STD_LOGIC; 
  signal Mcount_cnt_reg_cy_19_rt_23 : STD_LOGIC; 
  signal Mcount_cnt_reg_cy_1_rt_25 : STD_LOGIC; 
  signal Mcount_cnt_reg_cy_20_rt_27 : STD_LOGIC; 
  signal Mcount_cnt_reg_cy_21_rt_29 : STD_LOGIC; 
  signal Mcount_cnt_reg_cy_22_rt_31 : STD_LOGIC; 
  signal Mcount_cnt_reg_cy_23_rt_33 : STD_LOGIC; 
  signal Mcount_cnt_reg_cy_24_rt_35 : STD_LOGIC; 
  signal Mcount_cnt_reg_cy_25_rt_37 : STD_LOGIC; 
  signal Mcount_cnt_reg_cy_26_rt_39 : STD_LOGIC; 
  signal Mcount_cnt_reg_cy_27_rt_41 : STD_LOGIC; 
  signal Mcount_cnt_reg_cy_28_rt_43 : STD_LOGIC; 
  signal Mcount_cnt_reg_cy_29_rt_45 : STD_LOGIC; 
  signal Mcount_cnt_reg_cy_2_rt_47 : STD_LOGIC; 
  signal Mcount_cnt_reg_cy_30_rt_49 : STD_LOGIC; 
  signal Mcount_cnt_reg_cy_3_rt_51 : STD_LOGIC; 
  signal Mcount_cnt_reg_cy_4_rt_53 : STD_LOGIC; 
  signal Mcount_cnt_reg_cy_5_rt_55 : STD_LOGIC; 
  signal Mcount_cnt_reg_cy_6_rt_57 : STD_LOGIC; 
  signal Mcount_cnt_reg_cy_7_rt_59 : STD_LOGIC; 
  signal Mcount_cnt_reg_cy_8_rt_61 : STD_LOGIC; 
  signal Mcount_cnt_reg_cy_9_rt_63 : STD_LOGIC; 
  signal Mcount_cnt_reg_xor_31_rt_65 : STD_LOGIC; 
  signal N0 : STD_LOGIC; 
  signal N1 : STD_LOGIC; 
  signal clk_BUFGP : STD_LOGIC; 
  signal enable_IBUF_142 : STD_LOGIC; 
  signal nreset_IBUF_144 : STD_LOGIC; 
  signal reset : STD_LOGIC; 
  signal clk_BUFGP_IBUFG_2 : STD_LOGIC; 
  signal GND : STD_LOGIC; 
  signal Mcount_cnt_reg_cy : STD_LOGIC_VECTOR ( 30 downto 0 ); 
  signal Mcount_cnt_reg_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal Result : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal cnt_reg : STD_LOGIC_VECTOR ( 31 downto 0 ); 
begin
  XST_GND : X_ZERO
    port map (
      O => N0
    );
  XST_VCC : X_ONE
    port map (
      O => N1
    );
  cnt_reg_0 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      CE => enable_IBUF_142,
      I => Result(0),
      SRST => reset,
      O => cnt_reg(0),
      SET => GND,
      RST => GND,
      SSET => GND
    );
  cnt_reg_1 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      CE => enable_IBUF_142,
      I => Result(1),
      SRST => reset,
      O => cnt_reg(1),
      SET => GND,
      RST => GND,
      SSET => GND
    );
  cnt_reg_2 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      CE => enable_IBUF_142,
      I => Result(2),
      SRST => reset,
      O => cnt_reg(2),
      SET => GND,
      RST => GND,
      SSET => GND
    );
  cnt_reg_3 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      CE => enable_IBUF_142,
      I => Result(3),
      SRST => reset,
      O => cnt_reg(3),
      SET => GND,
      RST => GND,
      SSET => GND
    );
  cnt_reg_4 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      CE => enable_IBUF_142,
      I => Result(4),
      SRST => reset,
      O => cnt_reg(4),
      SET => GND,
      RST => GND,
      SSET => GND
    );
  cnt_reg_5 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      CE => enable_IBUF_142,
      I => Result(5),
      SRST => reset,
      O => cnt_reg(5),
      SET => GND,
      RST => GND,
      SSET => GND
    );
  cnt_reg_6 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      CE => enable_IBUF_142,
      I => Result(6),
      SRST => reset,
      O => cnt_reg(6),
      SET => GND,
      RST => GND,
      SSET => GND
    );
  cnt_reg_7 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      CE => enable_IBUF_142,
      I => Result(7),
      SRST => reset,
      O => cnt_reg(7),
      SET => GND,
      RST => GND,
      SSET => GND
    );
  cnt_reg_8 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      CE => enable_IBUF_142,
      I => Result(8),
      SRST => reset,
      O => cnt_reg(8),
      SET => GND,
      RST => GND,
      SSET => GND
    );
  cnt_reg_9 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      CE => enable_IBUF_142,
      I => Result(9),
      SRST => reset,
      O => cnt_reg(9),
      SET => GND,
      RST => GND,
      SSET => GND
    );
  cnt_reg_10 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      CE => enable_IBUF_142,
      I => Result(10),
      SRST => reset,
      O => cnt_reg(10),
      SET => GND,
      RST => GND,
      SSET => GND
    );
  cnt_reg_11 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      CE => enable_IBUF_142,
      I => Result(11),
      SRST => reset,
      O => cnt_reg(11),
      SET => GND,
      RST => GND,
      SSET => GND
    );
  cnt_reg_12 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      CE => enable_IBUF_142,
      I => Result(12),
      SRST => reset,
      O => cnt_reg(12),
      SET => GND,
      RST => GND,
      SSET => GND
    );
  cnt_reg_13 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      CE => enable_IBUF_142,
      I => Result(13),
      SRST => reset,
      O => cnt_reg(13),
      SET => GND,
      RST => GND,
      SSET => GND
    );
  cnt_reg_14 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      CE => enable_IBUF_142,
      I => Result(14),
      SRST => reset,
      O => cnt_reg(14),
      SET => GND,
      RST => GND,
      SSET => GND
    );
  cnt_reg_15 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      CE => enable_IBUF_142,
      I => Result(15),
      SRST => reset,
      O => cnt_reg(15),
      SET => GND,
      RST => GND,
      SSET => GND
    );
  cnt_reg_16 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      CE => enable_IBUF_142,
      I => Result(16),
      SRST => reset,
      O => cnt_reg(16),
      SET => GND,
      RST => GND,
      SSET => GND
    );
  cnt_reg_17 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      CE => enable_IBUF_142,
      I => Result(17),
      SRST => reset,
      O => cnt_reg(17),
      SET => GND,
      RST => GND,
      SSET => GND
    );
  cnt_reg_18 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      CE => enable_IBUF_142,
      I => Result(18),
      SRST => reset,
      O => cnt_reg(18),
      SET => GND,
      RST => GND,
      SSET => GND
    );
  cnt_reg_19 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      CE => enable_IBUF_142,
      I => Result(19),
      SRST => reset,
      O => cnt_reg(19),
      SET => GND,
      RST => GND,
      SSET => GND
    );
  cnt_reg_20 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      CE => enable_IBUF_142,
      I => Result(20),
      SRST => reset,
      O => cnt_reg(20),
      SET => GND,
      RST => GND,
      SSET => GND
    );
  cnt_reg_21 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      CE => enable_IBUF_142,
      I => Result(21),
      SRST => reset,
      O => cnt_reg(21),
      SET => GND,
      RST => GND,
      SSET => GND
    );
  cnt_reg_22 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      CE => enable_IBUF_142,
      I => Result(22),
      SRST => reset,
      O => cnt_reg(22),
      SET => GND,
      RST => GND,
      SSET => GND
    );
  cnt_reg_23 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      CE => enable_IBUF_142,
      I => Result(23),
      SRST => reset,
      O => cnt_reg(23),
      SET => GND,
      RST => GND,
      SSET => GND
    );
  cnt_reg_24 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      CE => enable_IBUF_142,
      I => Result(24),
      SRST => reset,
      O => cnt_reg(24),
      SET => GND,
      RST => GND,
      SSET => GND
    );
  cnt_reg_25 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      CE => enable_IBUF_142,
      I => Result(25),
      SRST => reset,
      O => cnt_reg(25),
      SET => GND,
      RST => GND,
      SSET => GND
    );
  cnt_reg_26 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      CE => enable_IBUF_142,
      I => Result(26),
      SRST => reset,
      O => cnt_reg(26),
      SET => GND,
      RST => GND,
      SSET => GND
    );
  cnt_reg_27 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      CE => enable_IBUF_142,
      I => Result(27),
      SRST => reset,
      O => cnt_reg(27),
      SET => GND,
      RST => GND,
      SSET => GND
    );
  cnt_reg_28 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      CE => enable_IBUF_142,
      I => Result(28),
      SRST => reset,
      O => cnt_reg(28),
      SET => GND,
      RST => GND,
      SSET => GND
    );
  cnt_reg_29 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      CE => enable_IBUF_142,
      I => Result(29),
      SRST => reset,
      O => cnt_reg(29),
      SET => GND,
      RST => GND,
      SSET => GND
    );
  cnt_reg_30 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      CE => enable_IBUF_142,
      I => Result(30),
      SRST => reset,
      O => cnt_reg(30),
      SET => GND,
      RST => GND,
      SSET => GND
    );
  cnt_reg_31 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      CE => enable_IBUF_142,
      I => Result(31),
      SRST => reset,
      O => cnt_reg(31),
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Mcount_cnt_reg_cy_0_Q : X_MUX2
    port map (
      IB => N0,
      IA => N1,
      SEL => Mcount_cnt_reg_lut(0),
      O => Mcount_cnt_reg_cy(0)
    );
  Mcount_cnt_reg_xor_0_Q : X_XOR2
    port map (
      I0 => N0,
      I1 => Mcount_cnt_reg_lut(0),
      O => Result(0)
    );
  Mcount_cnt_reg_cy_1_Q : X_MUX2
    port map (
      IB => Mcount_cnt_reg_cy(0),
      IA => N0,
      SEL => Mcount_cnt_reg_cy_1_rt_25,
      O => Mcount_cnt_reg_cy(1)
    );
  Mcount_cnt_reg_xor_1_Q : X_XOR2
    port map (
      I0 => Mcount_cnt_reg_cy(0),
      I1 => Mcount_cnt_reg_cy_1_rt_25,
      O => Result(1)
    );
  Mcount_cnt_reg_cy_2_Q : X_MUX2
    port map (
      IB => Mcount_cnt_reg_cy(1),
      IA => N0,
      SEL => Mcount_cnt_reg_cy_2_rt_47,
      O => Mcount_cnt_reg_cy(2)
    );
  Mcount_cnt_reg_xor_2_Q : X_XOR2
    port map (
      I0 => Mcount_cnt_reg_cy(1),
      I1 => Mcount_cnt_reg_cy_2_rt_47,
      O => Result(2)
    );
  Mcount_cnt_reg_cy_3_Q : X_MUX2
    port map (
      IB => Mcount_cnt_reg_cy(2),
      IA => N0,
      SEL => Mcount_cnt_reg_cy_3_rt_51,
      O => Mcount_cnt_reg_cy(3)
    );
  Mcount_cnt_reg_xor_3_Q : X_XOR2
    port map (
      I0 => Mcount_cnt_reg_cy(2),
      I1 => Mcount_cnt_reg_cy_3_rt_51,
      O => Result(3)
    );
  Mcount_cnt_reg_cy_4_Q : X_MUX2
    port map (
      IB => Mcount_cnt_reg_cy(3),
      IA => N0,
      SEL => Mcount_cnt_reg_cy_4_rt_53,
      O => Mcount_cnt_reg_cy(4)
    );
  Mcount_cnt_reg_xor_4_Q : X_XOR2
    port map (
      I0 => Mcount_cnt_reg_cy(3),
      I1 => Mcount_cnt_reg_cy_4_rt_53,
      O => Result(4)
    );
  Mcount_cnt_reg_cy_5_Q : X_MUX2
    port map (
      IB => Mcount_cnt_reg_cy(4),
      IA => N0,
      SEL => Mcount_cnt_reg_cy_5_rt_55,
      O => Mcount_cnt_reg_cy(5)
    );
  Mcount_cnt_reg_xor_5_Q : X_XOR2
    port map (
      I0 => Mcount_cnt_reg_cy(4),
      I1 => Mcount_cnt_reg_cy_5_rt_55,
      O => Result(5)
    );
  Mcount_cnt_reg_cy_6_Q : X_MUX2
    port map (
      IB => Mcount_cnt_reg_cy(5),
      IA => N0,
      SEL => Mcount_cnt_reg_cy_6_rt_57,
      O => Mcount_cnt_reg_cy(6)
    );
  Mcount_cnt_reg_xor_6_Q : X_XOR2
    port map (
      I0 => Mcount_cnt_reg_cy(5),
      I1 => Mcount_cnt_reg_cy_6_rt_57,
      O => Result(6)
    );
  Mcount_cnt_reg_cy_7_Q : X_MUX2
    port map (
      IB => Mcount_cnt_reg_cy(6),
      IA => N0,
      SEL => Mcount_cnt_reg_cy_7_rt_59,
      O => Mcount_cnt_reg_cy(7)
    );
  Mcount_cnt_reg_xor_7_Q : X_XOR2
    port map (
      I0 => Mcount_cnt_reg_cy(6),
      I1 => Mcount_cnt_reg_cy_7_rt_59,
      O => Result(7)
    );
  Mcount_cnt_reg_cy_8_Q : X_MUX2
    port map (
      IB => Mcount_cnt_reg_cy(7),
      IA => N0,
      SEL => Mcount_cnt_reg_cy_8_rt_61,
      O => Mcount_cnt_reg_cy(8)
    );
  Mcount_cnt_reg_xor_8_Q : X_XOR2
    port map (
      I0 => Mcount_cnt_reg_cy(7),
      I1 => Mcount_cnt_reg_cy_8_rt_61,
      O => Result(8)
    );
  Mcount_cnt_reg_cy_9_Q : X_MUX2
    port map (
      IB => Mcount_cnt_reg_cy(8),
      IA => N0,
      SEL => Mcount_cnt_reg_cy_9_rt_63,
      O => Mcount_cnt_reg_cy(9)
    );
  Mcount_cnt_reg_xor_9_Q : X_XOR2
    port map (
      I0 => Mcount_cnt_reg_cy(8),
      I1 => Mcount_cnt_reg_cy_9_rt_63,
      O => Result(9)
    );
  Mcount_cnt_reg_cy_10_Q : X_MUX2
    port map (
      IB => Mcount_cnt_reg_cy(9),
      IA => N0,
      SEL => Mcount_cnt_reg_cy_10_rt_5,
      O => Mcount_cnt_reg_cy(10)
    );
  Mcount_cnt_reg_xor_10_Q : X_XOR2
    port map (
      I0 => Mcount_cnt_reg_cy(9),
      I1 => Mcount_cnt_reg_cy_10_rt_5,
      O => Result(10)
    );
  Mcount_cnt_reg_cy_11_Q : X_MUX2
    port map (
      IB => Mcount_cnt_reg_cy(10),
      IA => N0,
      SEL => Mcount_cnt_reg_cy_11_rt_7,
      O => Mcount_cnt_reg_cy(11)
    );
  Mcount_cnt_reg_xor_11_Q : X_XOR2
    port map (
      I0 => Mcount_cnt_reg_cy(10),
      I1 => Mcount_cnt_reg_cy_11_rt_7,
      O => Result(11)
    );
  Mcount_cnt_reg_cy_12_Q : X_MUX2
    port map (
      IB => Mcount_cnt_reg_cy(11),
      IA => N0,
      SEL => Mcount_cnt_reg_cy_12_rt_9,
      O => Mcount_cnt_reg_cy(12)
    );
  Mcount_cnt_reg_xor_12_Q : X_XOR2
    port map (
      I0 => Mcount_cnt_reg_cy(11),
      I1 => Mcount_cnt_reg_cy_12_rt_9,
      O => Result(12)
    );
  Mcount_cnt_reg_cy_13_Q : X_MUX2
    port map (
      IB => Mcount_cnt_reg_cy(12),
      IA => N0,
      SEL => Mcount_cnt_reg_cy_13_rt_11,
      O => Mcount_cnt_reg_cy(13)
    );
  Mcount_cnt_reg_xor_13_Q : X_XOR2
    port map (
      I0 => Mcount_cnt_reg_cy(12),
      I1 => Mcount_cnt_reg_cy_13_rt_11,
      O => Result(13)
    );
  Mcount_cnt_reg_cy_14_Q : X_MUX2
    port map (
      IB => Mcount_cnt_reg_cy(13),
      IA => N0,
      SEL => Mcount_cnt_reg_cy_14_rt_13,
      O => Mcount_cnt_reg_cy(14)
    );
  Mcount_cnt_reg_xor_14_Q : X_XOR2
    port map (
      I0 => Mcount_cnt_reg_cy(13),
      I1 => Mcount_cnt_reg_cy_14_rt_13,
      O => Result(14)
    );
  Mcount_cnt_reg_cy_15_Q : X_MUX2
    port map (
      IB => Mcount_cnt_reg_cy(14),
      IA => N0,
      SEL => Mcount_cnt_reg_cy_15_rt_15,
      O => Mcount_cnt_reg_cy(15)
    );
  Mcount_cnt_reg_xor_15_Q : X_XOR2
    port map (
      I0 => Mcount_cnt_reg_cy(14),
      I1 => Mcount_cnt_reg_cy_15_rt_15,
      O => Result(15)
    );
  Mcount_cnt_reg_cy_16_Q : X_MUX2
    port map (
      IB => Mcount_cnt_reg_cy(15),
      IA => N0,
      SEL => Mcount_cnt_reg_cy_16_rt_17,
      O => Mcount_cnt_reg_cy(16)
    );
  Mcount_cnt_reg_xor_16_Q : X_XOR2
    port map (
      I0 => Mcount_cnt_reg_cy(15),
      I1 => Mcount_cnt_reg_cy_16_rt_17,
      O => Result(16)
    );
  Mcount_cnt_reg_cy_17_Q : X_MUX2
    port map (
      IB => Mcount_cnt_reg_cy(16),
      IA => N0,
      SEL => Mcount_cnt_reg_cy_17_rt_19,
      O => Mcount_cnt_reg_cy(17)
    );
  Mcount_cnt_reg_xor_17_Q : X_XOR2
    port map (
      I0 => Mcount_cnt_reg_cy(16),
      I1 => Mcount_cnt_reg_cy_17_rt_19,
      O => Result(17)
    );
  Mcount_cnt_reg_cy_18_Q : X_MUX2
    port map (
      IB => Mcount_cnt_reg_cy(17),
      IA => N0,
      SEL => Mcount_cnt_reg_cy_18_rt_21,
      O => Mcount_cnt_reg_cy(18)
    );
  Mcount_cnt_reg_xor_18_Q : X_XOR2
    port map (
      I0 => Mcount_cnt_reg_cy(17),
      I1 => Mcount_cnt_reg_cy_18_rt_21,
      O => Result(18)
    );
  Mcount_cnt_reg_cy_19_Q : X_MUX2
    port map (
      IB => Mcount_cnt_reg_cy(18),
      IA => N0,
      SEL => Mcount_cnt_reg_cy_19_rt_23,
      O => Mcount_cnt_reg_cy(19)
    );
  Mcount_cnt_reg_xor_19_Q : X_XOR2
    port map (
      I0 => Mcount_cnt_reg_cy(18),
      I1 => Mcount_cnt_reg_cy_19_rt_23,
      O => Result(19)
    );
  Mcount_cnt_reg_cy_20_Q : X_MUX2
    port map (
      IB => Mcount_cnt_reg_cy(19),
      IA => N0,
      SEL => Mcount_cnt_reg_cy_20_rt_27,
      O => Mcount_cnt_reg_cy(20)
    );
  Mcount_cnt_reg_xor_20_Q : X_XOR2
    port map (
      I0 => Mcount_cnt_reg_cy(19),
      I1 => Mcount_cnt_reg_cy_20_rt_27,
      O => Result(20)
    );
  Mcount_cnt_reg_cy_21_Q : X_MUX2
    port map (
      IB => Mcount_cnt_reg_cy(20),
      IA => N0,
      SEL => Mcount_cnt_reg_cy_21_rt_29,
      O => Mcount_cnt_reg_cy(21)
    );
  Mcount_cnt_reg_xor_21_Q : X_XOR2
    port map (
      I0 => Mcount_cnt_reg_cy(20),
      I1 => Mcount_cnt_reg_cy_21_rt_29,
      O => Result(21)
    );
  Mcount_cnt_reg_cy_22_Q : X_MUX2
    port map (
      IB => Mcount_cnt_reg_cy(21),
      IA => N0,
      SEL => Mcount_cnt_reg_cy_22_rt_31,
      O => Mcount_cnt_reg_cy(22)
    );
  Mcount_cnt_reg_xor_22_Q : X_XOR2
    port map (
      I0 => Mcount_cnt_reg_cy(21),
      I1 => Mcount_cnt_reg_cy_22_rt_31,
      O => Result(22)
    );
  Mcount_cnt_reg_cy_23_Q : X_MUX2
    port map (
      IB => Mcount_cnt_reg_cy(22),
      IA => N0,
      SEL => Mcount_cnt_reg_cy_23_rt_33,
      O => Mcount_cnt_reg_cy(23)
    );
  Mcount_cnt_reg_xor_23_Q : X_XOR2
    port map (
      I0 => Mcount_cnt_reg_cy(22),
      I1 => Mcount_cnt_reg_cy_23_rt_33,
      O => Result(23)
    );
  Mcount_cnt_reg_cy_24_Q : X_MUX2
    port map (
      IB => Mcount_cnt_reg_cy(23),
      IA => N0,
      SEL => Mcount_cnt_reg_cy_24_rt_35,
      O => Mcount_cnt_reg_cy(24)
    );
  Mcount_cnt_reg_xor_24_Q : X_XOR2
    port map (
      I0 => Mcount_cnt_reg_cy(23),
      I1 => Mcount_cnt_reg_cy_24_rt_35,
      O => Result(24)
    );
  Mcount_cnt_reg_cy_25_Q : X_MUX2
    port map (
      IB => Mcount_cnt_reg_cy(24),
      IA => N0,
      SEL => Mcount_cnt_reg_cy_25_rt_37,
      O => Mcount_cnt_reg_cy(25)
    );
  Mcount_cnt_reg_xor_25_Q : X_XOR2
    port map (
      I0 => Mcount_cnt_reg_cy(24),
      I1 => Mcount_cnt_reg_cy_25_rt_37,
      O => Result(25)
    );
  Mcount_cnt_reg_cy_26_Q : X_MUX2
    port map (
      IB => Mcount_cnt_reg_cy(25),
      IA => N0,
      SEL => Mcount_cnt_reg_cy_26_rt_39,
      O => Mcount_cnt_reg_cy(26)
    );
  Mcount_cnt_reg_xor_26_Q : X_XOR2
    port map (
      I0 => Mcount_cnt_reg_cy(25),
      I1 => Mcount_cnt_reg_cy_26_rt_39,
      O => Result(26)
    );
  Mcount_cnt_reg_cy_27_Q : X_MUX2
    port map (
      IB => Mcount_cnt_reg_cy(26),
      IA => N0,
      SEL => Mcount_cnt_reg_cy_27_rt_41,
      O => Mcount_cnt_reg_cy(27)
    );
  Mcount_cnt_reg_xor_27_Q : X_XOR2
    port map (
      I0 => Mcount_cnt_reg_cy(26),
      I1 => Mcount_cnt_reg_cy_27_rt_41,
      O => Result(27)
    );
  Mcount_cnt_reg_cy_28_Q : X_MUX2
    port map (
      IB => Mcount_cnt_reg_cy(27),
      IA => N0,
      SEL => Mcount_cnt_reg_cy_28_rt_43,
      O => Mcount_cnt_reg_cy(28)
    );
  Mcount_cnt_reg_xor_28_Q : X_XOR2
    port map (
      I0 => Mcount_cnt_reg_cy(27),
      I1 => Mcount_cnt_reg_cy_28_rt_43,
      O => Result(28)
    );
  Mcount_cnt_reg_cy_29_Q : X_MUX2
    port map (
      IB => Mcount_cnt_reg_cy(28),
      IA => N0,
      SEL => Mcount_cnt_reg_cy_29_rt_45,
      O => Mcount_cnt_reg_cy(29)
    );
  Mcount_cnt_reg_xor_29_Q : X_XOR2
    port map (
      I0 => Mcount_cnt_reg_cy(28),
      I1 => Mcount_cnt_reg_cy_29_rt_45,
      O => Result(29)
    );
  Mcount_cnt_reg_cy_30_Q : X_MUX2
    port map (
      IB => Mcount_cnt_reg_cy(29),
      IA => N0,
      SEL => Mcount_cnt_reg_cy_30_rt_49,
      O => Mcount_cnt_reg_cy(30)
    );
  Mcount_cnt_reg_xor_30_Q : X_XOR2
    port map (
      I0 => Mcount_cnt_reg_cy(29),
      I1 => Mcount_cnt_reg_cy_30_rt_49,
      O => Result(30)
    );
  Mcount_cnt_reg_xor_31_Q : X_XOR2
    port map (
      I0 => Mcount_cnt_reg_cy(30),
      I1 => Mcount_cnt_reg_xor_31_rt_65,
      O => Result(31)
    );
  nreset_IBUF : X_BUF
    port map (
      I => nreset,
      O => nreset_IBUF_144
    );
  enable_IBUF : X_BUF
    port map (
      I => enable,
      O => enable_IBUF_142
    );
  Mcount_cnt_reg_cy_1_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => cnt_reg(1),
      O => Mcount_cnt_reg_cy_1_rt_25,
      ADR1 => GND
    );
  Mcount_cnt_reg_cy_2_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => cnt_reg(2),
      O => Mcount_cnt_reg_cy_2_rt_47,
      ADR1 => GND
    );
  Mcount_cnt_reg_cy_3_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => cnt_reg(3),
      O => Mcount_cnt_reg_cy_3_rt_51,
      ADR1 => GND
    );
  Mcount_cnt_reg_cy_4_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => cnt_reg(4),
      O => Mcount_cnt_reg_cy_4_rt_53,
      ADR1 => GND
    );
  Mcount_cnt_reg_cy_5_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => cnt_reg(5),
      O => Mcount_cnt_reg_cy_5_rt_55,
      ADR1 => GND
    );
  Mcount_cnt_reg_cy_6_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => cnt_reg(6),
      O => Mcount_cnt_reg_cy_6_rt_57,
      ADR1 => GND
    );
  Mcount_cnt_reg_cy_7_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => cnt_reg(7),
      O => Mcount_cnt_reg_cy_7_rt_59,
      ADR1 => GND
    );
  Mcount_cnt_reg_cy_8_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => cnt_reg(8),
      O => Mcount_cnt_reg_cy_8_rt_61,
      ADR1 => GND
    );
  Mcount_cnt_reg_cy_9_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => cnt_reg(9),
      O => Mcount_cnt_reg_cy_9_rt_63,
      ADR1 => GND
    );
  Mcount_cnt_reg_cy_10_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => cnt_reg(10),
      O => Mcount_cnt_reg_cy_10_rt_5,
      ADR1 => GND
    );
  Mcount_cnt_reg_cy_11_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => cnt_reg(11),
      O => Mcount_cnt_reg_cy_11_rt_7,
      ADR1 => GND
    );
  Mcount_cnt_reg_cy_12_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => cnt_reg(12),
      O => Mcount_cnt_reg_cy_12_rt_9,
      ADR1 => GND
    );
  Mcount_cnt_reg_cy_13_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => cnt_reg(13),
      O => Mcount_cnt_reg_cy_13_rt_11,
      ADR1 => GND
    );
  Mcount_cnt_reg_cy_14_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => cnt_reg(14),
      O => Mcount_cnt_reg_cy_14_rt_13,
      ADR1 => GND
    );
  Mcount_cnt_reg_cy_15_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => cnt_reg(15),
      O => Mcount_cnt_reg_cy_15_rt_15,
      ADR1 => GND
    );
  Mcount_cnt_reg_cy_16_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => cnt_reg(16),
      O => Mcount_cnt_reg_cy_16_rt_17,
      ADR1 => GND
    );
  Mcount_cnt_reg_cy_17_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => cnt_reg(17),
      O => Mcount_cnt_reg_cy_17_rt_19,
      ADR1 => GND
    );
  Mcount_cnt_reg_cy_18_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => cnt_reg(18),
      O => Mcount_cnt_reg_cy_18_rt_21,
      ADR1 => GND
    );
  Mcount_cnt_reg_cy_19_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => cnt_reg(19),
      O => Mcount_cnt_reg_cy_19_rt_23,
      ADR1 => GND
    );
  Mcount_cnt_reg_cy_20_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => cnt_reg(20),
      O => Mcount_cnt_reg_cy_20_rt_27,
      ADR1 => GND
    );
  Mcount_cnt_reg_cy_21_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => cnt_reg(21),
      O => Mcount_cnt_reg_cy_21_rt_29,
      ADR1 => GND
    );
  Mcount_cnt_reg_cy_22_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => cnt_reg(22),
      O => Mcount_cnt_reg_cy_22_rt_31,
      ADR1 => GND
    );
  Mcount_cnt_reg_cy_23_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => cnt_reg(23),
      O => Mcount_cnt_reg_cy_23_rt_33,
      ADR1 => GND
    );
  Mcount_cnt_reg_cy_24_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => cnt_reg(24),
      O => Mcount_cnt_reg_cy_24_rt_35,
      ADR1 => GND
    );
  Mcount_cnt_reg_cy_25_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => cnt_reg(25),
      O => Mcount_cnt_reg_cy_25_rt_37,
      ADR1 => GND
    );
  Mcount_cnt_reg_cy_26_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => cnt_reg(26),
      O => Mcount_cnt_reg_cy_26_rt_39,
      ADR1 => GND
    );
  Mcount_cnt_reg_cy_27_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => cnt_reg(27),
      O => Mcount_cnt_reg_cy_27_rt_41,
      ADR1 => GND
    );
  Mcount_cnt_reg_cy_28_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => cnt_reg(28),
      O => Mcount_cnt_reg_cy_28_rt_43,
      ADR1 => GND
    );
  Mcount_cnt_reg_cy_29_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => cnt_reg(29),
      O => Mcount_cnt_reg_cy_29_rt_45,
      ADR1 => GND
    );
  Mcount_cnt_reg_cy_30_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => cnt_reg(30),
      O => Mcount_cnt_reg_cy_30_rt_49,
      ADR1 => GND
    );
  Mcount_cnt_reg_xor_31_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => cnt_reg(31),
      O => Mcount_cnt_reg_xor_31_rt_65,
      ADR1 => GND
    );
  Mcount_cnt_reg_lut_0_INV_0 : X_INV
    port map (
      I => cnt_reg(0),
      O => Mcount_cnt_reg_lut(0)
    );
  reset1_INV_0 : X_INV
    port map (
      I => nreset_IBUF_144,
      O => reset
    );
  clk_BUFGP_BUFG : X_CKBUF
    port map (
      I => clk_BUFGP_IBUFG_2,
      O => clk_BUFGP
    );
  clk_BUFGP_IBUFG : X_CKBUF
    port map (
      I => clk,
      O => clk_BUFGP_IBUFG_2
    );
  cnt_0_OBUF : X_OBUF
    port map (
      I => cnt_reg(25),
      O => cnt(0)
    );
  cnt_1_OBUF : X_OBUF
    port map (
      I => cnt_reg(26),
      O => cnt(1)
    );
  cnt_2_OBUF : X_OBUF
    port map (
      I => cnt_reg(27),
      O => cnt(2)
    );
  cnt_3_OBUF : X_OBUF
    port map (
      I => cnt_reg(28),
      O => cnt(3)
    );
  cnt_4_OBUF : X_OBUF
    port map (
      I => cnt_reg(29),
      O => cnt(4)
    );
  cnt_5_OBUF : X_OBUF
    port map (
      I => cnt_reg(30),
      O => cnt(5)
    );
  cnt_6_OBUF : X_OBUF
    port map (
      I => cnt_reg(31),
      O => cnt(6)
    );
  NlwBlock_counterN_GND : X_ZERO
    port map (
      O => GND
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

