#This Tcl file sources other Tcl files to build the design(on which recursive export is run) in a bottom-up fashion

#Sourcing the Tcl file in which all the HDL source files used in the design are imported or linked
source hdl_source.tcl
build_design_hierarchy

#Sourcing the Tcl files in which HDL+ core definitions are created for HDL modules
source components/APB_ARBITER.tcl 
source components/APB_PASS_THROUGH.tcl 
build_design_hierarchy

#Sourcing the Tcl files for creating individual components under the top level
source components/CORERESET.tcl 
source components/INIT_MONITOR.tcl 
source components/PF_CCC_C0.tcl 
source components/CLOCKS_AND_RESETS.tcl 
source components/DMA_CONTROLLER.tcl 
source components/DMA_INITIATOR.tcl 
source components/FIC0_INITIATOR.tcl 
source components/MSS_LSRAM.tcl 
source components/FIC_0_PERIPHERALS.tcl 
source components/COREI2C_C0.tcl 
source components/CORE_I2C_C0_0_WRAPPER.tcl 
source components/CoreUARTapb_C0.tcl 
source components/FIC_3_0x4000_0xxx.tcl 
source components/FIC_3_0x4xxx_xxxx.tcl 
source components/FIC_3_ADDRESS_GENERATION.tcl 
source components/GPIO.tcl 
source components/MIV_IHC_C0.tcl
source components/RECONFIGURATION_INTERFACE.tcl 
source components/SPI_FOR_7_SEG.tcl 
source components/corepwm_C0.tcl 
source components/FIC_3_PERIPHERALS.tcl 
source components/MSS_WRAPPER.tcl 
source components/MPFS_DISCOVERY_KIT.tcl 
build_design_hierarchy
