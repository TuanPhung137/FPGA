quit -sim
vlib work

vcom counter_NBCD.vhd
vcom counter_test.vhd

vsim -novopt counter_test

add wave sim:/counter_test/*

run 2000 ns