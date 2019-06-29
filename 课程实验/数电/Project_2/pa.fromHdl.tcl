
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name Project_2 -dir "E:/ISE/Project_2/planAhead_run_2" -part xc7a100tfgg484-3
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "text_2.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {text_2.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set_property top text_2 $srcset
add_files [list {text_2.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc7a100tfgg484-3
