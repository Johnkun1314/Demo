
# PlanAhead Launch Script for Post-Synthesis pin planning, created by Project Navigator

create_project -name shiyan_11 -dir "D:/FPGA/shiyan_11/planAhead_run_1" -part xc7a100tfgg484-3
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "D:/FPGA/shiyan_11/shiyan_11.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {D:/FPGA/shiyan_11} }
set_param project.pinAheadLayout  yes
set_property target_constrs_file "shiyan_11.ucf" [current_fileset -constrset]
add_files [list {shiyan_11.ucf}] -fileset [get_property constrset [current_run]]
link_design
