quit -sim 
vlib work

vcom mbn.vhd
vcom mbn_test.vhd

vsim -novopt mbn_test

add wave sim:/mbn_test/*

run 2000 ns