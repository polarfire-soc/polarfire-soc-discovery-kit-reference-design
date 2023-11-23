# Exporting Component Description of COREUART_C0 to TCL
# Family: PolarFireSoC
# Part Number: MPFS095T-1FCSG325I
# Create and Configure the core component COREUART_C0
create_and_configure_core -core_vlnv {Actel:DirectCore:COREUART:5.7.100} -component_name {COREUART_C0} -params {\
"BAUD_VAL_FRCTN_EN:true"  \
"RX_FIFO:0"  \
"RX_LEGACY_MODE:0"  \
"TX_FIFO:0"  \
"USE_SOFT_FIFO:0"   }
# Exporting Component Description of COREUART_C0 to TCL done
