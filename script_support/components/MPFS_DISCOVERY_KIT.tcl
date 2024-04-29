# Creating SmartDesign "MPFS_DISCOVERY_KIT"
set sd_name {MPFS_DISCOVERY_KIT}
create_smartdesign -sd_name ${sd_name}

# Disable auto promotion of pins of type 'pad'
auto_promote_pad_pins -promote_all 0

# Create top level Scalar Ports
sd_create_scalar_port -sd_name ${sd_name} -port_name {DIP1} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {DIP2} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {DIP3} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {DIP4} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {DIP5} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {DIP6} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {DIP7} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {DIP8} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FTDI_UART_D_TXD} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {MBUS_SPI_MISO} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {MBUS_UART_TXD} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {MMUART_1_RXD} -port_direction {IN} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {MMUART_4_RXD} -port_direction {IN} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {REFCLK_N} -port_direction {IN} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {REFCLK} -port_direction {IN} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {REF_CLK_50MHz} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SD_CD} -port_direction {IN} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SD_WP} -port_direction {IN} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SGMII_RX0_N} -port_direction {IN} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SGMII_RX0_P} -port_direction {IN} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SPI_1_DI} -port_direction {IN} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SWITCH1} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SWITCH2} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {mBUS_INT} -port_direction {IN}

sd_create_scalar_port -sd_name ${sd_name} -port_name {ACT_N} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {BG0} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {CAS_N} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {CK0_N} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {CK0} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {CKE0} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {CS0_N} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FTDI_UART_D_RXD} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {GPIO_1_20_OUT} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {GPIO_1_9_OUT} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {LED1} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {LED2} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {LED3} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {LED4} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {LED5} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {LED6} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {LED7} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {MAC_0_MDC} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {MBUS_AN} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {MBUS_PWM} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {MBUS_RST} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {MBUS_SPI_MOSI} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {MBUS_UART_RXD} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {MMUART_1_TXD} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {MMUART_4_TXD} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {ODT0} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {RAS_N} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {RESET_N} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SD_CLK} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SD_POW} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SD_VOLT_CMD_DIR} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SD_VOLT_DIR_0} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SD_VOLT_DIR_1_3} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SD_VOLT_EN} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SD_VOLT_SEL} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SGMII_TX0_N} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SGMII_TX0_P} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SPISCLKO} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SPISDO} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SPISS} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SPI_1_DO} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {VSC_RESETN} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {VSC_TXDIS_SRESETN} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {WE_N} -port_direction {OUT} -port_is_pad {1}

sd_create_scalar_port -sd_name ${sd_name} -port_name {MBUS_I2CSCL} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {MBUS_I2CSDA} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {MBUS_SPI_CLK} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {MBUS_SPI_CS} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {MDIO_PAD} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {RPI_GPIO12} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {RPI_GPIO13} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {RPI_GPIO16} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {RPI_GPIO17} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {RPI_GPIO18} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {RPI_GPIO19} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {RPI_GPIO20} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {RPI_GPIO21} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {RPI_GPIO22} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {RPI_GPIO23} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {RPI_GPIO24} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {RPI_GPIO25} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {RPI_GPIO26} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {RPI_GPIO27} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {RPI_GPIO4} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {RPI_GPIO5} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {RPI_GPIO6} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {RPI_I2C_SCL} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {RPI_I2C_SDA} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SD_CMD} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SD_DATA0} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SD_DATA1} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SD_DATA2} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SD_DATA3} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SPI_1_CLK} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SPI_1_SS0} -port_direction {INOUT} -port_is_pad {1}

# Create top level Bus Ports
sd_create_bus_port -sd_name ${sd_name} -port_name {A} -port_direction {OUT} -port_range {[13:0]} -port_is_pad {1}
sd_create_bus_port -sd_name ${sd_name} -port_name {BA} -port_direction {OUT} -port_range {[1:0]} -port_is_pad {1}
sd_create_bus_port -sd_name ${sd_name} -port_name {DM} -port_direction {OUT} -port_range {[1:0]} -port_is_pad {1}

