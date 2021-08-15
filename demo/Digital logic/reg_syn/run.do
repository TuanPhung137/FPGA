quit -sim
vlib work

vcom reg_syn.vhd
vcom reg_test.vhd

vsim -novopt reg_test

add wave sim:/reg_test/*

run 1000 ns