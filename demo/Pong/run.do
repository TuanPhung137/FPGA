quit -sim
vlib work

vcom Pong_Pkg.vhd
vcom UART_RX.vhd
vcom Sync_To_Count.vhd
vcom VGA_Sync_Pulses.vhd
vcom VGA_Sync_Porch.vhd
vcom Debounce_Switch.vhd
vcom Pong_Top.vhd
vcom Pong_Paddle_Ctrl.vhd
vcom Pong_Ball_Ctrl.vhd
vcom Project10_Pong_Top.vhd
vcom Pong_Top_TB.vhd

vsim -novopt Pong_Top_TB

add wave sim:/Pong_Top_TB/*

run -all