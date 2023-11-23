# Creating SmartDesign PFSOC_DSP_FLOW_TOP
set sd_name {PFSOC_DSP_FLOW_TOP}
create_smartdesign -sd_name ${sd_name}

# Disable auto promotion of pins of type 'pad'
auto_promote_pad_pins -promote_all 0

# Create top level Scalar Ports
sd_create_scalar_port -sd_name ${sd_name} -port_name {CLK} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {RESET_N} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {RX_RDY} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SLOWCLK} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {TX_RDY} -port_direction {IN}

sd_create_scalar_port -sd_name ${sd_name} -port_name {OEN} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {WEN} -port_direction {OUT}


# Create top level Bus Ports
sd_create_bus_port -sd_name ${sd_name} -port_name {DATA_IN} -port_direction {IN} -port_range {[7:0]}

sd_create_bus_port -sd_name ${sd_name} -port_name {DATA_OUT} -port_direction {OUT} -port_range {[7:0]}


# Add COREFFT_C0_0 instance
sd_instantiate_component -sd_name ${sd_name} -component_name {COREFFT_C0} -instance_name {COREFFT_C0_0}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {COREFFT_C0_0:READ_OUTP} -value {VCC}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {COREFFT_C0_0:DATAO_VALID}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {COREFFT_C0_0:BUF_READY}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {COREFFT_C0_0:PONG}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {COREFFT_C0_0:DATAI_IM} -value {GND}



