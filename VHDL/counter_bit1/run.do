quit -sim
vlib work

vcom counter_bit1.vhd
vcom counterbit1_test.vhd

vsim -novopt counterbit1_test

add wave sim:/counterbit1_test/*

run 1000 ns