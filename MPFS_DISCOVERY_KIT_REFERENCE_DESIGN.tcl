puts "TCL_BEGIN: [info script]"

#
# // Discovery Kit Reference Libero design
#

#
# // Check path length to verify project can be created
#

if { [lindex $tcl_platform(os) 0]  == "Windows" } {
    if {[string length [pwd]] < 90} {
        puts "Project path length ok."
    } else {
        error "Path to project is too long, please reduce the path and try again."
    }
}

#
# // Process arguments
#

if { $::argc > 0 } {
    set i 1
    foreach arg $::argv {
        if {[string match "*:*" $arg]} {
            set var [string range $arg 0 [string first ":" $arg]-1]
            set val [string range $arg [string first ":" $arg]+1 end]
            puts "Setting parameter $var to $val"
            set $var "$val"
        } else {
            set $arg 1
            puts "set $arg to 1"
        }
        incr i
    }
} else {
    puts "no command line argument passed"
}

#
# // Set required variables and add functions
#

set libero_release [split [get_libero_version] .]
set install_loc [defvar_get -name ACTEL_SW_DIR]
set mss_config_loc "$install_loc/bin64/pfsoc_mss"
set local_dir [pwd]
set constraint_path ./script_support/constraints

if {[info exists I2C_LOOPBACK]} {
    set project_name "MPFS_DISCOVERY_I2C_LOOPBACK"
    set project_dir "$local_dir/MPFS_DISCOVERY_I2C_LOOPBACK"
	set ALTCONFIG 0
} elseif {[info exists VECTORBLOX]} {
    set project_name "MPFS_DISCOVERY_Vectorblox"
    set project_dir "$local_dir/MPFS_DISCOVERY_Vectorblox"
	set ALTCONFIG 0
} elseif {[info exists DRI_CCC_DEMO]} {
    set project_name "MPFS_DISCOVERY_DRI_CCC_DEMO"
    set project_dir "$local_dir/MPFS_DISCOVERY_DRI_CCC_DEMO"
	set ALTCONFIG 0
} elseif {[info exists SMARTHLS]} {
    set project_name "Discovery_SoC"
    set project_dir "$local_dir/soc"
	set ALTCONFIG 0
} elseif {[info exists BFM_SIMULATION] && [info exists AXI4_STREAM_DEMO]} {
    set project_name "MPFS_DISCOVERY_AXI4_STREAM_DEMO_BFM"
    set project_dir "$local_dir/MPFS_DISCOVERY_AXI4_STREAM_DEMO_BFM"
	set ALTCONFIG 0
} elseif {[info exists AXI4_STREAM_DEMO]} {
    set project_name "MPFS_DISCOVERY_AXI4_STREAM_DEMO"
    set project_dir "$local_dir/MPFS_DISCOVERY_AXI4_STREAM_DEMO"
	set ALTCONFIG 0
} elseif {[info exists BFM_SIMULATION]} {
    set project_name "MPFS_DISCOVERY_BFM_SIMULATION"
    set project_dir "$local_dir/MPFS_DISCOVERY_BFM_SIMULATION"
	set ALTCONFIG 0
} elseif {[info exists MIV_RV32_CFG1]} {
	set project_name "MPFS_DISCOVERY_MIV_RV32_CFG1"
    set project_dir "$local_dir/MPFS_DISCOVERY_MIV_RV32_CFG1"
	set ALTCONFIG 1
} elseif {[info exists MIV_RV32_CFG2]} {
	set project_name "MPFS_DISCOVERY_MIV_RV32_CFG2"
    set project_dir "$local_dir/MPFS_DISCOVERY_MIV_RV32_CFG2"
	set ALTCONFIG 1
} elseif {[info exists MIV_RV32_CFG3]} {
	set project_name "MPFS_DISCOVERY_MIV_RV32_CFG3"
    set project_dir "$local_dir/MPFS_DISCOVERY_MIV_RV32_CFG3"
	set ALTCONFIG 1
} elseif {[info exists FIR_DEMO]} {
	set project_name "MPFS_DISCOVERY_FIR_DEMO"
    set project_dir "$local_dir/MPFS_DISCOVERY_FIR_DEMO"
	set ALTCONFIG 1
} else {
    set project_name "MPFS_DISCOVERY"
    set project_dir "$local_dir/MPFS_DISCOVERY"
	set ALTCONFIG 0
}

source ./script_support/additional_configurations/functions.tcl

