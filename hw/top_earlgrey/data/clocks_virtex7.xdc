## Copyright lowRISC contributors (OpenTitan project).
## Licensed under the Apache License, Version 2.0, see LICENSE for details.
## SPDX-License-Identifier: Apache-2.0

## Clock Signal (VIRTEX-7 DIFFERENTIAL P PORT)
create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports IO_CLK_P]

## Rename MMCM outputs for less bug-prone parsing.
## Some auto-derived clocks can have names that include brackets.
create_generated_clock -name clk_main [get_pin clkgen/pll/CLKOUT0]
create_generated_clock -name clk_usb_48 [get_pin clkgen/pll/CLKOUT1]
create_generated_clock -name clk_aon [get_pin clkgen/pll/CLKOUT4]
set clk_io_pin [get_pin u_ast/u_ast_clks_byp/u_no_scan_clk_src_io_d1ord2/u_clk_div_buf/gen_fpga_buf.gen_bufg.bufg_i/O]
create_generated_clock -name clk_io -divide_by 1 -add \
    -master_clock [get_clocks clk_main] \
    -source [get_pins clkgen/pll/CLKOUT0] \
    ${clk_io_pin}

## Clock Domain Crossings
set clks_10_unbuf [get_clocks -of_objects [get_pin clkgen/pll/CLKOUT0]]
set clks_48_unbuf [get_clocks -of_objects [get_pin clkgen/pll/CLKOUT1]]
set clks_aon_unbuf [get_clocks -of_objects [get_pin clkgen/pll/CLKOUT4]]

## Divided clock
set u_pll clkgen/pll
set u_div2 top_*/u_clkmgr_aon/u_no_scan_io_div2_div
create_generated_clock -name clk_io_div2 -divide_by 2 -source ${clk_io_pin} [get_pin ${u_div2}/gen_div2.u_div2/q_o[0]]

set u_div4 top_*/u_clkmgr_aon/u_no_scan_io_div4_div
create_generated_clock -name clk_io_div4 -divide_by 4 -source [get_pins ${u_div4}/gen_div.clk_int_reg/C] [get_pins ${u_div4}/gen_div.clk_int_reg/Q]

set ast_src_io u_ast/u_ast_clks_byp/u_no_scan_clk_src_io_d1ord2

set_clock_sense -positive \
  [get_pins -filter {DIRECTION == OUT && IS_LEAF} -of_objects \
    [get_nets -segments -of_objects \
      [get_pins ${ast_src_io}/u_clk_div_buf/gen_fpga_buf.gen_bufg.bufg_i/I] \
    ] \
  ]

set_clock_sense -positive \
  [get_pins -filter {DIRECTION == OUT && IS_LEAF} -of_objects \
    [get_nets -segments -of_objects \
      [get_pins top_*/u_clkmgr_aon/u_no_scan_io_div2_div/u_clk_div_buf/gen_fpga_buf.gen_bufg.bufg_i/I] \
    ] \
  ]

## Muxed I/Os
set ioa_muxed_ports [get_ports IOA*]
set iob_muxed_ports [get_ports IOB*]
set ioc_muxed_ports [get_ports IOC*]
set ior_muxed_ports [get_ports -filter {NAME != IOR8 && NAME != IOR9} IOR*]
set all_muxed_ports "${ioa_muxed_ports} ${iob_muxed_ports} ${ioc_muxed_ports} ${ior_muxed_ports}"

## JTAG clocks and I/O delays
create_clock -add -name jtag_tck -period 100.00 -waveform {0 50} [get_ports IOR3]
create_generated_clock -name lc_jtag_tck -source [get_ports IOR3] -divide_by 1 [get_pins top_*/u_pinmux_aon/u_pinmux_strap_sampling/u_pinmux_jtag_buf_lc/prim_clock_buf_tck/gen_fpga_buf.gen_bufg.bufg_i/O]
create_generated_clock -name rv_jtag_tck -source [get_ports IOR3] -divide_by 1 [get_pins top_*/u_pinmux_aon/u_pinmux_strap_sampling/u_pinmux_jtag_buf_rv/prim_clock_buf_tck/gen_fpga_buf.gen_bufg.bufg_i/O]

