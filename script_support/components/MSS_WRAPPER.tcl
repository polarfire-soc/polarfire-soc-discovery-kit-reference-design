# Creating SmartDesign MSS_WRAPPER
set sd_name {MSS_WRAPPER}
create_smartdesign -sd_name ${sd_name}

# Disable auto promotion of pins of type 'pad'
auto_promote_pad_pins -promote_all 0

# Create top level Scalar Ports
sd_create_scalar_port -sd_name ${sd_name} -port_name {EMMC_SD_CLK_F2M} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FIC_0_ACLK} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FIC_0_AXI4_INITIATOR_FIC_0_AXI4_M_ARREADY} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FIC_0_AXI4_INITIATOR_FIC_0_AXI4_M_AWREADY} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FIC_0_AXI4_INITIATOR_FIC_0_AXI4_M_BVALID} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FIC_0_AXI4_INITIATOR_FIC_0_AXI4_M_RLAST} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FIC_0_AXI4_INITIATOR_FIC_0_AXI4_M_RVALID} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FIC_0_AXI4_INITIATOR_FIC_0_AXI4_M_WREADY} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FIC_0_AXI4_TARGET_FIC_0_AXI4_S_ARLOCK} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FIC_0_AXI4_TARGET_FIC_0_AXI4_S_ARVALID} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FIC_0_AXI4_TARGET_FIC_0_AXI4_S_AWLOCK} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FIC_0_AXI4_TARGET_FIC_0_AXI4_S_AWVALID} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FIC_0_AXI4_TARGET_FIC_0_AXI4_S_BREADY} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FIC_0_AXI4_TARGET_FIC_0_AXI4_S_RREADY} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FIC_0_AXI4_TARGET_FIC_0_AXI4_S_WLAST} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FIC_0_AXI4_TARGET_FIC_0_AXI4_S_WVALID} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FIC_1_ACLK} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FIC_1_AXI4_INITIATOR_FIC_1_AXI4_M_ARREADY} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FIC_1_AXI4_INITIATOR_FIC_1_AXI4_M_AWREADY} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FIC_1_AXI4_INITIATOR_FIC_1_AXI4_M_BVALID} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FIC_1_AXI4_INITIATOR_FIC_1_AXI4_M_RLAST} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FIC_1_AXI4_INITIATOR_FIC_1_AXI4_M_RVALID} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FIC_1_AXI4_INITIATOR_FIC_1_AXI4_M_WREADY} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FIC_1_AXI4_TARGET_FIC_1_AXI4_S_ARLOCK} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FIC_1_AXI4_TARGET_FIC_1_AXI4_S_ARVALID} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FIC_1_AXI4_TARGET_FIC_1_AXI4_S_AWLOCK} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FIC_1_AXI4_TARGET_FIC_1_AXI4_S_AWVALID} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FIC_1_AXI4_TARGET_FIC_1_AXI4_S_BREADY} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FIC_1_AXI4_TARGET_FIC_1_AXI4_S_RREADY} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FIC_1_AXI4_TARGET_FIC_1_AXI4_S_WLAST} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FIC_1_AXI4_TARGET_FIC_1_AXI4_S_WVALID} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FIC_2_ACLK} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FIC_2_AXI4_TARGET_FIC_2_AXI4_S_ARLOCK} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FIC_2_AXI4_TARGET_FIC_2_AXI4_S_ARVALID} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FIC_2_AXI4_TARGET_FIC_2_AXI4_S_AWLOCK} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FIC_2_AXI4_TARGET_FIC_2_AXI4_S_AWVALID} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FIC_2_AXI4_TARGET_FIC_2_AXI4_S_BREADY} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FIC_2_AXI4_TARGET_FIC_2_AXI4_S_RREADY} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FIC_2_AXI4_TARGET_FIC_2_AXI4_S_WLAST} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FIC_2_AXI4_TARGET_FIC_2_AXI4_S_WVALID} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FIC_3_APB_INITIATOR_FIC_3_APB_M_PREADY} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FIC_3_APB_INITIATOR_FIC_3_APB_M_PSLVERR} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FIC_3_PCLK} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {GPIO_2_F2M_24} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {GPIO_2_F2M_25} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {GPIO_2_F2M_26} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {GPIO_2_F2M_27} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {GPIO_2_F2M_28} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {GPIO_2_F2M_30} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {GPIO_2_F2M_31} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {MMUART_0_RXD_F2M} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {MMUART_1_RXD} -port_direction {IN} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {MMUART_4_RXD} -port_direction {IN} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {MSS_RESET_N_F2M} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {REFCLK_N} -port_direction {IN} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {REFCLK} -port_direction {IN} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SD_CD} -port_direction {IN} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SD_WP} -port_direction {IN} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SGMII_RX0_N} -port_direction {IN} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SGMII_RX0_P} -port_direction {IN} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SPI_0_DI_F2M} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SPI_1_DI} -port_direction {IN} -port_is_pad {1}

sd_create_scalar_port -sd_name ${sd_name} -port_name {ACT_N} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {BG0} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {CAS_N} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {CK0_N} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {CK0} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {CKE0} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {CS0_N} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FIC_0_AXI4_INITIATOR_FIC_0_AXI4_M_ARLOCK} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FIC_0_AXI4_INITIATOR_FIC_0_AXI4_M_ARVALID} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FIC_0_AXI4_INITIATOR_FIC_0_AXI4_M_AWLOCK} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FIC_0_AXI4_INITIATOR_FIC_0_AXI4_M_AWVALID} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FIC_0_AXI4_INITIATOR_FIC_0_AXI4_M_BREADY} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FIC_0_AXI4_INITIATOR_FIC_0_AXI4_M_RREADY} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FIC_0_AXI4_INITIATOR_FIC_0_AXI4_M_WLAST} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FIC_0_AXI4_INITIATOR_FIC_0_AXI4_M_WVALID} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FIC_0_AXI4_TARGET_FIC_0_AXI4_S_ARREADY} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FIC_0_AXI4_TARGET_FIC_0_AXI4_S_AWREADY} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FIC_0_AXI4_TARGET_FIC_0_AXI4_S_BVALID} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FIC_0_AXI4_TARGET_FIC_0_AXI4_S_RLAST} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FIC_0_AXI4_TARGET_FIC_0_AXI4_S_RVALID} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FIC_0_AXI4_TARGET_FIC_0_AXI4_S_WREADY} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FIC_1_AXI4_INITIATOR_FIC_1_AXI4_M_ARLOCK} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FIC_1_AXI4_INITIATOR_FIC_1_AXI4_M_ARVALID} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FIC_1_AXI4_INITIATOR_FIC_1_AXI4_M_AWLOCK} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FIC_1_AXI4_INITIATOR_FIC_1_AXI4_M_AWVALID} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FIC_1_AXI4_INITIATOR_FIC_1_AXI4_M_BREADY} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FIC_1_AXI4_INITIATOR_FIC_1_AXI4_M_RREADY} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FIC_1_AXI4_INITIATOR_FIC_1_AXI4_M_WLAST} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FIC_1_AXI4_INITIATOR_FIC_1_AXI4_M_WVALID} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FIC_1_AXI4_TARGET_FIC_1_AXI4_S_ARREADY} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FIC_1_AXI4_TARGET_FIC_1_AXI4_S_AWREADY} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FIC_1_AXI4_TARGET_FIC_1_AXI4_S_BVALID} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FIC_1_AXI4_TARGET_FIC_1_AXI4_S_RLAST} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FIC_1_AXI4_TARGET_FIC_1_AXI4_S_RVALID} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FIC_1_AXI4_TARGET_FIC_1_AXI4_S_WREADY} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FIC_2_AXI4_TARGET_FIC_2_AXI4_S_ARREADY} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FIC_2_AXI4_TARGET_FIC_2_AXI4_S_AWREADY} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FIC_2_AXI4_TARGET_FIC_2_AXI4_S_BVALID} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FIC_2_AXI4_TARGET_FIC_2_AXI4_S_RLAST} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FIC_2_AXI4_TARGET_FIC_2_AXI4_S_RVALID} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FIC_2_AXI4_TARGET_FIC_2_AXI4_S_WREADY} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FIC_3_APB_INITIATOR_FIC_3_APB_M_PENABLE} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FIC_3_APB_INITIATOR_FIC_3_APB_M_PSEL} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FIC_3_APB_INITIATOR_FIC_3_APB_M_PWRITE} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {GPIO_1_20_OUT} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {GPIO_1_9_OUT} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {GPIO_2_26_OUT} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {GPIO_2_27_OUT} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {GPIO_2_28_OUT} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {GPIO_2_M2F_17} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {GPIO_2_M2F_18} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {GPIO_2_M2F_19} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {GPIO_2_M2F_20} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {GPIO_2_M2F_21} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {GPIO_2_M2F_22} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {GPIO_2_M2F_23} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {MAC_0_MDC} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {MMUART_0_TXD_M2F} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {MMUART_1_TXD} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {MMUART_4_TXD} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {MSS_DLL_LOCKS} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {MSS_PLL_LOCKS} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {MSS_RESET_N_M2F} -port_direction {OUT}
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
sd_create_scalar_port -sd_name ${sd_name} -port_name {SPI_0_DO} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SPI_1_DO} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {WE_N} -port_direction {OUT} -port_is_pad {1}

