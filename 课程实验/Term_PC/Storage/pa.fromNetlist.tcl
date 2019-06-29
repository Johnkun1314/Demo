
# PlanAhead Launch Script for Post-Synthesis pin planning, created by Project Navigator

create_project -name Storage -dir "E:/ISE/Term_PC/Storage/planAhead_run_1" -part xc7a100tfgg484-3
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "E:/ISE/Term_PC/Storage/testmodule.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {E:/ISE/Term_PC/Storage} {ipcore_dir} }
add_files [list {ipcore_dir/RAM_B.ncf}] -fileset [get_property constrset [current_run]]
set_param project.pinAheadLayout  yes
set_property target_constrs_file "testmodule.ucf" [current_fileset -constrset]
add_files [list {testmodule.ucf}] -fileset [get_property constrset [current_run]]
link_design
