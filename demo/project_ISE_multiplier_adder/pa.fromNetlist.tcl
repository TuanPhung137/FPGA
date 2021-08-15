
# PlanAhead Launch Script for Post-Synthesis pin planning, created by Project Navigator

create_project -name project_ISE_multiplier_adder -dir "D:/Document FPGA/ThayThuy/FPGA/Virtex_4_ML402/project_ISE_multiplier_adder/planAhead_run_1" -part xc4vsx35ff668-10
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "D:/Document FPGA/ThayThuy/FPGA/Virtex_4_ML402/project_ISE_multiplier_adder/add_mul_2bit.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {D:/Document FPGA/ThayThuy/FPGA/Virtex_4_ML402/project_ISE_multiplier_adder} }
set_param project.pinAheadLayout  yes
set_property target_constrs_file "add_mul_2bit.ucf" [current_fileset -constrset]
add_files [list {add_mul_2bit.ucf}] -fileset [get_property constrset [current_run]]
link_design
