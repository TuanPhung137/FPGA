quit -sim
vlib work

vcom full_adder.vhd
vcom adder_2.vhd
vcom shifter.vhd
vcom counter.vhd
vcom ess_comp.vhd
vcom serial_adder.vhd
vcom serial_adder_testbench.vhd

vsim -novopt serial_adder_testbench

add wave sim:/serial_adder_testbench/*

run 1000000 ns
