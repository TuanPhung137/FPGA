quit -sim
vlib work

vcom SEG_7.vhd
vcom SEG_7_test.vhd

vsim -novopt SEG_7_test

add wave sim:/SEG_7_test/*

run 1000 ns