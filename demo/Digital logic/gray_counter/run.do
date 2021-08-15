quit -sim
vlib work

vcom gray.vhd
vcom gray_test.vhd

vsim -novopt gray_test

add wave sim:/gray_test/*

run 1000 ns