set lc_jtag_tck_inv_pin  \
  [get_pins -filter {DIRECTION == OUT && IS_LEAF} -of_objects \
    [get_nets -segments -of_objects \
      [get_pins top_earlgrey/u_pinmux_aon/u_pinmux_strap_sampling/u_pinmux_jtag_buf_lc/prim_clock_buf_tck/gen_fpga_buf.gen_bufg.bufg_i/I]]]
set rv_jtag_tck_inv_pin  \
  [get_pins -filter {DIRECTION == OUT && IS_LEAF} -of_objects \
    [get_nets -segments -of_objects \
      [get_pins top_earlgrey/u_pinmux_aon/u_pinmux_strap_sampling/u_pinmux_jtag_buf_rv/prim_clock_buf_tck/gen_fpga_buf.gen_bufg.bufg_i/I]]]

set_clock_sense -negative ${lc_jtag_tck_inv_pin}
set_clock_sense -negative ${rv_jtag_tck_inv_pin}

set_output_delay -add_delay -clock_fall -clock jtag_tck -max 10.0 [get_ports IOR1]
set_output_delay -add_delay -clock_fall -clock jtag_tck -min -5.0 [get_ports IOR1]
set_input_delay  -add_delay -clock_fall -clock jtag_tck -min  0.0 [get_ports {IOR0 IOR2}]
set_input_delay  -add_delay -clock_fall -clock jtag_tck -max 15.0 [get_ports {IOR0 IOR2}]

## SPI clocks
set spi_dev_period 100.0
set spi_dev_half_period [expr ${spi_dev_period} / 2]
set spi_dev_board_skew  0.5
set spi_dev_board_delay 0.6
set spi_dev_in_delay_min [expr -2.0 - ${spi_dev_board_skew}]
set spi_dev_in_delay_max [expr  3.0 + ${spi_dev_board_skew}]
set spi_dev_out_hold      -5.0
set spi_dev_out_setup     [expr  5.0 + 2 * ${spi_dev_board_delay}]

create_clock -add -name clk_spi  -period ${spi_dev_period} \
    -waveform "0 ${spi_dev_half_period}" [get_ports SPI_DEV_CLK]
create_clock -name clk_spid_csb -period ${spi_dev_period} \
    -waveform "${spi_dev_half_period} [expr ${spi_dev_half_period} + 1]" \
    [get_ports SPI_DEV_CS_L]
set_clock_latency -source -min ${spi_dev_in_delay_min} [get_ports SPI_DEV_CS_L]
set_clock_latency -source -max ${spi_dev_in_delay_max} [get_ports SPI_DEV_CS_L]

set spi_dev_data [get_ports {SPI_DEV_D0 SPI_DEV_D1 SPI_DEV_D2 SPI_DEV_D3}]
set_input_delay -clock clk_spi -clock_fall -min ${spi_dev_in_delay_min} ${spi_dev_data} -add_delay
set_input_delay -clock clk_spi -clock_fall -max ${spi_dev_in_delay_max} ${spi_dev_data} -add_delay

set_output_delay -clock clk_spi -clock_fall -min ${spi_dev_out_hold}  ${spi_dev_data} -add_delay
set_output_delay -clock clk_spi -clock_fall -max ${spi_dev_out_setup} ${spi_dev_data} -add_delay

set_clock_sense -positive \
  [get_pins -filter {DIRECTION == OUT && IS_LEAF} -of_objects \
    [get_nets -segments -of_objects \
      [get_pins top_earlgrey/u_spi_device/u_passthrough/u_pt_sck_cg/gen_gate.gen_bufgce.u_bufgce/I0] \
    ] \
  ] \
  -clocks clk_spi

set_clock_sense -negative \
  [get_pins -filter {DIRECTION == OUT && IS_LEAF} -of_objects \
    [get_nets -segments -of_objects \
      [get_pins top_earlgrey/u_spi_device/u_clk_spi_out_buf/gen_fpga_buf.gen_bufr.bufr_i/I] \
    ] \
  ] \
  -clocks clk_spi

