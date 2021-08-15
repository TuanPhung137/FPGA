quit -sim
vlib work

vcom full_adder.vhd
vcom test_full.vhd

vsim -novopt test_full

add wave sim:/test_full/*

run 2000 ns