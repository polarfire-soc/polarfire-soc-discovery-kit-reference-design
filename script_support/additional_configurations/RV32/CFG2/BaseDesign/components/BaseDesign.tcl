# Creating SmartDesign "BaseDesign"
set sd_name {BaseDesign}
create_smartdesign -sd_name ${sd_name}

# Disable auto promotion of pins of type 'pad'
auto_promote_pad_pins -promote_all 0

# Create top level Scalar Ports
sd_create_scalar_port -sd_name ${sd_name} -port_name {REF_CLK} -port_direction {IN} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {RX} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SW_1} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SW_2} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {TCK} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {TDI} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {TMS} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {TRSTB} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {USER_RST} -port_direction {IN}

sd_create_scalar_port -sd_name ${sd_name} -port_name {LED_1} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {LED_2} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {LED_3} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {LED_4} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {TDO} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {TX} -port_direction {OUT}



# Add CLKBUF_0 instance
sd_instantiate_macro -sd_name ${sd_name} -macro_name {CLKBUF} -instance_name {CLKBUF_0}



# Add CoreJTAGDebug_TRSTN_C0_0 instance
sd_instantiate_component -sd_name ${sd_name} -component_name {CoreJTAGDebug_TRSTN_C0} -instance_name {CoreJTAGDebug_TRSTN_C0_0}



# Add CORERESET_PF_C0_0 instance
sd_instantiate_component -sd_name ${sd_name} -component_name {CORERESET_PF_C0} -instance_name {CORERESET_PF_C0_0}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {CORERESET_PF_C0_0:BANK_x_VDDI_STATUS} -value {VCC}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {CORERESET_PF_C0_0:BANK_y_VDDI_STATUS} -value {VCC}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {CORERESET_PF_C0_0:SS_BUSY} -value {GND}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {CORERESET_PF_C0_0:FF_US_RESTORE} -value {GND}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {CORERESET_PF_C0_0:PLL_POWERDOWN_B}



# Add CoreTimer_C0_0 instance
sd_instantiate_component -sd_name ${sd_name} -component_name {CoreTimer_C0} -instance_name {CoreTimer_C0_0}



# Add CoreTimer_C1_0 instance
sd_instantiate_component -sd_name ${sd_name} -component_name {CoreTimer_C1} -instance_name {CoreTimer_C1_0}