set_clock_sense -positive \
  [get_pins -filter {DIRECTION == OUT && IS_LEAF} -of_objects \
    [get_nets -segments -of_objects \
      [get_pins top_earlgrey/u_spi_device/u_clk_spi_in_buf/gen_fpga_buf.gen_bufr.bufr_i/I] \
    ] \
  ] \
  -clocks clk_spi

create_generated_clock -name clk_spi_in  -divide_by 1 \
    -source [get_ports SPI_DEV_CLK] [get_pins top_*/u_spi_device/u_clk_spi_in_buf/gen_fpga_buf.gen_bufr.bufr_i/O]
create_generated_clock -name clk_spi_out -divide_by 1 \
    -source [get_ports SPI_DEV_CLK] [get_pins top_*/u_spi_device/u_clk_spi_out_buf/gen_fpga_buf.gen_bufr.bufr_i/O] -invert

## SPI TPM constraints
set spi_tpm_period 125.00
create_clock -add -name clk_spi_tpm -period ${spi_tpm_period} [get_ports SPI_DEV_CLK]

set_clock_sense -negative \
  [get_pins -filter {DIRECTION == OUT && IS_LEAF} -of_objects \
    [get_nets -segments -of_objects \
      [get_pins top_earlgrey/u_spi_device/u_clk_spi_out_buf/gen_fpga_buf.gen_bufr.bufr_i/I] \
    ] \
  ] \
  -clocks clk_spi_tpm

set_clock_sense -positive \
  [get_pins -filter {DIRECTION == OUT && IS_LEAF} -of_objects \
    [get_nets -segments -of_objects \
      [get_pins top_earlgrey/u_spi_device/u_clk_spi_in_buf/gen_fpga_buf.gen_bufr.bufr_i/I] \
    ] \
  ] \
  -clocks clk_spi_tpm

set_input_delay -clock clk_spi_tpm -clock_fall -min ${spi_dev_in_delay_min} \
    ${spi_dev_data} -add_delay
set_input_delay -clock clk_spi_tpm -clock_fall -max ${spi_dev_in_delay_max} \
    ${spi_dev_data} -add_delay

set_input_delay -clock clk_spi_tpm -clock_fall -min ${spi_dev_in_delay_min} \
    [get_ports ${all_muxed_ports}] -add_delay
set_input_delay -clock clk_spi_tpm -clock_fall -max ${spi_dev_in_delay_max} \
    [get_ports ${all_muxed_ports}] -add_delay

set_output_delay -clock clk_spi_tpm -min ${spi_dev_out_hold}  ${spi_dev_data} -add_delay
set_output_delay -clock clk_spi_tpm -max ${spi_dev_out_setup} ${spi_dev_data} -add_delay

create_generated_clock -name clk_spi_tpm_in -divide_by 1 -add -master_clock clk_spi_tpm \
    -source [get_ports SPI_DEV_CLK] [get_pins top_*/u_spi_device/u_clk_spi_in_buf/gen_fpga_buf.gen_bufr.bufr_i/O]
create_generated_clock -name clk_spi_tpm_out -divide_by 1 -add -master_clock clk_spi_tpm \
    -source [get_ports SPI_DEV_CLK] [get_pins top_*/u_spi_device/u_clk_spi_out_buf/gen_fpga_buf.gen_bufr.bufr_i/O] -invert

