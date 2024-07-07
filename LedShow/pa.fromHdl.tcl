
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name LedShow -dir "C:/Users/PC/Desktop/Predmeti/II godina/AR2/LedShow/planAhead_run_1" -part xc3s1500fg676-4
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "LED_Controller.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {Clock_divider.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {Led_Show.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set_property top LED_Controller $srcset
add_files [list {LED_Controller.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc3s1500fg676-4
