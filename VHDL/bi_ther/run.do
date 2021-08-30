quit -sim
vlib work

vcom bi_ther.vhd
vcom bi_ther_test.vhd

vsim -novopt bi_ther_test

add wave sim:/bi_ther_test/*

run 1000 ns