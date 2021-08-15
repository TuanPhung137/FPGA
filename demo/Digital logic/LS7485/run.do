quit -sim
vlib work

vcom LS7485.vhd
vcom LS7485_test.vhd

vsim LS7485_test

add wave sim:/LS7485_test/*

run 100 ns