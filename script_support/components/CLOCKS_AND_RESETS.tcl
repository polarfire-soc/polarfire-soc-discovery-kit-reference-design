# Creating SmartDesign CLOCKS_AND_RESETS
set sd_name {CLOCKS_AND_RESETS}
create_smartdesign -sd_name ${sd_name}

# Disable auto promotion of pins of type 'pad'
auto_promote_pad_pins -promote_all 0

# Create top level Scalar Ports
sd_create_scalar_port -sd_name ${sd_name} -port_name {EXT_RST_N} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {MSS_DLL_LOCKS} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {MSS_PLL_LOCKS} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {MSS_TO_FABRIC_RESETN} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {REF_CLK_50MHz} -port_direction {IN}

sd_create_scalar_port -sd_name ${sd_name} -port_name {FIC_0_CLK} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FIC_1_CLK} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FIC_2_CLK} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FIC_3_CLK} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {MMC_CLK_200MHz} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {MSS_RESETN} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {RESETN_FIC2_CLK} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {RESETN_FIC_0_CLK} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {RESETN_FIC_1_CLK} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {RESETN_FIC_3_CLK} -port_direction {OUT}



# Add AND2_MSS_RESETN instance
sd_instantiate_macro -sd_name ${sd_name} -macro_name {AND2} -instance_name {AND2_MSS_RESETN}



# Add AND4_0 instance
sd_instantiate_macro -sd_name ${sd_name} -macro_name {AND4} -instance_name {AND4_0}



# Add AND4_FABRIC_PLL_POWERDOWN instance
sd_instantiate_macro -sd_name ${sd_name} -macro_name {AND4} -instance_name {AND4_FABRIC_PLL_POWERDOWN}



# Add CCC_FIC_x_CLK instance
sd_instantiate_component -sd_name ${sd_name} -component_name {PF_CCC_C0} -instance_name {CCC_FIC_x_CLK}



# Add CCC_MSS_PERIPHERALS_0 instance
sd_instantiate_component -sd_name ${sd_name} -component_name {CCC_MSS_PERIPHERALS} -instance_name {CCC_MSS_PERIPHERALS_0}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {CCC_MSS_PERIPHERALS_0:PLL_POWERDOWN_N_0} -value {VCC}



# Add CLKINT_REF_CLK_50MHz instance
sd_instantiate_macro -sd_name ${sd_name} -macro_name {CLKINT} -instance_name {CLKINT_REF_CLK_50MHz}



# Add INIT_MONITOR_0 instance
sd_instantiate_component -sd_name ${sd_name} -component_name {INIT_MONITOR} -instance_name {INIT_MONITOR_0}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {INIT_MONITOR_0:PCIE_INIT_DONE}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {INIT_MONITOR_0:USRAM_INIT_DONE}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {INIT_MONITOR_0:SRAM_INIT_DONE}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {INIT_MONITOR_0:XCVR_INIT_DONE}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {INIT_MONITOR_0:USRAM_INIT_FROM_SNVM_DONE}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {INIT_MONITOR_0:USRAM_INIT_FROM_UPROM_DONE}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {INIT_MONITOR_0:USRAM_INIT_FROM_SPI_DONE}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {INIT_MONITOR_0:SRAM_INIT_FROM_SNVM_DONE}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {INIT_MONITOR_0:SRAM_INIT_FROM_UPROM_DONE}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {INIT_MONITOR_0:SRAM_INIT_FROM_SPI_DONE}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {INIT_MONITOR_0:AUTOCALIB_DONE}



# Add RESET_FIC_0_CLK instance
sd_instantiate_component -sd_name ${sd_name} -component_name {CORERESET} -instance_name {RESET_FIC_0_CLK}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {RESET_FIC_0_CLK:BANK_x_VDDI_STATUS} -value {VCC}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {RESET_FIC_0_CLK:BANK_y_VDDI_STATUS} -value {VCC}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {RESET_FIC_0_CLK:SS_BUSY} -value {GND}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {RESET_FIC_0_CLK:FF_US_RESTORE} -value {GND}



# Add RESET_FIC_1_CLK instance
sd_instantiate_component -sd_name ${sd_name} -component_name {CORERESET} -instance_name {RESET_FIC_1_CLK}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {RESET_FIC_1_CLK:BANK_x_VDDI_STATUS} -value {VCC}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {RESET_FIC_1_CLK:BANK_y_VDDI_STATUS} -value {VCC}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {RESET_FIC_1_CLK:SS_BUSY} -value {GND}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {RESET_FIC_1_CLK:FF_US_RESTORE} -value {GND}



# Add RESET_FIC_2_CLK instance
sd_instantiate_component -sd_name ${sd_name} -component_name {CORERESET} -instance_name {RESET_FIC_2_CLK}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {RESET_FIC_2_CLK:BANK_x_VDDI_STATUS} -value {VCC}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {RESET_FIC_2_CLK:BANK_y_VDDI_STATUS} -value {VCC}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {RESET_FIC_2_CLK:SS_BUSY} -value {GND}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {RESET_FIC_2_CLK:FF_US_RESTORE} -value {GND}



