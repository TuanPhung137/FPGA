quit -sim
vlib work

vcom DEMUX1_4.vhd
vcom DEMUX1_4_test.vhd

vsim -novopt DEMUX1_4_test

add wave sim:/DEMUX1_4_test/*

run 1000 ns