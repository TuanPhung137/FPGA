quit -sim
vlib work

vcom full_adder.vhd
vcom add_gen.vhd
vcom add_sub_gen.vhd
vcom add_sub_test.vhd

vsim -novopt add_sub_test

add wave sim:/add_sub_test/*

run 1000 ns