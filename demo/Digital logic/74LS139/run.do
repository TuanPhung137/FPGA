quit -sim
vlib work

vcom LS74139.vhd
vcom LS74139_test.vhd

vsim LS74139_test

add wave sim:/LS74139_test/*

run 100 ns