## -------------------------------------------------------------------------
## GHOSTED LOGIC - SPI PASSTHROUGH AND SPI HOST 
## (Commented out to prevent Vivado crashes on unmapped ports)
## -------------------------------------------------------------------------
 create_generated_clock -name clk_spi_pt -divide_by 1 -source [get_ports SPI_DEV_CLK] [get_ports SPI_HOST_CLK]
 set spi_pt_data [get_ports {SPI_HOST_D0 SPI_HOST_D1 SPI_HOST_D2 SPI_HOST_D3}]
 set spi_host_board_skew 0.5
 set spi_host_board_delay 0.6
 set spi_host_out_hold      [expr -3.0 - ${spi_host_board_skew}]
 set spi_host_out_setup     [expr  3.0 + ${spi_host_board_skew}]
 set spi_host_in_delay_min 0
 set spi_host_in_delay_max [expr  9.0 + 2 * ${spi_host_board_delay}]

 set_output_delay -clock clk_spi_pt -min ${spi_host_out_hold}  ${spi_pt_data} -add_delay
 set_output_delay -clock clk_spi_pt -max ${spi_host_out_setup} ${spi_pt_data} -add_delay
 set_output_delay -clock clk_spi_pt -min ${spi_host_out_hold}  [get_ports SPI_HOST_CS_L] -add_delay
 set_output_delay -clock clk_spi_pt -max ${spi_host_out_setup} [get_ports SPI_HOST_CS_L] -add_delay
 set_input_delay  -clock clk_spi_pt -clock_fall -min ${spi_host_in_delay_min} ${spi_pt_data} -add_delay
 set_input_delay  -clock clk_spi_pt -clock_fall -max ${spi_host_in_delay_max} ${spi_pt_data} -add_delay

set spi_host_0_peri [get_pins top_earlgrey/u_clkmgr_aon/u_clk_io_peri_cg/gen_gate.gen_bufgce.u_bufgce/O]

create_generated_clock -name clk_spi_host0 -divide_by 2 -add -source ${spi_host_0_peri} -master_clock [get_clocks -of_objects ${spi_host_0_peri}] [get_ports SPI_HOST_CLK]
set_multicycle_path -setup 1 -start -from [get_clocks -of_objects ${spi_host_0_peri}] -to [get_clocks clk_spi_host0]
set_multicycle_path -hold 1 -start -from [get_clocks -of_objects ${spi_host_0_peri}] -to [get_clocks clk_spi_host0]
set_multicycle_path -setup -end 2 -from [get_clocks clk_spi_host0] -to [get_clocks -of_objects ${spi_host_0_peri}]
set_multicycle_path -hold -end 2 -from [get_clocks clk_spi_host0] -to [get_clocks -of_objects ${spi_host_0_peri}]
set spi_host_0_data [get_ports {SPI_HOST_D0 SPI_HOST_D1 SPI_HOST_D2 SPI_HOST_D3 SPI_HOST_CS_L}]
set_output_delay -clock clk_spi_host0 -min ${spi_host_out_hold} ${spi_host_0_data} -add_delay
set_output_delay -clock clk_spi_host0 -max ${spi_host_out_setup} ${spi_host_0_data} -add_delay
set_input_delay  -clock clk_spi_host0 -clock_fall -min ${spi_host_in_delay_min} ${spi_host_0_data} -add_delay
set_input_delay  -clock clk_spi_host0 -clock_fall -max ${spi_host_in_delay_max} ${spi_host_0_data} -add_delay

## Set asynchronous clock groups
set_clock_groups -asynchronous \
    -group clk_main \
    -group clk_usb_48 \
    -group clk_aon \
    -group {clk_io} \
    -group clk_io_div2 \
    -group clk_io_div4 \
    -group [get_clocks -include_generated_clocks jtag_tck] \
    -group {clk_spi clk_spi_in clk_spi_out clk_spid_csb clk_spi_tpm clk_spi_tpm_in clk_spi_tpm_out clk_spi_pt} \
    -group {clk_spi_host0} \
    -group sys_clk_pin

set spi_dev_csb_clk_q_min -5.0
set spi_dev_csb_clk_q_max 30.0
set spi_dev_csb_out_delay_min [expr 0 - ${spi_dev_csb_clk_q_min}]
set spi_dev_csb_out_delay_max [expr ${spi_dev_period} - ${spi_dev_csb_clk_q_max}]
set_output_delay -clock clk_spid_csb -add_delay -min ${spi_dev_csb_out_delay_min} \
    ${spi_dev_data}
set_output_delay -clock clk_spid_csb -add_delay -max ${spi_dev_csb_out_delay_max} \
    ${spi_dev_data}

