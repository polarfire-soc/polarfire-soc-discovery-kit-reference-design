# Create SmartDesign Test Bench
set sd_tb_name {Test_bench}
new_testbench_file_for_design -type {SmartDesignTestBench} -name ${sd_tb_name} -SetAsActiveStimulus 1 -source {MPFS_DISCOVERY_KIT} -library {work} 

# Add clk gen components
create_and_configure_core -core_vlnv {Actel:Simulation:CLK_GEN:*} -component_name {CLK_GEN_125MHz} -params {"CLK_PERIOD:8000" "DUTY_CYCLE:50"} 
sd_instantiate_component -sd_name ${sd_tb_name} -component_name {CLK_GEN_125MHz} -instance_name {} 
create_and_configure_core -core_vlnv {Actel:Simulation:CLK_GEN:*} -component_name {CLK_GEN_50MHz} -params {"CLK_PERIOD:20000" "DUTY_CYCLE:50"} 
sd_instantiate_component -sd_name ${sd_tb_name} -component_name {CLK_GEN_50MHz} -instance_name {} 
create_and_configure_core -core_vlnv {Actel:Simulation:RESET_GEN:*} -component_name {RESET_GEN_C0} -params {"DELAY:1000" "LOGIC_LEVEL:0"} 
sd_instantiate_component -sd_name ${sd_tb_name} -component_name {RESET_GEN_C0} -instance_name {} 

# Make connections
sd_connect_pins -sd_name ${sd_tb_name} -pin_names {"CLK_GEN_50MHz_0:CLK" "MPFS_DISCOVERY_KIT_0:REF_CLK_50MHz"} 
sd_connect_pins -sd_name ${sd_tb_name} -pin_names {"CLK_GEN_125MHz_0:CLK" "MPFS_DISCOVERY_KIT_0:REFCLK"} 
sd_connect_pins -sd_name ${sd_tb_name} -pin_names {"MPFS_DISCOVERY_KIT_0:REFCLK" "MPFS_DISCOVERY_KIT_0:REFCLK_N"} 
sd_connect_pins -sd_name {Test_bench} -pin_names {"MPFS_DISCOVERY_KIT_0:SWITCH2" "RESET_GEN_C0_0:RESET"} 

# Invert pins
sd_invert_pins -sd_name ${sd_tb_name} -pin_names {"MPFS_DISCOVERY_KIT_0:REFCLK_N"} 

