
# PlanAhead Launch Script for Post-Synthesis pin planning, created by Project Navigator

create_project -name control_led -dir "D:/Document FPGA/ThayThuy/FPGA/Virtex_4_ML402/Control_led/control_led/planAhead_run_4" -part xc4vsx35ff668-10
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "D:/Document FPGA/ThayThuy/FPGA/Virtex_4_ML402/Control_led/control_led/control_led.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {D:/Document FPGA/ThayThuy/FPGA/Virtex_4_ML402/Control_led/control_led} }
set_param project.pinAheadLayout  yes
set_property target_constrs_file "control_led.ucf" [current_fileset -constrset]
add_files [list {control_led.ucf}] -fileset [get_property constrset [current_run]]
link_design
