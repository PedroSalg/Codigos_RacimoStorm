
# PlanAhead Launch Script for Post-Synthesis floorplanning, created by Project Navigator

create_project -name Erase_Sequence -dir "/home/pedro/Documents/ISE/Erase_Sequence/planAhead_run_3" -part xc6slx9tqg144-2
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "/home/pedro/Documents/ISE/Erase_Sequence/TOP.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {/home/pedro/Documents/ISE/Erase_Sequence} }
set_property target_constrs_file "FPGA.ucf" [current_fileset -constrset]
add_files [list {FPGA.ucf}] -fileset [get_property constrset [current_run]]
link_design
