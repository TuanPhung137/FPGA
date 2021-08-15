quit -sim
vlib work

vcom MUX.vhd
vcom MUX_test.vhd

vsim -novopt MUX_test

add wave sim:/MUX_test/*

run 100 ns