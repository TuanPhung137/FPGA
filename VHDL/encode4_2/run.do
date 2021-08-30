quit -sim
vlib work

vcom encode4_2.vhd
vcom encode4_2_test.vhd

vsim -novopt encode4_2_test

add wave sim:/encode4_2_test/*

run 1000 ns