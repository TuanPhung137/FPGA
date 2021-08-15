quit -sim
vlib work

vcom adder4.vhd
vcom adder8.vhd
vcom adder8_test.vhd

vsim -novopt adder8_test

add wave sim:/adder8_test/*

run 1000 ns