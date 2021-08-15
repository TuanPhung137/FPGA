
# PlanAhead Launch Script for Post-Synthesis pin planning, created by Project Navigator

create_project -name project_ISE_subtractionN -dir "D:/Document FPGA/ThayThuy/FPGA/Virtex_4_ML402/project_ISE_subtractionN/planAhead_run_1" -part xc4vsx35ff668-10
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "D:/Document FPGA/ThayThuy/FPGA/Virtex_4_ML402/project_ISE_subtractionN/subtractionN.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {D:/Document FPGA/ThayThuy/FPGA/Virtex_4_ML402/project_ISE_subtractionN} }
set_param project.pinAheadLayout  yes
set_property target_constrs_file "subtractionN.ucf" [current_fileset -constrset]
add_files [list {subtractionN.ucf}] -fileset [get_property constrset [current_run]]
link_design
