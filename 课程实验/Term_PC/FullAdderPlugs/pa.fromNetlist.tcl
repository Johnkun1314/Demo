
# PlanAhead Launch Script for Post-Synthesis pin planning, created by Project Navigator

create_project -name FullAdderPlugs -dir "E:/ISE/Term_PC/FullAdderPlugs/planAhead_run_1" -part xc7a100tfgg484-3
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "E:/ISE/Term_PC/FullAdderPlugs/fulladderplugs.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {E:/ISE/Term_PC/FullAdderPlugs} }
set_param project.pinAheadLayout  yes
set_property target_constrs_file "fulladderplugs.ucf" [current_fileset -constrset]
add_files [list {fulladderplugs.ucf}] -fileset [get_property constrset [current_run]]
link_design
