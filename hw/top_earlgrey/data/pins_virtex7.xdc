## Virtex-7 XC7VX690T Pins (VC709)
set_property -dict { PACKAGE_PIN H19 IOSTANDARD LVDS } [get_ports { IO_CLK_P }]
set_property -dict { PACKAGE_PIN G18 IOSTANDARD LVDS } [get_ports { IO_CLK_N }]
set_property -dict { PACKAGE_PIN AV35 IOSTANDARD LVCMOS18 } [get_ports { POR_BUTTON_N }]
set_property -dict { PACKAGE_PIN AW40 IOSTANDARD LVCMOS18 PULLTYPE PULLUP } [get_ports { POR_N }]

## UART0
set_property -dict { PACKAGE_PIN AU36 IOSTANDARD LVCMOS18 } [get_ports { IOC3 }]
set_property -dict { PACKAGE_PIN AU33 IOSTANDARD LVCMOS18 } [get_ports { IOC4 }]

## Configuration options for Virtex-7
set_property CONFIG_VOLTAGE 1.8 [current_design]
set_property CFGBVS GND [current_design]
set_property BITSTREAM.CONFIG.SPI_BUSWIDTH 4 [current_design]
set_property CONFIG_MODE SPIx4 [current_design]

## CLOCK ROUTING OVERRIDES
set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets u_ast/u_ast_clks_byp/u_no_scan_clk_src_io_d1ord2/u_clk_div_buf/clk_i]
set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets clkgen/clk_aon_o]
set_property CLOCK_DEDICATED_ROUTE ANY_CMT_COLUMN [get_nets top_earlgrey/u_clkmgr_aon/u_main_root_ctrl/u_cg/i_cg/gen_gate.gen_bufgce.u_bufgce_0]

## THE ULTIMATE DUMMY PIN LOOP
## Automatically maps every remaining unplaced IO port to a valid, unused VC709 pin
set dummy_pins [list A8 A9 B8 B9 C8 C9 D8 D9 E8 E9 F8 F9 A10 B10 C10 D10 E10 F10 G10 H10 A12 A13 B12 B13 C12 C13 D12 D13 A14 B14 C14 D14 E14 A15 B15 C15 D15 E15 A16 B16 G11 H11 G12 H12 J11 K11 J13 K13 J14 K14 L11 L12 M11 M12 L13 M13 L14 M14 N11 N12 P11 P12 N13 N14 P13 P14 N16 P15 P16 R11 R12 T11 T12 R13 T13 R15 T14 T15]
set unmapped_ports [get_ports -filter {PACKAGE_PIN == ""}]
set pin_idx 0
foreach port $unmapped_ports {
    set pin [lindex $dummy_pins $pin_idx]
    set_property PACKAGE_PIN $pin $port
    set_property IOSTANDARD LVCMOS18 $port
    incr pin_idx
}
