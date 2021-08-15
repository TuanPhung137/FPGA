--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: control_led_synthesis.vhd
-- /___/   /\     Timestamp: Mon Apr 12 11:19:50 2021
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm control_led -w -dir netgen/synthesis -ofmt vhdl -sim control_led.ngc control_led_synthesis.vhd 
-- Device	: xc4vsx35-10-ff668
-- Input file	: control_led.ngc
-- Output file	: D:\Document FPGA\ThayThuy\FPGA\Virtex_4_ML402\Control_led\control_led\netgen\synthesis\control_led_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: control_led
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

entity control_led is
  port (
    led : out STD_LOGIC_VECTOR ( 8 downto 0 ); 
    sw : in STD_LOGIC_VECTOR ( 3 downto 0 ); 
    button : in STD_LOGIC_VECTOR ( 4 downto 0 ) 
  );
end control_led;

architecture Structure of control_led is
  signal led_0_OBUF_14 : STD_LOGIC; 
  signal led_1_OBUF_15 : STD_LOGIC; 
  signal led_2_OBUF_16 : STD_LOGIC; 
  signal led_3_OBUF_17 : STD_LOGIC; 
  signal led_4_OBUF_18 : STD_LOGIC; 
  signal led_5_OBUF_19 : STD_LOGIC; 
  signal led_6_OBUF_20 : STD_LOGIC; 
  signal led_7_OBUF_21 : STD_LOGIC; 
  signal led_8_OBUF_22 : STD_LOGIC; 
begin
  sw_3_IBUF : IBUF
    port map (
      I => sw(3),
      O => led_8_OBUF_22
    );
  sw_2_IBUF : IBUF
    port map (
      I => sw(2),
      O => led_7_OBUF_21
    );
  sw_1_IBUF : IBUF
    port map (
      I => sw(1),
      O => led_6_OBUF_20
    );
  sw_0_IBUF : IBUF
    port map (
      I => sw(0),
      O => led_5_OBUF_19
    );
  button_4_IBUF : IBUF
    port map (
      I => button(4),
      O => led_4_OBUF_18
    );
  button_3_IBUF : IBUF
    port map (
      I => button(3),
      O => led_3_OBUF_17
    );
  button_2_IBUF : IBUF
    port map (
      I => button(2),
      O => led_2_OBUF_16
    );
  button_1_IBUF : IBUF
    port map (
      I => button(1),
      O => led_1_OBUF_15
    );
  button_0_IBUF : IBUF
    port map (
      I => button(0),
      O => led_0_OBUF_14
    );
  led_8_OBUF : OBUF
    port map (
      I => led_8_OBUF_22,
      O => led(8)
    );
  led_7_OBUF : OBUF
    port map (
      I => led_7_OBUF_21,
      O => led(7)
    );
  led_6_OBUF : OBUF
    port map (
      I => led_6_OBUF_20,
      O => led(6)
    );
  led_5_OBUF : OBUF
    port map (
      I => led_5_OBUF_19,
      O => led(5)
    );
  led_4_OBUF : OBUF
    port map (
      I => led_4_OBUF_18,
      O => led(4)
    );
  led_3_OBUF : OBUF
    port map (
      I => led_3_OBUF_17,
      O => led(3)
    );
  led_2_OBUF : OBUF
    port map (
      I => led_2_OBUF_16,
      O => led(2)
    );
  led_1_OBUF : OBUF
    port map (
      I => led_1_OBUF_15,
      O => led(1)
    );
  led_0_OBUF : OBUF
    port map (
      I => led_0_OBUF_14,
      O => led(0)
    );

end Structure;

