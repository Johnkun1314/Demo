
# PlanAhead Launch Script for Post-Synthesis pin planning, created by Project Navigator

create_project -name Priject_led -dir "E:/ISE/Priject_led/planAhead_run_2" -part xc7a100tfgg484-3
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "E:/ISE/Priject_led/led.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {E:/ISE/Priject_led} }
set_param project.pinAheadLayout  yes
set_property target_constrs_file "led.ucf" [current_fileset -constrset]
add_files [list {led.ucf}] -fileset [get_property constrset [current_run]]
link_design
