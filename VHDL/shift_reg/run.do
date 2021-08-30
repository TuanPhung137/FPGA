quit -sim
vlib work

vcom shift_reg.vhd
vcom shift_reg_test.vhd

vsim -novopt shift_reg_test

add wave sim:/shift_reg_test/*

run 5000 ns