# Tie off pins
sd_connect_pins_to_constant -sd_name ${sd_tb_name} -pin_names {MPFS_DISCOVERY_KIT_0:MBUS_SPI_CS} -value {GND} 
sd_connect_pins_to_constant -sd_name ${sd_tb_name} -pin_names {MPFS_DISCOVERY_KIT_0:MBUS_I2CSCL} -value {GND} 
sd_connect_pins_to_constant -sd_name ${sd_tb_name} -pin_names {MPFS_DISCOVERY_KIT_0:MBUS_SPI_CLK} -value {GND} 
sd_connect_pins_to_constant -sd_name ${sd_tb_name} -pin_names {MPFS_DISCOVERY_KIT_0:MBUS_I2CSDA} -value {GND} 
sd_connect_pins_to_constant -sd_name ${sd_tb_name} -pin_names {MPFS_DISCOVERY_KIT_0:RPI_I2C_SCL} -value {GND} 
sd_connect_pins_to_constant -sd_name ${sd_tb_name} -pin_names {MPFS_DISCOVERY_KIT_0:RPI_I2C_SDA} -value {GND} 
sd_connect_pins_to_constant -sd_name ${sd_tb_name} -pin_names {MPFS_DISCOVERY_KIT_0:SPI_1_SS0} -value {GND} 
sd_connect_pins_to_constant -sd_name ${sd_tb_name} -pin_names {MPFS_DISCOVERY_KIT_0:RPI_GPIO6} -value {GND} 
sd_connect_pins_to_constant -sd_name ${sd_tb_name} -pin_names {MPFS_DISCOVERY_KIT_0:RPI_GPIO17} -value {GND} 
sd_connect_pins_to_constant -sd_name ${sd_tb_name} -pin_names {MPFS_DISCOVERY_KIT_0:RPI_GPIO5} -value {GND} 
sd_connect_pins_to_constant -sd_name ${sd_tb_name} -pin_names {MPFS_DISCOVERY_KIT_0:RPI_GPIO26} -value {GND} 
sd_connect_pins_to_constant -sd_name ${sd_tb_name} -pin_names {MPFS_DISCOVERY_KIT_0:RPI_GPIO20} -value {GND} 
sd_connect_pins_to_constant -sd_name ${sd_tb_name} -pin_names {MPFS_DISCOVERY_KIT_0:SD_DATA0} -value {GND} 
sd_connect_pins_to_constant -sd_name ${sd_tb_name} -pin_names {MPFS_DISCOVERY_KIT_0:RPI_GPIO25} -value {GND} 
sd_connect_pins_to_constant -sd_name ${sd_tb_name} -pin_names {MPFS_DISCOVERY_KIT_0:RPI_GPIO19} -value {GND} 
sd_connect_pins_to_constant -sd_name ${sd_tb_name} -pin_names {MPFS_DISCOVERY_KIT_0:SD_CMD} -value {GND} 
sd_connect_pins_to_constant -sd_name ${sd_tb_name} -pin_names {MPFS_DISCOVERY_KIT_0:RPI_GPIO4} -value {GND} 
sd_connect_pins_to_constant -sd_name ${sd_tb_name} -pin_names {MPFS_DISCOVERY_KIT_0:RPI_GPIO12} -value {GND} 
sd_connect_pins_to_constant -sd_name ${sd_tb_name} -pin_names {MPFS_DISCOVERY_KIT_0:RPI_GPIO27} -value {GND} 
sd_connect_pins_to_constant -sd_name ${sd_tb_name} -pin_names {MPFS_DISCOVERY_KIT_0:RPI_GPIO22} -value {GND} 
sd_connect_pins_to_constant -sd_name ${sd_tb_name} -pin_names {MPFS_DISCOVERY_KIT_0:RPI_GPIO16} -value {GND} 
sd_connect_pins_to_constant -sd_name ${sd_tb_name} -pin_names {MPFS_DISCOVERY_KIT_0:RPI_GPIO21} -value {GND} 
sd_connect_pins_to_constant -sd_name ${sd_tb_name} -pin_names {MPFS_DISCOVERY_KIT_0:RPI_GPIO13} -value {GND} 
sd_connect_pins_to_constant -sd_name ${sd_tb_name} -pin_names {MPFS_DISCOVERY_KIT_0:RPI_GPIO24} -value {GND} 
sd_connect_pins_to_constant -sd_name ${sd_tb_name} -pin_names {MPFS_DISCOVERY_KIT_0:RPI_GPIO23} -value {GND} 
sd_connect_pins_to_constant -sd_name ${sd_tb_name} -pin_names {MPFS_DISCOVERY_KIT_0:SD_DATA2} -value {GND} 
sd_connect_pins_to_constant -sd_name ${sd_tb_name} -pin_names {MPFS_DISCOVERY_KIT_0:SD_DATA1} -value {GND} 
sd_connect_pins_to_constant -sd_name ${sd_tb_name} -pin_names {MPFS_DISCOVERY_KIT_0:SPI_1_CLK} -value {GND} 
sd_connect_pins_to_constant -sd_name ${sd_tb_name} -pin_names {MPFS_DISCOVERY_KIT_0:SD_DATA3} -value {GND} 
sd_connect_pins_to_constant -sd_name ${sd_tb_name} -pin_names {MPFS_DISCOVERY_KIT_0:RPI_GPIO18} -value {GND} 
sd_connect_pins_to_constant -sd_name {Test_bench} -pin_names {MPFS_DISCOVERY_KIT_0:MMUART_4_RXD} -value {GND} 
sd_connect_pins_to_constant -sd_name {Test_bench} -pin_names {MPFS_DISCOVERY_KIT_0:MBUS_SPI_MISO} -value {GND} 
sd_connect_pins_to_constant -sd_name {Test_bench} -pin_names {MPFS_DISCOVERY_KIT_0:FTDI_UART_D_TXD} -value {GND} 
sd_connect_pins_to_constant -sd_name {Test_bench} -pin_names {MPFS_DISCOVERY_KIT_0:DIP6} -value {GND} 
sd_connect_pins_to_constant -sd_name {Test_bench} -pin_names {MPFS_DISCOVERY_KIT_0:MMUART_1_RXD} -value {GND} 
sd_connect_pins_to_constant -sd_name {Test_bench} -pin_names {MPFS_DISCOVERY_KIT_0:DIP5} -value {GND} 
sd_connect_pins_to_constant -sd_name {Test_bench} -pin_names {MPFS_DISCOVERY_KIT_0:MBUS_UART_TXD} -value {GND} 
sd_connect_pins_to_constant -sd_name {Test_bench} -pin_names {MPFS_DISCOVERY_KIT_0:DIP8} -value {GND} 
sd_connect_pins_to_constant -sd_name {Test_bench} -pin_names {MPFS_DISCOVERY_KIT_0:DIP7} -value {GND} 
sd_connect_pins_to_constant -sd_name {Test_bench} -pin_names {MPFS_DISCOVERY_KIT_0:DIP2} -value {GND} 
sd_connect_pins_to_constant -sd_name {Test_bench} -pin_names {MPFS_DISCOVERY_KIT_0:DIP1} -value {GND} 
sd_connect_pins_to_constant -sd_name {Test_bench} -pin_names {MPFS_DISCOVERY_KIT_0:DIP4} -value {GND} 
sd_connect_pins_to_constant -sd_name {Test_bench} -pin_names {MPFS_DISCOVERY_KIT_0:DIP3} -value {GND} 
sd_connect_pins_to_constant -sd_name {Test_bench} -pin_names {MPFS_DISCOVERY_KIT_0:mBUS_INT} -value {GND} 
sd_connect_pins_to_constant -sd_name {Test_bench} -pin_names {MPFS_DISCOVERY_KIT_0:SD_CD} -value {GND} 
sd_connect_pins_to_constant -sd_name {Test_bench} -pin_names {MPFS_DISCOVERY_KIT_0:SWITCH1} -value {GND} 
sd_connect_pins_to_constant -sd_name {Test_bench} -pin_names {MPFS_DISCOVERY_KIT_0:SPI_1_DI} -value {GND} 
sd_connect_pins_to_constant -sd_name {Test_bench} -pin_names {MPFS_DISCOVERY_KIT_0:SD_WP} -value {GND} 
sd_connect_pins_to_constant -sd_name {Test_bench} -pin_names {MPFS_DISCOVERY_KIT_0:SGMII_RX0_P} -value {GND} 
sd_connect_pins_to_constant -sd_name {Test_bench} -pin_names {MPFS_DISCOVERY_KIT_0:SGMII_RX0_N} -value {GND} 