#
# // Open or create a Libero project
#
if { [file exists $project_dir/$project_name.prjx] } {
    puts "Open existing project"
    open_project -file $project_dir/$project_name.prjx
    open_smartdesign -sd_name {MPFS_DISCOVERY_KIT}
    set isNewProject 0
} else {
    puts "Creating a new project"
    set isNewProject 1
    new_project \
        -location $project_dir \
        -name $project_name \
        -project_description {} \
        -block_mode 0 \
        -standalone_peripheral_initialization 0 \
        -instantiate_in_smartdesign 1 \
        -ondemand_build_dh 1 \
        -use_relative_path 0 \
        -linked_files_root_dir_env {} \
        -hdl {VERILOG} \
        -family {PolarFireSoC} \
        -die {MPFS095T} \
        -package {FCSG325} \
        -speed {-1} \
        -die_voltage {1.0} \
        -part_range {EXT} \
        -adv_options {IO_DEFT_STD:LVCMOS 1.8V} \
        -adv_options {RESTRICTPROBEPINS:1} \
        -adv_options {RESTRICTSPIPINS:0} \
        -adv_options {SYSTEM_CONTROLLER_SUSPEND_MODE:0} \
        -adv_options {TEMPR:EXT} \
        -adv_options {VCCI_1.2_VOLTR:EXT} \
        -adv_options {VCCI_1.5_VOLTR:EXT} \
        -adv_options {VCCI_1.8_VOLTR:EXT} \
        -adv_options {VCCI_2.5_VOLTR:EXT} \
        -adv_options {VCCI_3.3_VOLTR:EXT} \
        -adv_options {VOLTR:EXT}

    smartdesign \
        -memory_map_drc_change_error_to_warning 1 \
        -bus_interface_data_width_drc_change_error_to_warning 1 \
        -bus_interface_id_width_drc_change_error_to_warning 1 
    #
    # // Download required cores
    #
	try {
		download_core -vlnv {Actel:SgCore:PF_OSC:*} -location {www.microchip-ip.com/repositories/SgCore}
		download_core -vlnv {Actel:SgCore:PF_CCC:*} -location {www.microchip-ip.com/repositories/SgCore}
		download_core -vlnv {Actel:DirectCore:CORERESET_PF:*} -location {www.microchip-ip.com/repositories/DirectCore}
		download_core -vlnv {Microsemi:SgCore:PFSOC_INIT_MONITOR:*} -location {www.microchip-ip.com/repositories/SgCore}
		download_core -vlnv {Actel:DirectCore:COREAXI4INTERCONNECT:2.8.103} -location {www.microchip-ip.com/repositories/DirectCore}
		download_core -vlnv {Actel:SgCore:PF_CLK_DIV:*} -location {www.microchip-ip.com/repositories/SgCore}
		download_core -vlnv {Actel:SgCore:PF_DRI:*} -location {www.microchip-ip.com/repositories/SgCore}
		download_core -vlnv {Actel:SgCore:PF_NGMUX:*} -location {www.microchip-ip.com/repositories/SgCore}
		download_core -vlnv {Actel:SgCore:PF_PCIE:*} -location {www.microchip-ip.com/repositories/SgCore}
		download_core -vlnv {Actel:SgCore:PF_TX_PLL:*} -location {www.microchip-ip.com/repositories/SgCore}
		download_core -vlnv {Actel:SgCore:PF_XCVR_REF_CLK:*} -location {www.microchip-ip.com/repositories/SgCore}
		download_core -vlnv {Actel:DirectCore:CoreAPB3:4.2.100} -location {www.microchip-ip.com/repositories/DirectCore}
		download_core -vlnv {Actel:DirectCore:COREAXI4DMACONTROLLER:2.0.100} -location {www.microchip-ip.com/repositories/DirectCore}
		download_core -vlnv {Actel:DirectCore:CoreGPIO:3.2.102} -location {www.microchip-ip.com/repositories/DirectCore}
		download_core -vlnv {Actel:SystemBuilder:PF_SRAM_AHBL_AXI:*} -location {www.microchip-ip.com/repositories/SgCore}
		download_core -vlnv {Actel:Simulation:CLK_GEN:*} -location {www.microchip-ip.com/repositories/SgCore}
		download_core -vlnv {Actel:Simulation:RESET_GEN:*} -location {www.microchip-ip.com/repositories/SgCore}
		download_core -vlnv {Actel:DirectCore:corepwm:4.5.100} -location {www.microchip-ip.com/repositories/DirectCore} 
		download_core -vlnv {Actel:DirectCore:COREI2C:7.2.101} -location {www.microchip-ip.com/repositories/DirectCore} 
		download_core -vlnv {Actel:DirectCore:CoreUARTapb:5.7.100} -location {www.microchip-ip.com/repositories/DirectCore} 
		download_core -vlnv {Actel:DirectCore:CoreTimer:2.0.103} -location {www.microchip-ip.com/repositories/DirectCore}
		download_core -vlnv {Actel:DirectCore:COREJTAGDEBUG:4.0.100} -location {www.microchip-ip.com/repositories/DirectCore}
		download_core -vlnv {Actel:DirectCore:COREAXITOAHBL:3.6.101} -location {www.microchip-ip.com/repositories/DirectCore}
		download_core -vlnv {Actel:DirectCore:COREAHBTOAPB3:3.2.101} -location {www.microchip-ip.com/repositories/DirectCore}
		download_core -vlnv {Actel:DirectCore:CoreAHBLite:6.1.101} -location {www.microchip-ip.com/repositories/DirectCore}
		download_core -vlnv {Microsemi:MiV:MIV_RV32:3.1.200} -location {www.microchip-ip.com/repositories/DirectCore} 
        download_core -vlnv {Actel:SystemBuilder:MIV_ESS:2.0.200} -location {www.microchip-ip.com/repositories/SgCore}  
		download_core -vlnv {Actel:SystemBuilder:PF_DDR3:2.4.122} -location {www.microchip-ip.com/repositories/SgCore}
        download_core -vlnv {Actel:DirectCore:CORESPI:5.2.104} -location {www.microchip-ip.com/repositories/SgCore} 
        download_core -vlnv {Actel:DirectCore:COREAXI4INTERCONNECT:2.8.103} -location {www.microchip-ip.com/repositories/DirectCore}
	} on error err {
		puts "Downloading cores failed, the script will continute but will fail if all of the required cores aren't present in the vault."
	}
	
	if {$ALTCONFIG == 0} {
		#
		#  // Generate and import MSS component
		#
		
		if {[file isdirectory $local_dir/script_support/components/MSS]} {
			file delete -force $local_dir/script_support/components/MSS
		}
		file mkdir $local_dir/script_support/components/MSS
		
		exec $mss_config_loc -GENERATE -CONFIGURATION_FILE:$local_dir/script_support/MPFS_DISCOVERY_KIT_MSS.cfg -OUTPUT_DIR:$local_dir/script_support/components/MSS

		import_mss_component -file "$local_dir/script_support/components/MSS/MPFS_DISCOVERY_KIT_MSS.cxz"

		#
		# // Generate base design
		#

		cd ./script_support/
		source MPFS_DISCOVERY_KIT_recursive.tcl
		cd ../
		set_root -module {MPFS_DISCOVERY_KIT::work} 

		#
		# // Import I/O constraints
		#

		import_files \
			-convert_EDN_to_HDL 0 \
			-io_pdc "${constraint_path}/MPFS_DISCOVERY_KIT_BANK_SETTINGS.pdc" \
			-io_pdc "${constraint_path}/MPFS_DISCOVERY_KIT_BOARD_MISC.pdc" \
			-io_pdc "${constraint_path}/MPFS_DISCOVERY_MAC.pdc" \
			-io_pdc "${constraint_path}/MPFS_DISCOVERY_mikroBUS.pdc" \
			-io_pdc "${constraint_path}/MPFS_DISCOVERY_RPi.pdc" \
			-io_pdc "${constraint_path}/MPFS_DISCOVERY_UARTS.pdc" \
			-io_pdc "${constraint_path}/MPFS_DISCOVERY_7_SEG.pdc" \
			-io_pdc "${constraint_path}/MPFS_DISCOVERY_I2C_LOOPBACK.pdc" 
		
		organize_tool_files \
			-tool {PLACEROUTE} \
			-file "${project_dir}/constraint/io/MPFS_DISCOVERY_KIT_BANK_SETTINGS.pdc" \
			-file "${project_dir}/constraint/io/MPFS_DISCOVERY_KIT_BOARD_MISC.pdc" \
			-file "${project_dir}/constraint/io/MPFS_DISCOVERY_mikroBUS.pdc" \
			-file "${project_dir}/constraint/io/MPFS_DISCOVERY_RPi.pdc" \
			-file "${project_dir}/constraint/io/MPFS_DISCOVERY_UARTS.pdc" \
			-file "${project_dir}/constraint/io/MPFS_DISCOVERY_7_SEG.pdc" \
			-module {MPFS_DISCOVERY_KIT::work} \
			-input_type {constraint}        
			
		#
		# // Build hierarchy before progressing
		#

		build_design_hierarchy

		#
		# // Apply additional design configurations
		#

		if {[info exists BFM_SIMULATION]} {
			source script_support/stimulus/Test_bench.tcl
		}

		if {[info exists AXI4_STREAM_DEMO]} {
			if {[info exists BFM_SIMULATION]} {
				source script_support/additional_configurations/AXI4_STREAM_DATA_GENERATOR/AXI4_STREAM_DATA_GENERATOR_BFM.tcl    
			} else {
				source script_support/additional_configurations/AXI4_STREAM_DATA_GENERATOR/AXI4_STREAM_DATA_GENERATOR.tcl    
			}
		}

		if {[info exists I2C_LOOPBACK]} {
			if {[file isdirectory $local_dir/script_support/components/MSS_I2C_LOOPBACK]} {
				file delete -force $local_dir/script_support/components/MSS_I2C_LOOPBACK
			}
			file mkdir $local_dir/script_support/components/MSS_I2C_LOOPBACK
			create_config $local_dir/script_support/components/MSS/MPFS_DISCOVERY_KIT_MSS.cfg $local_dir/script_support/additional_configurations/I2C_LOOPBACK/DISCOVERY_MSS_I2C_LOOPBACK.cfg
			update_param $local_dir/script_support/additional_configurations/I2C_LOOPBACK/DISCOVERY_MSS_I2C_LOOPBACK.cfg "I2C_1 " "FABRIC"
			exec $mss_config_loc -GENERATE -CONFIGURATION_FILE:$local_dir/script_support/additional_configurations/I2C_LOOPBACK/DISCOVERY_MSS_I2C_LOOPBACK.cfg -OUTPUT_DIR:$local_dir/script_support/components/MSS_I2C_LOOPBACK
			source ./script_support/additional_configurations/I2C_LOOPBACK/I2C_LOOPBACK.tcl
		} elseif {[info exists VECTORBLOX]} {
			source ./script_support/additional_configurations/Vectorblox/Vectorblox.tcl
		} elseif {[info exists DRI_CCC_DEMO]} {
			source ./script_support/additional_configurations/DRI_CCC_DEMO/DRI_CCC_DEMO.tcl
		}
		#
		# // Derive timing constraints
		#
		build_design_hierarchy
		derive_constraints_sdc 

		#
		# // Auto layout SmartDesigns
		#
		save_project 
		sd_reset_layout -sd_name {CLOCKS_AND_RESETS}
		save_smartdesign -sd_name {CLOCKS_AND_RESETS}
		sd_reset_layout -sd_name {FIC_0_PERIPHERALS}
		save_smartdesign -sd_name {FIC_0_PERIPHERALS}
		sd_reset_layout -sd_name {CORE_I2C_C0_0_WRAPPER}
		save_smartdesign -sd_name {CORE_I2C_C0_0_WRAPPER}
		sd_reset_layout -sd_name {FIC_3_ADDRESS_GENERATION}
		save_smartdesign -sd_name {FIC_3_ADDRESS_GENERATION}
		sd_reset_layout -sd_name {IHC_SUBSYSTEM}
		save_smartdesign -sd_name {IHC_SUBSYSTEM}
		sd_reset_layout -sd_name {FIC_3_PERIPHERALS}
		save_smartdesign -sd_name {FIC_3_PERIPHERALS}
		sd_reset_layout -sd_name {MSS_WRAPPER}
		save_smartdesign -sd_name {MSS_WRAPPER}
		sd_reset_layout -sd_name {MPFS_DISCOVERY_KIT}
		save_smartdesign -sd_name {MPFS_DISCOVERY_KIT}

		# 
		# Compile and integrate the SmartHLS code
		#
		if {[info exists SMARTHLS]} {
			if {$isNewProject} {
				# Prepare the SmartDesign for HLS integration 
				source ./script_support/additional_configurations/smarthls/pre_hls_integration.tcl
			}

			# If the SmartHLS variable points to a valid SmartHLS project directory, then compile it.
			# Otherwise, HLS modules can be added later.
			if {[file isdirectory $SMARTHLS]} {
				source ./script_support/additional_configurations/smarthls/compile_and_integrate_shls_to_refdesign.tcl
			}
		}
		
		#
		# // Derive timing constraints
		#

		build_design_hierarchy
		derive_constraints_sdc 

	} elseif {[info exists MIV_RV32_CFG1]} {
		cd ./script_support/additional_configurations/RV32/CFG1/BaseDesign/
		source BaseDesign_recursive.tcl
		set_root -module {BaseDesign::work} 
		
		build_design_hierarchy
		derive_constraints_sdc 
		
		cd ../../../../../
		
		#
		# // Import I/O constraints
		#

		import_files \
			-convert_EDN_to_HDL 0 \
			-library {work} \
			-sdc "${constraint_path}/RV32/io_jtag_constraints.sdc" \
			-io_pdc "${constraint_path}/RV32/RV32_IO.pdc" 		
			
		organize_tool_files \
		-tool {SYNTHESIZE} \
		-file "${project_dir}/constraint/BaseDesign_derived_constraints.sdc" \
		-file "${project_dir}/constraint/io_jtag_constraints.sdc" \
		-module {BaseDesign::work} \
		-input_type {constraint} 
		
		organize_tool_files \
			-tool {PLACEROUTE} \
			-file "${project_dir}/constraint/BaseDesign_derived_constraints.sdc" \
			-file "${project_dir}/constraint/io/RV32_IO.pdc" \
			-file "${project_dir}/constraint/io_jtag_constraints.sdc" \
			-module {BaseDesign::work} \
			-input_type {constraint} 
			
		organize_tool_files \
			-tool {VERIFYTIMING} \
			-file "${project_dir}/constraint/BaseDesign_derived_constraints.sdc" \
			-file "${project_dir}/constraint/io_jtag_constraints.sdc" \
			-module {BaseDesign::work} \
			-input_type {constraint} 
		
		save_project 
		sd_reset_layout -sd_name {BaseDesign}
		save_smartdesign -sd_name {BaseDesign}

	} elseif {[info exists MIV_RV32_CFG2]} {
		cd ./script_support/additional_configurations/RV32/CFG2/BaseDesign/
		source BaseDesign_recursive.tcl
		set_root -module {BaseDesign::work} 
		
		build_design_hierarchy
		derive_constraints_sdc 
		
		cd ../../../../../
		
		#
		# // Import I/O constraints
		#

		import_files \
			-convert_EDN_to_HDL 0 \
			-library {work} \
			-sdc "${constraint_path}/RV32/io_jtag_constraints.sdc" \
			-io_pdc "${constraint_path}/RV32/RV32_IO.pdc" 		
			
		organize_tool_files \
		-tool {SYNTHESIZE} \
		-file "${project_dir}/constraint/BaseDesign_derived_constraints.sdc" \
		-file "${project_dir}/constraint/io_jtag_constraints.sdc" \
		-module {BaseDesign::work} \
		-input_type {constraint} 
		
		organize_tool_files \
			-tool {PLACEROUTE} \
			-file "${project_dir}/constraint/BaseDesign_derived_constraints.sdc" \
			-file "${project_dir}/constraint/io/RV32_IO.pdc" \
			-file "${project_dir}/constraint/io_jtag_constraints.sdc" \
			-module {BaseDesign::work} \
			-input_type {constraint} 
			
		organize_tool_files \
			-tool {VERIFYTIMING} \
			-file "${project_dir}/constraint/BaseDesign_derived_constraints.sdc" \
			-file "${project_dir}/constraint/io_jtag_constraints.sdc" \
			-module {BaseDesign::work} \
			-input_type {constraint} 
			
		save_project 
		sd_reset_layout -sd_name {BaseDesign}
		save_smartdesign -sd_name {BaseDesign}

	} elseif {[info exists MIV_RV32_CFG3]} {
		cd ./script_support/additional_configurations/RV32/CFG3/BaseDesign/
		source BaseDesign_recursive.tcl
		set_root -module {BaseDesign::work} 
		
		build_design_hierarchy
		derive_constraints_sdc 
		
		cd ../../../../../
		
		#
		# // Import I/O constraints
		#

		import_files \
			-convert_EDN_to_HDL 0 \
			-library {work} \
			-sdc "${constraint_path}/RV32/io_jtag_constraints.sdc" \
			-io_pdc "${constraint_path}/RV32/RV32_IO.pdc" 		
			
		organize_tool_files \
		-tool {SYNTHESIZE} \
		-file "${project_dir}/constraint/BaseDesign_derived_constraints.sdc" \
		-file "${project_dir}/constraint/io_jtag_constraints.sdc" \
		-module {BaseDesign::work} \
		-input_type {constraint} 
		
		organize_tool_files \
			-tool {PLACEROUTE} \
			-file "${project_dir}/constraint/BaseDesign_derived_constraints.sdc" \
			-file "${project_dir}/constraint/io/RV32_IO.pdc" \
			-file "${project_dir}/constraint/io_jtag_constraints.sdc" \
			-module {BaseDesign::work} \
			-input_type {constraint} 
			
		organize_tool_files \
			-tool {VERIFYTIMING} \
			-file "${project_dir}/constraint/BaseDesign_derived_constraints.sdc" \
			-file "${project_dir}/constraint/io_jtag_constraints.sdc" \
			-module {BaseDesign::work} \
			-input_type {constraint} 

		save_project 
		sd_reset_layout -sd_name {BaseDesign}
		save_smartdesign -sd_name {BaseDesign}
		
	} elseif {[info exists FIR_DEMO]} {
		cd ./script_support/additional_configurations/FIR_demo/top/
		source top_recursive.tcl
		set_root -module {top::work} 
		
		build_design_hierarchy
		derive_constraints_sdc 
		
		cd ../../../../
		
		#
		# // Import I/O constraints
		#
	
		import_files \
			-convert_EDN_to_HDL 0 \
			-library {work} \
			-io_pdc "${constraint_path}/FIR_demo/io_constraints.pdc" \
			
		organize_tool_files \
			-tool {SYNTHESIZE} \
			-file "${project_dir}/constraint/top_derived_constraints.sdc" \
			-module {top::work} \
			-input_type {constraint} 
		
		organize_tool_files \
			-tool {PLACEROUTE} \
			-file "${project_dir}/constraint/top_derived_constraints.sdc" \
			-file "${project_dir}/constraint/io/io_constraints.pdc" \
			-module {top::work} \
			-input_type {constraint} 
			
		organize_tool_files \
			-tool {VERIFYTIMING} \
			-file "${project_dir}/constraint/top_derived_constraints.sdc" \
			-module {top::work} \
			-input_type {constraint} 

		save_project 
		sd_reset_layout -sd_name {top}
		save_smartdesign -sd_name {top}
		sd_reset_layout -sd_name {PFSOC_DSP_FLOW_TOP}
		save_smartdesign -sd_name {PFSOC_DSP_FLOW_TOP}
		
	}
}	

