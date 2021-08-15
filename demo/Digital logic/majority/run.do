quit -sim
vlib work

vcom majority.vhd
vcom majority_test.vhd

vsim -novopt majority_test

add wave sim:/majority_test/*

run 1000 ns