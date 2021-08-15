quit -sim
vlib work

vcom DEMUX.vhd 
vcom DEMUX_test.vhd

vsim  DEMUX_test

add wave sim:/DEMUX_test/*

run 100 ns