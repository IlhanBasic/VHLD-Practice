
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name IspitZ1 -dir "C:/Users/Korisnik/OneDrive/Desktop/Xillinx share/IspitZ1/planAhead_run_1" -part xc3s1500fg676-4
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "ckt1.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {clock_divider.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {ckt1.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set_property top ckt1 $srcset
add_files [list {ckt1.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc3s1500fg676-4
