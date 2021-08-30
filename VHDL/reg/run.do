quit -sim
vlib work

vcom reg.vhd
vcom reg_test.vhd

vsim -novopt reg_test

add wave sim:/reg_test/*

run 2000 ns