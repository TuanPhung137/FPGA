quit -sim
vlib work

vcom counter.vhd
vcom test_UART.vhd
vcom counter_test.vhd

vsim counter_test

add wave sim:/counter_test/*

run 1000 ns