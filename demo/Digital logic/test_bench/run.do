quit -sim
vlib work

vcom full_adder.vhd
vcom adderN.vhd
vcom adder_testbench.vhd

vsim -novopt adder_testbench

add wave sim:/adder_testbench/*

run -all