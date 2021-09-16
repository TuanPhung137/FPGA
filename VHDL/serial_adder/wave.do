onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /serial_adder_testbench/DUT/clk
add wave -noupdate /serial_adder_testbench/DUT/reset
add wave -noupdate /serial_adder_testbench/DUT/Load
add wave -noupdate /serial_adder_testbench/DUT/Cin
add wave -noupdate -radix unsigned /serial_adder_testbench/DUT/A
add wave -noupdate -radix unsigned /serial_adder_testbench/DUT/B
add wave -noupdate /serial_adder_testbench/DUT/Cout
add wave -noupdate /serial_adder_testbench/DUT/result_valib
add wave -noupdate -radix unsigned /serial_adder_testbench/DUT/Sum
add wave -noupdate /serial_adder_testbench/ETALON/Cout
add wave -noupdate /serial_adder_testbench/ETALON/result_valib
add wave -noupdate -radix unsigned /serial_adder_testbench/ETALON/Sum
add wave -noupdate /serial_adder_testbench/DUT/counter_enable
add wave -noupdate /serial_adder_testbench/DUT/shifter_enable
add wave -noupdate /serial_adder_testbench/DUT/counter_reset
add wave -noupdate /serial_adder_testbench/DUT/A_temp
add wave -noupdate /serial_adder_testbench/DUT/B_temp
add wave -noupdate /serial_adder_testbench/DUT/bitSum
add wave -noupdate /serial_adder_testbench/DUT/reg_cout
add wave -noupdate /serial_adder_testbench/DUT/regA
add wave -noupdate /serial_adder_testbench/DUT/regB
add wave -noupdate /serial_adder_testbench/DUT/reg_Cin
add wave -noupdate /serial_adder_testbench/DUT/bit_Cin
add wave -noupdate /serial_adder_testbench/DUT/cnt
add wave -noupdate /serial_adder_testbench/DUT/cnt_valib
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {443 ns} 0}
quietly wave cursor active 1
configure wave -namecolwidth 276
configure wave -valuecolwidth 40
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ns} {1535 ns}
