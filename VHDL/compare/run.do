quit -sim
vlib work

vcom compare.vhd 
vcom compare_test.vhd

vsim -novopt compare_test

add wave sim:/compare_test/*

run 2000 ns