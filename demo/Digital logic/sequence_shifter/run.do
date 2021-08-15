quit -sim
vlib work

vcom shif_seq.vhd
vcom shif_test.vhd

vsim -novopt shif_test

add wave sim:/shif_test/*

run 1000 ns