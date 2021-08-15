quit -sim
vlib work

vcom counter.vhd
vcom counter_test.vhd

vsim -novopt counter_test

add wave sim:/counter_test/*

run 1000 ns