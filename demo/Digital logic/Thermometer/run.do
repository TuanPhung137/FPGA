quit -sim
vlib work

vcom thermometer.vhd
vcom thermometer_test.vhd

vsim thermometer_test

add wave sim:/thermometer_test/*

run 1000 ns