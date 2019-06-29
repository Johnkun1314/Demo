
# PlanAhead Launch Script for Post-Synthesis pin planning, created by Project Navigator

create_project -name Get_Inst -dir "E:/ISE/Term_PC/Get_Inst/planAhead_run_4" -part xc7a100tfgg484-3
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "E:/ISE/Term_PC/Get_Inst/Get_Inst.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {E:/ISE/Term_PC/Get_Inst} {ipcore_dir} }
add_files [list {ipcore_dir/Inst_Rom.ncf}] -fileset [get_property constrset [current_run]]
set_param project.pinAheadLayout  yes
set_property target_constrs_file "Get_Inst.ucf" [current_fileset -constrset]
add_files [list {Get_Inst.ucf}] -fileset [get_property constrset [current_run]]
link_design
