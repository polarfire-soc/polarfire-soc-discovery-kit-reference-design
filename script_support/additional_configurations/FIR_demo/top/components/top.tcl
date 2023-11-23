# Creating SmartDesign top
set sd_name {top}
create_smartdesign -sd_name ${sd_name}

# Disable auto promotion of pins of type 'pad'
auto_promote_pad_pins -promote_all 0

# Create top level Scalar Ports
sd_create_scalar_port -sd_name ${sd_name} -port_name {REF_CLK_0} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {RX} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {switch_i} -port_direction {IN}

sd_create_scalar_port -sd_name ${sd_name} -port_name {TX} -port_direction {OUT}



# Add CLKINT_0 instance
sd_instantiate_macro -sd_name ${sd_name} -macro_name {CLKINT} -instance_name {CLKINT_0}



# Add CORERESET_PF_C0_0 instance
sd_instantiate_component -sd_name ${sd_name} -component_name {CORERESET_PF_C0} -instance_name {CORERESET_PF_C0_0}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {CORERESET_PF_C0_0:SS_BUSY} -value {GND}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {CORERESET_PF_C0_0:FF_US_RESTORE} -value {GND}



# Add COREUART_C0_0 instance
sd_instantiate_component -sd_name ${sd_name} -component_name {COREUART_C0} -instance_name {COREUART_C0_0}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {COREUART_C0_0:BIT8} -value {VCC}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {COREUART_C0_0:CSN} -value {GND}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {COREUART_C0_0:ODD_N_EVEN} -value {GND}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {COREUART_C0_0:OVERFLOW}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {COREUART_C0_0:PARITY_EN} -value {GND}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {COREUART_C0_0:PARITY_ERR}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {COREUART_C0_0:FRAMING_ERR}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {COREUART_C0_0:BAUD_VAL} -value {0000001101011}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {COREUART_C0_0:BAUD_VAL_FRACTION} -value {100}



# Add Debounce_0 instance
sd_instantiate_hdl_module -sd_name ${sd_name} -hdl_module_name {Debounce} -hdl_file {hdl\Debounce.v} -instance_name {Debounce_0}



# Add INV_0 instance
sd_instantiate_macro -sd_name ${sd_name} -macro_name {INV} -instance_name {INV_0}



# Add PF_CCC_C0_0 instance
sd_instantiate_component -sd_name ${sd_name} -component_name {PF_CCC_C0} -instance_name {PF_CCC_C0_0}



# Add PFSOC_DSP_FLOW_TOP_0 instance
sd_instantiate_component -sd_name ${sd_name} -component_name {PFSOC_DSP_FLOW_TOP} -instance_name {PFSOC_DSP_FLOW_TOP_0}



# Add PFSOC_INIT_MONITOR_C0_0 instance
sd_instantiate_component -sd_name ${sd_name} -component_name {PFSOC_INIT_MONITOR_C0} -instance_name {PFSOC_INIT_MONITOR_C0_0}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {PFSOC_INIT_MONITOR_C0_0:PCIE_INIT_DONE}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {PFSOC_INIT_MONITOR_C0_0:USRAM_INIT_DONE}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {PFSOC_INIT_MONITOR_C0_0:SRAM_INIT_DONE}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {PFSOC_INIT_MONITOR_C0_0:XCVR_INIT_DONE}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {PFSOC_INIT_MONITOR_C0_0:USRAM_INIT_FROM_SNVM_DONE}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {PFSOC_INIT_MONITOR_C0_0:USRAM_INIT_FROM_UPROM_DONE}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {PFSOC_INIT_MONITOR_C0_0:USRAM_INIT_FROM_SPI_DONE}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {PFSOC_INIT_MONITOR_C0_0:SRAM_INIT_FROM_SNVM_DONE}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {PFSOC_INIT_MONITOR_C0_0:SRAM_INIT_FROM_UPROM_DONE}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {PFSOC_INIT_MONITOR_C0_0:SRAM_INIT_FROM_SPI_DONE}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {PFSOC_INIT_MONITOR_C0_0:AUTOCALIB_DONE}



# Add scalar net connections
sd_connect_pins -sd_name ${sd_name} -pin_names {"CLKINT_0:A" "REF_CLK_0" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CLKINT_0:Y" "PF_CCC_C0_0:REF_CLK_0" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CORERESET_PF_C0_0:BANK_x_VDDI_STATUS" "CORERESET_PF_C0_0:BANK_y_VDDI_STATUS" "PFSOC_INIT_MONITOR_C0_0:BANK_0_VDDI_STATUS" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CORERESET_PF_C0_0:CLK" "COREUART_C0_0:CLK" "Debounce_0:clk_i" "PFSOC_DSP_FLOW_TOP_0:CLK" "PF_CCC_C0_0:OUT0_FABCLK_0" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CORERESET_PF_C0_0:EXT_RST_N" "INV_0:Y" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CORERESET_PF_C0_0:FABRIC_RESET_N" "COREUART_C0_0:RESET_N" "PFSOC_DSP_FLOW_TOP_0:RESET_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CORERESET_PF_C0_0:FPGA_POR_N" "PFSOC_INIT_MONITOR_C0_0:FABRIC_POR_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CORERESET_PF_C0_0:INIT_DONE" "Debounce_0:resetn_i" "PFSOC_INIT_MONITOR_C0_0:DEVICE_INIT_DONE" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CORERESET_PF_C0_0:PLL_LOCK" "PF_CCC_C0_0:PLL_LOCK_0" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CORERESET_PF_C0_0:PLL_POWERDOWN_B" "PF_CCC_C0_0:PLL_POWERDOWN_N_0" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"COREUART_C0_0:OEN" "PFSOC_DSP_FLOW_TOP_0:OEN" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"COREUART_C0_0:RX" "RX" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"COREUART_C0_0:RXRDY" "PFSOC_DSP_FLOW_TOP_0:RX_RDY" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"COREUART_C0_0:TX" "TX" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"COREUART_C0_0:TXRDY" "PFSOC_DSP_FLOW_TOP_0:TX_RDY" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"COREUART_C0_0:WEN" "PFSOC_DSP_FLOW_TOP_0:WEN" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"Debounce_0:interrupt_o" "INV_0:A" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"Debounce_0:switch_i" "switch_i" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PFSOC_DSP_FLOW_TOP_0:SLOWCLK" "PF_CCC_C0_0:OUT1_FABCLK_0" }

# Add bus net connections
sd_connect_pins -sd_name ${sd_name} -pin_names {"COREUART_C0_0:DATA_IN" "PFSOC_DSP_FLOW_TOP_0:DATA_OUT" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"COREUART_C0_0:DATA_OUT" "PFSOC_DSP_FLOW_TOP_0:DATA_IN" }


# Re-enable auto promotion of pins of type 'pad'
auto_promote_pad_pins -promote_all 1
# Save the smartDesign
save_smartdesign -sd_name ${sd_name}
# Generate SmartDesign top
generate_component -component_name ${sd_name}