# Mark outputs unused
sd_mark_pins_unused -sd_name ${sd_tb_name} -pin_names {MPFS_DISCOVERY_KIT_0:WE_N} 
sd_mark_pins_unused -sd_name ${sd_tb_name} -pin_names {MPFS_DISCOVERY_KIT_0:SD_CLK} 
sd_mark_pins_unused -sd_name ${sd_tb_name} -pin_names {MPFS_DISCOVERY_KIT_0:LED5} 
sd_mark_pins_unused -sd_name ${sd_tb_name} -pin_names {MPFS_DISCOVERY_KIT_0:ACT_N} 
sd_mark_pins_unused -sd_name ${sd_tb_name} -pin_names {MPFS_DISCOVERY_KIT_0:RESET_N} 
sd_mark_pins_unused -sd_name ${sd_tb_name} -pin_names {MPFS_DISCOVERY_KIT_0:GPIO_1_9_OUT} 
sd_mark_pins_unused -sd_name ${sd_tb_name} -pin_names {MPFS_DISCOVERY_KIT_0:CK0_N} 
sd_mark_pins_unused -sd_name ${sd_tb_name} -pin_names {MPFS_DISCOVERY_KIT_0:SPISDO} 
sd_mark_pins_unused -sd_name ${sd_tb_name} -pin_names {MPFS_DISCOVERY_KIT_0:GPIO_1_20_OUT} 
sd_mark_pins_unused -sd_name ${sd_tb_name} -pin_names {MPFS_DISCOVERY_KIT_0:CAS_N} 
sd_mark_pins_unused -sd_name ${sd_tb_name} -pin_names {MPFS_DISCOVERY_KIT_0:SPISCLKO} 
sd_mark_pins_unused -sd_name ${sd_tb_name} -pin_names {MPFS_DISCOVERY_KIT_0:LED2} 
sd_mark_pins_unused -sd_name ${sd_tb_name} -pin_names {MPFS_DISCOVERY_KIT_0:SPI_1_DO} 
sd_mark_pins_unused -sd_name ${sd_tb_name} -pin_names {MPFS_DISCOVERY_KIT_0:LED1} 
sd_mark_pins_unused -sd_name ${sd_tb_name} -pin_names {MPFS_DISCOVERY_KIT_0:SPISS} 
sd_mark_pins_unused -sd_name ${sd_tb_name} -pin_names {MPFS_DISCOVERY_KIT_0:MBUS_UART_RXD} 
sd_mark_pins_unused -sd_name ${sd_tb_name} -pin_names {MPFS_DISCOVERY_KIT_0:SD_VOLT_SEL} 
sd_mark_pins_unused -sd_name ${sd_tb_name} -pin_names {MPFS_DISCOVERY_KIT_0:MBUS_SPI_MOSI} 
sd_mark_pins_unused -sd_name ${sd_tb_name} -pin_names {MPFS_DISCOVERY_KIT_0:SD_VOLT_EN} 
sd_mark_pins_unused -sd_name ${sd_tb_name} -pin_names {MPFS_DISCOVERY_KIT_0:SD_VOLT_CMD_DIR} 
sd_mark_pins_unused -sd_name ${sd_tb_name} -pin_names {MPFS_DISCOVERY_KIT_0:MMUART_4_TXD} 
sd_mark_pins_unused -sd_name ${sd_tb_name} -pin_names {MPFS_DISCOVERY_KIT_0:SGMII_TX0_P} 
sd_mark_pins_unused -sd_name ${sd_tb_name} -pin_names {MPFS_DISCOVERY_KIT_0:SD_POW} 
sd_mark_pins_unused -sd_name ${sd_tb_name} -pin_names {MPFS_DISCOVERY_KIT_0:MMUART_1_TXD} 
sd_mark_pins_unused -sd_name ${sd_tb_name} -pin_names {MPFS_DISCOVERY_KIT_0:CKE0} 
sd_mark_pins_unused -sd_name ${sd_tb_name} -pin_names {MPFS_DISCOVERY_KIT_0:SGMII_TX0_N} 
sd_mark_pins_unused -sd_name ${sd_tb_name} -pin_names {MPFS_DISCOVERY_KIT_0:SD_VOLT_DIR_1_3} 
sd_mark_pins_unused -sd_name ${sd_tb_name} -pin_names {MPFS_DISCOVERY_KIT_0:MBUS_AN} 
sd_mark_pins_unused -sd_name ${sd_tb_name} -pin_names {MPFS_DISCOVERY_KIT_0:CK0} 
sd_mark_pins_unused -sd_name ${sd_tb_name} -pin_names {MPFS_DISCOVERY_KIT_0:SD_VOLT_DIR_0} 
sd_mark_pins_unused -sd_name ${sd_tb_name} -pin_names {MPFS_DISCOVERY_KIT_0:LED7} 
sd_mark_pins_unused -sd_name ${sd_tb_name} -pin_names {MPFS_DISCOVERY_KIT_0:LED4} 
sd_mark_pins_unused -sd_name ${sd_tb_name} -pin_names {MPFS_DISCOVERY_KIT_0:FTDI_UART_D_RXD} 
sd_mark_pins_unused -sd_name ${sd_tb_name} -pin_names {MPFS_DISCOVERY_KIT_0:RAS_N} 
sd_mark_pins_unused -sd_name ${sd_tb_name} -pin_names {MPFS_DISCOVERY_KIT_0:MBUS_RST} 
sd_mark_pins_unused -sd_name ${sd_tb_name} -pin_names {MPFS_DISCOVERY_KIT_0:LED3} 
sd_mark_pins_unused -sd_name ${sd_tb_name} -pin_names {MPFS_DISCOVERY_KIT_0:CS0_N} 
sd_mark_pins_unused -sd_name ${sd_tb_name} -pin_names {MPFS_DISCOVERY_KIT_0:ODT0} 
sd_mark_pins_unused -sd_name ${sd_tb_name} -pin_names {MPFS_DISCOVERY_KIT_0:MBUS_PWM} 
sd_mark_pins_unused -sd_name ${sd_tb_name} -pin_names {MPFS_DISCOVERY_KIT_0:LED6} 
sd_mark_pins_unused -sd_name ${sd_tb_name} -pin_names {MPFS_DISCOVERY_KIT_0:BG0} 
sd_mark_pins_unused -sd_name ${sd_tb_name} -pin_names {MPFS_DISCOVERY_KIT_0:DQ} 
sd_mark_pins_unused -sd_name ${sd_tb_name} -pin_names {MPFS_DISCOVERY_KIT_0:A} 
sd_mark_pins_unused -sd_name ${sd_tb_name} -pin_names {MPFS_DISCOVERY_KIT_0:DM} 
sd_mark_pins_unused -sd_name ${sd_tb_name} -pin_names {MPFS_DISCOVERY_KIT_0:BA} 
sd_mark_pins_unused -sd_name ${sd_tb_name} -pin_names {MPFS_DISCOVERY_KIT_0:DQS} 
sd_mark_pins_unused -sd_name ${sd_tb_name} -pin_names {MPFS_DISCOVERY_KIT_0:DQS_N} 

