quit -sim
vlib work

vcom clock_divider.vhd
vcom clock_test.vhd

vsim -novopt clock_test

add wave sim:/clock_test/*

run 20000 ns