sd_create_bus_port -sd_name ${sd_name} -port_name {DQS_N} -port_direction {INOUT} -port_range {[1:0]} -port_is_pad {1}
sd_create_bus_port -sd_name ${sd_name} -port_name {DQS} -port_direction {INOUT} -port_range {[1:0]} -port_is_pad {1}
sd_create_bus_port -sd_name ${sd_name} -port_name {DQ} -port_direction {INOUT} -port_range {[15:0]} -port_is_pad {1}

sd_invert_pins -sd_name ${sd_name} -pin_names {DIP1}
sd_invert_pins -sd_name ${sd_name} -pin_names {DIP2}
sd_invert_pins -sd_name ${sd_name} -pin_names {DIP3}
sd_invert_pins -sd_name ${sd_name} -pin_names {DIP4}
sd_invert_pins -sd_name ${sd_name} -pin_names {DIP5}
sd_invert_pins -sd_name ${sd_name} -pin_names {DIP6}
sd_invert_pins -sd_name ${sd_name} -pin_names {DIP7}
sd_invert_pins -sd_name ${sd_name} -pin_names {DIP8}
sd_invert_pins -sd_name ${sd_name} -pin_names {SWITCH1}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {MBUS_AN} -value {VCC}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {MBUS_RST} -value {VCC}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {VSC_RESETN} -value {VCC}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {VSC_TXDIS_SRESETN} -value {VCC}
# Add CLOCKS_AND_RESETS_0 instance
sd_instantiate_component -sd_name ${sd_name} -component_name {CLOCKS_AND_RESETS} -instance_name {CLOCKS_AND_RESETS_0}



# Add FIC_0_PERIPHERALS_0 instance
sd_instantiate_component -sd_name ${sd_name} -component_name {FIC_0_PERIPHERALS} -instance_name {FIC_0_PERIPHERALS_0}