# Generate smart design
generate_component -component_name ${sd_tb_name} -recursive 0 

# Import stimulus files
build_design_hierarchy 
organize_tool_files -tool {SIM_PRESYNTH} -file "$project_dir/component/Actel/Simulation/CLK_GEN/1.0.1/CLK_GEN.v" -file "$project_dir/component/work/CLK_GEN_125MHz/CLK_GEN_125MHz.v" -file "$project_dir/component/work/CLK_GEN_50MHz/CLK_GEN_50MHz.v" -file "$project_dir/component/Actel/Simulation/RESET_GEN/1.0.1/RESET_GEN.v" -file "$project_dir/component/work/RESET_GEN_C0/RESET_GEN_C0.v" -file "$project_dir/component/work/Test_bench/Test_bench.v" -module {MPFS_DISCOVERY_KIT::work} -input_type {stimulus} 
organize_tool_files -tool {SIM_POSTSYNTH}  -file "$project_dir/component/Actel/Simulation/CLK_GEN/1.0.1/CLK_GEN.v" -file "$project_dir/component/work/CLK_GEN_125MHz/CLK_GEN_125MHz.v" -file "$project_dir/component/work/CLK_GEN_50MHz/CLK_GEN_50MHz.v" -file "$project_dir/component/Actel/Simulation/RESET_GEN/1.0.1/RESET_GEN.v" -file "$project_dir/component/work/RESET_GEN_C0/RESET_GEN_C0.v" -file "$project_dir/component/work/Test_bench/Test_bench.v" -module {MPFS_DISCOVERY_KIT::work} -input_type {stimulus} 
import_files \
         -convert_EDN_to_HDL 0 \
         -library {work} \
         -simulation "$local_dir/script_support/stimulus/Wave.do" -simulation "$local_dir/script_support/stimulus/MPFS_DISCOVERY_KIT_MSS_PFSOC_MSS_FIC0_user.bfm" -simulation "$local_dir/script_support/stimulus/MPFS_DISCOVERY_KIT_MSS_PFSOC_MSS_FIC3_user.bfm"
         
# Configure simulation options
set_modelsim_options  -include_do_file 1 -included_do_file "${project_dir}/simulation/Wave.do" -sim_runtime "10us"
