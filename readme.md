# PolarFire&reg; SoC Discovery Kit Reference Design Generation Tcl Scripts - Libero&reg; SoC v2023.1+

## Table of Contents

- [PolarFire® SoC Discovery Kit Reference Design Generation Tcl Scripts - Libero® SoC v2023.1+](#polarfire-soc-discovery-kit-reference-design-generation-tcl-scripts---libero-soc-v20231)
  - [Table of Contents](#table-of-contents)
  - [Description](#description)
  - [Using the reference design generation Tcl script](#using-the-reference-design-generation-tcl-script)
    - [Licensing](#licensing)
    - [Standard design generation](#standard-design-generation)
    - [Argument based design generation](#argument-based-design-generation)
    - [Generating designs from the command line - no GUI](#generating-designs-from-the-command-line---no-gui)
  - [Design description](#design-description)
    - [Block diagrams](#block-diagrams)
    - [MSS peripherals](#mss-peripherals)
    - [MSS DDR4 configuration](#mss-ddr4-configuration)
    - [Fabric memory map](#fabric-memory-map)
    - [Interrupt map](#interrupt-map)
    - [GPIO1 connections](#gpio1-connections)
    - [GPIO2 connections](#gpio2-connections)
    - [CoreGPIO connections](#coregpio-connections)
  - [Programming the FPGA](#programming-the-fpga)
  - [Board configuration](#board-configuration)
  - [MSS Configuration](#mss-configuration)
  - [XML](#xml)
  - [BFM Simulation](#bfm-simulation)
  - [Setting the boot mode and programming the eNVM](#setting-the-boot-mode-and-programming-the-envm)
    - [SoftConsole boot mode programmer](#softconsole-boot-mode-programmer)
    - [Boot mode 0](#boot-mode-0)
    - [Boot mode 1](#boot-mode-1)
      - [Boot mode 1: SoftConsole](#boot-mode-1-softconsole)
      - [Boot mode 1: Libero SoC](#boot-mode-1-libero-soc)

<a name="description"></a>
## Description

This repository can be used to generate a reference design for the PolarFire SoC Discovery Kit. The base reference design has different functionality to the pre-programmed design on the Discovery Kit.

A Libero SoC Tcl script is provided to generate the reference design using Libero SoC along with device specific I/O constraints.

Out of the box the kit runs a FIR filter demo, this reference design is configured to run bare metal applications, boot Linux&reg; and enable peripherals on the kit. To generate the FIR filter design an argument is provided which can be passed when running Tcl scripts from Libero SoC, see the [Argument based design generation](#argument-based-design-generation) section for more information.

This repository supports Libero SoC v2023.1 and above, which is available for download [here](https://www.microchip.com/en-us/products/fpgas-and-plds/fpga-and-soc-design-tools/fpga/libero-software-later-versions#Documents%20and%20Downloads). The release notes will note the version(s) of Libero that these scripts have been tested on.

<a name="using-the-reference-design-generation-tcl-script"></a>
## Using the reference design generation Tcl script

<a name="licensing"></a>
### Licensing

The Discovery Kit Reference Design can be generated using any of the free or paid Libero licenses. Licensing information is available on the Microchip website [here](https://www.microchip.com/en-us/products/fpgas-and-plds/fpga-and-soc-design-tools/fpga/licensing).

<a name="standard-design-generation"></a>
### Standard design generation

To generate the standard reference design which is capable of running bare metal example applications, from the [PolarFire SoC Bare Metal Examples repository](https://mi-v-ecosystem.github.io/redirects/repo-polarfire-soc-bare-metal-examples), and run Linux, the following flow can be used:

1. Clone or download the repository
2. Open Libero
3. Open the execute script dialog (CTRL + U)
4. Execute the "MPFS_DISCOVERY_KIT_REFERENCE_DESIGN.tcl" script
5. Configure the design if required
6. Run the Libero SoC design flow to program a device

<a name="argument-based-design-generation"></a>
### Argument based design generation

Some bare metal examples and tutorials require a specific fabric configuration which cannot be achieved in the standard base design, for example to test I2C loopback the MSS must be reconfigured to route I2C1 to the fabric and bi directional buffers then need to be instantiated along with additional constraints. These configurations are achieved by passing an argument to Libero when generating the design. Arguments will generate a standard base design and apply design changes on top of that configuration. 

Supported arguments are:

| Argument       | Description                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |
|----------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| I2C_LOOPBACK   | Routes I2C0 and I2C1 to the fabric and connects them to bibufs routed to Raspberry Pi® I/Os. Associates I2C loopback constraints for I/O. This design can be used with the I2C loopback bare metal example project and will still boot Linux. I2C0_SCL is routed to pin 29 and I2C1_SCL is routed to pin 31 of the Raspberry Pi I/O header. I2C0_SDA is routed to pin 35 and I2C1_SDA is routed to pin 37 of the Raspberry Pi I/O header. Connecting / closing pins 29 and 31 and pins 35 and 37 of the Raspberry Pi I/O header will achieve I2C loopback. |
| BFM_SIMULATION | Generates a smart design test bench based on the reference design and imports custom BFM scripts to generate transactions on MSS FICs. A custom DO file is also imported to add waves and run the simulation.                                                                                                                                                                                                                                                                                                                                              |
| FIR_DEMO       | Generates the FIR filter design that is pre-programmed on the Discovery Kit. This design is described in [AN5165](https://www.microchip.com/en-us/application-notes/an5165.html).                                                                                                                                                                                                                                                                                                                                                                           |
| MIV_RV32_CFG1  | Generates the Mi-V soft CPU reference design - see the descriptions in the [Mi-V GitHub organisation](https://github.com/Mi-V-Soft-RISC-V/PolarFire-Eval-Kit/tree/main/Libero_Projects#pf_eval_kit_miv_rv32_basedesign) for more information on the configuration.                                                                                                                                                                                                                                                                                         |
| MIV_RV32_CFG2  | Generates the Mi-V soft CPU reference design - see the descriptions in the [Mi-V GitHub organisation](https://github.com/Mi-V-Soft-RISC-V/PolarFire-Eval-Kit/tree/main/Libero_Projects#pf_eval_kit_miv_rv32_basedesign) for more information on the configuration.                                                                                                                                                                                                                                                                                         |
| MIV_RV32_CFG3  | Generates the Mi-V soft CPU reference design - see the descriptions in the [Mi-V GitHub organisation](https://github.com/Mi-V-Soft-RISC-V/PolarFire-Eval-Kit/tree/main/Libero_Projects#pf_eval_kit_miv_rv32_basedesign) for more information on the configuration.                                                                                                                                                                                                                                                                                         |

Arguments in the table above can only be used exclusively - i.e you cannot pass "I2C_LOOPBACK" and "BFM_SIMULATION" as arguments.

Additional arguments are also supported to modify or configure aspects of the design flow that will be run. Supported arguments are:

| Argument                  | Description                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |
| :------------------------ | :----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| HSS_UPDATE                | Downloads the HSS release hex file associated with this release of the reference design. <br>The hex file is added as an eNVM client in Libero. <br>This argument requires wget to be installed. <br>This is installed by default on most Linux systems, on Windows® wget should be installed and added to the system path, steps are shown in the following [guide](https://www.addictivetips.com/windows-tips/install-and-use-wget-in-windows-10/)                                                                                                                                 |
| SYNTHESIZE                | Runs the synthesis step after design generation has completed                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |
| PLACEROUTE                | Runs the synthesis and place and route steps after design generation has completed                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |
| VERIFY_TIMING             | Runs the synthesis, place and route and timing verification steps after design generation has completed                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |
| GENERATE_PROGRAMMING_DATA | Generates the files required to generate a bitstream for programming a device                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |
| PROGRAM                   | Runs the full design flow after generating a design and programs a connected device. <br>Note: the device must be connected when the "Run PROGRAM Action" stage of the design flow is reached and only one device should be connected                                                                                                                                                                                                                                                                                                                                                |
| EXPORT_FPE                | Runs the full design flow after generating a design and exports a FlashPro Express file to the local directory                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |
| EXPORT_FPE:PATH           | Runs the full design flow after generating a design and exports a FlashPro Express file to a specified path e.g EXPORT_FPE:/home/user/jobs/                                                                                                                                                                                                                                                                                                                                                                                                                                          |
| AXI4_STREAM_DEMO          | Demonstrates configuring and implementing an AXI4 streaming interface on an CoreAXI4DMAController.<br> Creates the AXI4_STREAM_DATA_GENERATOR module which connects to the CoreAXI4DMAController in the design. The AXI4_STREAM_DATA_GENERATOR module generates AXI4 Stream transactions with incrementing data which can be used to benchmark the performance of the system. Further information regarding this demonstration is available in the following [guide](https://mi-v-ecosystem.github.io/redirects/demo-guides_mpfs-axi4-stream-demo). Note: this argument cannot be used with the Mi-V RV32 soft CPU designs. |

**Note:** The arguments listed in the table above can be used with other arguments - i.e you can pass "I2C_LOOPBACK", "HSS_UPDATE" and "PROGRAM" as arguments.

The design flow for using arguments is the same as the standard flow, ensuring the argument is passed at script execution time:

1. Clone or download the repository
2. Open Libero
3. Open the execute script dialog (CTRL + U)
4. Execute the "MPFS_DISCOVERY_KIT_REFERENCE_DESIGN.tcl" script
5. Add any required arguments (e.g "I2C_LOOPBACK HSS_UPDATE PROGRAM")

**Note:** arguments should not be put in quotes and are separated by a space when using the GUI.

6. Configure the design if required
7. Run the Libero SoC design flow to program a device

<a name="generating-designs-from-the-command-line---no-gui"></a>
### Generating designs from the command line - no GUI

Libero has support to run Tcl scripts without launching a GUI, this can significantly reduce design generation time. Arguments can also be passed when generating from the command line.

To generate a design from the command line:

1. Clone or download the repository
2. Open a terminal in the directory containing the design generation scripts
3. Execute the command (example arguments shown):
[path to Libero]/libero script:MPFS_DISCOVERY_KIT_REFERENCE_DESIGN.tcl SCRIPT_ARGS:I2C_LOOPBACK+HSS_UPDATE+PROGRAM logfile: MPFS_DISCOVERY_KIT_REFERENCE_DESIGN.log

**Note:** Arguments are separated by a "+" symbol when using the command line.

**Note:** The script will automatically generate an MSS component, using the PolarFire SoC MSS Configurator in batch mode, then, generate, instantiate and connect components and top level I/Os. Constraints are imported for top level I/O and floor planning which associated with Place and Route. Timing constraints are then generated and associated with Synthesis, Place and Route and Timing Verification. Some arguments may require part of the design flow to be run while executing the script.

<a name="design-description"></a>
## Design description

<a name="block-diagrams"></a>
### Block diagrams

The diagram below outlines the top level configuration of the FPGA fabric and shows MSS I/Os used in this design:

![Block diagram](./diagrams/block_diagram.svg)

The diagram below shows the Inter Hart Communication (IHC) subsystem configuration used in the reference design:

![IHC subsystem block diagram](./diagrams/IHC_SUBSYSTEM_block_diagram.svg)

<a name="mss-peripherals"></a>
### MSS peripherals

The following MSS peripherals are enabled:

| MSS Peripheral | Route to Device I/O | Board peripheral            | Board Interface              | Notes                                    |
| :------------- | :------------------ | :-------------------------- | :--------------------------- | :--------------------------------------- |
| SD/SDIO        | MSS I/Os BANK 4     | uSD card socket             | N/A                          |                                          |
| GEM0           | SGMII I/Os BANK 5   | VSC8221 PHY Port0           | J3 (RJ45 connector)          | Management through<br> fabric I/Os       |
| SPI0           | Fabric              | N/A                         | J5  (mikroBUS socket)        |                                          |
| SPI1           | MSS I/Os BANK 2 B   | N/A                         | 10  (RPI header)             |                                          |
| MMUART0        | Fabric              | USB-UART                    | J4 (USB-C port)              |                                          |
| MMUART1        | MSS I/Os BANK 2     | USB-UART                    | J4 (USB-C port)              |                                          |
| MMUART4        | MSS I/Os BANK 2     | USB-UART                    | J4 (USB-C port)              |                                          |
| I2C0           | Fabric              | N/A                         | J6 (mikroBUS socket)         |                                          |
| GPIO1          | MSS I/Os BANK 2     | See GPIO1 connections table | N/A                          | See GPIO1 connections table              |
| GPIO2          | Fabric              | See GPIO2 connections table | N/A                          | See GPIO2 connections table              |

**Note:** “Raspberry Pi is a trademark of the Raspberry Pi Foundation”.

<a name="mss-ddr4-configuration"></a>
### MSS DDR4 configuration

The Discovery Kit has 1GB of DDR4 on board connected to the MSS DDR Controller. To use this DDR with a soft CPU (or fabric initiator) the HSS or a bare metal application will need to be used to train the DDR and enable a FIC target on the MSS before DDR can be accessed.

<a name="fabric-memory-map"></a>
### Fabric memory map

| Initiator      | Bus                        | Target                      | Board peripheral        | Board interface              | Address range                    |
| :------------- | :------------------------- | :-------------------------- | :---------------------- | :--------------------------- | :------------------------------- |
| MSS: FIC0      | FIC0_INITIATOR             | MSS_LSRAM                   | N/A                     | N/A                          | 0x6000_0000 -> 0x6000_1000       |
| MSS: FIC0      | FIC0_INITIATOR             | DMA_CONTROLLER              | N/A                     | N/A                          | 0x6001_0000 -> 0x6001_FFFF       |
| MSS: FIC3      | FIC_3_ADDRESS_GENERATION   | PWM                         | N/A                     | J6 (mikroBUS socket)         | 0x4000_0000 -> 0x4000_00FF       |
| MSS: FIC3      | FIC_3_ADDRESS_GENERATION   | CoreGPIO                    | LEDs                    | N/A                          | 0x4000_0100 -> 0x4000_01FF       |
| MSS: FIC3      | FIC_3_ADDRESS_GENERATION   | CoreI2C                     | N/A                     | 10  (RPI header)             | 0x4000_0200 -> 0x4000_02FF       |
| MSS: FIC3      | FIC_3_ADDRESS_GENERATION   | CoreUART                    | N/A                     | J6 (mikroBUS socket)         | 0x4000_0300 -> 0x4000_03FF       |
| MSS: FIC3      | FIC_3_ADDRESS_GENERATION   | SPI_FOR_7_SEG               | N/A                     | J48 (7 seg display adapter)  | 0x4000_0400 -> 0x4000_04FF       |
| MSS: FIC3      | IHC_SUBSYSTEM: APB3mmaster | CHANNEL_E51_TO_U54_1:A      | N/A                     | N/A                          | 0x5000_0000 -> 0x5000_00FF       |
| MSS: FIC3      | IHC_SUBSYSTEM: APB3mmaster | CHANNEL_E51_TO_U54_2:A      | N/A                     | N/A                          | 0x5000_0100 -> 0x5000_01FF       |
| MSS: FIC3      | IHC_SUBSYSTEM: APB3mmaster | CHANNEL_E51_TO_U54_3:A      | N/A                     | N/A                          | 0x5000_0200 -> 0x5000_02FF       |
| MSS: FIC3      | IHC_SUBSYSTEM: APB3mmaster | CHANNEL_E51_TO_U54_4:A      | N/A                     | N/A                          | 0x5000_0300 -> 0x5000_03FF       |
| MSS: FIC3      | IHC_SUBSYSTEM: APB3mmaster | E51_IRQ_AGGREGATOR          | N/A                     | N/A                          | 0x5000_0400 -> 0x5000_04FF       |
| MSS: FIC3      | IHC_SUBSYSTEM: APB3mmaster | CHANNEL_E51_TO_U54_1:B      | N/A                     | N/A                          | 0x5000_0500 -> 0x5000_05FF       |
| MSS: FIC3      | IHC_SUBSYSTEM: APB3mmaster | CHANNEL_U54_1_TO_U54_2:A    | N/A                     | N/A                          | 0x5000_0600 -> 0x5000_06FF       |
| MSS: FIC3      | IHC_SUBSYSTEM: APB3mmaster | CHANNEL_U54_1_TO_U54_3:A    | N/A                     | N/A                          | 0x5000_0700 -> 0x5000_07FF       |
| MSS: FIC3      | IHC_SUBSYSTEM: APB3mmaster | CHANNEL_U54_1_TO_U54_4:A    | N/A                     | N/A                          | 0x5000_0800 -> 0x5000_08FF       |
| MSS: FIC3      | IHC_SUBSYSTEM: APB3mmaster | U54_1_IRQ_AGGREGATOR        | N/A                     | N/A                          | 0x5000_0900 -> 0x5000_09FF       |
| MSS: FIC3      | IHC_SUBSYSTEM: APB3mmaster | CHANNEL_E51_TO_U54_2:B      | N/A                     | N/A                          | 0x5000_0A00 -> 0x5000_0AFF       |
| MSS: FIC3      | IHC_SUBSYSTEM: APB3mmaster | CHANNEL_U54_1_TO_U54_2:B    | N/A                     | N/A                          | 0x5000_0B00 -> 0x5000_0BFF       |
| MSS: FIC3      | IHC_SUBSYSTEM: APB3mmaster | CHANNEL_U54_2_TO_U54_3:A    | N/A                     | N/A                          | 0x5000_0C00 -> 0x5000_0CFF       |
| MSS: FIC3      | IHC_SUBSYSTEM: APB3mmaster | CHANNEL_U54_2_TO_U54_4:A    | N/A                     | N/A                          | 0x5000_0D00 -> 0x5000_0DFF       |
| MSS: FIC3      | IHC_SUBSYSTEM: APB3mmaster | U54_2_IRQ_AGGREGATOR        | N/A                     | N/A                          | 0x5000_0E00 -> 0x5000_0EFF       |
| MSS: FIC3      | IHC_SUBSYSTEM: APB3mmaster | CHANNEL_E51_TO_U54_3:B      | N/A                     | N/A                          | 0x5000_0F00 -> 0x5000_0FFF       |
| MSS: FIC3      | IHC_SUBSYSTEM: APB3mmaster | CHANNEL_U54_1_TO_U54_3:B    | N/A                     | N/A                          | 0x5000_1000 -> 0x5000_10FF       |
| MSS: FIC3      | IHC_SUBSYSTEM: APB3mmaster | CHANNEL_U54_2_TO_U54_3:B    | N/A                     | N/A                          | 0x5000_1100 -> 0x5000_11FF       |
| MSS: FIC3      | IHC_SUBSYSTEM: APB3mmaster | CHANNEL_U54_3_TO_U54_4:A    | N/A                     | N/A                          | 0x5000_1200 -> 0x5000_12FF       |
| MSS: FIC3      | IHC_SUBSYSTEM: APB3mmaster | U54_3_IRQ_AGGREGATOR        | N/A                     | N/A                          | 0x5000_1300 -> 0x5000_13FF       |
| MSS: FIC3      | IHC_SUBSYSTEM: APB3mmaster | CHANNEL_E51_TO_U54_4:B      | N/A                     | N/A                          | 0x5000_1400 -> 0x5000_14FF       |
| MSS: FIC3      | IHC_SUBSYSTEM: APB3mmaster | CHANNEL_U54_1_TO_U54_4:B    | N/A                     | N/A                          | 0x5000_1500 -> 0x5000_15FF       |
| MSS: FIC3      | IHC_SUBSYSTEM: APB3mmaster | CHANNEL_U54_2_TO_U54_4:B    | N/A                     | N/A                          | 0x5000_1600 -> 0x5000_16FF       |
| MSS: FIC3      | IHC_SUBSYSTEM: APB3mmaster | CHANNEL_U54_3_TO_U54_4:B    | N/A                     | N/A                          | 0x5000_1700 -> 0x5000_17FF       |
| MSS: FIC3      | IHC_SUBSYSTEM: APB3mmaster | U54_4_IRQ_AGGREGATOR        | N/A                     | N/A                          | 0x5000_1800 -> 0x5000_18FF       |
| DMA_CONTROLLER | DMA_INITIATOR              | MSS: FIC0                   | N/A                     | N/A                          | 0x0000_0000 -> 0xFFFF_FFFF       |

<a name="interrupt-map"></a>
### Interrupt map

| Source                  | IRQ                |
| :---------------------- | :----------------- |
| DMA_CONTROLLER          | MSS_INT_F3M[2]     |
| mBUS_INT                | MSS_INT_F2M[3]     |
| CoreI2C_INT[0]          | MSS_INT_F2M[4]     |
| DIP SW1                 | MSS_INT_F2M[6]     |
| DIP SW2                 | MSS_INT_F2M[7]     |
| DIP SW3                 | MSS_INT_F2M[8]     |
| DIP SW4                 | MSS_INT_F2M[9]     |
| SWITCH 1                | MSS_INT_F2M[10]    |
| IHC_SUBSYSTEM:E51_IRQ   | MSS_INT_F2M[63]    |
| IHC_SUBSYSTEM:U54_1_IRQ | MSS_INT_F2M[62]    |
| IHC_SUBSYSTEM:U54_2_IRQ | MSS_INT_F2M[61]    |
| IHC_SUBSYSTEM:U54_3_IRQ | MSS_INT_F2M[60]    |
| IHC_SUBSYSTEM:U54_4_IRQ | MSS_INT_F2M[59]    |

<a name="gpio1-connections"></a>
### GPIO1 connections

| Bit | Direction | Source / sink | Notes         |
| :-- | :-------- | :------------ | :------------ |
| 9   | I/O       | LED8          |               |
| 20  | I/O       | RPi_GPIO7     |               |

<a name="gpio2-connections"></a>
### GPIO2 connections

| Bit | Direction | Source / sink | Notes              |
| :-- | :-------- | :------------ | :----------------- |
| 0   | I/O       | RPi_GPIO4     |                    |
| 1   | I/O       | RPi_GPIO17    |                    |
| 2   | I/O       | RPi_GPIO18    |                    |
| 3   | I/O       | RPi_GPIO27    |                    |
| 4   | I/O       | RPi_GPIO22    |                    |
| 5   | I/O       | RPi_GPIO23    |                    |
| 6   | I/O       | RPi_GPIO24    |                    |
| 7   | I/O       | RPi_GPIO25    |                    |
| 8   | I/O       | RPi_GPIO5     |                    |
| 9   | I/O       | RPi_GPIO6     |                    |
| 10  | I/O       | RPi_GPIO12    |                    |
| 11  | I/O       | RPi_GPIO13    |                    |
| 12  | I/O       | RPi_GPIO19    |                    |
| 13  | I/O       | RPi_GPIO16    |                    |
| 14  | I/O       | RPi_GPIO26    |                    |
| 15  | I/O       | RPi_GPIO20    |                    |
| 16  | I/O       | RPi_GPIO21    |                    |
| 17  | Out       | LED1          | OR'd with CoreGPIO |
| 18  | Out       | LED2          | OR'd with CoreGPIO |
| 19  | Out       | LED3          | OR'd with CoreGPIO |
| 20  | Out       | LED4          | OR'd with CoreGPIO |
| 21  | Out       | LED5          | OR'd with CoreGPIO |
| 22  | Out       | LED6          | OR'd with CoreGPIO |
| 23  | Out       | LED7          | OR'd with CoreGPIO |
| 24  | In        | GND           |                    |
| 25  | In        | DIP5          |                    |
| 26  | In        | DIP6          |                    |
| 27  | In        | DIP7          |                    |
| 28  | In        | DIP8          |                    |

<a name="coregpio-connections"></a>
### CoreGPIO connections

| Bit | Direction | Source / sink | Notes           |
| :-- | :-------- | :------------ | :-------------- |
| 0   | Out       | LED1          | OR'd with GPIO2 |
| 1   | Out       | LED2          | OR'd with GPIO2 |
| 2   | Out       | LED3          | OR'd with GPIO2 |
| 3   | Out       | LED4          | OR'd with GPIO2 |
| 4   | Out       | LED5          | OR'd with GPIO2 |
| 5   | Out       | LED6          | OR'd with GPIO2 |
| 6   | Out       | LED7          | OR'd with GPIO2 |

<a name="programming-the-fpga"></a>
## Programming the FPGA

Once the script has completed the design can be configured further if needed and the Libero SoC design flow can be run by double clicking on a stage in the design flow on the left hand side of Libero. Selecting an option requiring previous steps to be completed will run the full flow, i.e double clicking "Run Program Action" will run any required steps, such as, "Synthesize", "Place and Route", etc and then program the device.

<a name="board-configuration"></a>
## Board configuration

For Discovery Kit jumper configurations used by this design and Linux images for eMMC and SD Cards see the [MPFS Discovery Kit User Guide](https://mi-v-ecosystem.github.io/redirects/updating-Discovery-kit_updating-Discovery-kit-design-and-linux).

<a name="mss-configuration"></a>
## MSS Configuration

The Microprocessor Subsystem (MSS) is configured using the PolarFire SoC MSS Configurator.
This software tool takes user inputs and generates an MSS configuration file (.xml) along with an MSS component file (.cxz).
The XML file is used by the PolarFire SoC Configuration Generator to generate configuration header files for bare metal applications.
The MSS component file can be imported into a Libero SoC design and used in the FPGA design flow.

A saved configuration for the PolarFire SoC MSS Configurator is available in the "script_support" folder and can be opened by the PolarFire SoC MSS Configurator. These configurations will match the MSS configuration used in the design and can be used to regenerate XML and a Libero component. For argument based designs, MSS configuration files will be generated in the script_support/additional_configurations/[configuration name] directory when a design is generated.

<a name="xml"></a>
## XML

The Microcontroller Subsystem (MSS) configuration is captured in an XML file that is then used by the PolarFire SoC Configuration Generator to generate configuration header files. These header files are compiled as part of the MPFS HAL startup code to configure the system at power on.

XML generated for all available configurations is provided in the "XML" folder.

<a name="bfm-simulation"></a>
## BFM Simulation

A SmartDesign test bench can be generated along with the SmartDesign containing the reference design by passing the "BFM_SIMULATION" argument when generating the design. This test bench will allow the user to run BFM simulations of the PolarFire SoC MSS. A custom wave.do file is imported to add signals and updated BFM scripts are also imported. To run a BFM simulation:

1. Open the "Stimulus Hierarchy" in Libero SoC
2. Right click on "Test_bench" from the hierarchy
3. Select "Simulate Pre-Synth Design" and "Open Interactively"

Commands for BFM simulations can be updated by editing the ".vec" files in the Simulation folder which is accessible under the "Files" tab of Libero SoC.

<a name="setting-the-boot-mode-and-programming-the-envm"></a>
## Setting the boot mode and programming the eNVM

<a name="softconsole-boot-mode-programmer"></a>
### SoftConsole boot mode programmer

SoftConsole contains a tool to generate eNVM payload files for Libero and also directly program the eNVM and set the boot mode on a PolarFire SoC device. By default the boot mode programmer tool will be configured to set the boot mode of an Icicle Kit. To target a Discovery Kit:

1. Open the external tools configurations (Run -> External Tools -> External Tools Configurations...)
2. Change the arguments of "PolarFire SoC program idle boot mode..." to have a die of "MPFS095T" and package of "FCSG325" - there is an individual configuration for each boot mode
3. Apply the changes

For example, the full arguments for boot mode 0 are:

```c
-jar ${eclipse_home}/../extras/mpfs/mpfsBootmodeProgrammer.jar 
--bootmode 0
--die MPFS095T
--package FCSG325
```

<a name="boot-mode-0"></a>
### Boot mode 0

Boot mode 0 will put all of the MSS cores into WFI (Wait For Interrupt) mode on power on, the cores will not boot until debugged. SoftConsole v6.5 or later can be used to set the PolarFire SoC boot mode to 0:

1. Connect the board to the PC using the embedded FlashPro6 or an external FlashPro and power on the board
2. In SoftConsole select the "External Tool" drop down menu
3. Select the "PolarFire SoC idle boot mode 0" configuration and run

<a name="boot-mode-1"></a>
### Boot mode 1

Boot mode 1 configures all of the MSS cores to boot from the eNVM, when setting the boot mode to 1 an eNVM client must also be provided An eNVM client can be a zero stage boot loader, such as the HSS, or a bare metal application. SoftConsole v6.4 and above or Libero SoC v12.6 and above can be used to set the boot mode and program the eNVM.

Build the bare metal application using the reference XML provided to configure the MPFS HAL (XML will also be generated in the script_support/components/[target] folder when an MSS component is generated as part of the flow).

<a name="boot-mode-1-softconsole"></a>
#### Boot mode 1: SoftConsole

To set the PolarFire SoC boot mode to 1 and program an eNVM client in SoftConsole:

1. Select the project folder of the application to be used as an eNVM client in the project explorer
2. Connect the board to the PC using the embedded FlashPro6 or an external FlashPro and power on the board
3. In SoftConsole select the "External Tool" drop down menu
4. Select the "PolarFire SoC non-secure boot mode 1" configuration and run

<a name="boot-mode-1-libero-soc"></a>
#### Boot mode 1: Libero SoC

To set the PolarFire SoC boot mode to 1 and program and eNVM client in Libero:

1. Run the Libero SoC design flow so that "Generate FPGA Array Data" has completed and open the "Configure Design Initialization Data and Memories" tool
2. Select the "eNVM" tab
3. Select the "Add ..." option and select "Add Boot Mode 1" client
4. Navigate to the binary file to be used as a client and select ok
5. Save and add the client
6. Run the remainder of the Libero SoC design flow and program the device

Linux® is the registered trademark of Linus Torvalds in the U.S. and other countries.
Raspberry Pi is a trademark of the Raspberry Pi Foundation.
All other trademarks are the property of their respective owners.