# Add MIV_ESS_C0_0 instance
sd_instantiate_component -sd_name ${sd_name} -component_name {MIV_ESS_C0} -instance_name {MIV_ESS_C0_0}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {MIV_ESS_C0_0:GPIO_IN} -pin_slices {[0:0]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {MIV_ESS_C0_0:GPIO_IN} -pin_slices {[1:1]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {MIV_ESS_C0_0:GPIO_IN} -pin_slices {[3:2]}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {MIV_ESS_C0_0:GPIO_IN[3:2]} -value {GND}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {MIV_ESS_C0_0:GPIO_OUT} -pin_slices {[0:0]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {MIV_ESS_C0_0:GPIO_OUT} -pin_slices {[1:1]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {MIV_ESS_C0_0:GPIO_OUT} -pin_slices {[2:2]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {MIV_ESS_C0_0:GPIO_OUT} -pin_slices {[3:3]}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {MIV_ESS_C0_0:GPIO_INT}



# Add MIV_RV32_CFG2_C0_0 instance
sd_instantiate_component -sd_name ${sd_name} -component_name {MIV_RV32_CFG2_C0} -instance_name {MIV_RV32_CFG2_C0_0}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {MIV_RV32_CFG2_C0_0:EXT_RESETN}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {MIV_RV32_CFG2_C0_0:TIME_COUNT_OUT}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {MIV_RV32_CFG2_C0_0:JTAG_TDO_DR}



# Add PF_CCC_C0_0 instance
sd_instantiate_component -sd_name ${sd_name} -component_name {PF_CCC_C0} -instance_name {PF_CCC_C0_0}



# Add PF_INIT_MONITOR_C0_0 instance
sd_instantiate_component -sd_name ${sd_name} -component_name {PF_INIT_MONITOR_C0} -instance_name {PF_INIT_MONITOR_C0_0}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {PF_INIT_MONITOR_C0_0:PCIE_INIT_DONE}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {PF_INIT_MONITOR_C0_0:USRAM_INIT_DONE}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {PF_INIT_MONITOR_C0_0:SRAM_INIT_DONE}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {PF_INIT_MONITOR_C0_0:XCVR_INIT_DONE}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {PF_INIT_MONITOR_C0_0:USRAM_INIT_FROM_SNVM_DONE}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {PF_INIT_MONITOR_C0_0:USRAM_INIT_FROM_UPROM_DONE}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {PF_INIT_MONITOR_C0_0:USRAM_INIT_FROM_SPI_DONE}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {PF_INIT_MONITOR_C0_0:SRAM_INIT_FROM_SNVM_DONE}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {PF_INIT_MONITOR_C0_0:SRAM_INIT_FROM_UPROM_DONE}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {PF_INIT_MONITOR_C0_0:SRAM_INIT_FROM_SPI_DONE}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {PF_INIT_MONITOR_C0_0:AUTOCALIB_DONE}



# Add PF_SRAM_AXI4_C0_0 instance
sd_instantiate_component -sd_name ${sd_name} -component_name {PF_SRAM_AXI4_C0} -instance_name {PF_SRAM_AXI4_C0_0}



# Add scalar net connections
sd_connect_pins -sd_name ${sd_name} -pin_names {"CLKBUF_0:PAD" "REF_CLK" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CLKBUF_0:Y" "PF_CCC_C0_0:REF_CLK_0" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CORERESET_PF_C0_0:CLK" "CoreTimer_C0_0:PCLK" "CoreTimer_C1_0:PCLK" "MIV_ESS_C0_0:PCLK" "MIV_RV32_CFG2_C0_0:CLK" "PF_CCC_C0_0:OUT0_FABCLK_0" "PF_SRAM_AXI4_C0_0:ACLK" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CORERESET_PF_C0_0:EXT_RST_N" "USER_RST" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CORERESET_PF_C0_0:FABRIC_RESET_N" "CoreTimer_C0_0:PRESETn" "CoreTimer_C1_0:PRESETn" "MIV_ESS_C0_0:PRESETN" "MIV_RV32_CFG2_C0_0:RESETN" "PF_SRAM_AXI4_C0_0:ARESETN" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CORERESET_PF_C0_0:FPGA_POR_N" "PF_INIT_MONITOR_C0_0:FABRIC_POR_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CORERESET_PF_C0_0:INIT_DONE" "PF_INIT_MONITOR_C0_0:DEVICE_INIT_DONE" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CORERESET_PF_C0_0:PLL_LOCK" "PF_CCC_C0_0:PLL_LOCK_0" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CoreJTAGDebug_TRSTN_C0_0:TCK" "TCK" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CoreJTAGDebug_TRSTN_C0_0:TDI" "TDI" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CoreJTAGDebug_TRSTN_C0_0:TDO" "TDO" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CoreJTAGDebug_TRSTN_C0_0:TGT_TCK_0" "MIV_RV32_CFG2_C0_0:JTAG_TCK" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CoreJTAGDebug_TRSTN_C0_0:TGT_TDI_0" "MIV_RV32_CFG2_C0_0:JTAG_TDI" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CoreJTAGDebug_TRSTN_C0_0:TGT_TDO_0" "MIV_RV32_CFG2_C0_0:JTAG_TDO" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CoreJTAGDebug_TRSTN_C0_0:TGT_TMS_0" "MIV_RV32_CFG2_C0_0:JTAG_TMS" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CoreJTAGDebug_TRSTN_C0_0:TGT_TRSTN_0" "MIV_RV32_CFG2_C0_0:JTAG_TRSTN" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CoreJTAGDebug_TRSTN_C0_0:TMS" "TMS" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CoreJTAGDebug_TRSTN_C0_0:TRSTB" "TRSTB" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CoreTimer_C0_0:TIMINT" "MIV_RV32_CFG2_C0_0:MSYS_EI" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CoreTimer_C1_0:TIMINT" "MIV_RV32_CFG2_C0_0:EXT_IRQ" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"LED_1" "MIV_ESS_C0_0:GPIO_OUT[0:0]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"LED_2" "MIV_ESS_C0_0:GPIO_OUT[1:1]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"LED_3" "MIV_ESS_C0_0:GPIO_OUT[2:2]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"LED_4" "MIV_ESS_C0_0:GPIO_OUT[3:3]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MIV_ESS_C0_0:GPIO_IN[0:0]" "SW_1" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MIV_ESS_C0_0:GPIO_IN[1:1]" "SW_2" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MIV_ESS_C0_0:UART_RX" "RX" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MIV_ESS_C0_0:UART_TX" "TX" }


# Add bus interface net connections
sd_connect_pins -sd_name ${sd_name} -pin_names {"CoreTimer_C0_0:APBslave" "MIV_ESS_C0_0:APB_3_mTARGET" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CoreTimer_C1_0:APBslave" "MIV_ESS_C0_0:APB_4_mTARGET" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MIV_ESS_C0_0:APB_0_mINITIATOR" "MIV_RV32_CFG2_C0_0:APB_INITIATOR" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MIV_RV32_CFG2_C0_0:AXI4_M_TARGET" "PF_SRAM_AXI4_C0_0:AXI4_Slave" }

# Re-enable auto promotion of pins of type 'pad'
auto_promote_pad_pins -promote_all 1
# Save the SmartDesign 
save_smartdesign -sd_name ${sd_name}
# Generate SmartDesign "BaseDesign"
generate_component -component_name ${sd_name}
