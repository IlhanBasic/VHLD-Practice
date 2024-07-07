
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name multiplexer -dir "C:/Users/PC/Desktop/Predmeti/II godina/AR2/multiplexer/planAhead_run_2" -part xc3s1500fg676-4
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "MULTIPLEXER.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {MULTIPLEXER.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set_property top MULTIPLEXER $srcset
add_files [list {MULTIPLEXER.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc3s1500fg676-4
