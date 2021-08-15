quit -sim
vlib work

vcom full_adder.vhd
vcom adderN.vhd
vcom adderN_test.vhd

vsim -novopt adderN_test

add wave sim:/adderN_test/*

run 1000 ns