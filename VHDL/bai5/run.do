quit -sim
vlib work

vcom bai5.vhd
vcom bai5_test.vhd

vsim -novopt bai5_test

add wave sim:/bai5_test/*

run 1000 ns