quit -sim
vlib work

vcom LS7483.vhd
vcom LS7483_test.vhd

vsim -novopt LS7483_test

add wave sim:/LS7483_test/*

run 100 ns