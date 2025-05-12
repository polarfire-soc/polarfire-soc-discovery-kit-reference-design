# Creating SmartDesign FIC_3_PERIPHERALS
set sd_name {FIC_3_PERIPHERALS}
create_smartdesign -sd_name ${sd_name}

# Disable auto promotion of pins of type 'pad'
auto_promote_pad_pins -promote_all 0

# Create top level Scalar Ports
sd_create_scalar_port -sd_name ${sd_name} -port_name {APB_MMASTER_in_penable} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {APB_MMASTER_in_psel} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {APB_MMASTER_in_pwrite} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {CoreUARTapb_RX} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {PCLK} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {PLL0_SW_DRI_INTERRUPT} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {PRESETN} -port_direction {IN}

sd_create_scalar_port -sd_name ${sd_name} -port_name {APB_MMASTER_in_pready} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {APB_MMASTER_in_pslverr} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {CORE_I2C_C0_INT} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {CoreUARTapb_TX} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FRAMING_ERR} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {OVERFLOW} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {PARITY_ERR} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {RXRDY} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {TXRDY} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {IHC_SUBSYSTEM_E51_IRQ} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {IHC_SUBSYSTEM_U54_1_IRQ} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {IHC_SUBSYSTEM_U54_2_IRQ} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {IHC_SUBSYSTEM_U54_3_IRQ} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {IHC_SUBSYSTEM_U54_4_IRQ} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {PWM_0} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {Q0_LANE0_DRI_DRI_ARST_N} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {Q0_LANE0_DRI_DRI_CLK} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SPISCLKO} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SPISDO} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SPISS} -port_direction {OUT}

sd_create_scalar_port -sd_name ${sd_name} -port_name {COREI2C_C0_SCL} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {COREI2C_C0_SDA} -port_direction {INOUT} -port_is_pad {1}

