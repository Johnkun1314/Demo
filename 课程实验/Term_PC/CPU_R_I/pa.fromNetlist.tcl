
# PlanAhead Launch Script for Post-Synthesis pin planning, created by Project Navigator

create_project -name CPU_R_I -dir "E:/ISE/Term_PC/CPU_R_I/planAhead_run_2" -part xc7a100tfgg484-3
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "E:/ISE/Term_PC/CPU_R_I/CPU_R_I.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {E:/ISE/Term_PC/CPU_R_I} {ipcore_dir} }
add_files [list {ipcore_dir/RAM_A.ncf}] -fileset [get_property constrset [current_run]]
add_files [list {ipcore_dir/RAM_B.ncf}] -fileset [get_property constrset [current_run]]
set_param project.pinAheadLayout  yes
set_property target_constrs_file "CPU_R_I.ucf" [current_fileset -constrset]
add_files [list {CPU_R_I.ucf}] -fileset [get_property constrset [current_run]]
link_design