#
# // Run the design flow and add eNVM clients if required
#

if {[info exists SYNTHESIZE]} {
    run_tool -name {SYNTHESIZE}
} elseif {[info exists PLACEROUTE]} {
    run_tool -name {PLACEROUTE}
} elseif {[info exists VERIFY_TIMING]} {
    run_tool -name {VERIFYTIMING}
}

if {[info exists HSS_UPDATE]} {
    if !{[file exists "./script_support/hss-envm-wrapper.mpfs-Discovery-kit-es.hex"]} {
        if {[catch    {exec wget https://github.com/polarfire-soc/hart-software-services/releases/latest/download/hss-envm-wrapper.mpfs-Discovery-kit-es.hex -P ./script_support/} issue]} {
        }
    }
    create_eNVM_config "$local_dir/script_support/components/MSS/ENVM.cfg" "$local_dir/script_support/hss-envm-wrapper.mpfs-Discovery-kit-es.hex"
    run_tool -name {GENERATEPROGRAMMINGDATA}
    configure_envm -cfg_file {script_support/components/MSS/ENVM.cfg}
}

if {[info exists GENERATE_PROGRAMMING_DATA]} {
    run_tool -name {GENERATEPROGRAMMINGDATA}
}  elseif {[info exists PROGRAM]} {
    run_tool -name {PROGRAMDEVICE}
} elseif {[info exists EXPORT_FPE]} {   
    set gUseSPI 0
    if {[info exists SMARTHLS]} {
        set gUseSPI [update_snvm_to_spi_ram_cfg $project_dir/designer/MPFS_DISCOVERY_KIT/MPFS_DISCOVERY_KIT_RAM.cfg ]
        generate_design_initialization_data
    }
    
    set jobPath $local_dir
    if {[file isdirectory $EXPORT_FPE]} {set jobPath $EXPORT_FPE}

    set components "FABRIC SNVM"
    if {[info exists HSS_UPDATE]} { set components "$components ENVM" }

    puts "export_fpe_job $project_name $jobPath $components $gUseSPI"
    export_fpe_job $project_name $jobPath $components $gUseSPI
}

save_project 

puts "TCL_END: [info script]"
