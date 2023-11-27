file copy -force "./wave.do" "$project_dir/simulation/wave.do"

import_files -stimulus "./top.v" \

import_files \
         -convert_EDN_to_HDL 0 \
         -simulation "./coe_file.dat" \
         -simulation "./coe_file_Band_pass.dat" \
         -simulation "./coe_file_Band_reject.dat" \
         -simulation "./coe_file_High_pass.dat" \
         -simulation "./coe_file_Low_pass.dat" \
         -simulation "./data_file.dat" 

build_design_hierarchy 
organize_tool_files -tool {SIM_PRESYNTH} -file ${project_dir}/stimulus/top.v -module {top::work} -input_type {stimulus}
set_modelsim_options -use_automatic_do_file 1 -sim_runtime $SimTime \
					 -tb_module_name {testbench} \
					 -log_all_signals 1 \
					 -include_do_file 1\
					 -disable_pulse_filtering 1 \
					 -resolution {1ps} \
					 -timeunit 1 \
					 -timeunit_base {ns} \
					 -precision 1 \
					 -precision_base {ps}			
					 