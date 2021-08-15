quit -sim
vlib work

vcom NBCD.vhd
vcom NBCD_test.vhd

vsim -novopt NBCD_test

add wave sim:/NBCD_test/*

run 10000 ns