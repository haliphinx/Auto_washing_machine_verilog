
# PlanAhead Launch Script for Post-Synthesis pin planning, created by Project Navigator

create_project -name wash_text -dir "C:/Users/Administrator/Desktop/wash_text1/planAhead_run_2" -part xc3s100ecp132-4
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "C:/Users/Administrator/Desktop/wash_text1/text.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {C:/Users/Administrator/Desktop/wash_text1} }
set_param project.pinAheadLayout  yes
set_property target_constrs_file "text.ucf" [current_fileset -constrset]
add_files [list {text.ucf}] -fileset [get_property constrset [current_run]]
link_design
