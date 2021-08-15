quit -sim
vlib work

vcom UART_RX.vhd
vcom UART_RX_TB.vhd

vsim -novopt UART_RX_TB

add wave sim:/UART_RX_TB/*

run 10000000 ns