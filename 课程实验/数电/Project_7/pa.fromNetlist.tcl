
# PlanAhead Launch Script for Post-Synthesis pin planning, created by Project Navigator

create_project -name Project_7 -dir "E:/ISE/Project_7/planAhead_run_1" -part xc7a100tfgg484-3
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "E:/ISE/Project_7/Demo_7.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {E:/ISE/Project_7} }
set_param project.pinAheadLayout  yes
set_property target_constrs_file "Demo_7.ucf" [current_fileset -constrset]
add_files [list {Demo_7.ucf}] -fileset [get_property constrset [current_run]]
link_design