# Create top level Bus Ports
sd_create_bus_port -sd_name ${sd_name} -port_name {APB_MMASTER_in_paddr} -port_direction {IN} -port_range {[31:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {APB_MMASTER_in_pwdata} -port_direction {IN} -port_range {[31:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {PLL0_SW_DRI_RDATA} -port_direction {IN} -port_range {[32:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {PSTRB} -port_direction {IN} -port_range {[3:0]}

sd_create_bus_port -sd_name ${sd_name} -port_name {APB_MMASTER_in_prdata} -port_direction {OUT} -port_range {[31:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {GPIO_OUT} -port_direction {OUT} -port_range {[6:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {PLL0_SW_DRI_CTRL} -port_direction {OUT} -port_range {[10:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {Q0_LANE0_DRI_DRI_WDATA} -port_direction {OUT} -port_range {[32:0]}


# Create top level Bus interface Ports
sd_create_bif_port -sd_name ${sd_name} -port_name {PLL0_SW_DRI} -port_bif_vlnv {Actel:busdef.dri:PF_DRI:1.0} -port_bif_role {mirroredSlave} -port_bif_mapping {\
"DRI_CLK:Q0_LANE0_DRI_DRI_CLK" \
"DRI_ARST_N:Q0_LANE0_DRI_DRI_ARST_N" \
"DRI_CTRL:PLL0_SW_DRI_CTRL" \
"DRI_RDATA:PLL0_SW_DRI_RDATA" \
"DRI_WDATA:Q0_LANE0_DRI_DRI_WDATA" \
"DRI_INTERRUPT:PLL0_SW_DRI_INTERRUPT" } 

sd_create_bif_port -sd_name ${sd_name} -port_name {APB_MMASTER} -port_bif_vlnv {AMBA:AMBA2:APB:r0p0} -port_bif_role {mirroredMaster} -port_bif_mapping {\
"PADDR:APB_MMASTER_in_paddr" \
"PSELx:APB_MMASTER_in_psel" \
"PENABLE:APB_MMASTER_in_penable" \
"PWRITE:APB_MMASTER_in_pwrite" \
"PRDATA:APB_MMASTER_in_prdata" \
"PWDATA:APB_MMASTER_in_pwdata" \
"PREADY:APB_MMASTER_in_pready" \
"PSLVERR:APB_MMASTER_in_pslverr" } 

# Add CORE_I2C_C0_0_WRAPPER_1 instance
sd_instantiate_component -sd_name ${sd_name} -component_name {CORE_I2C_C0_0_WRAPPER} -instance_name {CORE_I2C_C0_0_WRAPPER_1}



# Add COREGPIO_C0 instance
sd_instantiate_component -sd_name ${sd_name} -component_name {GPIO} -instance_name {COREGPIO_C0}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {COREGPIO_C0:INT}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {COREGPIO_C0:GPIO_IN} -value {GND}



# Add CoreUARTapb_C0_0 instance
sd_instantiate_component -sd_name ${sd_name} -component_name {CoreUARTapb_C0} -instance_name {CoreUARTapb_C0_0}



# Add FIC_3_ADDRESS_GENERATION_1 instance
sd_instantiate_component -sd_name ${sd_name} -component_name {FIC_3_ADDRESS_GENERATION} -instance_name {FIC_3_ADDRESS_GENERATION_1}



# Add IHC_SUBSYSTEM_0 instance
sd_instantiate_component -sd_name ${sd_name} -component_name {IHC_SUBSYSTEM} -instance_name {IHC_SUBSYSTEM_0}



# Add PWM instance
sd_instantiate_component -sd_name ${sd_name} -component_name {corepwm_C0} -instance_name {PWM}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {PWM:PWM} -pin_slices {[0:0]}



# Add RECONFIGURATION_INTERFACE_0 instance
sd_instantiate_component -sd_name ${sd_name} -component_name {RECONFIGURATION_INTERFACE} -instance_name {RECONFIGURATION_INTERFACE_0}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {RECONFIGURATION_INTERFACE_0:PINTERRUPT}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {RECONFIGURATION_INTERFACE_0:PTIMEOUT}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {RECONFIGURATION_INTERFACE_0:BUSERROR}



# Add SPI_FOR_7_SEG_0 instance
sd_instantiate_component -sd_name ${sd_name} -component_name {SPI_FOR_7_SEG} -instance_name {SPI_FOR_7_SEG_0}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {SPI_FOR_7_SEG_0:SPISS} -pin_slices {[0:0]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {SPI_FOR_7_SEG_0:SPISS} -pin_slices {[1:1]}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {SPI_FOR_7_SEG_0:SPISS[1:1]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {SPI_FOR_7_SEG_0:SPISS} -pin_slices {[2:2]}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {SPI_FOR_7_SEG_0:SPISS[2:2]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {SPI_FOR_7_SEG_0:SPISS} -pin_slices {[3:3]}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {SPI_FOR_7_SEG_0:SPISS[3:3]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {SPI_FOR_7_SEG_0:SPISS} -pin_slices {[4:4]}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {SPI_FOR_7_SEG_0:SPISS[4:4]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {SPI_FOR_7_SEG_0:SPISS} -pin_slices {[5:5]}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {SPI_FOR_7_SEG_0:SPISS[5:5]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {SPI_FOR_7_SEG_0:SPISS} -pin_slices {[6:6]}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {SPI_FOR_7_SEG_0:SPISS[6:6]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {SPI_FOR_7_SEG_0:SPISS} -pin_slices {[7:7]}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {SPI_FOR_7_SEG_0:SPISS[7:7]}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {SPI_FOR_7_SEG_0:SPIINT}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {SPI_FOR_7_SEG_0:SPIRXAVAIL}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {SPI_FOR_7_SEG_0:SPITXRFM}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {SPI_FOR_7_SEG_0:SPISSI} -value {VCC}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {SPI_FOR_7_SEG_0:SPISDI} -value {GND}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {SPI_FOR_7_SEG_0:SPICLKI} -value {GND}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {SPI_FOR_7_SEG_0:SPIMODE}



# Add scalar net connections
sd_connect_pins -sd_name ${sd_name} -pin_names {"COREGPIO_C0:PCLK" "CORE_I2C_C0_0_WRAPPER_1:PCLK" "CoreUARTapb_C0_0:PCLK" "IHC_SUBSYSTEM_0:pclk" "PCLK" "PWM:PCLK" "RECONFIGURATION_INTERFACE_0:PCLK" "SPI_FOR_7_SEG_0:PCLK" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"COREGPIO_C0:PRESETN" "CORE_I2C_C0_0_WRAPPER_1:PRESETN" "CoreUARTapb_C0_0:PRESETN" "IHC_SUBSYSTEM_0:presetn" "PRESETN" "PWM:PRESETN" "RECONFIGURATION_INTERFACE_0:PRESETN" "SPI_FOR_7_SEG_0:PRESETN" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"COREI2C_C0_SCL" "CORE_I2C_C0_0_WRAPPER_1:COREI2C_C0_SCL" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"COREI2C_C0_SDA" "CORE_I2C_C0_0_WRAPPER_1:COREI2C_C0_SDA" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CORE_I2C_C0_0_WRAPPER_1:INT" "CORE_I2C_C0_INT" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CoreUARTapb_C0_0:FRAMING_ERR" "FRAMING_ERR" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CoreUARTapb_C0_0:OVERFLOW" "OVERFLOW" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CoreUARTapb_C0_0:PARITY_ERR" "PARITY_ERR" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CoreUARTapb_C0_0:RXRDY" "RXRDY" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CoreUARTapb_C0_0:TXRDY" "TXRDY" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CoreUARTapb_C0_0:RX" "CoreUARTapb_RX" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CoreUARTapb_C0_0:TX" "CoreUARTapb_TX" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"IHC_SUBSYSTEM_0:E51_IRQ" "IHC_SUBSYSTEM_E51_IRQ" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"IHC_SUBSYSTEM_0:U54_1_IRQ" "IHC_SUBSYSTEM_U54_1_IRQ" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"IHC_SUBSYSTEM_0:U54_2_IRQ" "IHC_SUBSYSTEM_U54_2_IRQ" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"IHC_SUBSYSTEM_0:U54_3_IRQ" "IHC_SUBSYSTEM_U54_3_IRQ" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"IHC_SUBSYSTEM_0:U54_4_IRQ" "IHC_SUBSYSTEM_U54_4_IRQ" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PWM:PWM[0:0]" "PWM_0" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"SPISCLKO" "SPI_FOR_7_SEG_0:SPISCLKO" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"SPISDO" "SPI_FOR_7_SEG_0:SPISDO" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"SPISS" "SPI_FOR_7_SEG_0:SPISS[0:0]" }

# Add bus net connections
sd_connect_pins -sd_name ${sd_name} -pin_names {"COREGPIO_C0:GPIO_OUT" "GPIO_OUT" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PSTRB" "RECONFIGURATION_INTERFACE_0:PSTRB" }

# Add bus interface net connections
sd_connect_pins -sd_name ${sd_name} -pin_names {"APB_MMASTER" "FIC_3_ADDRESS_GENERATION_1:APB_MMASTER" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"COREGPIO_C0:APB_bif" "FIC_3_ADDRESS_GENERATION_1:FIC_3_0x4000_01xx" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CORE_I2C_C0_0_WRAPPER_1:APBslave" "FIC_3_ADDRESS_GENERATION_1:FIC_3_0x4000_02xx" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CoreUARTapb_C0_0:APB_bif" "FIC_3_ADDRESS_GENERATION_1:FIC_3_0x4000_03xx" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"FIC_3_ADDRESS_GENERATION_1:FIC_3_0x4000_00xx" "PWM:APBslave" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"FIC_3_ADDRESS_GENERATION_1:FIC_3_0x4000_04xx" "SPI_FOR_7_SEG_0:APB_bif" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"FIC_3_ADDRESS_GENERATION_1:FIC_3_0x43xx_xxxx_0x48xx_xxxx" "RECONFIGURATION_INTERFACE_0:APBS_SLAVE" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"FIC_3_ADDRESS_GENERATION_1:FIC_3_0x5xxx_xxxx" "IHC_SUBSYSTEM_0:APB3mmaster" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PLL0_SW_DRI" "RECONFIGURATION_INTERFACE_0:PLL0_SW_DRI" }

# Re-enable auto promotion of pins of type 'pad'
auto_promote_pad_pins -promote_all 1
# Save the smartDesign
save_smartdesign -sd_name ${sd_name}
# Generate SmartDesign FIC_3_PERIPHERALS
generate_component -component_name ${sd_name}
