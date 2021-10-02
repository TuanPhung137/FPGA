quit -sim
vlib work

vcom im_ram.vhd
vcom median_filter.vhd
vcom filter_testbench.vhd

vsim -novopt filter_testbench

add wave sim:/filter_testbench/*

run 5000000 ns