#This Tcl file sources other Tcl files to build the design(on which recursive export is run) in a bottom-up fashion

#Sourcing the Tcl file in which all the HDL source files used in the design are imported or linked
source hdl_source.tcl
build_design_hierarchy

#Sourcing the Tcl files for creating individual components under the top level
source components/CORERESET_PF_C0.tcl 
source components/COREUART_C0.tcl 
source components/COREFFT_C0.tcl 
source components/COREFIR_PF_C0.tcl 
source components/PF_COEF_BUF.tcl 
source components/PF_FFT_IM_BUF.tcl 
source components/PF_FFT_RE_BUF.tcl 
source components/PF_FIR_IN_BUF.tcl 
source components/PF_FIR_OUT_BUF.tcl 
source components/PFSOC_DSP_FLOW_TOP.tcl 
source components/PFSOC_INIT_MONITOR_C0.tcl 
source components/PF_CCC_C0.tcl 
source components/top.tcl 
build_design_hierarchy
