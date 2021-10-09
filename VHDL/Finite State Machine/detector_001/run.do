quit -sim
vlib work

vcom detector_001.vhd
vcom detector_test.vhd

vsim -novopt detector_test

add wave sim:/detector_test/*

run 10000 ns