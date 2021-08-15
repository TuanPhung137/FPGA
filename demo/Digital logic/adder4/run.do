quit -sim
vlib work

vcom full_adder.vhd
vcom adder4.vhd
vcom adder4_test.vhd

vsim -novopt adder4_test

add wave sim:/adder4_test/*

run 100 ns