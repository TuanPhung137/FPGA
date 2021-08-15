quit -sim
vlib work

vcom FIFO_Regs_No_Flags.vhd
vcom FIFO_Regs_No_Flags_TB.vhd

vsim -novopt FIFO_Regs_No_Flags_TB

add wave sim:/FIFO_Regs_No_Flags_TB/*

run 100000 ns