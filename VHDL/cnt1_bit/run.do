quit -sim
vlib work

vcom cnt1_bit.vhd
vcom cnt1_bit_test.vhd

vsim -novopt cnt1_bit_test

add wave sim:/cnt1_bit_test/*

run 1000 ns