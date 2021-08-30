quit -sim
vlib work

vcom MUX2_1.vhd
vcom MUX2_1_test.vhd

vsim -novopt MUX2_1_test

add wave sim:/MUX2_1_test/*

run 1000 ns