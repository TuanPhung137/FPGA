quit -sim
vlib work

vcom full_adder.vhd
vcom add_gen.vhd
vcom add_testbench.vhd

vsim -novopt add_testbench

add wave sim:/add_testbench/*

run -all