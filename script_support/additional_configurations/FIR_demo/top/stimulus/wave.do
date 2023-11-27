onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -divider {Testbench signals}
add wave -noupdate /testbench/PFSOC_DSP_FLOW_TOP_0/PF_COEF_BUF_0/CLK
add wave -noupdate /testbench/addr_inc
add wave -noupdate /testbench/mem_addr
add wave -noupdate /testbench/DATA_VAL
add wave -noupdate /testbench/DATA_OUT
add wave -noupdate /testbench/DATA_VAL
add wave -noupdate /testbench/mem_coe_addr
add wave -noupdate /testbench/mem_addr
add wave -noupdate /testbench/PFSOC_DSP_FLOW_TOP_0/FILTERCONTROL_FSM_0/COEF_RADDR
add wave -noupdate /testbench/rfsm
add wave -noupdate -divider {Coefficient Buffer Signals}
add wave -noupdate /testbench/PFSOC_DSP_FLOW_TOP_0/PF_COEF_BUF_0/W_ADDR
add wave -noupdate /testbench/PFSOC_DSP_FLOW_TOP_0/PF_COEF_BUF_0/W_EN
add wave -noupdate /testbench/PFSOC_DSP_FLOW_TOP_0/PF_COEF_BUF_0/W_DATA
add wave -noupdate /testbench/PFSOC_DSP_FLOW_TOP_0/PF_COEF_BUF_0/CLK
add wave -noupdate /testbench/PFSOC_DSP_FLOW_TOP_0/PF_COEF_BUF_0/R_EN
add wave -noupdate /testbench/PFSOC_DSP_FLOW_TOP_0/PF_COEF_BUF_0/R_ADDR
add wave -noupdate -radix decimal /testbench/PFSOC_DSP_FLOW_TOP_0/PF_COEF_BUF_0/R_DATA
add wave -noupdate -divider {FIR Input buffer Signals}
add wave -noupdate /testbench/PFSOC_DSP_FLOW_TOP_0/PF_FIR_IN_BUF_0/CLK
add wave -noupdate /testbench/PFSOC_DSP_FLOW_TOP_0/PF_FIR_IN_BUF_0/W_EN
add wave -noupdate /testbench/PFSOC_DSP_FLOW_TOP_0/PF_FIR_IN_BUF_0/W_ADDR
add wave -noupdate /testbench/PFSOC_DSP_FLOW_TOP_0/PF_FIR_IN_BUF_0/W_DATA
add wave -noupdate /testbench/PFSOC_DSP_FLOW_TOP_0/PF_FIR_IN_BUF_0/CLK
add wave -noupdate /testbench/PFSOC_DSP_FLOW_TOP_0/PF_FIR_IN_BUF_0/R_EN
add wave -noupdate /testbench/PFSOC_DSP_FLOW_TOP_0/PF_FIR_IN_BUF_0/R_ADDR
add wave -noupdate -radix decimal /testbench/PFSOC_DSP_FLOW_TOP_0/PF_FIR_IN_BUF_0/R_DATA
add wave -noupdate -divider {FFT Inputs}
add wave -noupdate /testbench/PFSOC_DSP_FLOW_TOP_0/COREFFT_C0_0/CLK
add wave -noupdate -radix decimal /testbench/PFSOC_DSP_FLOW_TOP_0/COREFFT_C0_0/DATAI_IM
add wave -noupdate -radix decimal -childformat {{{/testbench/PFSOC_DSP_FLOW_TOP_0/COREFFT_C0_0/DATAI_RE[15]} -radix decimal} {{/testbench/PFSOC_DSP_FLOW_TOP_0/COREFFT_C0_0/DATAI_RE[14]} -radix decimal} {{/testbench/PFSOC_DSP_FLOW_TOP_0/COREFFT_C0_0/DATAI_RE[13]} -radix decimal} {{/testbench/PFSOC_DSP_FLOW_TOP_0/COREFFT_C0_0/DATAI_RE[12]} -radix decimal} {{/testbench/PFSOC_DSP_FLOW_TOP_0/COREFFT_C0_0/DATAI_RE[11]} -radix decimal} {{/testbench/PFSOC_DSP_FLOW_TOP_0/COREFFT_C0_0/DATAI_RE[10]} -radix decimal} {{/testbench/PFSOC_DSP_FLOW_TOP_0/COREFFT_C0_0/DATAI_RE[9]} -radix decimal} {{/testbench/PFSOC_DSP_FLOW_TOP_0/COREFFT_C0_0/DATAI_RE[8]} -radix decimal} {{/testbench/PFSOC_DSP_FLOW_TOP_0/COREFFT_C0_0/DATAI_RE[7]} -radix decimal} {{/testbench/PFSOC_DSP_FLOW_TOP_0/COREFFT_C0_0/DATAI_RE[6]} -radix decimal} {{/testbench/PFSOC_DSP_FLOW_TOP_0/COREFFT_C0_0/DATAI_RE[5]} -radix decimal} {{/testbench/PFSOC_DSP_FLOW_TOP_0/COREFFT_C0_0/DATAI_RE[4]} -radix decimal} {{/testbench/PFSOC_DSP_FLOW_TOP_0/COREFFT_C0_0/DATAI_RE[3]} -radix decimal} {{/testbench/PFSOC_DSP_FLOW_TOP_0/COREFFT_C0_0/DATAI_RE[2]} -radix decimal} {{/testbench/PFSOC_DSP_FLOW_TOP_0/COREFFT_C0_0/DATAI_RE[1]} -radix decimal} {{/testbench/PFSOC_DSP_FLOW_TOP_0/COREFFT_C0_0/DATAI_RE[0]} -radix decimal}} -subitemconfig {{/testbench/PFSOC_DSP_FLOW_TOP_0/COREFFT_C0_0/DATAI_RE[15]} {-height 17 -radix decimal} {/testbench/PFSOC_DSP_FLOW_TOP_0/COREFFT_C0_0/DATAI_RE[14]} {-height 17 -radix decimal} {/testbench/PFSOC_DSP_FLOW_TOP_0/COREFFT_C0_0/DATAI_RE[13]} {-height 17 -radix decimal} {/testbench/PFSOC_DSP_FLOW_TOP_0/COREFFT_C0_0/DATAI_RE[12]} {-height 17 -radix decimal} {/testbench/PFSOC_DSP_FLOW_TOP_0/COREFFT_C0_0/DATAI_RE[11]} {-height 17 -radix decimal} {/testbench/PFSOC_DSP_FLOW_TOP_0/COREFFT_C0_0/DATAI_RE[10]} {-height 17 -radix decimal} {/testbench/PFSOC_DSP_FLOW_TOP_0/COREFFT_C0_0/DATAI_RE[9]} {-height 17 -radix decimal} {/testbench/PFSOC_DSP_FLOW_TOP_0/COREFFT_C0_0/DATAI_RE[8]} {-height 17 -radix decimal} {/testbench/PFSOC_DSP_FLOW_TOP_0/COREFFT_C0_0/DATAI_RE[7]} {-height 17 -radix decimal} {/testbench/PFSOC_DSP_FLOW_TOP_0/COREFFT_C0_0/DATAI_RE[6]} {-height 17 -radix decimal} {/testbench/PFSOC_DSP_FLOW_TOP_0/COREFFT_C0_0/DATAI_RE[5]} {-height 17 -radix decimal} {/testbench/PFSOC_DSP_FLOW_TOP_0/COREFFT_C0_0/DATAI_RE[4]} {-height 17 -radix decimal} {/testbench/PFSOC_DSP_FLOW_TOP_0/COREFFT_C0_0/DATAI_RE[3]} {-height 17 -radix decimal} {/testbench/PFSOC_DSP_FLOW_TOP_0/COREFFT_C0_0/DATAI_RE[2]} {-height 17 -radix decimal} {/testbench/PFSOC_DSP_FLOW_TOP_0/COREFFT_C0_0/DATAI_RE[1]} {-height 17 -radix decimal} {/testbench/PFSOC_DSP_FLOW_TOP_0/COREFFT_C0_0/DATAI_RE[0]} {-height 17 -radix decimal}} /testbench/PFSOC_DSP_FLOW_TOP_0/COREFFT_C0_0/DATAI_RE
add wave -noupdate -divider {FFT Output Data}
add wave -noupdate /testbench/PFSOC_DSP_FLOW_TOP_0/COREFFT_C0_0/CLK
add wave -noupdate -format Analog-Step -height 74 -max 8212.0 -min -8059.0 -radix decimal /testbench/PFSOC_DSP_FLOW_TOP_0/COREFFT_C0_0/DATAO_IM
add wave -noupdate -format Analog-Step -height 74 -max 9834.0000000000018 -min -7005.0 -radix decimal /testbench/PFSOC_DSP_FLOW_TOP_0/COREFFT_C0_0/DATAO_RE
add wave -noupdate /testbench/PFSOC_DSP_FLOW_TOP_0/COREFFT_C0_0/DATAO_VALID
add wave -noupdate /testbench/PFSOC_DSP_FLOW_TOP_0/COREFFT_C0_0/OUTP_READY
add wave -noupdate -divider {Testbench Mean Value}
add wave -noupdate -format Analog-Step -height 74 -max 8512.0 /testbench/mean_val
add wave -noupdate -divider FIR
add wave -noupdate /testbench/PFSOC_DSP_FLOW_TOP_0/COREFIR_PF_C0_0/CLK
add wave -noupdate /testbench/PFSOC_DSP_FLOW_TOP_0/COREFIR_PF_C0_0/COEFI_VALID
add wave -noupdate /testbench/PFSOC_DSP_FLOW_TOP_0/COREFIR_PF_C0_0/COEF_ON
add wave -noupdate /testbench/PFSOC_DSP_FLOW_TOP_0/COREFIR_PF_C0_0/DATAI
add wave -noupdate /testbench/PFSOC_DSP_FLOW_TOP_0/COREFIR_PF_C0_0/DATAI_VALID
add wave -noupdate /testbench/PFSOC_DSP_FLOW_TOP_0/COREFIR_PF_C0_0/NGRST
add wave -noupdate /testbench/PFSOC_DSP_FLOW_TOP_0/COREFIR_PF_C0_0/RSTN
add wave -noupdate -format Analog-Step -height 84 -max 404062134.99999994 -min -404001217.0 -radix decimal /testbench/PFSOC_DSP_FLOW_TOP_0/COREFIR_PF_C0_0/FIRO
add wave -noupdate /testbench/PFSOC_DSP_FLOW_TOP_0/COREFIR_PF_C0_0/FIRO_VALID
add wave -noupdate /testbench/PFSOC_DSP_FLOW_TOP_0/COREFIR_PF_C0_0/FIRO_net_0
add wave -noupdate /testbench/PFSOC_DSP_FLOW_TOP_0/COREFIR_PF_C0_0/FIRO_VALID_net_0
add wave -noupdate /testbench/PFSOC_DSP_FLOW_TOP_0/COREFIR_PF_C0_0/FIRO_VALID_net_1
add wave -noupdate /testbench/PFSOC_DSP_FLOW_TOP_0/COREFIR_PF_C0_0/FIRO_net_1
add wave -noupdate /testbench/PFSOC_DSP_FLOW_TOP_0/COREFIR_PF_C0_0/GND_net
add wave -noupdate /testbench/PFSOC_DSP_FLOW_TOP_0/COREFIR_PF_C0_0/VCC_net
add wave -noupdate /testbench/PFSOC_DSP_FLOW_TOP_0/COREFIR_PF_C0_0/COEF_SEL_const_net_0
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {172490236 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 519
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {10466487 ps} {52219607 ps}
