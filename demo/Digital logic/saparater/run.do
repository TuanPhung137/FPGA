quit -sim
vlib work

vcom saparater.vhd
vcom saparater_test.vhd

vsim -novopt saparater_test

add wave sim:/saparater_test/*

run 1000 ns