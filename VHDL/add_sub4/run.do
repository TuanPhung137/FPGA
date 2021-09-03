quit -sim
vlib work

vcom add_sub4.vhd
vcom add_sub4_test.vhd

vsim -novopt add_sub4_test

add wave sim:/add_sub4_test/*

run 1000 ns