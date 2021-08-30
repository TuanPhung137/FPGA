quit -sim
vlib work

vcom full_adder.vhd
vcom adder_test.vhd

vsim -novopt adder_test

add wave sim:/adder_test/*

run 1000 ns