set_clock_groups -logically_exclusive -group clk_spi -group clk_spid_csb
set_false_path -from [get_clocks {clk_spi_in clk_spi_out}] -through ${spi_dev_data} \
    -to [get_clocks clk_spid_csb]

set_max_delay -datapath_only -from [get_clocks clk_spid_csb] -to [get_clocks clk_spi_host0] [expr ${spi_dev_half_period} / 2]

set_multicycle_path -hold -end -from [get_clocks clk_spid_csb] \
    -to [get_clocks clk_spi_out] 1
set_multicycle_path -hold -end -from [get_clocks clk_spi_tpm] \
    -through [get_ports ${all_muxed_ports}] \
    -to [get_clocks clk_spi_tpm_out] 1

## USB constraints
set_false_path -from ${clks_48_unbuf} -to [get_pins u_ast/u_usb_clk/u_ref_pulse_sync/u_sync*/u_sync_1/q_o_reg[0]/D]
## --- START OF UNIFIED SPI & CONGESTION FIXES ---

## 1. CONGESTION FIX: Promote Pinmux and JTAG "Dirt Roads" to Global Clock Highways
set_property CLOCK_BUFFER_TYPE BUFG [get_nets -of_objects [get_pins -hierarchical -filter {NAME =~ *u_csb_buf_i_1/O}]]
set_property CLOCK_BUFFER_TYPE BUFG [get_nets -of_objects [get_pins -hierarchical -filter {NAME =~ *td_o_i_2__0/O}]]
set_property CLOCK_BUFFER_TYPE BUFG [get_nets -of_objects [get_pins -hierarchical -filter {NAME =~ *FSM_onehot_tap_state_q[15]_i_2__0/O}]]

## 2. SPI MODE ISOLATION: Standard, TPM, and Passthrough modes cannot run simultaneously
set_clock_groups -logically_exclusive \
    -group [get_clocks -include_generated_clocks clk_spi] \
    -group [get_clocks -include_generated_clocks clk_spi_tpm] \
    -group [get_clocks -include_generated_clocks clk_spi_pt]

## 3. THE NUCLEAR OPTION: Completely isolate the CS clock domain from TPM/PT domains globally
set_clock_groups -asynchronous \
    -group [get_clocks -include_generated_clocks clk_spid_csb] \
    -group [get_clocks -include_generated_clocks {clk_spi_tpm clk_spi_pt}]

## 4. PHYSICAL PORT SEVERING: Prevent Vivado from timing the IO pads against the TPM/PT clocks
set_false_path -through [get_ports {SPI_DEV_CS_L SPI_DEV_D0 SPI_DEV_D1 SPI_DEV_D2 SPI_DEV_D3}] -to [get_clocks -include_generated_clocks {clk_spi_tpm clk_spi_pt}]
set_false_path -from [get_clocks -include_generated_clocks {clk_spi_tpm clk_spi_pt}] -through [get_ports {SPI_DEV_CS_L SPI_DEV_D0 SPI_DEV_D1 SPI_DEV_D2 SPI_DEV_D3}]

## --- END OF UNIFIED SPI & CONGESTION FIXES ---
set_input_delay -clock ${clks_48_unbuf} -min 3 [get_ports {IO_USB_DP_RX IO_USB_DN_RX IO_USB_D_RX}]
set_input_delay -clock ${clks_48_unbuf} -add_delay -max 17 [get_ports {IO_USB_DP_RX IO_USB_DN_RX IO_USB_D_RX}]

set usb_embed_out_clk [create_generated_clock -name usb_embed_out_clk -source [get_pin clkgen/pll/CLKOUT1] -multiply_by 1 [get_ports IO_USB_OE_N]]
set_false_path -from [get_clocks -include_generated_clocks clk_io_div4] -to ${usb_embed_out_clk}
set_output_delay -min -clock ${usb_embed_out_clk} 7 [get_ports {IO_USB_DP_TX IO_USB_DN_TX}]
set_output_delay -max -clock ${usb_embed_out_clk} 14 [get_ports {IO_USB_DP_TX IO_USB_DN_TX}] -add_delay


