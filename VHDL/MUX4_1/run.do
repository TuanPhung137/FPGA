quit -sim
vlib work

vcom MUX4_1.vhd
vcom MUX4_1_test.vhd

vsim -novopt MUX4_1_test

add wave sim:/MUX4_1_test/*

run 1000 ns