# Add FIC_3_PERIPHERALS_0 instance
sd_instantiate_component -sd_name ${sd_name} -component_name {FIC_3_PERIPHERALS} -instance_name {FIC_3_PERIPHERALS_0}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {FIC_3_PERIPHERALS_0:GPIO_OUT} -pin_slices {[0:0]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {FIC_3_PERIPHERALS_0:GPIO_OUT} -pin_slices {[1:1]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {FIC_3_PERIPHERALS_0:GPIO_OUT} -pin_slices {[2:2]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {FIC_3_PERIPHERALS_0:GPIO_OUT} -pin_slices {[3:3]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {FIC_3_PERIPHERALS_0:GPIO_OUT} -pin_slices {[4:4]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {FIC_3_PERIPHERALS_0:GPIO_OUT} -pin_slices {[5:5]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {FIC_3_PERIPHERALS_0:GPIO_OUT} -pin_slices {[6:6]}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {FIC_3_PERIPHERALS_0:PLL0_SW_DRI}



# Add MSS_WRAPPER_0 instance
sd_instantiate_component -sd_name ${sd_name} -component_name {MSS_WRAPPER} -instance_name {MSS_WRAPPER_0}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {MSS_WRAPPER_0:MSS_INT_F2M} -pin_slices {[0:0]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {MSS_WRAPPER_0:MSS_INT_F2M} -pin_slices {[10:10]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {MSS_WRAPPER_0:MSS_INT_F2M} -pin_slices {[11:11]}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {MSS_WRAPPER_0:MSS_INT_F2M[11:11]} -value {GND}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {MSS_WRAPPER_0:MSS_INT_F2M} -pin_slices {[12:12]}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {MSS_WRAPPER_0:MSS_INT_F2M[12:12]} -value {GND}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {MSS_WRAPPER_0:MSS_INT_F2M} -pin_slices {[13:13]}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {MSS_WRAPPER_0:MSS_INT_F2M[13:13]} -value {GND}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {MSS_WRAPPER_0:MSS_INT_F2M} -pin_slices {[1:1]}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {MSS_WRAPPER_0:MSS_INT_F2M[1:1]} -value {GND}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {MSS_WRAPPER_0:MSS_INT_F2M} -pin_slices {[2:2]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {MSS_WRAPPER_0:MSS_INT_F2M} -pin_slices {[3:3]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {MSS_WRAPPER_0:MSS_INT_F2M} -pin_slices {[4:4]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {MSS_WRAPPER_0:MSS_INT_F2M} -pin_slices {[58:14]}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {MSS_WRAPPER_0:MSS_INT_F2M[58:14]} -value {GND}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {MSS_WRAPPER_0:MSS_INT_F2M} -pin_slices {[59:59]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {MSS_WRAPPER_0:MSS_INT_F2M} -pin_slices {[5:5]}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {MSS_WRAPPER_0:MSS_INT_F2M[5:5]} -value {GND}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {MSS_WRAPPER_0:MSS_INT_F2M} -pin_slices {[60:60]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {MSS_WRAPPER_0:MSS_INT_F2M} -pin_slices {[61:61]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {MSS_WRAPPER_0:MSS_INT_F2M} -pin_slices {[62:62]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {MSS_WRAPPER_0:MSS_INT_F2M} -pin_slices {[63:63]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {MSS_WRAPPER_0:MSS_INT_F2M} -pin_slices {[6:6]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {MSS_WRAPPER_0:MSS_INT_F2M} -pin_slices {[7:7]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {MSS_WRAPPER_0:MSS_INT_F2M} -pin_slices {[8:8]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {MSS_WRAPPER_0:MSS_INT_F2M} -pin_slices {[9:9]}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {MSS_WRAPPER_0:GPIO_2_F2M_24} -value {GND}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {MSS_WRAPPER_0:MSS_INT_M2F}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {MSS_WRAPPER_0:FIC_1_AXI4_INITIATOR}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {MSS_WRAPPER_0:FIC_1_AXI4_TARGET}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {MSS_WRAPPER_0:FIC_2_AXI4_TARGET}



# Add OR2_LED1 instance
sd_instantiate_macro -sd_name ${sd_name} -macro_name {OR2} -instance_name {OR2_LED1}



# Add OR2_LED2 instance
sd_instantiate_macro -sd_name ${sd_name} -macro_name {OR2} -instance_name {OR2_LED2}



# Add OR2_LED3 instance
sd_instantiate_macro -sd_name ${sd_name} -macro_name {OR2} -instance_name {OR2_LED3}



# Add OR2_LED4 instance
sd_instantiate_macro -sd_name ${sd_name} -macro_name {OR2} -instance_name {OR2_LED4}



# Add OR2_LED5 instance
sd_instantiate_macro -sd_name ${sd_name} -macro_name {OR2} -instance_name {OR2_LED5}



# Add OR2_LED6 instance
sd_instantiate_macro -sd_name ${sd_name} -macro_name {OR2} -instance_name {OR2_LED6}



# Add OR2_LED7 instance
sd_instantiate_macro -sd_name ${sd_name} -macro_name {OR2} -instance_name {OR2_LED7}



# Add scalar net connections
sd_create_scalar_net -sd_name ${sd_name} -net_name {MSS_WRAPPER_0_GPIO_2_M2F_21}
sd_connect_net_to_pins -sd_name ${sd_name} -net_name {MSS_WRAPPER_0_GPIO_2_M2F_21} -pin_names {"MSS_WRAPPER_0:GPIO_2_M2F_21" "OR2_LED5:B" }

sd_connect_pins -sd_name ${sd_name} -pin_names {"ACT_N" "MSS_WRAPPER_0:ACT_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"BG0" "MSS_WRAPPER_0:BG0" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CAS_N" "MSS_WRAPPER_0:CAS_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CK0" "MSS_WRAPPER_0:CK0" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CK0_N" "MSS_WRAPPER_0:CK0_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CKE0" "MSS_WRAPPER_0:CKE0" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CLOCKS_AND_RESETS_0:EXT_RST_N" "SWITCH2" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CLOCKS_AND_RESETS_0:FIC_0_CLK" "FIC_0_PERIPHERALS_0:ACLK" "MSS_WRAPPER_0:FIC_0_ACLK" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CLOCKS_AND_RESETS_0:FIC_1_CLK" "MSS_WRAPPER_0:FIC_1_ACLK" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CLOCKS_AND_RESETS_0:FIC_2_CLK" "MSS_WRAPPER_0:FIC_2_ACLK" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CLOCKS_AND_RESETS_0:FIC_3_CLK" "FIC_3_PERIPHERALS_0:PCLK" "MSS_WRAPPER_0:FIC_3_PCLK" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CLOCKS_AND_RESETS_0:MSS_DLL_LOCKS" "MSS_WRAPPER_0:MSS_DLL_LOCKS" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CLOCKS_AND_RESETS_0:MSS_RESETN" "MSS_WRAPPER_0:MSS_RESET_N_F2M" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CLOCKS_AND_RESETS_0:MSS_TO_FABRIC_RESETN" "MSS_WRAPPER_0:MSS_RESET_N_M2F" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CLOCKS_AND_RESETS_0:REF_CLK_50MHz" "REF_CLK_50MHz" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CLOCKS_AND_RESETS_0:RESETN_FIC_0_CLK" "FIC_0_PERIPHERALS_0:ARESETN" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CLOCKS_AND_RESETS_0:RESETN_FIC_3_CLK" "FIC_3_PERIPHERALS_0:PRESETN" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CS0_N" "MSS_WRAPPER_0:CS0_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"DIP1" "MSS_WRAPPER_0:MSS_INT_F2M[6:6]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"DIP2" "MSS_WRAPPER_0:MSS_INT_F2M[7:7]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"DIP3" "MSS_WRAPPER_0:MSS_INT_F2M[8:8]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"DIP4" "MSS_WRAPPER_0:MSS_INT_F2M[9:9]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"DIP5" "MSS_WRAPPER_0:GPIO_2_F2M_25" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"DIP6" "MSS_WRAPPER_0:GPIO_2_F2M_26" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"DIP7" "MSS_WRAPPER_0:GPIO_2_F2M_27" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"DIP8" "MSS_WRAPPER_0:GPIO_2_F2M_28" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"FIC_0_PERIPHERALS_0:DMA_CONTROLLER_IRQ" "MSS_WRAPPER_0:MSS_INT_F2M[2:2]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"FIC_3_PERIPHERALS_0:COREI2C_C0_SCL" "RPI_I2C_SCL" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"FIC_3_PERIPHERALS_0:COREI2C_C0_SDA" "RPI_I2C_SDA" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"FIC_3_PERIPHERALS_0:CORE_I2C_C0_INT" "MSS_WRAPPER_0:MSS_INT_F2M[4:4]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"FIC_3_PERIPHERALS_0:CoreUARTapb_RX" "MBUS_UART_TXD" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"FIC_3_PERIPHERALS_0:CoreUARTapb_TX" "MBUS_UART_RXD" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"FIC_3_PERIPHERALS_0:GPIO_OUT[0:0]" "OR2_LED1:A" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"FIC_3_PERIPHERALS_0:GPIO_OUT[1:1]" "OR2_LED2:A" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"FIC_3_PERIPHERALS_0:GPIO_OUT[2:2]" "OR2_LED3:A" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"FIC_3_PERIPHERALS_0:GPIO_OUT[3:3]" "OR2_LED4:A" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"FIC_3_PERIPHERALS_0:GPIO_OUT[4:4]" "OR2_LED5:A" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"FIC_3_PERIPHERALS_0:GPIO_OUT[5:5]" "OR2_LED6:A" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"FIC_3_PERIPHERALS_0:GPIO_OUT[6:6]" "OR2_LED7:A" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"FIC_3_PERIPHERALS_0:IHC_SUBSYSTEM_E51_IRQ" "MSS_WRAPPER_0:MSS_INT_F2M[63:63]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"FIC_3_PERIPHERALS_0:IHC_SUBSYSTEM_U54_1_IRQ" "MSS_WRAPPER_0:MSS_INT_F2M[62:62]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"FIC_3_PERIPHERALS_0:IHC_SUBSYSTEM_U54_2_IRQ" "MSS_WRAPPER_0:MSS_INT_F2M[61:61]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"FIC_3_PERIPHERALS_0:IHC_SUBSYSTEM_U54_3_IRQ" "MSS_WRAPPER_0:MSS_INT_F2M[60:60]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"FIC_3_PERIPHERALS_0:IHC_SUBSYSTEM_U54_4_IRQ" "MSS_WRAPPER_0:MSS_INT_F2M[59:59]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"FIC_3_PERIPHERALS_0:PWM_0" "MBUS_PWM" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"FIC_3_PERIPHERALS_0:SPISCLKO" "SPISCLKO" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"FIC_3_PERIPHERALS_0:SPISDO" "SPISDO" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"FIC_3_PERIPHERALS_0:SPISS" "SPISS" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"FTDI_UART_D_RXD" "MSS_WRAPPER_0:MMUART_0_TXD_M2F" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"FTDI_UART_D_TXD" "MSS_WRAPPER_0:MMUART_0_RXD_F2M" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_1_20_OUT" "MSS_WRAPPER_0:GPIO_1_20_OUT" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_1_9_OUT" "MSS_WRAPPER_0:GPIO_1_9_OUT" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"LED1" "OR2_LED1:Y" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"LED2" "OR2_LED2:Y" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"LED3" "OR2_LED3:Y" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"LED4" "OR2_LED4:Y" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"LED5" "OR2_LED5:Y" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"LED6" "OR2_LED6:Y" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"LED7" "OR2_LED7:Y" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MAC_0_MDC" "MSS_WRAPPER_0:MAC_0_MDC" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MBUS_I2CSCL" "MSS_WRAPPER_0:I2C_0_SCL" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MBUS_I2CSDA" "MSS_WRAPPER_0:I2C_0_SDA" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MBUS_SPI_CLK" "MSS_WRAPPER_0:SPI_0_CLK" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MBUS_SPI_CS" "MSS_WRAPPER_0:SPI_0_SS" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MBUS_SPI_MISO" "MSS_WRAPPER_0:SPI_0_DI_F2M" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MBUS_SPI_MOSI" "MSS_WRAPPER_0:SPI_0_DO" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MDIO_PAD" "MSS_WRAPPER_0:MDIO_PAD" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MMUART_1_RXD" "MSS_WRAPPER_0:MMUART_1_RXD" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MMUART_1_TXD" "MSS_WRAPPER_0:MMUART_1_TXD" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MMUART_4_RXD" "MSS_WRAPPER_0:MMUART_4_RXD" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MMUART_4_TXD" "MSS_WRAPPER_0:MMUART_4_TXD" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS_WRAPPER_0:GPIO_2_0_IO" "RPI_GPIO4" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS_WRAPPER_0:GPIO_2_10_IO" "RPI_GPIO12" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS_WRAPPER_0:GPIO_2_11_IO" "RPI_GPIO13" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS_WRAPPER_0:GPIO_2_12_IO" "RPI_GPIO19" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS_WRAPPER_0:GPIO_2_13_IO" "RPI_GPIO16" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS_WRAPPER_0:GPIO_2_14_IO" "RPI_GPIO26" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS_WRAPPER_0:GPIO_2_15_IO" "RPI_GPIO20" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS_WRAPPER_0:GPIO_2_16_IO" "RPI_GPIO21" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS_WRAPPER_0:GPIO_2_1_IO" "RPI_GPIO17" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS_WRAPPER_0:GPIO_2_26_OUT" "MSS_WRAPPER_0:GPIO_2_F2M_30" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS_WRAPPER_0:GPIO_2_27_OUT" "MSS_WRAPPER_0:GPIO_2_F2M_31" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS_WRAPPER_0:GPIO_2_28_OUT" "MSS_WRAPPER_0:MSS_INT_F2M[0:0]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS_WRAPPER_0:GPIO_2_2_IO" "RPI_GPIO18" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS_WRAPPER_0:GPIO_2_3_IO" "RPI_GPIO27" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS_WRAPPER_0:GPIO_2_4_IO" "RPI_GPIO22" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS_WRAPPER_0:GPIO_2_5_IO" "RPI_GPIO23" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS_WRAPPER_0:GPIO_2_6_IO" "RPI_GPIO24" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS_WRAPPER_0:GPIO_2_7_IO" "RPI_GPIO25" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS_WRAPPER_0:GPIO_2_8_IO" "RPI_GPIO5" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS_WRAPPER_0:GPIO_2_9_IO" "RPI_GPIO6" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS_WRAPPER_0:GPIO_2_M2F_17" "OR2_LED1:B" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS_WRAPPER_0:GPIO_2_M2F_18" "OR2_LED2:B" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS_WRAPPER_0:GPIO_2_M2F_19" "OR2_LED3:B" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS_WRAPPER_0:GPIO_2_M2F_20" "OR2_LED4:B" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS_WRAPPER_0:GPIO_2_M2F_22" "OR2_LED6:B" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS_WRAPPER_0:GPIO_2_M2F_23" "OR2_LED7:B" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS_WRAPPER_0:MSS_INT_F2M[10:10]" "SWITCH1" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS_WRAPPER_0:MSS_INT_F2M[3:3]" "mBUS_INT" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS_WRAPPER_0:ODT0" "ODT0" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS_WRAPPER_0:RAS_N" "RAS_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS_WRAPPER_0:REFCLK" "REFCLK" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS_WRAPPER_0:REFCLK_N" "REFCLK_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS_WRAPPER_0:RESET_N" "RESET_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS_WRAPPER_0:SD_CD" "SD_CD" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS_WRAPPER_0:SD_CLK" "SD_CLK" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS_WRAPPER_0:SD_CMD" "SD_CMD" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS_WRAPPER_0:SD_DATA0" "SD_DATA0" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS_WRAPPER_0:SD_DATA1" "SD_DATA1" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS_WRAPPER_0:SD_DATA2" "SD_DATA2" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS_WRAPPER_0:SD_DATA3" "SD_DATA3" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS_WRAPPER_0:SD_POW" "SD_POW" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS_WRAPPER_0:SD_VOLT_CMD_DIR" "SD_VOLT_CMD_DIR" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS_WRAPPER_0:SD_VOLT_DIR_0" "SD_VOLT_DIR_0" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS_WRAPPER_0:SD_VOLT_DIR_1_3" "SD_VOLT_DIR_1_3" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS_WRAPPER_0:SD_VOLT_EN" "SD_VOLT_EN" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS_WRAPPER_0:SD_VOLT_SEL" "SD_VOLT_SEL" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS_WRAPPER_0:SD_WP" "SD_WP" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS_WRAPPER_0:SGMII_RX0_N" "SGMII_RX0_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS_WRAPPER_0:SGMII_RX0_P" "SGMII_RX0_P" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS_WRAPPER_0:SGMII_TX0_N" "SGMII_TX0_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS_WRAPPER_0:SGMII_TX0_P" "SGMII_TX0_P" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS_WRAPPER_0:SPI_1_CLK" "SPI_1_CLK" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS_WRAPPER_0:SPI_1_DI" "SPI_1_DI" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS_WRAPPER_0:SPI_1_DO" "SPI_1_DO" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS_WRAPPER_0:SPI_1_SS0" "SPI_1_SS0" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS_WRAPPER_0:WE_N" "WE_N" }

# Add bus net connections
sd_connect_pins -sd_name ${sd_name} -pin_names {"A" "MSS_WRAPPER_0:A" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"BA" "MSS_WRAPPER_0:BA" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"DM" "MSS_WRAPPER_0:DM" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"DQ" "MSS_WRAPPER_0:DQ" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"DQS" "MSS_WRAPPER_0:DQS" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"DQS_N" "MSS_WRAPPER_0:DQS_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"FIC_3_PERIPHERALS_0:PSTRB" "MSS_WRAPPER_0:FIC_3_APB_M_PSTRB" }

# Add bus interface net connections
sd_connect_pins -sd_name ${sd_name} -pin_names {"FIC_0_PERIPHERALS_0:AXI4mmaster0" "MSS_WRAPPER_0:FIC_0_AXI4_INITIATOR" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"FIC_0_PERIPHERALS_0:AXI4mslave0" "MSS_WRAPPER_0:FIC_0_AXI4_TARGET" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"FIC_3_PERIPHERALS_0:APB_MMASTER" "MSS_WRAPPER_0:FIC_3_APB_INITIATOR" }

# Re-enable auto promotion of pins of type 'pad'
auto_promote_pad_pins -promote_all 1
# Save the SmartDesign 
save_smartdesign -sd_name ${sd_name}
# Generate SmartDesign "MPFS_DISCOVERY_KIT"
generate_component -component_name ${sd_name}
