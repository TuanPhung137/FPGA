
# PlanAhead Launch Script for Post-Synthesis pin planning, created by Project Navigator

create_project -name project_ISE_counterN -dir "D:/Document FPGA/ThayThuy/FPGA/Virtex_4_ML402/project_ISE_counterN/planAhead_run_5" -part xc4vsx35ff668-10
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "D:/Document FPGA/ThayThuy/FPGA/Virtex_4_ML402/project_ISE_counterN/counterN.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {D:/Document FPGA/ThayThuy/FPGA/Virtex_4_ML402/project_ISE_counterN} }
set_param project.pinAheadLayout  yes
set_property target_constrs_file "counterN.ucf" [current_fileset -constrset]
add_files [list {counterN.ucf}] -fileset [get_property constrset [current_run]]
link_design
