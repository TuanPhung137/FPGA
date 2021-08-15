quit -sim
vlib work

vcom shifter.vhd
vcom shifter_test.vhd

vsim -novopt shifter_test

add wave sim:/shifter_test/*

run 10000 ns