# Add RESET_FIC_3_CLK instance
sd_instantiate_component -sd_name ${sd_name} -component_name {CORERESET} -instance_name {RESET_FIC_3_CLK}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {RESET_FIC_3_CLK:BANK_x_VDDI_STATUS} -value {VCC}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {RESET_FIC_3_CLK:BANK_y_VDDI_STATUS} -value {VCC}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {RESET_FIC_3_CLK:SS_BUSY} -value {GND}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {RESET_FIC_3_CLK:FF_US_RESTORE} -value {GND}



# Add scalar net connections
sd_connect_pins -sd_name ${sd_name} -pin_names {"AND2_MSS_RESETN:A" "CCC_MSS_PERIPHERALS_0:PLL_LOCK_0" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"AND2_MSS_RESETN:B" "AND4_0:A" "EXT_RST_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"AND2_MSS_RESETN:Y" "MSS_RESETN" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"AND4_0:B" "MSS_PLL_LOCKS" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"AND4_0:C" "MSS_DLL_LOCKS" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"AND4_0:D" "MSS_TO_FABRIC_RESETN" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"AND4_0:Y" "RESET_FIC_0_CLK:EXT_RST_N" "RESET_FIC_1_CLK:EXT_RST_N" "RESET_FIC_2_CLK:EXT_RST_N" "RESET_FIC_3_CLK:EXT_RST_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"AND4_FABRIC_PLL_POWERDOWN:A" "RESET_FIC_0_CLK:PLL_POWERDOWN_B" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"AND4_FABRIC_PLL_POWERDOWN:B" "RESET_FIC_1_CLK:PLL_POWERDOWN_B" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"AND4_FABRIC_PLL_POWERDOWN:C" "RESET_FIC_2_CLK:PLL_POWERDOWN_B" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"AND4_FABRIC_PLL_POWERDOWN:D" "RESET_FIC_3_CLK:PLL_POWERDOWN_B" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"AND4_FABRIC_PLL_POWERDOWN:Y" "CCC_FIC_x_CLK:PLL_POWERDOWN_N_0" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CCC_FIC_x_CLK:OUT0_FABCLK_0" "FIC_0_CLK" "RESET_FIC_0_CLK:CLK" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CCC_FIC_x_CLK:OUT1_FABCLK_0" "FIC_1_CLK" "RESET_FIC_1_CLK:CLK" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CCC_FIC_x_CLK:OUT2_FABCLK_0" "FIC_2_CLK" "RESET_FIC_2_CLK:CLK" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CCC_FIC_x_CLK:OUT3_FABCLK_0" "FIC_3_CLK" "RESET_FIC_3_CLK:CLK" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CCC_FIC_x_CLK:PLL_LOCK_0" "RESET_FIC_0_CLK:PLL_LOCK" "RESET_FIC_1_CLK:PLL_LOCK" "RESET_FIC_2_CLK:PLL_LOCK" "RESET_FIC_3_CLK:PLL_LOCK" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CCC_FIC_x_CLK:REF_CLK_0" "CCC_MSS_PERIPHERALS_0:REF_CLK_0" "CLKINT_REF_CLK_50MHz:Y" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CCC_MSS_PERIPHERALS_0:OUT0_FABCLK_0" "MMC_CLK_200MHz" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CLKINT_REF_CLK_50MHz:A" "REF_CLK_50MHz" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"INIT_MONITOR_0:DEVICE_INIT_DONE" "RESET_FIC_0_CLK:INIT_DONE" "RESET_FIC_1_CLK:INIT_DONE" "RESET_FIC_2_CLK:INIT_DONE" "RESET_FIC_3_CLK:INIT_DONE" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"INIT_MONITOR_0:FABRIC_POR_N" "RESET_FIC_0_CLK:FPGA_POR_N" "RESET_FIC_1_CLK:FPGA_POR_N" "RESET_FIC_2_CLK:FPGA_POR_N" "RESET_FIC_3_CLK:FPGA_POR_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"RESETN_FIC2_CLK" "RESET_FIC_2_CLK:FABRIC_RESET_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"RESETN_FIC_0_CLK" "RESET_FIC_0_CLK:FABRIC_RESET_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"RESETN_FIC_1_CLK" "RESET_FIC_1_CLK:FABRIC_RESET_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"RESETN_FIC_3_CLK" "RESET_FIC_3_CLK:FABRIC_RESET_N" }



# Re-enable auto promotion of pins of type 'pad'
auto_promote_pad_pins -promote_all 1
# Save the smartDesign
save_smartdesign -sd_name ${sd_name}
# Generate SmartDesign CLOCKS_AND_RESETS
generate_component -component_name ${sd_name}
