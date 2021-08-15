quit -sim
vlib work

vcom UART_RX.vhd
vcom UART_TX.vhd
vcom UART_TB.vhd

vsim -novopt UART_TB

add wave sim:/UART_TB/*

run 1000000 ns