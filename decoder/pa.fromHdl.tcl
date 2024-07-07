
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name dekoder -dir "C:/Users/PC/Desktop/Predmeti/II godina/AR2/dekoder/planAhead_run_1" -part xc3s1500fg676-4
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "DECODER.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {DECODER.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set_property top DECODER $srcset
add_files [list {DECODER.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc3s1500fg676-4