sd_create_scalar_port -sd_name ${sd_name} -port_name {GPIO_2_0_IO} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {GPIO_2_10_IO} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {GPIO_2_11_IO} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {GPIO_2_12_IO} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {GPIO_2_13_IO} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {GPIO_2_14_IO} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {GPIO_2_15_IO} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {GPIO_2_16_IO} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {GPIO_2_1_IO} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {GPIO_2_2_IO} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {GPIO_2_3_IO} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {GPIO_2_4_IO} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {GPIO_2_5_IO} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {GPIO_2_6_IO} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {GPIO_2_7_IO} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {GPIO_2_8_IO} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {GPIO_2_9_IO} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {I2C_0_SCL} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {I2C_0_SDA} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SD_CMD} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SD_DATA0} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SD_DATA1} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SD_DATA2} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SD_DATA3} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SPI_0_CLK} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SPI_0_SS} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SPI_1_CLK} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SPI_1_SS0} -port_direction {INOUT} -port_is_pad {1}

# Create top level Bus Ports
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_0_AXI4_INITIATOR_FIC_0_AXI4_M_BID} -port_direction {IN} -port_range {[7:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_0_AXI4_INITIATOR_FIC_0_AXI4_M_BRESP} -port_direction {IN} -port_range {[1:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_0_AXI4_INITIATOR_FIC_0_AXI4_M_RDATA} -port_direction {IN} -port_range {[63:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_0_AXI4_INITIATOR_FIC_0_AXI4_M_RID} -port_direction {IN} -port_range {[7:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_0_AXI4_INITIATOR_FIC_0_AXI4_M_RRESP} -port_direction {IN} -port_range {[1:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_0_AXI4_TARGET_FIC_0_AXI4_S_ARADDR} -port_direction {IN} -port_range {[37:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_0_AXI4_TARGET_FIC_0_AXI4_S_ARBURST} -port_direction {IN} -port_range {[1:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_0_AXI4_TARGET_FIC_0_AXI4_S_ARCACHE} -port_direction {IN} -port_range {[3:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_0_AXI4_TARGET_FIC_0_AXI4_S_ARID} -port_direction {IN} -port_range {[3:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_0_AXI4_TARGET_FIC_0_AXI4_S_ARLEN} -port_direction {IN} -port_range {[7:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_0_AXI4_TARGET_FIC_0_AXI4_S_ARPROT} -port_direction {IN} -port_range {[2:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_0_AXI4_TARGET_FIC_0_AXI4_S_ARQOS} -port_direction {IN} -port_range {[3:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_0_AXI4_TARGET_FIC_0_AXI4_S_ARSIZE} -port_direction {IN} -port_range {[2:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_0_AXI4_TARGET_FIC_0_AXI4_S_AWADDR} -port_direction {IN} -port_range {[37:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_0_AXI4_TARGET_FIC_0_AXI4_S_AWBURST} -port_direction {IN} -port_range {[1:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_0_AXI4_TARGET_FIC_0_AXI4_S_AWCACHE} -port_direction {IN} -port_range {[3:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_0_AXI4_TARGET_FIC_0_AXI4_S_AWID} -port_direction {IN} -port_range {[3:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_0_AXI4_TARGET_FIC_0_AXI4_S_AWLEN} -port_direction {IN} -port_range {[7:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_0_AXI4_TARGET_FIC_0_AXI4_S_AWPROT} -port_direction {IN} -port_range {[2:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_0_AXI4_TARGET_FIC_0_AXI4_S_AWQOS} -port_direction {IN} -port_range {[3:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_0_AXI4_TARGET_FIC_0_AXI4_S_AWSIZE} -port_direction {IN} -port_range {[2:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_0_AXI4_TARGET_FIC_0_AXI4_S_WDATA} -port_direction {IN} -port_range {[63:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_0_AXI4_TARGET_FIC_0_AXI4_S_WSTRB} -port_direction {IN} -port_range {[7:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_1_AXI4_INITIATOR_FIC_1_AXI4_M_BID} -port_direction {IN} -port_range {[7:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_1_AXI4_INITIATOR_FIC_1_AXI4_M_BRESP} -port_direction {IN} -port_range {[1:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_1_AXI4_INITIATOR_FIC_1_AXI4_M_RDATA} -port_direction {IN} -port_range {[63:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_1_AXI4_INITIATOR_FIC_1_AXI4_M_RID} -port_direction {IN} -port_range {[7:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_1_AXI4_INITIATOR_FIC_1_AXI4_M_RRESP} -port_direction {IN} -port_range {[1:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_1_AXI4_TARGET_FIC_1_AXI4_S_ARADDR} -port_direction {IN} -port_range {[37:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_1_AXI4_TARGET_FIC_1_AXI4_S_ARBURST} -port_direction {IN} -port_range {[1:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_1_AXI4_TARGET_FIC_1_AXI4_S_ARCACHE} -port_direction {IN} -port_range {[3:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_1_AXI4_TARGET_FIC_1_AXI4_S_ARID} -port_direction {IN} -port_range {[3:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_1_AXI4_TARGET_FIC_1_AXI4_S_ARLEN} -port_direction {IN} -port_range {[7:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_1_AXI4_TARGET_FIC_1_AXI4_S_ARPROT} -port_direction {IN} -port_range {[2:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_1_AXI4_TARGET_FIC_1_AXI4_S_ARQOS} -port_direction {IN} -port_range {[3:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_1_AXI4_TARGET_FIC_1_AXI4_S_ARSIZE} -port_direction {IN} -port_range {[2:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_1_AXI4_TARGET_FIC_1_AXI4_S_AWADDR} -port_direction {IN} -port_range {[37:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_1_AXI4_TARGET_FIC_1_AXI4_S_AWBURST} -port_direction {IN} -port_range {[1:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_1_AXI4_TARGET_FIC_1_AXI4_S_AWCACHE} -port_direction {IN} -port_range {[3:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_1_AXI4_TARGET_FIC_1_AXI4_S_AWID} -port_direction {IN} -port_range {[3:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_1_AXI4_TARGET_FIC_1_AXI4_S_AWLEN} -port_direction {IN} -port_range {[7:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_1_AXI4_TARGET_FIC_1_AXI4_S_AWPROT} -port_direction {IN} -port_range {[2:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_1_AXI4_TARGET_FIC_1_AXI4_S_AWQOS} -port_direction {IN} -port_range {[3:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_1_AXI4_TARGET_FIC_1_AXI4_S_AWSIZE} -port_direction {IN} -port_range {[2:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_1_AXI4_TARGET_FIC_1_AXI4_S_WDATA} -port_direction {IN} -port_range {[63:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_1_AXI4_TARGET_FIC_1_AXI4_S_WSTRB} -port_direction {IN} -port_range {[7:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_2_AXI4_TARGET_FIC_2_AXI4_S_ARADDR} -port_direction {IN} -port_range {[37:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_2_AXI4_TARGET_FIC_2_AXI4_S_ARBURST} -port_direction {IN} -port_range {[1:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_2_AXI4_TARGET_FIC_2_AXI4_S_ARCACHE} -port_direction {IN} -port_range {[3:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_2_AXI4_TARGET_FIC_2_AXI4_S_ARID} -port_direction {IN} -port_range {[3:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_2_AXI4_TARGET_FIC_2_AXI4_S_ARLEN} -port_direction {IN} -port_range {[7:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_2_AXI4_TARGET_FIC_2_AXI4_S_ARPROT} -port_direction {IN} -port_range {[2:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_2_AXI4_TARGET_FIC_2_AXI4_S_ARQOS} -port_direction {IN} -port_range {[3:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_2_AXI4_TARGET_FIC_2_AXI4_S_ARSIZE} -port_direction {IN} -port_range {[2:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_2_AXI4_TARGET_FIC_2_AXI4_S_AWADDR} -port_direction {IN} -port_range {[37:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_2_AXI4_TARGET_FIC_2_AXI4_S_AWBURST} -port_direction {IN} -port_range {[1:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_2_AXI4_TARGET_FIC_2_AXI4_S_AWCACHE} -port_direction {IN} -port_range {[3:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_2_AXI4_TARGET_FIC_2_AXI4_S_AWID} -port_direction {IN} -port_range {[3:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_2_AXI4_TARGET_FIC_2_AXI4_S_AWLEN} -port_direction {IN} -port_range {[7:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_2_AXI4_TARGET_FIC_2_AXI4_S_AWPROT} -port_direction {IN} -port_range {[2:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_2_AXI4_TARGET_FIC_2_AXI4_S_AWQOS} -port_direction {IN} -port_range {[3:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_2_AXI4_TARGET_FIC_2_AXI4_S_AWSIZE} -port_direction {IN} -port_range {[2:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_2_AXI4_TARGET_FIC_2_AXI4_S_WDATA} -port_direction {IN} -port_range {[63:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_2_AXI4_TARGET_FIC_2_AXI4_S_WSTRB} -port_direction {IN} -port_range {[7:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_3_APB_INITIATOR_FIC_3_APB_M_PRDATA} -port_direction {IN} -port_range {[31:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {MSS_INT_F2M} -port_direction {IN} -port_range {[63:0]}

sd_create_bus_port -sd_name ${sd_name} -port_name {A} -port_direction {OUT} -port_range {[13:0]} -port_is_pad {1}
sd_create_bus_port -sd_name ${sd_name} -port_name {BA} -port_direction {OUT} -port_range {[1:0]} -port_is_pad {1}
sd_create_bus_port -sd_name ${sd_name} -port_name {DM} -port_direction {OUT} -port_range {[1:0]} -port_is_pad {1}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_0_AXI4_INITIATOR_FIC_0_AXI4_M_ARADDR} -port_direction {OUT} -port_range {[37:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_0_AXI4_INITIATOR_FIC_0_AXI4_M_ARBURST} -port_direction {OUT} -port_range {[1:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_0_AXI4_INITIATOR_FIC_0_AXI4_M_ARCACHE} -port_direction {OUT} -port_range {[3:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_0_AXI4_INITIATOR_FIC_0_AXI4_M_ARID} -port_direction {OUT} -port_range {[7:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_0_AXI4_INITIATOR_FIC_0_AXI4_M_ARLEN} -port_direction {OUT} -port_range {[7:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_0_AXI4_INITIATOR_FIC_0_AXI4_M_ARPROT} -port_direction {OUT} -port_range {[2:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_0_AXI4_INITIATOR_FIC_0_AXI4_M_ARQOS} -port_direction {OUT} -port_range {[3:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_0_AXI4_INITIATOR_FIC_0_AXI4_M_ARSIZE} -port_direction {OUT} -port_range {[2:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_0_AXI4_INITIATOR_FIC_0_AXI4_M_AWADDR} -port_direction {OUT} -port_range {[37:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_0_AXI4_INITIATOR_FIC_0_AXI4_M_AWBURST} -port_direction {OUT} -port_range {[1:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_0_AXI4_INITIATOR_FIC_0_AXI4_M_AWCACHE} -port_direction {OUT} -port_range {[3:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_0_AXI4_INITIATOR_FIC_0_AXI4_M_AWID} -port_direction {OUT} -port_range {[7:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_0_AXI4_INITIATOR_FIC_0_AXI4_M_AWLEN} -port_direction {OUT} -port_range {[7:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_0_AXI4_INITIATOR_FIC_0_AXI4_M_AWPROT} -port_direction {OUT} -port_range {[2:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_0_AXI4_INITIATOR_FIC_0_AXI4_M_AWQOS} -port_direction {OUT} -port_range {[3:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_0_AXI4_INITIATOR_FIC_0_AXI4_M_AWSIZE} -port_direction {OUT} -port_range {[2:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_0_AXI4_INITIATOR_FIC_0_AXI4_M_WDATA} -port_direction {OUT} -port_range {[63:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_0_AXI4_INITIATOR_FIC_0_AXI4_M_WSTRB} -port_direction {OUT} -port_range {[7:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_0_AXI4_TARGET_FIC_0_AXI4_S_BID} -port_direction {OUT} -port_range {[3:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_0_AXI4_TARGET_FIC_0_AXI4_S_BRESP} -port_direction {OUT} -port_range {[1:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_0_AXI4_TARGET_FIC_0_AXI4_S_RDATA} -port_direction {OUT} -port_range {[63:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_0_AXI4_TARGET_FIC_0_AXI4_S_RID} -port_direction {OUT} -port_range {[3:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_0_AXI4_TARGET_FIC_0_AXI4_S_RRESP} -port_direction {OUT} -port_range {[1:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_1_AXI4_INITIATOR_FIC_1_AXI4_M_ARADDR} -port_direction {OUT} -port_range {[37:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_1_AXI4_INITIATOR_FIC_1_AXI4_M_ARBURST} -port_direction {OUT} -port_range {[1:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_1_AXI4_INITIATOR_FIC_1_AXI4_M_ARCACHE} -port_direction {OUT} -port_range {[3:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_1_AXI4_INITIATOR_FIC_1_AXI4_M_ARID} -port_direction {OUT} -port_range {[7:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_1_AXI4_INITIATOR_FIC_1_AXI4_M_ARLEN} -port_direction {OUT} -port_range {[7:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_1_AXI4_INITIATOR_FIC_1_AXI4_M_ARPROT} -port_direction {OUT} -port_range {[2:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_1_AXI4_INITIATOR_FIC_1_AXI4_M_ARQOS} -port_direction {OUT} -port_range {[3:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_1_AXI4_INITIATOR_FIC_1_AXI4_M_ARSIZE} -port_direction {OUT} -port_range {[2:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_1_AXI4_INITIATOR_FIC_1_AXI4_M_AWADDR} -port_direction {OUT} -port_range {[37:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_1_AXI4_INITIATOR_FIC_1_AXI4_M_AWBURST} -port_direction {OUT} -port_range {[1:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_1_AXI4_INITIATOR_FIC_1_AXI4_M_AWCACHE} -port_direction {OUT} -port_range {[3:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_1_AXI4_INITIATOR_FIC_1_AXI4_M_AWID} -port_direction {OUT} -port_range {[7:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_1_AXI4_INITIATOR_FIC_1_AXI4_M_AWLEN} -port_direction {OUT} -port_range {[7:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_1_AXI4_INITIATOR_FIC_1_AXI4_M_AWPROT} -port_direction {OUT} -port_range {[2:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_1_AXI4_INITIATOR_FIC_1_AXI4_M_AWQOS} -port_direction {OUT} -port_range {[3:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_1_AXI4_INITIATOR_FIC_1_AXI4_M_AWSIZE} -port_direction {OUT} -port_range {[2:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_1_AXI4_INITIATOR_FIC_1_AXI4_M_WDATA} -port_direction {OUT} -port_range {[63:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_1_AXI4_INITIATOR_FIC_1_AXI4_M_WSTRB} -port_direction {OUT} -port_range {[7:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_1_AXI4_TARGET_FIC_1_AXI4_S_BID} -port_direction {OUT} -port_range {[3:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_1_AXI4_TARGET_FIC_1_AXI4_S_BRESP} -port_direction {OUT} -port_range {[1:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_1_AXI4_TARGET_FIC_1_AXI4_S_RDATA} -port_direction {OUT} -port_range {[63:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_1_AXI4_TARGET_FIC_1_AXI4_S_RID} -port_direction {OUT} -port_range {[3:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_1_AXI4_TARGET_FIC_1_AXI4_S_RRESP} -port_direction {OUT} -port_range {[1:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_2_AXI4_TARGET_FIC_2_AXI4_S_BID} -port_direction {OUT} -port_range {[3:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_2_AXI4_TARGET_FIC_2_AXI4_S_BRESP} -port_direction {OUT} -port_range {[1:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_2_AXI4_TARGET_FIC_2_AXI4_S_RDATA} -port_direction {OUT} -port_range {[63:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_2_AXI4_TARGET_FIC_2_AXI4_S_RID} -port_direction {OUT} -port_range {[3:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_2_AXI4_TARGET_FIC_2_AXI4_S_RRESP} -port_direction {OUT} -port_range {[1:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_3_APB_INITIATOR_FIC_3_APB_M_PADDR} -port_direction {OUT} -port_range {[31:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_3_APB_INITIATOR_FIC_3_APB_M_PWDATA} -port_direction {OUT} -port_range {[31:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_3_APB_M_PSTRB} -port_direction {OUT} -port_range {[3:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {MSS_INT_M2F} -port_direction {OUT} -port_range {[15:0]}

sd_create_bus_port -sd_name ${sd_name} -port_name {DQS_N} -port_direction {INOUT} -port_range {[1:0]} -port_is_pad {1}
sd_create_bus_port -sd_name ${sd_name} -port_name {DQS} -port_direction {INOUT} -port_range {[1:0]} -port_is_pad {1}
sd_create_bus_port -sd_name ${sd_name} -port_name {DQ} -port_direction {INOUT} -port_range {[15:0]} -port_is_pad {1}

# Create top level Bus interface Ports
sd_create_bif_port -sd_name ${sd_name} -port_name {FIC_0_AXI4_INITIATOR} -port_bif_vlnv {AMBA:AMBA4:AXI4:r0p0_0} -port_bif_role {master} -port_bif_mapping {\
"AWID:FIC_0_AXI4_INITIATOR_FIC_0_AXI4_M_AWID" \
"AWADDR:FIC_0_AXI4_INITIATOR_FIC_0_AXI4_M_AWADDR" \
"AWLEN:FIC_0_AXI4_INITIATOR_FIC_0_AXI4_M_AWLEN" \
"AWSIZE:FIC_0_AXI4_INITIATOR_FIC_0_AXI4_M_AWSIZE" \
"AWBURST:FIC_0_AXI4_INITIATOR_FIC_0_AXI4_M_AWBURST" \
"AWLOCK:FIC_0_AXI4_INITIATOR_FIC_0_AXI4_M_AWLOCK" \
"AWCACHE:FIC_0_AXI4_INITIATOR_FIC_0_AXI4_M_AWCACHE" \
"AWPROT:FIC_0_AXI4_INITIATOR_FIC_0_AXI4_M_AWPROT" \
"AWQOS:FIC_0_AXI4_INITIATOR_FIC_0_AXI4_M_AWQOS" \
"AWVALID:FIC_0_AXI4_INITIATOR_FIC_0_AXI4_M_AWVALID" \
"AWREADY:FIC_0_AXI4_INITIATOR_FIC_0_AXI4_M_AWREADY" \
"WDATA:FIC_0_AXI4_INITIATOR_FIC_0_AXI4_M_WDATA" \
"WSTRB:FIC_0_AXI4_INITIATOR_FIC_0_AXI4_M_WSTRB" \
"WLAST:FIC_0_AXI4_INITIATOR_FIC_0_AXI4_M_WLAST" \
"WVALID:FIC_0_AXI4_INITIATOR_FIC_0_AXI4_M_WVALID" \
"WREADY:FIC_0_AXI4_INITIATOR_FIC_0_AXI4_M_WREADY" \
"BID:FIC_0_AXI4_INITIATOR_FIC_0_AXI4_M_BID" \
"BRESP:FIC_0_AXI4_INITIATOR_FIC_0_AXI4_M_BRESP" \
"BVALID:FIC_0_AXI4_INITIATOR_FIC_0_AXI4_M_BVALID" \
"BREADY:FIC_0_AXI4_INITIATOR_FIC_0_AXI4_M_BREADY" \
"ARID:FIC_0_AXI4_INITIATOR_FIC_0_AXI4_M_ARID" \
"ARADDR:FIC_0_AXI4_INITIATOR_FIC_0_AXI4_M_ARADDR" \
"ARLEN:FIC_0_AXI4_INITIATOR_FIC_0_AXI4_M_ARLEN" \
"ARSIZE:FIC_0_AXI4_INITIATOR_FIC_0_AXI4_M_ARSIZE" \
"ARBURST:FIC_0_AXI4_INITIATOR_FIC_0_AXI4_M_ARBURST" \
"ARLOCK:FIC_0_AXI4_INITIATOR_FIC_0_AXI4_M_ARLOCK" \
"ARCACHE:FIC_0_AXI4_INITIATOR_FIC_0_AXI4_M_ARCACHE" \
"ARPROT:FIC_0_AXI4_INITIATOR_FIC_0_AXI4_M_ARPROT" \
"ARQOS:FIC_0_AXI4_INITIATOR_FIC_0_AXI4_M_ARQOS" \
"ARVALID:FIC_0_AXI4_INITIATOR_FIC_0_AXI4_M_ARVALID" \
"ARREADY:FIC_0_AXI4_INITIATOR_FIC_0_AXI4_M_ARREADY" \
"RID:FIC_0_AXI4_INITIATOR_FIC_0_AXI4_M_RID" \
"RDATA:FIC_0_AXI4_INITIATOR_FIC_0_AXI4_M_RDATA" \
"RRESP:FIC_0_AXI4_INITIATOR_FIC_0_AXI4_M_RRESP" \
"RLAST:FIC_0_AXI4_INITIATOR_FIC_0_AXI4_M_RLAST" \
"RVALID:FIC_0_AXI4_INITIATOR_FIC_0_AXI4_M_RVALID" \
"RREADY:FIC_0_AXI4_INITIATOR_FIC_0_AXI4_M_RREADY" } 

sd_create_bif_port -sd_name ${sd_name} -port_name {FIC_1_AXI4_INITIATOR} -port_bif_vlnv {AMBA:AMBA4:AXI4:r0p0_0} -port_bif_role {master} -port_bif_mapping {\
"AWID:FIC_1_AXI4_INITIATOR_FIC_1_AXI4_M_AWID" \
"AWADDR:FIC_1_AXI4_INITIATOR_FIC_1_AXI4_M_AWADDR" \
"AWLEN:FIC_1_AXI4_INITIATOR_FIC_1_AXI4_M_AWLEN" \
"AWSIZE:FIC_1_AXI4_INITIATOR_FIC_1_AXI4_M_AWSIZE" \
"AWBURST:FIC_1_AXI4_INITIATOR_FIC_1_AXI4_M_AWBURST" \
"AWLOCK:FIC_1_AXI4_INITIATOR_FIC_1_AXI4_M_AWLOCK" \
"AWCACHE:FIC_1_AXI4_INITIATOR_FIC_1_AXI4_M_AWCACHE" \
"AWPROT:FIC_1_AXI4_INITIATOR_FIC_1_AXI4_M_AWPROT" \
"AWQOS:FIC_1_AXI4_INITIATOR_FIC_1_AXI4_M_AWQOS" \
"AWVALID:FIC_1_AXI4_INITIATOR_FIC_1_AXI4_M_AWVALID" \
"AWREADY:FIC_1_AXI4_INITIATOR_FIC_1_AXI4_M_AWREADY" \
"WDATA:FIC_1_AXI4_INITIATOR_FIC_1_AXI4_M_WDATA" \
"WSTRB:FIC_1_AXI4_INITIATOR_FIC_1_AXI4_M_WSTRB" \
"WLAST:FIC_1_AXI4_INITIATOR_FIC_1_AXI4_M_WLAST" \
"WVALID:FIC_1_AXI4_INITIATOR_FIC_1_AXI4_M_WVALID" \
"WREADY:FIC_1_AXI4_INITIATOR_FIC_1_AXI4_M_WREADY" \
"BID:FIC_1_AXI4_INITIATOR_FIC_1_AXI4_M_BID" \
"BRESP:FIC_1_AXI4_INITIATOR_FIC_1_AXI4_M_BRESP" \
"BVALID:FIC_1_AXI4_INITIATOR_FIC_1_AXI4_M_BVALID" \
"BREADY:FIC_1_AXI4_INITIATOR_FIC_1_AXI4_M_BREADY" \
"ARID:FIC_1_AXI4_INITIATOR_FIC_1_AXI4_M_ARID" \
"ARADDR:FIC_1_AXI4_INITIATOR_FIC_1_AXI4_M_ARADDR" \
"ARLEN:FIC_1_AXI4_INITIATOR_FIC_1_AXI4_M_ARLEN" \
"ARSIZE:FIC_1_AXI4_INITIATOR_FIC_1_AXI4_M_ARSIZE" \
"ARBURST:FIC_1_AXI4_INITIATOR_FIC_1_AXI4_M_ARBURST" \
"ARLOCK:FIC_1_AXI4_INITIATOR_FIC_1_AXI4_M_ARLOCK" \
"ARCACHE:FIC_1_AXI4_INITIATOR_FIC_1_AXI4_M_ARCACHE" \
"ARPROT:FIC_1_AXI4_INITIATOR_FIC_1_AXI4_M_ARPROT" \
"ARQOS:FIC_1_AXI4_INITIATOR_FIC_1_AXI4_M_ARQOS" \
"ARVALID:FIC_1_AXI4_INITIATOR_FIC_1_AXI4_M_ARVALID" \
"ARREADY:FIC_1_AXI4_INITIATOR_FIC_1_AXI4_M_ARREADY" \
"RID:FIC_1_AXI4_INITIATOR_FIC_1_AXI4_M_RID" \
"RDATA:FIC_1_AXI4_INITIATOR_FIC_1_AXI4_M_RDATA" \
"RRESP:FIC_1_AXI4_INITIATOR_FIC_1_AXI4_M_RRESP" \
"RLAST:FIC_1_AXI4_INITIATOR_FIC_1_AXI4_M_RLAST" \
"RVALID:FIC_1_AXI4_INITIATOR_FIC_1_AXI4_M_RVALID" \
"RREADY:FIC_1_AXI4_INITIATOR_FIC_1_AXI4_M_RREADY" } 

sd_create_bif_port -sd_name ${sd_name} -port_name {FIC_3_APB_INITIATOR} -port_bif_vlnv {AMBA:AMBA2:APB:r0p0} -port_bif_role {master} -port_bif_mapping {\
"PADDR:FIC_3_APB_INITIATOR_FIC_3_APB_M_PADDR" \
"PSELx:FIC_3_APB_INITIATOR_FIC_3_APB_M_PSEL" \
"PENABLE:FIC_3_APB_INITIATOR_FIC_3_APB_M_PENABLE" \
"PWRITE:FIC_3_APB_INITIATOR_FIC_3_APB_M_PWRITE" \
"PRDATA:FIC_3_APB_INITIATOR_FIC_3_APB_M_PRDATA" \
"PWDATA:FIC_3_APB_INITIATOR_FIC_3_APB_M_PWDATA" \
"PREADY:FIC_3_APB_INITIATOR_FIC_3_APB_M_PREADY" \
"PSLVERR:FIC_3_APB_INITIATOR_FIC_3_APB_M_PSLVERR" } 

sd_create_bif_port -sd_name ${sd_name} -port_name {FIC_0_AXI4_TARGET} -port_bif_vlnv {AMBA:AMBA4:AXI4:r0p0_0} -port_bif_role {slave} -port_bif_mapping {\
"AWID:FIC_0_AXI4_TARGET_FIC_0_AXI4_S_AWID" \
"AWADDR:FIC_0_AXI4_TARGET_FIC_0_AXI4_S_AWADDR" \
"AWLEN:FIC_0_AXI4_TARGET_FIC_0_AXI4_S_AWLEN" \
"AWSIZE:FIC_0_AXI4_TARGET_FIC_0_AXI4_S_AWSIZE" \
"AWBURST:FIC_0_AXI4_TARGET_FIC_0_AXI4_S_AWBURST" \
"AWLOCK:FIC_0_AXI4_TARGET_FIC_0_AXI4_S_AWLOCK" \
"AWCACHE:FIC_0_AXI4_TARGET_FIC_0_AXI4_S_AWCACHE" \
"AWPROT:FIC_0_AXI4_TARGET_FIC_0_AXI4_S_AWPROT" \
"AWQOS:FIC_0_AXI4_TARGET_FIC_0_AXI4_S_AWQOS" \
"AWVALID:FIC_0_AXI4_TARGET_FIC_0_AXI4_S_AWVALID" \
"AWREADY:FIC_0_AXI4_TARGET_FIC_0_AXI4_S_AWREADY" \
"WDATA:FIC_0_AXI4_TARGET_FIC_0_AXI4_S_WDATA" \
"WSTRB:FIC_0_AXI4_TARGET_FIC_0_AXI4_S_WSTRB" \
"WLAST:FIC_0_AXI4_TARGET_FIC_0_AXI4_S_WLAST" \
"WVALID:FIC_0_AXI4_TARGET_FIC_0_AXI4_S_WVALID" \
"WREADY:FIC_0_AXI4_TARGET_FIC_0_AXI4_S_WREADY" \
"BID:FIC_0_AXI4_TARGET_FIC_0_AXI4_S_BID" \
"BRESP:FIC_0_AXI4_TARGET_FIC_0_AXI4_S_BRESP" \
"BVALID:FIC_0_AXI4_TARGET_FIC_0_AXI4_S_BVALID" \
"BREADY:FIC_0_AXI4_TARGET_FIC_0_AXI4_S_BREADY" \
"ARID:FIC_0_AXI4_TARGET_FIC_0_AXI4_S_ARID" \
"ARADDR:FIC_0_AXI4_TARGET_FIC_0_AXI4_S_ARADDR" \
"ARLEN:FIC_0_AXI4_TARGET_FIC_0_AXI4_S_ARLEN" \
"ARSIZE:FIC_0_AXI4_TARGET_FIC_0_AXI4_S_ARSIZE" \
"ARBURST:FIC_0_AXI4_TARGET_FIC_0_AXI4_S_ARBURST" \
"ARLOCK:FIC_0_AXI4_TARGET_FIC_0_AXI4_S_ARLOCK" \
"ARCACHE:FIC_0_AXI4_TARGET_FIC_0_AXI4_S_ARCACHE" \
"ARPROT:FIC_0_AXI4_TARGET_FIC_0_AXI4_S_ARPROT" \
"ARQOS:FIC_0_AXI4_TARGET_FIC_0_AXI4_S_ARQOS" \
"ARVALID:FIC_0_AXI4_TARGET_FIC_0_AXI4_S_ARVALID" \
"ARREADY:FIC_0_AXI4_TARGET_FIC_0_AXI4_S_ARREADY" \
"RID:FIC_0_AXI4_TARGET_FIC_0_AXI4_S_RID" \
"RDATA:FIC_0_AXI4_TARGET_FIC_0_AXI4_S_RDATA" \
"RRESP:FIC_0_AXI4_TARGET_FIC_0_AXI4_S_RRESP" \
"RLAST:FIC_0_AXI4_TARGET_FIC_0_AXI4_S_RLAST" \
"RVALID:FIC_0_AXI4_TARGET_FIC_0_AXI4_S_RVALID" \
"RREADY:FIC_0_AXI4_TARGET_FIC_0_AXI4_S_RREADY" } 

sd_create_bif_port -sd_name ${sd_name} -port_name {FIC_1_AXI4_TARGET} -port_bif_vlnv {AMBA:AMBA4:AXI4:r0p0_0} -port_bif_role {slave} -port_bif_mapping {\
"AWID:FIC_1_AXI4_TARGET_FIC_1_AXI4_S_AWID" \
"AWADDR:FIC_1_AXI4_TARGET_FIC_1_AXI4_S_AWADDR" \
"AWLEN:FIC_1_AXI4_TARGET_FIC_1_AXI4_S_AWLEN" \
"AWSIZE:FIC_1_AXI4_TARGET_FIC_1_AXI4_S_AWSIZE" \
"AWBURST:FIC_1_AXI4_TARGET_FIC_1_AXI4_S_AWBURST" \
"AWLOCK:FIC_1_AXI4_TARGET_FIC_1_AXI4_S_AWLOCK" \
"AWCACHE:FIC_1_AXI4_TARGET_FIC_1_AXI4_S_AWCACHE" \
"AWPROT:FIC_1_AXI4_TARGET_FIC_1_AXI4_S_AWPROT" \
"AWQOS:FIC_1_AXI4_TARGET_FIC_1_AXI4_S_AWQOS" \
"AWVALID:FIC_1_AXI4_TARGET_FIC_1_AXI4_S_AWVALID" \
"AWREADY:FIC_1_AXI4_TARGET_FIC_1_AXI4_S_AWREADY" \
"WDATA:FIC_1_AXI4_TARGET_FIC_1_AXI4_S_WDATA" \
"WSTRB:FIC_1_AXI4_TARGET_FIC_1_AXI4_S_WSTRB" \
"WLAST:FIC_1_AXI4_TARGET_FIC_1_AXI4_S_WLAST" \
"WVALID:FIC_1_AXI4_TARGET_FIC_1_AXI4_S_WVALID" \
"WREADY:FIC_1_AXI4_TARGET_FIC_1_AXI4_S_WREADY" \
"BID:FIC_1_AXI4_TARGET_FIC_1_AXI4_S_BID" \
"BRESP:FIC_1_AXI4_TARGET_FIC_1_AXI4_S_BRESP" \
"BVALID:FIC_1_AXI4_TARGET_FIC_1_AXI4_S_BVALID" \
"BREADY:FIC_1_AXI4_TARGET_FIC_1_AXI4_S_BREADY" \
"ARID:FIC_1_AXI4_TARGET_FIC_1_AXI4_S_ARID" \
"ARADDR:FIC_1_AXI4_TARGET_FIC_1_AXI4_S_ARADDR" \
"ARLEN:FIC_1_AXI4_TARGET_FIC_1_AXI4_S_ARLEN" \
"ARSIZE:FIC_1_AXI4_TARGET_FIC_1_AXI4_S_ARSIZE" \
"ARBURST:FIC_1_AXI4_TARGET_FIC_1_AXI4_S_ARBURST" \
"ARLOCK:FIC_1_AXI4_TARGET_FIC_1_AXI4_S_ARLOCK" \
"ARCACHE:FIC_1_AXI4_TARGET_FIC_1_AXI4_S_ARCACHE" \
"ARPROT:FIC_1_AXI4_TARGET_FIC_1_AXI4_S_ARPROT" \
"ARQOS:FIC_1_AXI4_TARGET_FIC_1_AXI4_S_ARQOS" \
"ARVALID:FIC_1_AXI4_TARGET_FIC_1_AXI4_S_ARVALID" \
"ARREADY:FIC_1_AXI4_TARGET_FIC_1_AXI4_S_ARREADY" \
"RID:FIC_1_AXI4_TARGET_FIC_1_AXI4_S_RID" \
"RDATA:FIC_1_AXI4_TARGET_FIC_1_AXI4_S_RDATA" \
"RRESP:FIC_1_AXI4_TARGET_FIC_1_AXI4_S_RRESP" \
"RLAST:FIC_1_AXI4_TARGET_FIC_1_AXI4_S_RLAST" \
"RVALID:FIC_1_AXI4_TARGET_FIC_1_AXI4_S_RVALID" \
"RREADY:FIC_1_AXI4_TARGET_FIC_1_AXI4_S_RREADY" } 

sd_create_bif_port -sd_name ${sd_name} -port_name {FIC_2_AXI4_TARGET} -port_bif_vlnv {AMBA:AMBA4:AXI4:r0p0_0} -port_bif_role {slave} -port_bif_mapping {\
"AWID:FIC_2_AXI4_TARGET_FIC_2_AXI4_S_AWID" \
"AWADDR:FIC_2_AXI4_TARGET_FIC_2_AXI4_S_AWADDR" \
"AWLEN:FIC_2_AXI4_TARGET_FIC_2_AXI4_S_AWLEN" \
"AWSIZE:FIC_2_AXI4_TARGET_FIC_2_AXI4_S_AWSIZE" \
"AWBURST:FIC_2_AXI4_TARGET_FIC_2_AXI4_S_AWBURST" \
"AWLOCK:FIC_2_AXI4_TARGET_FIC_2_AXI4_S_AWLOCK" \
"AWCACHE:FIC_2_AXI4_TARGET_FIC_2_AXI4_S_AWCACHE" \
"AWPROT:FIC_2_AXI4_TARGET_FIC_2_AXI4_S_AWPROT" \
"AWQOS:FIC_2_AXI4_TARGET_FIC_2_AXI4_S_AWQOS" \
"AWVALID:FIC_2_AXI4_TARGET_FIC_2_AXI4_S_AWVALID" \
"AWREADY:FIC_2_AXI4_TARGET_FIC_2_AXI4_S_AWREADY" \
"WDATA:FIC_2_AXI4_TARGET_FIC_2_AXI4_S_WDATA" \
"WSTRB:FIC_2_AXI4_TARGET_FIC_2_AXI4_S_WSTRB" \
"WLAST:FIC_2_AXI4_TARGET_FIC_2_AXI4_S_WLAST" \
"WVALID:FIC_2_AXI4_TARGET_FIC_2_AXI4_S_WVALID" \
"WREADY:FIC_2_AXI4_TARGET_FIC_2_AXI4_S_WREADY" \
"BID:FIC_2_AXI4_TARGET_FIC_2_AXI4_S_BID" \
"BRESP:FIC_2_AXI4_TARGET_FIC_2_AXI4_S_BRESP" \
"BVALID:FIC_2_AXI4_TARGET_FIC_2_AXI4_S_BVALID" \
"BREADY:FIC_2_AXI4_TARGET_FIC_2_AXI4_S_BREADY" \
"ARID:FIC_2_AXI4_TARGET_FIC_2_AXI4_S_ARID" \
"ARADDR:FIC_2_AXI4_TARGET_FIC_2_AXI4_S_ARADDR" \
"ARLEN:FIC_2_AXI4_TARGET_FIC_2_AXI4_S_ARLEN" \
"ARSIZE:FIC_2_AXI4_TARGET_FIC_2_AXI4_S_ARSIZE" \
"ARBURST:FIC_2_AXI4_TARGET_FIC_2_AXI4_S_ARBURST" \
"ARLOCK:FIC_2_AXI4_TARGET_FIC_2_AXI4_S_ARLOCK" \
"ARCACHE:FIC_2_AXI4_TARGET_FIC_2_AXI4_S_ARCACHE" \
"ARPROT:FIC_2_AXI4_TARGET_FIC_2_AXI4_S_ARPROT" \
"ARQOS:FIC_2_AXI4_TARGET_FIC_2_AXI4_S_ARQOS" \
"ARVALID:FIC_2_AXI4_TARGET_FIC_2_AXI4_S_ARVALID" \
"ARREADY:FIC_2_AXI4_TARGET_FIC_2_AXI4_S_ARREADY" \
"RID:FIC_2_AXI4_TARGET_FIC_2_AXI4_S_RID" \
"RDATA:FIC_2_AXI4_TARGET_FIC_2_AXI4_S_RDATA" \
"RRESP:FIC_2_AXI4_TARGET_FIC_2_AXI4_S_RRESP" \
"RLAST:FIC_2_AXI4_TARGET_FIC_2_AXI4_S_RLAST" \
"RVALID:FIC_2_AXI4_TARGET_FIC_2_AXI4_S_RVALID" \
"RREADY:FIC_2_AXI4_TARGET_FIC_2_AXI4_S_RREADY" } 

# Add AND2_GPIO_2_26_OUT instance
sd_instantiate_macro -sd_name ${sd_name} -macro_name {AND2} -instance_name {AND2_GPIO_2_26_OUT}



# Add AND2_GPIO_2_27_OUT instance
sd_instantiate_macro -sd_name ${sd_name} -macro_name {AND2} -instance_name {AND2_GPIO_2_27_OUT}



# Add AND2_GPIO_2_28_OUT instance
sd_instantiate_macro -sd_name ${sd_name} -macro_name {AND2} -instance_name {AND2_GPIO_2_28_OUT}



# Add AND3_MSS_PLL_LOCKS instance
sd_instantiate_macro -sd_name ${sd_name} -macro_name {AND3} -instance_name {AND3_MSS_PLL_LOCKS}



# Add AND4_MSS_DLL_LOCKS instance
sd_instantiate_macro -sd_name ${sd_name} -macro_name {AND4} -instance_name {AND4_MSS_DLL_LOCKS}



# Add GPIO_2_0 instance
sd_instantiate_macro -sd_name ${sd_name} -macro_name {BIBUF} -instance_name {GPIO_2_0}



# Add GPIO_2_1 instance
sd_instantiate_macro -sd_name ${sd_name} -macro_name {BIBUF} -instance_name {GPIO_2_1}



# Add GPIO_2_2 instance
sd_instantiate_macro -sd_name ${sd_name} -macro_name {BIBUF} -instance_name {GPIO_2_2}



# Add GPIO_2_3 instance
sd_instantiate_macro -sd_name ${sd_name} -macro_name {BIBUF} -instance_name {GPIO_2_3}



# Add GPIO_2_4 instance
sd_instantiate_macro -sd_name ${sd_name} -macro_name {BIBUF} -instance_name {GPIO_2_4}



# Add GPIO_2_5 instance
sd_instantiate_macro -sd_name ${sd_name} -macro_name {BIBUF} -instance_name {GPIO_2_5}



# Add GPIO_2_6 instance
sd_instantiate_macro -sd_name ${sd_name} -macro_name {BIBUF} -instance_name {GPIO_2_6}



# Add GPIO_2_7 instance
sd_instantiate_macro -sd_name ${sd_name} -macro_name {BIBUF} -instance_name {GPIO_2_7}



# Add GPIO_2_8 instance
sd_instantiate_macro -sd_name ${sd_name} -macro_name {BIBUF} -instance_name {GPIO_2_8}



# Add GPIO_2_9 instance
sd_instantiate_macro -sd_name ${sd_name} -macro_name {BIBUF} -instance_name {GPIO_2_9}



# Add GPIO_2_10 instance
sd_instantiate_macro -sd_name ${sd_name} -macro_name {BIBUF} -instance_name {GPIO_2_10}



# Add GPIO_2_11 instance
sd_instantiate_macro -sd_name ${sd_name} -macro_name {BIBUF} -instance_name {GPIO_2_11}



# Add GPIO_2_12 instance
sd_instantiate_macro -sd_name ${sd_name} -macro_name {BIBUF} -instance_name {GPIO_2_12}



# Add GPIO_2_13 instance
sd_instantiate_macro -sd_name ${sd_name} -macro_name {BIBUF} -instance_name {GPIO_2_13}



# Add GPIO_2_14 instance
sd_instantiate_macro -sd_name ${sd_name} -macro_name {BIBUF} -instance_name {GPIO_2_14}



# Add GPIO_2_15 instance
sd_instantiate_macro -sd_name ${sd_name} -macro_name {BIBUF} -instance_name {GPIO_2_15}



# Add GPIO_2_16 instance
sd_instantiate_macro -sd_name ${sd_name} -macro_name {BIBUF} -instance_name {GPIO_2_16}



# Add I2C_0_SCL_BIBUF instance
sd_instantiate_macro -sd_name ${sd_name} -macro_name {BIBUF} -instance_name {I2C_0_SCL_BIBUF}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {I2C_0_SCL_BIBUF:D} -value {GND}



# Add I2C_0_SDA_BIBUF instance
sd_instantiate_macro -sd_name ${sd_name} -macro_name {BIBUF} -instance_name {I2C_0_SDA_BIBUF}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {I2C_0_SDA_BIBUF:D} -value {GND}



# Add MPFS_DISCOVERY_KIT_MSS_0 instance
sd_instantiate_component -sd_name ${sd_name} -component_name {MPFS_DISCOVERY_KIT_MSS} -instance_name {MPFS_DISCOVERY_KIT_MSS_0}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {MPFS_DISCOVERY_KIT_MSS_0:MAC_0_MDI_F2M} -value {GND}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {MPFS_DISCOVERY_KIT_MSS_0:MAC_0_TSU_SOF_TX_M2F}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {MPFS_DISCOVERY_KIT_MSS_0:MAC_0_TSU_SYNC_FRAME_TX_M2F}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {MPFS_DISCOVERY_KIT_MSS_0:MAC_0_TSU_DELAY_REQ_TX_M2F}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {MPFS_DISCOVERY_KIT_MSS_0:MAC_0_TSU_PDELAY_REQ_TX_M2F}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {MPFS_DISCOVERY_KIT_MSS_0:MAC_0_TSU_PDELAY_RESP_TX_M2F}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {MPFS_DISCOVERY_KIT_MSS_0:MAC_0_TSU_SOF_RX_M2F}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {MPFS_DISCOVERY_KIT_MSS_0:MAC_0_TSU_SYNC_FRAME_RX_M2F}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {MPFS_DISCOVERY_KIT_MSS_0:MAC_0_TSU_DELAY_REQ_RX_M2F}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {MPFS_DISCOVERY_KIT_MSS_0:MAC_0_TSU_PDELAY_REQ_RX_M2F}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {MPFS_DISCOVERY_KIT_MSS_0:MAC_0_TSU_PDELAY_RESP_RX_M2F}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {MPFS_DISCOVERY_KIT_MSS_0:MAC_0_TSU_TIMER_CNT_M2F}



# Add SPI_0_CLK_BIBUF instance
sd_instantiate_macro -sd_name ${sd_name} -macro_name {BIBUF} -instance_name {SPI_0_CLK_BIBUF}



# Add SPI_0_SS_BIBUF instance
sd_instantiate_macro -sd_name ${sd_name} -macro_name {BIBUF} -instance_name {SPI_0_SS_BIBUF}



# Add scalar net connections
sd_connect_pins -sd_name ${sd_name} -pin_names {"ACT_N" "MPFS_DISCOVERY_KIT_MSS_0:ACT_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"AND2_GPIO_2_26_OUT:A" "MPFS_DISCOVERY_KIT_MSS_0:GPIO_2_M2F_26" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"AND2_GPIO_2_26_OUT:B" "MPFS_DISCOVERY_KIT_MSS_0:GPIO_2_OE_M2F_26" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"AND2_GPIO_2_26_OUT:Y" "GPIO_2_26_OUT" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"AND2_GPIO_2_27_OUT:A" "MPFS_DISCOVERY_KIT_MSS_0:GPIO_2_M2F_27" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"AND2_GPIO_2_27_OUT:B" "MPFS_DISCOVERY_KIT_MSS_0:GPIO_2_OE_M2F_27" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"AND2_GPIO_2_27_OUT:Y" "GPIO_2_27_OUT" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"AND2_GPIO_2_28_OUT:A" "MPFS_DISCOVERY_KIT_MSS_0:GPIO_2_M2F_28" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"AND2_GPIO_2_28_OUT:B" "MPFS_DISCOVERY_KIT_MSS_0:GPIO_2_OE_M2F_28" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"AND2_GPIO_2_28_OUT:Y" "GPIO_2_28_OUT" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"AND3_MSS_PLL_LOCKS:A" "MPFS_DISCOVERY_KIT_MSS_0:PLL_CPU_LOCK_M2F" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"AND3_MSS_PLL_LOCKS:B" "MPFS_DISCOVERY_KIT_MSS_0:PLL_DDR_LOCK_M2F" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"AND3_MSS_PLL_LOCKS:C" "MPFS_DISCOVERY_KIT_MSS_0:PLL_SGMII_LOCK_M2F" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"AND3_MSS_PLL_LOCKS:Y" "MSS_PLL_LOCKS" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"AND4_MSS_DLL_LOCKS:A" "MPFS_DISCOVERY_KIT_MSS_0:FIC_0_DLL_LOCK_M2F" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"AND4_MSS_DLL_LOCKS:B" "MPFS_DISCOVERY_KIT_MSS_0:FIC_1_DLL_LOCK_M2F" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"AND4_MSS_DLL_LOCKS:C" "MPFS_DISCOVERY_KIT_MSS_0:FIC_2_DLL_LOCK_M2F" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"AND4_MSS_DLL_LOCKS:D" "MPFS_DISCOVERY_KIT_MSS_0:FIC_3_DLL_LOCK_M2F" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"AND4_MSS_DLL_LOCKS:Y" "MSS_DLL_LOCKS" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"BG0" "MPFS_DISCOVERY_KIT_MSS_0:BG0" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CAS_N" "MPFS_DISCOVERY_KIT_MSS_0:CAS_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CK0" "MPFS_DISCOVERY_KIT_MSS_0:CK0" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CK0_N" "MPFS_DISCOVERY_KIT_MSS_0:CK0_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CKE0" "MPFS_DISCOVERY_KIT_MSS_0:CKE0" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CS0_N" "MPFS_DISCOVERY_KIT_MSS_0:CS0_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"EMMC_SD_CLK_F2M" "MPFS_DISCOVERY_KIT_MSS_0:EMMC_SD_CLK_F2M" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"FIC_0_ACLK" "MPFS_DISCOVERY_KIT_MSS_0:FIC_0_ACLK" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"FIC_1_ACLK" "MPFS_DISCOVERY_KIT_MSS_0:FIC_1_ACLK" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"FIC_2_ACLK" "MPFS_DISCOVERY_KIT_MSS_0:FIC_2_ACLK" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"FIC_3_PCLK" "MPFS_DISCOVERY_KIT_MSS_0:FIC_3_PCLK" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_1_20_OUT" "MPFS_DISCOVERY_KIT_MSS_0:GPIO_1_20_OUT" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_1_9_OUT" "MPFS_DISCOVERY_KIT_MSS_0:GPIO_1_9_OUT" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_0:D" "MPFS_DISCOVERY_KIT_MSS_0:GPIO_2_M2F_0" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_0:E" "MPFS_DISCOVERY_KIT_MSS_0:GPIO_2_OE_M2F_0" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_0:PAD" "GPIO_2_0_IO" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_0:Y" "MPFS_DISCOVERY_KIT_MSS_0:GPIO_2_F2M_0" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_10:D" "MPFS_DISCOVERY_KIT_MSS_0:GPIO_2_M2F_10" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_10:E" "MPFS_DISCOVERY_KIT_MSS_0:GPIO_2_OE_M2F_10" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_10:PAD" "GPIO_2_10_IO" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_10:Y" "MPFS_DISCOVERY_KIT_MSS_0:GPIO_2_F2M_10" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_11:D" "MPFS_DISCOVERY_KIT_MSS_0:GPIO_2_M2F_11" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_11:E" "MPFS_DISCOVERY_KIT_MSS_0:GPIO_2_OE_M2F_11" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_11:PAD" "GPIO_2_11_IO" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_11:Y" "MPFS_DISCOVERY_KIT_MSS_0:GPIO_2_F2M_11" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_12:D" "MPFS_DISCOVERY_KIT_MSS_0:GPIO_2_M2F_12" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_12:E" "MPFS_DISCOVERY_KIT_MSS_0:GPIO_2_OE_M2F_12" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_12:PAD" "GPIO_2_12_IO" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_12:Y" "MPFS_DISCOVERY_KIT_MSS_0:GPIO_2_F2M_12" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_13:D" "MPFS_DISCOVERY_KIT_MSS_0:GPIO_2_M2F_13" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_13:E" "MPFS_DISCOVERY_KIT_MSS_0:GPIO_2_OE_M2F_13" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_13:PAD" "GPIO_2_13_IO" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_13:Y" "MPFS_DISCOVERY_KIT_MSS_0:GPIO_2_F2M_13" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_14:D" "MPFS_DISCOVERY_KIT_MSS_0:GPIO_2_M2F_14" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_14:E" "MPFS_DISCOVERY_KIT_MSS_0:GPIO_2_OE_M2F_14" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_14:PAD" "GPIO_2_14_IO" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_14:Y" "MPFS_DISCOVERY_KIT_MSS_0:GPIO_2_F2M_14" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_15:D" "MPFS_DISCOVERY_KIT_MSS_0:GPIO_2_M2F_15" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_15:E" "MPFS_DISCOVERY_KIT_MSS_0:GPIO_2_OE_M2F_15" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_15:PAD" "GPIO_2_15_IO" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_15:Y" "MPFS_DISCOVERY_KIT_MSS_0:GPIO_2_F2M_15" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_16:D" "MPFS_DISCOVERY_KIT_MSS_0:GPIO_2_M2F_16" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_16:E" "MPFS_DISCOVERY_KIT_MSS_0:GPIO_2_OE_M2F_16" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_16:PAD" "GPIO_2_16_IO" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_16:Y" "MPFS_DISCOVERY_KIT_MSS_0:GPIO_2_F2M_16" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_1:D" "MPFS_DISCOVERY_KIT_MSS_0:GPIO_2_M2F_1" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_1:E" "MPFS_DISCOVERY_KIT_MSS_0:GPIO_2_OE_M2F_1" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_1:PAD" "GPIO_2_1_IO" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_1:Y" "MPFS_DISCOVERY_KIT_MSS_0:GPIO_2_F2M_1" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_2:D" "MPFS_DISCOVERY_KIT_MSS_0:GPIO_2_M2F_2" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_2:E" "MPFS_DISCOVERY_KIT_MSS_0:GPIO_2_OE_M2F_2" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_2:PAD" "GPIO_2_2_IO" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_2:Y" "MPFS_DISCOVERY_KIT_MSS_0:GPIO_2_F2M_2" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_3:D" "MPFS_DISCOVERY_KIT_MSS_0:GPIO_2_M2F_3" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_3:E" "MPFS_DISCOVERY_KIT_MSS_0:GPIO_2_OE_M2F_3" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_3:PAD" "GPIO_2_3_IO" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_3:Y" "MPFS_DISCOVERY_KIT_MSS_0:GPIO_2_F2M_3" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_4:D" "MPFS_DISCOVERY_KIT_MSS_0:GPIO_2_M2F_4" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_4:E" "MPFS_DISCOVERY_KIT_MSS_0:GPIO_2_OE_M2F_4" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_4:PAD" "GPIO_2_4_IO" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_4:Y" "MPFS_DISCOVERY_KIT_MSS_0:GPIO_2_F2M_4" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_5:D" "MPFS_DISCOVERY_KIT_MSS_0:GPIO_2_M2F_5" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_5:E" "MPFS_DISCOVERY_KIT_MSS_0:GPIO_2_OE_M2F_5" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_5:PAD" "GPIO_2_5_IO" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_5:Y" "MPFS_DISCOVERY_KIT_MSS_0:GPIO_2_F2M_5" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_6:D" "MPFS_DISCOVERY_KIT_MSS_0:GPIO_2_M2F_6" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_6:E" "MPFS_DISCOVERY_KIT_MSS_0:GPIO_2_OE_M2F_6" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_6:PAD" "GPIO_2_6_IO" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_6:Y" "MPFS_DISCOVERY_KIT_MSS_0:GPIO_2_F2M_6" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_7:D" "MPFS_DISCOVERY_KIT_MSS_0:GPIO_2_M2F_7" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_7:E" "MPFS_DISCOVERY_KIT_MSS_0:GPIO_2_OE_M2F_7" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_7:PAD" "GPIO_2_7_IO" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_7:Y" "MPFS_DISCOVERY_KIT_MSS_0:GPIO_2_F2M_7" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_8:D" "MPFS_DISCOVERY_KIT_MSS_0:GPIO_2_M2F_8" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_8:E" "MPFS_DISCOVERY_KIT_MSS_0:GPIO_2_OE_M2F_8" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_8:PAD" "GPIO_2_8_IO" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_8:Y" "MPFS_DISCOVERY_KIT_MSS_0:GPIO_2_F2M_8" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_9:D" "MPFS_DISCOVERY_KIT_MSS_0:GPIO_2_M2F_9" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_9:E" "MPFS_DISCOVERY_KIT_MSS_0:GPIO_2_OE_M2F_9" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_9:PAD" "GPIO_2_9_IO" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_9:Y" "MPFS_DISCOVERY_KIT_MSS_0:GPIO_2_F2M_9" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_F2M_24" "MPFS_DISCOVERY_KIT_MSS_0:GPIO_2_F2M_24" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_F2M_25" "MPFS_DISCOVERY_KIT_MSS_0:GPIO_2_F2M_25" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_F2M_26" "MPFS_DISCOVERY_KIT_MSS_0:GPIO_2_F2M_26" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_F2M_27" "MPFS_DISCOVERY_KIT_MSS_0:GPIO_2_F2M_27" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_F2M_28" "MPFS_DISCOVERY_KIT_MSS_0:GPIO_2_F2M_28" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_F2M_30" "MPFS_DISCOVERY_KIT_MSS_0:GPIO_2_F2M_30" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_F2M_31" "MPFS_DISCOVERY_KIT_MSS_0:GPIO_2_F2M_31" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_M2F_17" "MPFS_DISCOVERY_KIT_MSS_0:GPIO_2_M2F_17" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_M2F_18" "MPFS_DISCOVERY_KIT_MSS_0:GPIO_2_M2F_18" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_M2F_19" "MPFS_DISCOVERY_KIT_MSS_0:GPIO_2_M2F_19" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_M2F_20" "MPFS_DISCOVERY_KIT_MSS_0:GPIO_2_M2F_20" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_M2F_21" "MPFS_DISCOVERY_KIT_MSS_0:GPIO_2_M2F_21" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_M2F_22" "MPFS_DISCOVERY_KIT_MSS_0:GPIO_2_M2F_22" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_M2F_23" "MPFS_DISCOVERY_KIT_MSS_0:GPIO_2_M2F_23" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"I2C_0_SCL" "I2C_0_SCL_BIBUF:PAD" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"I2C_0_SCL_BIBUF:E" "MPFS_DISCOVERY_KIT_MSS_0:I2C_0_SCL_OE_M2F" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"I2C_0_SCL_BIBUF:Y" "MPFS_DISCOVERY_KIT_MSS_0:I2C_0_SCL_F2M" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"I2C_0_SDA" "I2C_0_SDA_BIBUF:PAD" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"I2C_0_SDA_BIBUF:E" "MPFS_DISCOVERY_KIT_MSS_0:I2C_0_SDA_OE_M2F" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"I2C_0_SDA_BIBUF:Y" "MPFS_DISCOVERY_KIT_MSS_0:I2C_0_SDA_F2M" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MAC_0_MDC" "MPFS_DISCOVERY_KIT_MSS_0:MAC_0_MDC_M2F" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MMUART_0_RXD_F2M" "MPFS_DISCOVERY_KIT_MSS_0:MMUART_0_RXD_F2M" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MMUART_0_TXD_M2F" "MPFS_DISCOVERY_KIT_MSS_0:MMUART_0_TXD_M2F" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MMUART_1_RXD" "MPFS_DISCOVERY_KIT_MSS_0:MMUART_1_RXD" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MMUART_1_TXD" "MPFS_DISCOVERY_KIT_MSS_0:MMUART_1_TXD" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MMUART_4_RXD" "MPFS_DISCOVERY_KIT_MSS_0:MMUART_4_RXD" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MMUART_4_TXD" "MPFS_DISCOVERY_KIT_MSS_0:MMUART_4_TXD" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MPFS_DISCOVERY_KIT_MSS_0:MSS_RESET_N_F2M" "MSS_RESET_N_F2M" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MPFS_DISCOVERY_KIT_MSS_0:MSS_RESET_N_M2F" "MSS_RESET_N_M2F" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MPFS_DISCOVERY_KIT_MSS_0:ODT0" "ODT0" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MPFS_DISCOVERY_KIT_MSS_0:RAS_N" "RAS_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MPFS_DISCOVERY_KIT_MSS_0:REFCLK" "REFCLK" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MPFS_DISCOVERY_KIT_MSS_0:REFCLK_N" "REFCLK_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MPFS_DISCOVERY_KIT_MSS_0:RESET_N" "RESET_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MPFS_DISCOVERY_KIT_MSS_0:SD_CD" "SD_CD" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MPFS_DISCOVERY_KIT_MSS_0:SD_CLK" "SD_CLK" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MPFS_DISCOVERY_KIT_MSS_0:SD_CMD" "SD_CMD" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MPFS_DISCOVERY_KIT_MSS_0:SD_DATA0" "SD_DATA0" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MPFS_DISCOVERY_KIT_MSS_0:SD_DATA1" "SD_DATA1" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MPFS_DISCOVERY_KIT_MSS_0:SD_DATA2" "SD_DATA2" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MPFS_DISCOVERY_KIT_MSS_0:SD_DATA3" "SD_DATA3" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MPFS_DISCOVERY_KIT_MSS_0:SD_POW" "SD_POW" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MPFS_DISCOVERY_KIT_MSS_0:SD_VOLT_CMD_DIR" "SD_VOLT_CMD_DIR" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MPFS_DISCOVERY_KIT_MSS_0:SD_VOLT_DIR_0" "SD_VOLT_DIR_0" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MPFS_DISCOVERY_KIT_MSS_0:SD_VOLT_DIR_1_3" "SD_VOLT_DIR_1_3" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MPFS_DISCOVERY_KIT_MSS_0:SD_VOLT_EN" "SD_VOLT_EN" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MPFS_DISCOVERY_KIT_MSS_0:SD_VOLT_SEL" "SD_VOLT_SEL" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MPFS_DISCOVERY_KIT_MSS_0:SD_WP" "SD_WP" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MPFS_DISCOVERY_KIT_MSS_0:SGMII_RX0_N" "SGMII_RX0_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MPFS_DISCOVERY_KIT_MSS_0:SGMII_RX0_P" "SGMII_RX0_P" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MPFS_DISCOVERY_KIT_MSS_0:SGMII_TX0_N" "SGMII_TX0_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MPFS_DISCOVERY_KIT_MSS_0:SGMII_TX0_P" "SGMII_TX0_P" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MPFS_DISCOVERY_KIT_MSS_0:SPI_0_CLK_F2M" "SPI_0_CLK_BIBUF:Y" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MPFS_DISCOVERY_KIT_MSS_0:SPI_0_CLK_M2F" "SPI_0_CLK_BIBUF:D" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MPFS_DISCOVERY_KIT_MSS_0:SPI_0_CLK_OE_M2F" "SPI_0_CLK_BIBUF:E" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MPFS_DISCOVERY_KIT_MSS_0:SPI_0_DI_F2M" "SPI_0_DI_F2M" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MPFS_DISCOVERY_KIT_MSS_0:SPI_0_DO_M2F" "SPI_0_DO" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MPFS_DISCOVERY_KIT_MSS_0:SPI_0_SS1_M2F" "SPI_0_SS_BIBUF:D" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MPFS_DISCOVERY_KIT_MSS_0:SPI_0_SS1_OE_M2F" "SPI_0_SS_BIBUF:E" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MPFS_DISCOVERY_KIT_MSS_0:SPI_0_SS_F2M" "SPI_0_SS_BIBUF:Y" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MPFS_DISCOVERY_KIT_MSS_0:SPI_1_CLK" "SPI_1_CLK" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MPFS_DISCOVERY_KIT_MSS_0:SPI_1_DI" "SPI_1_DI" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MPFS_DISCOVERY_KIT_MSS_0:SPI_1_DO" "SPI_1_DO" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MPFS_DISCOVERY_KIT_MSS_0:SPI_1_SS0" "SPI_1_SS0" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MPFS_DISCOVERY_KIT_MSS_0:WE_N" "WE_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"SPI_0_CLK" "SPI_0_CLK_BIBUF:PAD" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"SPI_0_SS" "SPI_0_SS_BIBUF:PAD" }

# Add bus net connections
sd_connect_pins -sd_name ${sd_name} -pin_names {"A" "MPFS_DISCOVERY_KIT_MSS_0:A" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"BA" "MPFS_DISCOVERY_KIT_MSS_0:BA" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"DM" "MPFS_DISCOVERY_KIT_MSS_0:DM" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"DQ" "MPFS_DISCOVERY_KIT_MSS_0:DQ" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"DQS" "MPFS_DISCOVERY_KIT_MSS_0:DQS" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"DQS_N" "MPFS_DISCOVERY_KIT_MSS_0:DQS_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"FIC_3_APB_M_PSTRB" "MPFS_DISCOVERY_KIT_MSS_0:FIC_3_APB_M_PSTRB" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MPFS_DISCOVERY_KIT_MSS_0:MSS_INT_F2M" "MSS_INT_F2M" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MPFS_DISCOVERY_KIT_MSS_0:MSS_INT_M2F" "MSS_INT_M2F" }

# Add bus interface net connections
sd_connect_pins -sd_name ${sd_name} -pin_names {"FIC_0_AXI4_INITIATOR" "MPFS_DISCOVERY_KIT_MSS_0:FIC_0_AXI4_INITIATOR" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"FIC_0_AXI4_TARGET" "MPFS_DISCOVERY_KIT_MSS_0:FIC_0_AXI4_TARGET" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"FIC_1_AXI4_INITIATOR" "MPFS_DISCOVERY_KIT_MSS_0:FIC_1_AXI4_INITIATOR" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"FIC_1_AXI4_TARGET" "MPFS_DISCOVERY_KIT_MSS_0:FIC_1_AXI4_TARGET" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"FIC_2_AXI4_TARGET" "MPFS_DISCOVERY_KIT_MSS_0:FIC_2_AXI4_TARGET" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"FIC_3_APB_INITIATOR" "MPFS_DISCOVERY_KIT_MSS_0:FIC_3_APB_INITIATOR" }

# Re-enable auto promotion of pins of type 'pad'
auto_promote_pad_pins -promote_all 1
# Save the smartDesign
save_smartdesign -sd_name ${sd_name}
# Generate SmartDesign MSS_WRAPPER
generate_component -component_name ${sd_name}
