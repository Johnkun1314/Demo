
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name shiyan_9 -dir "D:/FPGA/shiyan_9/planAhead_run_1" -part xc7a100tfgg484-3
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "shiyan_9.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {shiyan_9.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set_property top shiyan_9 $srcset
add_files [list {shiyan_9.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc7a100tfgg484-3