# Add COREFIR_PF_C0_0 instance
sd_instantiate_component -sd_name ${sd_name} -component_name {COREFIR_PF_C0} -instance_name {COREFIR_PF_C0_0}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {COREFIR_PF_C0_0:FIRO} -pin_slices {[13:0]}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {COREFIR_PF_C0_0:FIRO[13:0]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {COREFIR_PF_C0_0:FIRO} -pin_slices {[29:14]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {COREFIR_PF_C0_0:FIRO} -pin_slices {[47:30]}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {COREFIR_PF_C0_0:FIRO[47:30]}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {COREFIR_PF_C0_0:RSTN} -value {VCC}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {COREFIR_PF_C0_0:FIRO_VALID}



# Add FILTERCONTROL_FSM_0 instance
sd_instantiate_hdl_module -sd_name ${sd_name} -hdl_module_name {FILTERCONTROL_FSM} -hdl_file {hdl\FILTER_CONTROL_FSM.v} -instance_name {FILTERCONTROL_FSM_0}



# Add PF_COEF_BUF_0 instance
sd_instantiate_component -sd_name ${sd_name} -component_name {PF_COEF_BUF} -instance_name {PF_COEF_BUF_0}



# Add PF_FFT_IM_BUF_0 instance
sd_instantiate_component -sd_name ${sd_name} -component_name {PF_FFT_IM_BUF} -instance_name {PF_FFT_IM_BUF_0}



# Add PF_FFT_RE_BUF_0 instance
sd_instantiate_component -sd_name ${sd_name} -component_name {PF_FFT_RE_BUF} -instance_name {PF_FFT_RE_BUF_0}



# Add PF_FIR_IN_BUF_0 instance
sd_instantiate_component -sd_name ${sd_name} -component_name {PF_FIR_IN_BUF} -instance_name {PF_FIR_IN_BUF_0}



# Add PF_FIR_OUT_BUF_0 instance
sd_instantiate_component -sd_name ${sd_name} -component_name {PF_FIR_OUT_BUF} -instance_name {PF_FIR_OUT_BUF_0}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {PF_FIR_OUT_BUF_0:R_ADDR} -pin_slices {[7:0]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {PF_FIR_OUT_BUF_0:R_ADDR} -pin_slices {[9:8]}



# Add UART_IF_0 instance
sd_instantiate_hdl_module -sd_name ${sd_name} -hdl_module_name {UART_IF} -hdl_file {hdl\UART_IF.v} -instance_name {UART_IF_0}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {UART_IF_0:COEF_WADDR} -pin_slices {[6:0]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {UART_IF_0:COEF_WADDR} -pin_slices {[7:7]}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {UART_IF_0:COEF_WADDR[7:7]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {UART_IF_0:DATA_WADDR} -pin_slices {[10:10]}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {UART_IF_0:DATA_WADDR[10:10]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {UART_IF_0:DATA_WADDR} -pin_slices {[9:0]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {UART_IF_0:R_ADDR} -pin_slices {[7:0]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {UART_IF_0:R_ADDR} -pin_slices {[9:8]}



# Add scalar net connections
sd_connect_pins -sd_name ${sd_name} -pin_names {"CLK" "COREFFT_C0_0:CLK" "COREFIR_PF_C0_0:CLK" "FILTERCONTROL_FSM_0:CLK" "PF_COEF_BUF_0:CLK" "PF_FFT_IM_BUF_0:CLK" "PF_FFT_RE_BUF_0:CLK" "PF_FIR_IN_BUF_0:CLK" "PF_FIR_OUT_BUF_0:CLK" "UART_IF_0:CLK" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"COREFFT_C0_0:DATAI_VALID" "FILTERCONTROL_FSM_0:FFT_I_VALID" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"COREFFT_C0_0:NGRST" "COREFIR_PF_C0_0:NGRST" "FILTERCONTROL_FSM_0:RESET_N" "RESET_N" "UART_IF_0:RESET_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"COREFFT_C0_0:OUTP_READY" "FILTERCONTROL_FSM_0:FFT_START" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"COREFFT_C0_0:SLOWCLK" "SLOWCLK" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"COREFIR_PF_C0_0:COEFI_VALID" "FILTERCONTROL_FSM_0:COEF_I_VALID" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"COREFIR_PF_C0_0:COEF_ON" "FILTERCONTROL_FSM_0:COEF_ON" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"COREFIR_PF_C0_0:DATAI_VALID" "FILTERCONTROL_FSM_0:DATA_I_VALID" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"FILTERCONTROL_FSM_0:COEF_RD_ENABLE" "PF_COEF_BUF_0:R_EN" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"FILTERCONTROL_FSM_0:FFT_WR_ENABLE" "PF_FFT_IM_BUF_0:W_EN" "PF_FFT_RE_BUF_0:W_EN" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"FILTERCONTROL_FSM_0:FILTER_COMPLETE" "UART_IF_0:FILTER_COMPLETE" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"FILTERCONTROL_FSM_0:FIR_WR_ENABLE" "PF_FIR_IN_BUF_0:R_EN" "PF_FIR_OUT_BUF_0:W_EN" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"FILTERCONTROL_FSM_0:SEL" "UART_IF_0:SEL" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"OEN" "UART_IF_0:OEN" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_COEF_BUF_0:W_EN" "UART_IF_0:COEF_WEN" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_FFT_IM_BUF_0:R_EN" "UART_IF_0:FFT_IM_REN" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_FFT_RE_BUF_0:R_EN" "UART_IF_0:FFT_RE_REN" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_FIR_IN_BUF_0:W_EN" "UART_IF_0:DATA_WEN" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_FIR_OUT_BUF_0:R_EN" "UART_IF_0:FIR_OUT_REN" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"RX_RDY" "UART_IF_0:RX_RDY" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"TX_RDY" "UART_IF_0:TX_RDY" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"UART_IF_0:WEN" "WEN" }

# Add bus net connections
sd_connect_pins -sd_name ${sd_name} -pin_names {"COREFFT_C0_0:DATAI_RE" "COREFIR_PF_C0_0:FIRO[29:14]" "PF_FIR_OUT_BUF_0:W_DATA" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"COREFFT_C0_0:DATAO_IM" "PF_FFT_IM_BUF_0:W_DATA" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"COREFFT_C0_0:DATAO_RE" "PF_FFT_RE_BUF_0:W_DATA" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"COREFIR_PF_C0_0:COEFI" "PF_COEF_BUF_0:R_DATA" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"COREFIR_PF_C0_0:DATAI" "PF_FIR_IN_BUF_0:R_DATA" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"DATA_IN" "UART_IF_0:DATA_IN" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"DATA_OUT" "UART_IF_0:DATA_OUT" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"FILTERCONTROL_FSM_0:COEF_RADDR" "PF_COEF_BUF_0:R_ADDR" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"FILTERCONTROL_FSM_0:FFT_WADDR" "PF_FFT_IM_BUF_0:W_ADDR" "PF_FFT_RE_BUF_0:W_ADDR" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"FILTERCONTROL_FSM_0:FIR_WR_ADDR" "PF_FIR_IN_BUF_0:R_ADDR" "PF_FIR_OUT_BUF_0:W_ADDR" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_COEF_BUF_0:W_ADDR" "UART_IF_0:COEF_WADDR[6:0]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_COEF_BUF_0:W_DATA" "PF_FIR_IN_BUF_0:W_DATA" "UART_IF_0:WDATA" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_FFT_IM_BUF_0:R_ADDR" "PF_FFT_RE_BUF_0:R_ADDR" "PF_FIR_OUT_BUF_0:R_ADDR[7:0]" "UART_IF_0:R_ADDR[7:0]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_FFT_IM_BUF_0:R_DATA" "UART_IF_0:FFT_IM_RDATA" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_FFT_RE_BUF_0:R_DATA" "UART_IF_0:FFT_RE_RDATA" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_FIR_IN_BUF_0:W_ADDR" "UART_IF_0:DATA_WADDR[9:0]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_FIR_OUT_BUF_0:R_ADDR[9:8]" "UART_IF_0:R_ADDR[9:8]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_FIR_OUT_BUF_0:R_DATA" "UART_IF_0:FIR_OUT_RDATA" }


# Re-enable auto promotion of pins of type 'pad'
auto_promote_pad_pins -promote_all 1
# Save the smartDesign
save_smartdesign -sd_name ${sd_name}
# Generate SmartDesign PFSOC_DSP_FLOW_TOP
generate_component -component_name ${sd_name}
