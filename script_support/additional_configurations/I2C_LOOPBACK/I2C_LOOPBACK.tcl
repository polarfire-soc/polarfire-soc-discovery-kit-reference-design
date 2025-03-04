set sd_name {MSS_WRAPPER}
open_smartdesign -sd_name ${sd_name} 
import_mss_component -file "$local_dir/script_support/components/MSS_I2C_LOOPBACK/MPFS_DISCOVERY_KIT_MSS.cxz"
sd_update_instance -sd_name ${sd_name} -instance_name {MPFS_DISCOVERY_KIT_MSS_0} 

# Add I2C1_SCL_BIBUF instance
sd_instantiate_macro -sd_name ${sd_name} -macro_name {BIBUF} -instance_name {I2C1_SCL_BIBUF}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {I2C1_SCL_BIBUF:D} -value {GND}

# Add I2C1_SDA_BIBUF instance
sd_instantiate_macro -sd_name ${sd_name} -macro_name {BIBUF} -instance_name {I2C1_SDA_BIBUF}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {I2C1_SDA_BIBUF:D} -value {GND}

sd_rename_port -sd_name ${sd_name}  -current_port_name {PAD} -new_port_name {I2C1_SCL} 
sd_rename_port -sd_name ${sd_name}  -current_port_name {PAD_0} -new_port_name {I2C1_SDA} 

