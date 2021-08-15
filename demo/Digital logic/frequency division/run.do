quit -sim
vlib work

vcom fre_divi.vhd
vcom fre_divi_test.vhd

vsim -novopt fre_divi_test

add wave sim:/fre_divi_test/*

run 10000 ns