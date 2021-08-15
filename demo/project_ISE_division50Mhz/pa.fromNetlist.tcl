
# PlanAhead Launch Script for Post-Synthesis pin planning, created by Project Navigator

create_project -name project_ISE_division50Mhz -dir "D:/Document FPGA/ThayThuy/FPGA/Virtex_4_ML402/project_ISE_division50Mhz/planAhead_run_2" -part xc4vsx35ff668-10
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "D:/Document FPGA/ThayThuy/FPGA/Virtex_4_ML402/project_ISE_division50Mhz/div_100Mhz.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {D:/Document FPGA/ThayThuy/FPGA/Virtex_4_ML402/project_ISE_division50Mhz} }
set_param project.pinAheadLayout  yes
set_property target_constrs_file "div_100Mhz.ucf" [current_fileset -constrset]
add_files [list {div_100Mhz.ucf}] -fileset [get_property constrset [current_run]]
link_design
