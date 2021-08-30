quit -sim 
vlib work

vcom LS74138.vhd
vcom LS74138_test.vhd

vsim -novopt LS74138_test

add wave sim:/LS74138_test/*

run 1000 ns