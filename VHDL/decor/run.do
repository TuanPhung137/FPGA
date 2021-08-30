quit -sim
vlib work

vcom decor.vhd
vcom decor_test.vhd

vsim -novopt decor_test

add wave sim:/decor_test/*

run 1000 ns