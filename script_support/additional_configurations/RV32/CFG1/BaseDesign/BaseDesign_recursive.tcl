#This Tcl file sources other Tcl files to build the design(on which recursive export is run) in a bottom-up fashion

#Sourcing the Tcl file in which all the HDL source files used in the design are imported or linked
source hdl_source.tcl
build_design_hierarchy

#Sourcing the Tcl files for creating individual components under the top level
source components/CORERESET_PF_C0.tcl 
source components/CoreJTAGDebug_TRSTN_C0.tcl 
source components/CoreTimer_C0.tcl 
source components/CoreTimer_C1.tcl 
source components/MIV_ESS_C0.tcl 
source components/MIV_RV32_CFG1_C0.tcl 
source components/PF_CCC_C0.tcl 
source components/PF_INIT_MONITOR_C0.tcl 
source components/PF_SRAM_AHB_C0.tcl 
source components/BaseDesign.tcl 
build_design_hierarchy