sd_connect_pins -sd_name ${sd_name} -pin_names {"MPFS_DISCOVERY_KIT_MSS_0:I2C_1_SCL_F2M" "I2C1_SCL_BIBUF:Y" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MPFS_DISCOVERY_KIT_MSS_0:I2C_1_SDA_F2M" "I2C1_SDA_BIBUF:Y" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MPFS_DISCOVERY_KIT_MSS_0:I2C_1_SCL_OE_M2F" "I2C1_SCL_BIBUF:E" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MPFS_DISCOVERY_KIT_MSS_0:I2C_1_SDA_OE_M2F" "I2C1_SDA_BIBUF:E" }
sd_delete_instances -sd_name ${sd_name} -instance_names {"GPIO_2_2"} 
sd_delete_instances -sd_name ${sd_name} -instance_names {"GPIO_2_16"} 
sd_delete_instances -sd_name ${sd_name} -instance_names {"GPIO_2_15"} 
sd_delete_instances -sd_name ${sd_name} -instance_names {"GPIO_2_14"} 
sd_delete_instances -sd_name ${sd_name} -instance_names {"GPIO_2_13"} 
sd_delete_instances -sd_name ${sd_name} -instance_names {"GPIO_2_12"} 
sd_delete_instances -sd_name ${sd_name} -instance_names {"GPIO_2_11"} 
sd_delete_instances -sd_name ${sd_name} -instance_names {"GPIO_2_10"} 
sd_delete_instances -sd_name ${sd_name} -instance_names {"GPIO_2_9"} 
sd_delete_instances -sd_name ${sd_name} -instance_names {"GPIO_2_8"} 
sd_delete_instances -sd_name ${sd_name} -instance_names {"GPIO_2_7"} 
sd_delete_instances -sd_name ${sd_name} -instance_names {"GPIO_2_6"} 
sd_delete_instances -sd_name ${sd_name} -instance_names {"GPIO_2_5"} 
sd_delete_instances -sd_name ${sd_name} -instance_names {"GPIO_2_3"} 
sd_delete_instances -sd_name ${sd_name} -instance_names {"GPIO_2_4"} 
sd_delete_instances -sd_name ${sd_name} -instance_names {"SPI_0_SS_BIBUF"} 
sd_delete_instances -sd_name ${sd_name} -instance_names {"SPI_0_CLK_BIBUF"} 
sd_delete_instances -sd_name ${sd_name} -instance_names {"GPIO_2_0"} 
sd_delete_instances -sd_name ${sd_name} -instance_names {"GPIO_2_1"} 
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {MPFS_DISCOVERY_KIT_MSS_0:GPIO_2_F2M_0} -value {GND} 
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {MPFS_DISCOVERY_KIT_MSS_0:SPI_0_CLK_F2M} -value {GND} 
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {MPFS_DISCOVERY_KIT_MSS_0:SPI_0_SS_F2M} -value {GND} 
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {MPFS_DISCOVERY_KIT_MSS_0:GPIO_2_F2M_16} -value {GND} 
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {MPFS_DISCOVERY_KIT_MSS_0:GPIO_2_F2M_12} -value {GND} 
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {MPFS_DISCOVERY_KIT_MSS_0:GPIO_2_F2M_11} -value {GND} 
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {MPFS_DISCOVERY_KIT_MSS_0:GPIO_2_F2M_4} -value {GND} 
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {MPFS_DISCOVERY_KIT_MSS_0:GPIO_2_F2M_10} -value {GND} 
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {MPFS_DISCOVERY_KIT_MSS_0:GPIO_2_F2M_3} -value {GND} 
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {MPFS_DISCOVERY_KIT_MSS_0:GPIO_2_F2M_9} -value {GND} 
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {MPFS_DISCOVERY_KIT_MSS_0:GPIO_2_F2M_2} -value {GND} 
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {MPFS_DISCOVERY_KIT_MSS_0:GPIO_2_F2M_8} -value {GND} 
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {MPFS_DISCOVERY_KIT_MSS_0:GPIO_2_F2M_1} -value {GND} 
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {MPFS_DISCOVERY_KIT_MSS_0:GPIO_2_F2M_7} -value {GND} 
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {MPFS_DISCOVERY_KIT_MSS_0:GPIO_2_F2M_6} -value {GND} 
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {MPFS_DISCOVERY_KIT_MSS_0:GPIO_2_F2M_5} -value {GND} 
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {MPFS_DISCOVERY_KIT_MSS_0:GPIO_2_F2M_15} -value {GND} 
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {MPFS_DISCOVERY_KIT_MSS_0:GPIO_2_F2M_14} -value {GND} 
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {MPFS_DISCOVERY_KIT_MSS_0:GPIO_2_F2M_13} -value {GND} 
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {MPFS_DISCOVERY_KIT_MSS_0:GPIO_2_OE_M2F_0} 
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {MPFS_DISCOVERY_KIT_MSS_0:GPIO_2_OE_M2F_9} 
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {MPFS_DISCOVERY_KIT_MSS_0:GPIO_2_OE_M2F_15} 
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {MPFS_DISCOVERY_KIT_MSS_0:GPIO_2_M2F_11} 
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {MPFS_DISCOVERY_KIT_MSS_0:GPIO_2_OE_M2F_8} 
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {MPFS_DISCOVERY_KIT_MSS_0:GPIO_2_OE_M2F_14} 
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {MPFS_DISCOVERY_KIT_MSS_0:GPIO_2_M2F_10} 
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {MPFS_DISCOVERY_KIT_MSS_0:GPIO_2_OE_M2F_7} 
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {MPFS_DISCOVERY_KIT_MSS_0:GPIO_2_M2F_9} 
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {MPFS_DISCOVERY_KIT_MSS_0:GPIO_2_M2F_16} 
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {MPFS_DISCOVERY_KIT_MSS_0:GPIO_2_OE_M2F_6} 
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {MPFS_DISCOVERY_KIT_MSS_0:GPIO_2_M2F_8} 
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {MPFS_DISCOVERY_KIT_MSS_0:GPIO_2_M2F_15} 
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {MPFS_DISCOVERY_KIT_MSS_0:GPIO_2_OE_M2F_5} 
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {MPFS_DISCOVERY_KIT_MSS_0:GPIO_2_M2F_7} 
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {MPFS_DISCOVERY_KIT_MSS_0:GPIO_2_M2F_14} 
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {MPFS_DISCOVERY_KIT_MSS_0:GPIO_2_OE_M2F_4} 
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {MPFS_DISCOVERY_KIT_MSS_0:GPIO_2_M2F_6} 
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {MPFS_DISCOVERY_KIT_MSS_0:GPIO_2_M2F_13} 
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {MPFS_DISCOVERY_KIT_MSS_0:GPIO_2_OE_M2F_3} 
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {MPFS_DISCOVERY_KIT_MSS_0:GPIO_2_M2F_5} 
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {MPFS_DISCOVERY_KIT_MSS_0:GPIO_2_OE_M2F_2} 
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {MPFS_DISCOVERY_KIT_MSS_0:GPIO_2_M2F_4} 
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {MPFS_DISCOVERY_KIT_MSS_0:GPIO_2_OE_M2F_1} 
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {MPFS_DISCOVERY_KIT_MSS_0:GPIO_2_M2F_3} 
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {MPFS_DISCOVERY_KIT_MSS_0:GPIO_2_OE_M2F_13} 
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {MPFS_DISCOVERY_KIT_MSS_0:GPIO_2_M2F_2} 
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {MPFS_DISCOVERY_KIT_MSS_0:GPIO_2_OE_M2F_12} 
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {MPFS_DISCOVERY_KIT_MSS_0:GPIO_2_M2F_1} 
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {MPFS_DISCOVERY_KIT_MSS_0:GPIO_2_OE_M2F_11} 
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {MPFS_DISCOVERY_KIT_MSS_0:GPIO_2_M2F_0} 
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {MPFS_DISCOVERY_KIT_MSS_0:GPIO_2_OE_M2F_10} 
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {MPFS_DISCOVERY_KIT_MSS_0:GPIO_2_OE_M2F_16} 
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {MPFS_DISCOVERY_KIT_MSS_0:GPIO_2_M2F_12} 
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {MPFS_DISCOVERY_KIT_MSS_0:SPI_0_SS1_OE_M2F} 
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {MPFS_DISCOVERY_KIT_MSS_0:SPI_0_CLK_M2F} 
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {MPFS_DISCOVERY_KIT_MSS_0:SPI_0_CLK_OE_M2F} 
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {MPFS_DISCOVERY_KIT_MSS_0:SPI_0_DO_OE_M2F} 
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {MPFS_DISCOVERY_KIT_MSS_0:SPI_0_SS1_M2F} 
sd_disconnect_pins -sd_name ${sd_name} -pin_names {"MPFS_DISCOVERY_KIT_MSS_0:SPI_0_DO_M2F"} 
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {MPFS_DISCOVERY_KIT_MSS_0:SPI_0_DO_M2F} 
sd_delete_ports -sd_name ${sd_name} -port_names {SPI_0_DO} 

auto_promote_pad_pins -promote_all 1
save_smartdesign -sd_name ${sd_name}
generate_component -component_name ${sd_name}

set sd_name {MPFS_DISCOVERY_KIT}
open_smartdesign -sd_name ${sd_name}

sd_update_instance -sd_name ${sd_name} -instance_name {MSS_WRAPPER_0} 
sd_delete_ports -sd_name {MPFS_DISCOVERY_KIT} -port_names {MBUS_SPI_MOSI} 
sd_delete_ports -sd_name {MPFS_DISCOVERY_KIT} -port_names {MBUS_SPI_MISO} 
sd_delete_ports -sd_name {MPFS_DISCOVERY_KIT} -port_names {MBUS_UART_TXD} 
sd_delete_ports -sd_name {MPFS_DISCOVERY_KIT} -port_names {MBUS_PWM} 
sd_delete_ports -sd_name {MPFS_DISCOVERY_KIT} -port_names {MBUS_RST} 
sd_delete_ports -sd_name {MPFS_DISCOVERY_KIT} -port_names {MBUS_AN} 
sd_delete_ports -sd_name {MPFS_DISCOVERY_KIT} -port_names {MBUS_UART_RXD} 
sd_delete_ports -sd_name {MPFS_DISCOVERY_KIT} -port_names {mBUS_INT} 
sd_connect_pins_to_constant -sd_name {MPFS_DISCOVERY_KIT} -pin_names {MSS_WRAPPER_0:SPI_0_DI_F2M} -value {GND} 
sd_connect_pins_to_constant -sd_name {MPFS_DISCOVERY_KIT} -pin_names {MSS_WRAPPER_0:MSS_INT_F2M[3:3]} -value {GND} 
sd_mark_pins_unused -sd_name {MPFS_DISCOVERY_KIT} -pin_names {FIC_3_PERIPHERALS_0:CoreUARTapb_TX} 
sd_mark_pins_unused -sd_name {MPFS_DISCOVERY_KIT} -pin_names {FIC_3_PERIPHERALS_0:PWM_0} 
sd_connect_pins_to_constant -sd_name {MPFS_DISCOVERY_KIT} -pin_names {FIC_3_PERIPHERALS_0:CoreUARTapb_RX} -value {GND} 
sd_connect_pins_to_constant -sd_name {MPFS_DISCOVERY_KIT} -pin_names {MSS_WRAPPER_0:GPIO_2_F2M_30} -value {GND} 
sd_connect_pins_to_constant -sd_name {MPFS_DISCOVERY_KIT} -pin_names {MSS_WRAPPER_0:GPIO_2_F2M_31} -value {GND} 
sd_connect_pins_to_constant -sd_name {MPFS_DISCOVERY_KIT} -pin_names {MSS_WRAPPER_0:MSS_INT_F2M[0]} -value {GND} 

auto_promote_pad_pins -promote_all 1
save_smartdesign -sd_name ${sd_name}
generate_component -component_name ${sd_name}

build_design_hierarchy

organize_tool_files \
	-tool {PLACEROUTE} \
	-file "${project_dir}/constraint/io/MPFS_DISCOVERY_KIT_BANK_SETTINGS.pdc" \
	-file "${project_dir}/constraint/io/MPFS_DISCOVERY_KIT_BOARD_MISC.pdc" \
	-file "${project_dir}/constraint/io/MPFS_DISCOVERY_UARTS.pdc" \
	-file "${project_dir}/constraint/io/MPFS_DISCOVERY_7_SEG.pdc" \
	-file "${project_dir}/constraint/io/MPFS_DISCOVERY_I2C_LOOPBACK.pdc" \
	-module {MPFS_DISCOVERY_KIT::work} \
	-input_type {constraint}   
