// Copyright lowRISC contributors (OpenTitan project).
// Licensed under the Apache License, Version 2.0, see LICENSE for details.
// SPDX-License-Identifier: Apache-2.0
//
// ------------------- W A R N I N G: A U T O - G E N E R A T E D   C O D E !! -------------------//
// PLEASE DO NOT HAND-EDIT THIS FILE. IT HAS BEEN AUTO-GENERATED WITH THE FOLLOWING COMMAND:
//
// util/topgen.py -t hw/top_earlgrey/data/top_earlgrey.hjson
//                -o hw/top_earlgrey/

package top_earlgrey_pkg;
  /**
   * Peripheral base address for uart0 in top earlgrey.
   */
  parameter int unsigned TOP_EARLGREY_UART0_BASE_ADDR = 32'h40000000;

  /**
   * Peripheral size in bytes for uart0 in top earlgrey.
   */
  parameter int unsigned TOP_EARLGREY_UART0_SIZE_BYTES = 32'h40;

  /**
   * Peripheral base address for gpio in top earlgrey.
   */
  parameter int unsigned TOP_EARLGREY_GPIO_BASE_ADDR = 32'h40040000;

  /**
   * Peripheral size in bytes for gpio in top earlgrey.
   */
  parameter int unsigned TOP_EARLGREY_GPIO_SIZE_BYTES = 32'h80;

  /**
   * Peripheral base address for spi_device in top earlgrey.
   */
  parameter int unsigned TOP_EARLGREY_SPI_DEVICE_BASE_ADDR = 32'h40050000;

  /**
   * Peripheral size in bytes for spi_device in top earlgrey.
   */
  parameter int unsigned TOP_EARLGREY_SPI_DEVICE_SIZE_BYTES = 32'h2000;

  /**
   * Peripheral base address for rv_timer in top earlgrey.
   */
  parameter int unsigned TOP_EARLGREY_RV_TIMER_BASE_ADDR = 32'h40100000;

  /**
   * Peripheral size in bytes for rv_timer in top earlgrey.
   */
  parameter int unsigned TOP_EARLGREY_RV_TIMER_SIZE_BYTES = 32'h200;

  /**
   * Peripheral base address for core device on otp_ctrl in top earlgrey.
   */
  parameter int unsigned TOP_EARLGREY_OTP_CTRL_CORE_BASE_ADDR = 32'h40130000;

  /**
   * Peripheral size in bytes for core device on otp_ctrl in top earlgrey.
   */
  parameter int unsigned TOP_EARLGREY_OTP_CTRL_CORE_SIZE_BYTES = 32'h1000;

  /**
   * Peripheral base address for prim device on otp_macro in top earlgrey.
   */
  parameter int unsigned TOP_EARLGREY_OTP_MACRO_PRIM_BASE_ADDR = 32'h40138000;

  /**
   * Peripheral size in bytes for prim device on otp_macro in top earlgrey.
   */
  parameter int unsigned TOP_EARLGREY_OTP_MACRO_PRIM_SIZE_BYTES = 32'h20;

  /**
   * Peripheral base address for regs device on lc_ctrl in top earlgrey.
   */
  parameter int unsigned TOP_EARLGREY_LC_CTRL_REGS_BASE_ADDR = 32'h40140000;

  /**
   * Peripheral size in bytes for regs device on lc_ctrl in top earlgrey.
   */
  parameter int unsigned TOP_EARLGREY_LC_CTRL_REGS_SIZE_BYTES = 32'h100;

  /**
   * Peripheral base address for alert_handler in top earlgrey.
   */
  parameter int unsigned TOP_EARLGREY_ALERT_HANDLER_BASE_ADDR = 32'h40150000;

  /**
   * Peripheral size in bytes for alert_handler in top earlgrey.
   */
  parameter int unsigned TOP_EARLGREY_ALERT_HANDLER_SIZE_BYTES = 32'h800;

  /**
   * Peripheral base address for spi_host0 in top earlgrey.
   */
  parameter int unsigned TOP_EARLGREY_SPI_HOST0_BASE_ADDR = 32'h40300000;

  /**
   * Peripheral size in bytes for spi_host0 in top earlgrey.
   */
  parameter int unsigned TOP_EARLGREY_SPI_HOST0_SIZE_BYTES = 32'h40;

  /**
   * Peripheral base address for usbdev in top earlgrey.
   */
  parameter int unsigned TOP_EARLGREY_USBDEV_BASE_ADDR = 32'h40320000;

  /**
   * Peripheral size in bytes for usbdev in top earlgrey.
   */
  parameter int unsigned TOP_EARLGREY_USBDEV_SIZE_BYTES = 32'h1000;

  /**
   * Peripheral base address for pwrmgr_aon in top earlgrey.
   */
  parameter int unsigned TOP_EARLGREY_PWRMGR_AON_BASE_ADDR = 32'h40400000;

  /**
   * Peripheral size in bytes for pwrmgr_aon in top earlgrey.
   */
  parameter int unsigned TOP_EARLGREY_PWRMGR_AON_SIZE_BYTES = 32'h80;

  /**
   * Peripheral base address for rstmgr_aon in top earlgrey.
   */
  parameter int unsigned TOP_EARLGREY_RSTMGR_AON_BASE_ADDR = 32'h40410000;

  /**
   * Peripheral size in bytes for rstmgr_aon in top earlgrey.
   */
  parameter int unsigned TOP_EARLGREY_RSTMGR_AON_SIZE_BYTES = 32'h80;

  /**
   * Peripheral base address for clkmgr_aon in top earlgrey.
   */
  parameter int unsigned TOP_EARLGREY_CLKMGR_AON_BASE_ADDR = 32'h40420000;

  /**
   * Peripheral size in bytes for clkmgr_aon in top earlgrey.
   */
  parameter int unsigned TOP_EARLGREY_CLKMGR_AON_SIZE_BYTES = 32'h80;

  /**
   * Peripheral base address for sysrst_ctrl_aon in top earlgrey.
   */
  parameter int unsigned TOP_EARLGREY_SYSRST_CTRL_AON_BASE_ADDR = 32'h40430000;

  /**
   * Peripheral size in bytes for sysrst_ctrl_aon in top earlgrey.
   */
  parameter int unsigned TOP_EARLGREY_SYSRST_CTRL_AON_SIZE_BYTES = 32'h100;

  /**
   * Peripheral base address for adc_ctrl_aon in top earlgrey.
   */
  parameter int unsigned TOP_EARLGREY_ADC_CTRL_AON_BASE_ADDR = 32'h40440000;

  /**
   * Peripheral size in bytes for adc_ctrl_aon in top earlgrey.
   */
  parameter int unsigned TOP_EARLGREY_ADC_CTRL_AON_SIZE_BYTES = 32'h80;

  /**
   * Peripheral base address for pinmux_aon in top earlgrey.
   */
  parameter int unsigned TOP_EARLGREY_PINMUX_AON_BASE_ADDR = 32'h40460000;

  /**
   * Peripheral size in bytes for pinmux_aon in top earlgrey.
   */
  parameter int unsigned TOP_EARLGREY_PINMUX_AON_SIZE_BYTES = 32'h1000;

  /**
   * Peripheral base address for aon_timer_aon in top earlgrey.
   */
  parameter int unsigned TOP_EARLGREY_AON_TIMER_AON_BASE_ADDR = 32'h40470000;

  /**
   * Peripheral size in bytes for aon_timer_aon in top earlgrey.
   */
  parameter int unsigned TOP_EARLGREY_AON_TIMER_AON_SIZE_BYTES = 32'h40;

  /**
   * Peripheral base address for ast in top earlgrey.
   */
  parameter int unsigned TOP_EARLGREY_AST_BASE_ADDR = 32'h40480000;

  /**
   * Peripheral size in bytes for ast in top earlgrey.
   */
  parameter int unsigned TOP_EARLGREY_AST_SIZE_BYTES = 32'h400;

  /**
   * Peripheral base address for sensor_ctrl_aon in top earlgrey.
   */
  parameter int unsigned TOP_EARLGREY_SENSOR_CTRL_AON_BASE_ADDR = 32'h40490000;

  /**
   * Peripheral size in bytes for sensor_ctrl_aon in top earlgrey.
   */
  parameter int unsigned TOP_EARLGREY_SENSOR_CTRL_AON_SIZE_BYTES = 32'h80;

  /**
   * Peripheral base address for regs device on sram_ctrl_ret_aon in top earlgrey.
   */
  parameter int unsigned TOP_EARLGREY_SRAM_CTRL_RET_AON_REGS_BASE_ADDR = 32'h40500000;

  /**
   * Peripheral size in bytes for regs device on sram_ctrl_ret_aon in top earlgrey.
   */
  parameter int unsigned TOP_EARLGREY_SRAM_CTRL_RET_AON_REGS_SIZE_BYTES = 32'h40;

  /**
   * Peripheral base address for core device on flash_ctrl in top earlgrey.
   */
  parameter int unsigned TOP_EARLGREY_FLASH_CTRL_CORE_BASE_ADDR = 32'h41000000;

  /**
   * Peripheral size in bytes for core device on flash_ctrl in top earlgrey.
   */
  parameter int unsigned TOP_EARLGREY_FLASH_CTRL_CORE_SIZE_BYTES = 32'h200;

  /**
   * Peripheral base address for prim device on flash_ctrl in top earlgrey.
   */
  parameter int unsigned TOP_EARLGREY_FLASH_CTRL_PRIM_BASE_ADDR = 32'h41008000;

  /**
   * Peripheral size in bytes for prim device on flash_ctrl in top earlgrey.
   */
  parameter int unsigned TOP_EARLGREY_FLASH_CTRL_PRIM_SIZE_BYTES = 32'h80;

  /**
   * Peripheral base address for regs device on rv_dm in top earlgrey.
   */
  parameter int unsigned TOP_EARLGREY_RV_DM_REGS_BASE_ADDR = 32'h41200000;

  /**
   * Peripheral size in bytes for regs device on rv_dm in top earlgrey.
   */
  parameter int unsigned TOP_EARLGREY_RV_DM_REGS_SIZE_BYTES = 32'h10;

  /**
   * Peripheral base address for mem device on rv_dm in top earlgrey.
   */
  parameter int unsigned TOP_EARLGREY_RV_DM_MEM_BASE_ADDR = 32'h10000;

  /**
   * Peripheral size in bytes for mem device on rv_dm in top earlgrey.
   */
  parameter int unsigned TOP_EARLGREY_RV_DM_MEM_SIZE_BYTES = 32'h1000;

  /**
   * Peripheral base address for rv_plic in top earlgrey.
   */
  parameter int unsigned TOP_EARLGREY_RV_PLIC_BASE_ADDR = 32'h48000000;

  /**
   * Peripheral size in bytes for rv_plic in top earlgrey.
   */
  parameter int unsigned TOP_EARLGREY_RV_PLIC_SIZE_BYTES = 32'h8000000;

  /**
   * Peripheral base address for aes in top earlgrey.
   */
  parameter int unsigned TOP_EARLGREY_AES_BASE_ADDR = 32'h41100000;

  /**
   * Peripheral size in bytes for aes in top earlgrey.
   */
  parameter int unsigned TOP_EARLGREY_AES_SIZE_BYTES = 32'h100;

  /**
   * Peripheral base address for hmac in top earlgrey.
   */
  parameter int unsigned TOP_EARLGREY_HMAC_BASE_ADDR = 32'h41110000;

  /**
   * Peripheral size in bytes for hmac in top earlgrey.
   */
  parameter int unsigned TOP_EARLGREY_HMAC_SIZE_BYTES = 32'h2000;

  /**
   * Peripheral base address for kmac in top earlgrey.
   */
  parameter int unsigned TOP_EARLGREY_KMAC_BASE_ADDR = 32'h41120000;

  /**
   * Peripheral size in bytes for kmac in top earlgrey.
   */
  parameter int unsigned TOP_EARLGREY_KMAC_SIZE_BYTES = 32'h1000;

  /**
   * Peripheral base address for otbn in top earlgrey.
   */
  parameter int unsigned TOP_EARLGREY_OTBN_BASE_ADDR = 32'h41130000;

  /**
   * Peripheral size in bytes for otbn in top earlgrey.
   */
  parameter int unsigned TOP_EARLGREY_OTBN_SIZE_BYTES = 32'h10000;

  /**
   * Peripheral base address for keymgr in top earlgrey.
   */
  parameter int unsigned TOP_EARLGREY_KEYMGR_BASE_ADDR = 32'h41140000;

  /**
   * Peripheral size in bytes for keymgr in top earlgrey.
   */
  parameter int unsigned TOP_EARLGREY_KEYMGR_SIZE_BYTES = 32'h100;

  /**
   * Peripheral base address for csrng in top earlgrey.
   */
  parameter int unsigned TOP_EARLGREY_CSRNG_BASE_ADDR = 32'h41150000;

  /**
   * Peripheral size in bytes for csrng in top earlgrey.
   */
  parameter int unsigned TOP_EARLGREY_CSRNG_SIZE_BYTES = 32'h80;

  /**
   * Peripheral base address for entropy_src in top earlgrey.
   */
  parameter int unsigned TOP_EARLGREY_ENTROPY_SRC_BASE_ADDR = 32'h41160000;

  /**
   * Peripheral size in bytes for entropy_src in top earlgrey.
   */
  parameter int unsigned TOP_EARLGREY_ENTROPY_SRC_SIZE_BYTES = 32'h100;

  /**
   * Peripheral base address for edn0 in top earlgrey.
   */
  parameter int unsigned TOP_EARLGREY_EDN0_BASE_ADDR = 32'h41170000;

  /**
   * Peripheral size in bytes for edn0 in top earlgrey.
   */
  parameter int unsigned TOP_EARLGREY_EDN0_SIZE_BYTES = 32'h80;

  /**
   * Peripheral base address for edn1 in top earlgrey.
   */
  parameter int unsigned TOP_EARLGREY_EDN1_BASE_ADDR = 32'h41180000;

  /**
   * Peripheral size in bytes for edn1 in top earlgrey.
   */
  parameter int unsigned TOP_EARLGREY_EDN1_SIZE_BYTES = 32'h80;

  /**
   * Peripheral base address for regs device on sram_ctrl_main in top earlgrey.
   */
  parameter int unsigned TOP_EARLGREY_SRAM_CTRL_MAIN_REGS_BASE_ADDR = 32'h411C0000;

  /**
   * Peripheral size in bytes for regs device on sram_ctrl_main in top earlgrey.
   */
  parameter int unsigned TOP_EARLGREY_SRAM_CTRL_MAIN_REGS_SIZE_BYTES = 32'h40;

  /**
   * Peripheral base address for regs device on rom_ctrl in top earlgrey.
   */
  parameter int unsigned TOP_EARLGREY_ROM_CTRL_REGS_BASE_ADDR = 32'h411E0000;

  /**
   * Peripheral size in bytes for regs device on rom_ctrl in top earlgrey.
   */
  parameter int unsigned TOP_EARLGREY_ROM_CTRL_REGS_SIZE_BYTES = 32'h80;

  /**
   * Peripheral base address for cfg device on rv_core_ibex in top earlgrey.
   */
  parameter int unsigned TOP_EARLGREY_RV_CORE_IBEX_CFG_BASE_ADDR = 32'h411F0000;

  /**
   * Peripheral size in bytes for cfg device on rv_core_ibex in top earlgrey.
   */
  parameter int unsigned TOP_EARLGREY_RV_CORE_IBEX_CFG_SIZE_BYTES = 32'h100;

  /**
   * Memory base address for ram memory on sram_ctrl_ret_aon in top earlgrey.
   */
  parameter int unsigned TOP_EARLGREY_SRAM_CTRL_RET_AON_RAM_BASE_ADDR = 32'h40600000;

  /**
   * Memory size for ram memory on sram_ctrl_ret_aon in top earlgrey.
   */
  parameter int unsigned TOP_EARLGREY_SRAM_CTRL_RET_AON_RAM_SIZE_BYTES = 32'h1000;

  /**
   * Memory base address for mem memory on flash_ctrl in top earlgrey.
   */
  parameter int unsigned TOP_EARLGREY_FLASH_CTRL_MEM_BASE_ADDR = 32'h20000000;

  /**
   * Memory size for mem memory on flash_ctrl in top earlgrey.
   */
  parameter int unsigned TOP_EARLGREY_FLASH_CTRL_MEM_SIZE_BYTES = 32'h100000;

  /**
   * Memory base address for ram memory on sram_ctrl_main in top earlgrey.
   */
  parameter int unsigned TOP_EARLGREY_SRAM_CTRL_MAIN_RAM_BASE_ADDR = 32'h10000000;

  /**
   * Memory size for ram memory on sram_ctrl_main in top earlgrey.
   */
  parameter int unsigned TOP_EARLGREY_SRAM_CTRL_MAIN_RAM_SIZE_BYTES = 32'h20000;

  /**
   * Memory base address for rom memory on rom_ctrl in top earlgrey.
   */
  parameter int unsigned TOP_EARLGREY_ROM_CTRL_ROM_BASE_ADDR = 32'h8000;

  /**
   * Memory size for rom memory on rom_ctrl in top earlgrey.
   */
  parameter int unsigned TOP_EARLGREY_ROM_CTRL_ROM_SIZE_BYTES = 32'h8000;


  // Enumeration of alert modules
  typedef enum int unsigned {
    TopEarlgreyAlertPeripheralUart0 = 0,
    TopEarlgreyAlertPeripheralGpio = 1,
    TopEarlgreyAlertPeripheralSpiDevice = 2,
    TopEarlgreyAlertPeripheralRvTimer = 3,
    TopEarlgreyAlertPeripheralOtpCtrl = 4,
    TopEarlgreyAlertPeripheralLcCtrl = 5,
    TopEarlgreyAlertPeripheralSpiHost0 = 6,
    TopEarlgreyAlertPeripheralUsbdev = 7,
    TopEarlgreyAlertPeripheralPwrmgrAon = 8,
    TopEarlgreyAlertPeripheralRstmgrAon = 9,
    TopEarlgreyAlertPeripheralClkmgrAon = 10,
    TopEarlgreyAlertPeripheralSysrstCtrlAon = 11,
    TopEarlgreyAlertPeripheralAdcCtrlAon = 12,
    TopEarlgreyAlertPeripheralPinmuxAon = 13,
    TopEarlgreyAlertPeripheralAonTimerAon = 14,
    TopEarlgreyAlertPeripheralSensorCtrlAon = 15,
    TopEarlgreyAlertPeripheralSramCtrlRetAon = 16,
    TopEarlgreyAlertPeripheralFlashCtrl = 17,
    TopEarlgreyAlertPeripheralRvDm = 18,
    TopEarlgreyAlertPeripheralRvPlic = 19,
    TopEarlgreyAlertPeripheralAes = 20,
    TopEarlgreyAlertPeripheralHmac = 21,
    TopEarlgreyAlertPeripheralKmac = 22,
    TopEarlgreyAlertPeripheralOtbn = 23,
    TopEarlgreyAlertPeripheralKeymgr = 24,
    TopEarlgreyAlertPeripheralCsrng = 25,
    TopEarlgreyAlertPeripheralEntropySrc = 26,
    TopEarlgreyAlertPeripheralEdn0 = 27,
    TopEarlgreyAlertPeripheralEdn1 = 28,
    TopEarlgreyAlertPeripheralSramCtrlMain = 29,
    TopEarlgreyAlertPeripheralRomCtrl = 30,
    TopEarlgreyAlertPeripheralRvCoreIbex = 31,
    TopEarlgreyAlertPeripheralCount
  } alert_peripheral_e;

  // Enumeration of alerts
  typedef enum int unsigned {
    TopEarlgreyAlertIdUart0FatalFault = 0,
    TopEarlgreyAlertIdGpioFatalFault = 1,
    TopEarlgreyAlertIdSpiDeviceFatalFault = 2,
    TopEarlgreyAlertIdRvTimerFatalFault = 3,
    TopEarlgreyAlertIdOtpCtrlFatalMacroError = 4,
    TopEarlgreyAlertIdOtpCtrlFatalCheckError = 5,
    TopEarlgreyAlertIdOtpCtrlFatalBusIntegError = 6,
    TopEarlgreyAlertIdOtpCtrlFatalPrimOtpAlert = 7,
    TopEarlgreyAlertIdOtpCtrlRecovPrimOtpAlert = 8,
    TopEarlgreyAlertIdLcCtrlFatalProgError = 9,
    TopEarlgreyAlertIdLcCtrlFatalStateError = 10,
    TopEarlgreyAlertIdLcCtrlFatalBusIntegError = 11,
    TopEarlgreyAlertIdSpiHost0FatalFault = 12,
    TopEarlgreyAlertIdUsbdevFatalFault = 13,
    TopEarlgreyAlertIdPwrmgrAonFatalFault = 14,
    TopEarlgreyAlertIdRstmgrAonFatalFault = 15,
    TopEarlgreyAlertIdRstmgrAonFatalCnstyFault = 16,
    TopEarlgreyAlertIdClkmgrAonRecovFault = 17,
    TopEarlgreyAlertIdClkmgrAonFatalFault = 18,
    TopEarlgreyAlertIdSysrstCtrlAonFatalFault = 19,
    TopEarlgreyAlertIdAdcCtrlAonFatalFault = 20,
    TopEarlgreyAlertIdPinmuxAonFatalFault = 21,
    TopEarlgreyAlertIdAonTimerAonFatalFault = 22,
    TopEarlgreyAlertIdSensorCtrlAonRecovAlert = 23,
    TopEarlgreyAlertIdSensorCtrlAonFatalAlert = 24,
    TopEarlgreyAlertIdSramCtrlRetAonFatalError = 25,
    TopEarlgreyAlertIdFlashCtrlRecovErr = 26,
    TopEarlgreyAlertIdFlashCtrlFatalStdErr = 27,
    TopEarlgreyAlertIdFlashCtrlFatalErr = 28,
    TopEarlgreyAlertIdFlashCtrlFatalPrimFlashAlert = 29,
    TopEarlgreyAlertIdFlashCtrlRecovPrimFlashAlert = 30,
    TopEarlgreyAlertIdRvDmFatalFault = 31,
    TopEarlgreyAlertIdRvPlicFatalFault = 32,
    TopEarlgreyAlertIdAesRecovCtrlUpdateErr = 33,
    TopEarlgreyAlertIdAesFatalFault = 34,
    TopEarlgreyAlertIdHmacFatalFault = 35,
    TopEarlgreyAlertIdKmacRecovOperationErr = 36,
    TopEarlgreyAlertIdKmacFatalFaultErr = 37,
    TopEarlgreyAlertIdOtbnFatal = 38,
    TopEarlgreyAlertIdOtbnRecov = 39,
    TopEarlgreyAlertIdKeymgrRecovOperationErr = 40,
    TopEarlgreyAlertIdKeymgrFatalFaultErr = 41,
    TopEarlgreyAlertIdCsrngRecovAlert = 42,
    TopEarlgreyAlertIdCsrngFatalAlert = 43,
    TopEarlgreyAlertIdEntropySrcRecovAlert = 44,
    TopEarlgreyAlertIdEntropySrcFatalAlert = 45,
    TopEarlgreyAlertIdEdn0RecovAlert = 46,
    TopEarlgreyAlertIdEdn0FatalAlert = 47,
    TopEarlgreyAlertIdEdn1RecovAlert = 48,
    TopEarlgreyAlertIdEdn1FatalAlert = 49,
    TopEarlgreyAlertIdSramCtrlMainFatalError = 50,
    TopEarlgreyAlertIdRomCtrlFatal = 51,
    TopEarlgreyAlertIdRvCoreIbexFatalSwErr = 52,
    TopEarlgreyAlertIdRvCoreIbexRecovSwErr = 53,
    TopEarlgreyAlertIdRvCoreIbexFatalHwErr = 54,
    TopEarlgreyAlertIdRvCoreIbexRecovHwErr = 55,
    TopEarlgreyAlertIdCount
  } alert_id_e;

  // Enumeration of interrupts
  typedef enum int unsigned {
    TopEarlgreyPlicIrqIdNone = 0,
    TopEarlgreyPlicIrqIdUart0TxWatermark = 1,
    TopEarlgreyPlicIrqIdUart0RxWatermark = 2,
    TopEarlgreyPlicIrqIdUart0TxDone = 3,
    TopEarlgreyPlicIrqIdUart0RxOverflow = 4,
    TopEarlgreyPlicIrqIdUart0RxFrameErr = 5,
    TopEarlgreyPlicIrqIdUart0RxBreakErr = 6,
    TopEarlgreyPlicIrqIdUart0RxTimeout = 7,
    TopEarlgreyPlicIrqIdUart0RxParityErr = 8,
    TopEarlgreyPlicIrqIdUart0TxEmpty = 9,
    TopEarlgreyPlicIrqIdGpioGpio0 = 10,
    TopEarlgreyPlicIrqIdGpioGpio1 = 11,
    TopEarlgreyPlicIrqIdGpioGpio2 = 12,
    TopEarlgreyPlicIrqIdGpioGpio3 = 13,
    TopEarlgreyPlicIrqIdGpioGpio4 = 14,
    TopEarlgreyPlicIrqIdGpioGpio5 = 15,
    TopEarlgreyPlicIrqIdGpioGpio6 = 16,
    TopEarlgreyPlicIrqIdGpioGpio7 = 17,
    TopEarlgreyPlicIrqIdGpioGpio8 = 18,
    TopEarlgreyPlicIrqIdGpioGpio9 = 19,
    TopEarlgreyPlicIrqIdGpioGpio10 = 20,
    TopEarlgreyPlicIrqIdGpioGpio11 = 21,
    TopEarlgreyPlicIrqIdGpioGpio12 = 22,
    TopEarlgreyPlicIrqIdGpioGpio13 = 23,
    TopEarlgreyPlicIrqIdGpioGpio14 = 24,
    TopEarlgreyPlicIrqIdGpioGpio15 = 25,
    TopEarlgreyPlicIrqIdGpioGpio16 = 26,
    TopEarlgreyPlicIrqIdGpioGpio17 = 27,
    TopEarlgreyPlicIrqIdGpioGpio18 = 28,
    TopEarlgreyPlicIrqIdGpioGpio19 = 29,
    TopEarlgreyPlicIrqIdGpioGpio20 = 30,
    TopEarlgreyPlicIrqIdGpioGpio21 = 31,
    TopEarlgreyPlicIrqIdGpioGpio22 = 32,
    TopEarlgreyPlicIrqIdGpioGpio23 = 33,
    TopEarlgreyPlicIrqIdGpioGpio24 = 34,
    TopEarlgreyPlicIrqIdGpioGpio25 = 35,
    TopEarlgreyPlicIrqIdGpioGpio26 = 36,
    TopEarlgreyPlicIrqIdGpioGpio27 = 37,
    TopEarlgreyPlicIrqIdGpioGpio28 = 38,
    TopEarlgreyPlicIrqIdGpioGpio29 = 39,
    TopEarlgreyPlicIrqIdGpioGpio30 = 40,
    TopEarlgreyPlicIrqIdGpioGpio31 = 41,
    TopEarlgreyPlicIrqIdSpiDeviceUploadCmdfifoNotEmpty = 42,
    TopEarlgreyPlicIrqIdSpiDeviceUploadPayloadNotEmpty = 43,
    TopEarlgreyPlicIrqIdSpiDeviceUploadPayloadOverflow = 44,
    TopEarlgreyPlicIrqIdSpiDeviceReadbufWatermark = 45,
    TopEarlgreyPlicIrqIdSpiDeviceReadbufFlip = 46,
    TopEarlgreyPlicIrqIdSpiDeviceTpmHeaderNotEmpty = 47,
    TopEarlgreyPlicIrqIdSpiDeviceTpmRdfifoCmdEnd = 48,
    TopEarlgreyPlicIrqIdSpiDeviceTpmRdfifoDrop = 49,
    TopEarlgreyPlicIrqIdRvTimerTimerExpiredHart0Timer0 = 50,
    TopEarlgreyPlicIrqIdOtpCtrlOtpOperationDone = 51,
    TopEarlgreyPlicIrqIdOtpCtrlOtpError = 52,
    TopEarlgreyPlicIrqIdAlertHandlerClassa = 53,
    TopEarlgreyPlicIrqIdAlertHandlerClassb = 54,
    TopEarlgreyPlicIrqIdAlertHandlerClassc = 55,
    TopEarlgreyPlicIrqIdAlertHandlerClassd = 56,
    TopEarlgreyPlicIrqIdSpiHost0Error = 57,
    TopEarlgreyPlicIrqIdSpiHost0SpiEvent = 58,
    TopEarlgreyPlicIrqIdUsbdevPktReceived = 59,
    TopEarlgreyPlicIrqIdUsbdevPktSent = 60,
    TopEarlgreyPlicIrqIdUsbdevDisconnected = 61,
    TopEarlgreyPlicIrqIdUsbdevHostLost = 62,
    TopEarlgreyPlicIrqIdUsbdevLinkReset = 63,
    TopEarlgreyPlicIrqIdUsbdevLinkSuspend = 64,
    TopEarlgreyPlicIrqIdUsbdevLinkResume = 65,
    TopEarlgreyPlicIrqIdUsbdevAvOutEmpty = 66,
    TopEarlgreyPlicIrqIdUsbdevRxFull = 67,
    TopEarlgreyPlicIrqIdUsbdevAvOverflow = 68,
    TopEarlgreyPlicIrqIdUsbdevLinkInErr = 69,
    TopEarlgreyPlicIrqIdUsbdevRxCrcErr = 70,
    TopEarlgreyPlicIrqIdUsbdevRxPidErr = 71,
    TopEarlgreyPlicIrqIdUsbdevRxBitstuffErr = 72,
    TopEarlgreyPlicIrqIdUsbdevFrame = 73,
    TopEarlgreyPlicIrqIdUsbdevPowered = 74,
    TopEarlgreyPlicIrqIdUsbdevLinkOutErr = 75,
    TopEarlgreyPlicIrqIdUsbdevAvSetupEmpty = 76,
    TopEarlgreyPlicIrqIdPwrmgrAonWakeup = 77,
    TopEarlgreyPlicIrqIdSysrstCtrlAonEventDetected = 78,
    TopEarlgreyPlicIrqIdAdcCtrlAonMatchPending = 79,
    TopEarlgreyPlicIrqIdAonTimerAonWkupTimerExpired = 80,
    TopEarlgreyPlicIrqIdAonTimerAonWdogTimerBark = 81,
    TopEarlgreyPlicIrqIdSensorCtrlAonIoStatusChange = 82,
    TopEarlgreyPlicIrqIdSensorCtrlAonInitStatusChange = 83,
    TopEarlgreyPlicIrqIdFlashCtrlProgEmpty = 84,
    TopEarlgreyPlicIrqIdFlashCtrlProgLvl = 85,
    TopEarlgreyPlicIrqIdFlashCtrlRdFull = 86,
    TopEarlgreyPlicIrqIdFlashCtrlRdLvl = 87,
    TopEarlgreyPlicIrqIdFlashCtrlOpDone = 88,
    TopEarlgreyPlicIrqIdFlashCtrlCorrErr = 89,
    TopEarlgreyPlicIrqIdHmacHmacDone = 90,
    TopEarlgreyPlicIrqIdHmacFifoEmpty = 91,
    TopEarlgreyPlicIrqIdHmacHmacErr = 92,
    TopEarlgreyPlicIrqIdKmacKmacDone = 93,
    TopEarlgreyPlicIrqIdKmacFifoEmpty = 94,
    TopEarlgreyPlicIrqIdKmacKmacErr = 95,
    TopEarlgreyPlicIrqIdOtbnDone = 96,
    TopEarlgreyPlicIrqIdKeymgrOpDone = 97,
    TopEarlgreyPlicIrqIdCsrngCsCmdReqDone = 98,
    TopEarlgreyPlicIrqIdCsrngCsEntropyReq = 99,
    TopEarlgreyPlicIrqIdCsrngCsHwInstExc = 100,
    TopEarlgreyPlicIrqIdCsrngCsFatalErr = 101,
    TopEarlgreyPlicIrqIdEntropySrcEsEntropyValid = 102,
    TopEarlgreyPlicIrqIdEntropySrcEsHealthTestFailed = 103,
    TopEarlgreyPlicIrqIdEntropySrcEsObserveFifoReady = 104,
    TopEarlgreyPlicIrqIdEntropySrcEsFatalErr = 105,
    TopEarlgreyPlicIrqIdEdn0EdnCmdReqDone = 106,
    TopEarlgreyPlicIrqIdEdn0EdnFatalErr = 107,
    TopEarlgreyPlicIrqIdEdn1EdnCmdReqDone = 108,
    TopEarlgreyPlicIrqIdEdn1EdnFatalErr = 109,
    TopEarlgreyPlicIrqIdCount
  } interrupt_rv_plic_id_e;


  // Enumeration of IO power domains.
  // Only used in ASIC target.
  typedef enum logic [2:0] {
    IoBankVcc = 0,
    IoBankAvcc = 1,
    IoBankVioa = 2,
    IoBankViob = 3,
    IoBankCount = 4
  } pwr_dom_e;

  // Enumeration for MIO signals on the top-level.
  typedef enum int unsigned {
    MioInGpioGpio0 = 0,
    MioInGpioGpio1 = 1,
    MioInGpioGpio2 = 2,
    MioInGpioGpio3 = 3,
    MioInGpioGpio4 = 4,
    MioInGpioGpio5 = 5,
    MioInGpioGpio6 = 6,
    MioInGpioGpio7 = 7,
    MioInGpioGpio8 = 8,
    MioInGpioGpio9 = 9,
    MioInGpioGpio10 = 10,
    MioInGpioGpio11 = 11,
    MioInGpioGpio12 = 12,
    MioInGpioGpio13 = 13,
    MioInGpioGpio14 = 14,
    MioInGpioGpio15 = 15,
    MioInGpioGpio16 = 16,
    MioInGpioGpio17 = 17,
    MioInGpioGpio18 = 18,
    MioInGpioGpio19 = 19,
    MioInGpioGpio20 = 20,
    MioInGpioGpio21 = 21,
    MioInGpioGpio22 = 22,
    MioInGpioGpio23 = 23,
    MioInGpioGpio24 = 24,
    MioInGpioGpio25 = 25,
    MioInGpioGpio26 = 26,
    MioInGpioGpio27 = 27,
    MioInGpioGpio28 = 28,
    MioInGpioGpio29 = 29,
    MioInGpioGpio30 = 30,
    MioInGpioGpio31 = 31,
    MioInUart0Rx = 32,
    MioInSpiDeviceTpmCsb = 33,
    MioInFlashCtrlTck = 34,
    MioInFlashCtrlTms = 35,
    MioInFlashCtrlTdi = 36,
    MioInSysrstCtrlAonAcPresent = 37,
    MioInSysrstCtrlAonKey0In = 38,
    MioInSysrstCtrlAonKey1In = 39,
    MioInSysrstCtrlAonKey2In = 40,
    MioInSysrstCtrlAonPwrbIn = 41,
    MioInSysrstCtrlAonLidOpen = 42,
    MioInUsbdevSense = 43,
    MioInCount = 44
  } mio_in_e;

  typedef enum {
    MioOutGpioGpio0 = 0,
    MioOutGpioGpio1 = 1,
    MioOutGpioGpio2 = 2,
    MioOutGpioGpio3 = 3,
    MioOutGpioGpio4 = 4,
    MioOutGpioGpio5 = 5,
    MioOutGpioGpio6 = 6,
    MioOutGpioGpio7 = 7,
    MioOutGpioGpio8 = 8,
    MioOutGpioGpio9 = 9,
    MioOutGpioGpio10 = 10,
    MioOutGpioGpio11 = 11,
    MioOutGpioGpio12 = 12,
    MioOutGpioGpio13 = 13,
    MioOutGpioGpio14 = 14,
    MioOutGpioGpio15 = 15,
    MioOutGpioGpio16 = 16,
    MioOutGpioGpio17 = 17,
    MioOutGpioGpio18 = 18,
    MioOutGpioGpio19 = 19,
    MioOutGpioGpio20 = 20,
    MioOutGpioGpio21 = 21,
    MioOutGpioGpio22 = 22,
    MioOutGpioGpio23 = 23,
    MioOutGpioGpio24 = 24,
    MioOutGpioGpio25 = 25,
    MioOutGpioGpio26 = 26,
    MioOutGpioGpio27 = 27,
    MioOutGpioGpio28 = 28,
    MioOutGpioGpio29 = 29,
    MioOutGpioGpio30 = 30,
    MioOutGpioGpio31 = 31,
    MioOutUart0Tx = 32,
    MioOutFlashCtrlTdo = 33,
    MioOutSensorCtrlAonAstDebugOut0 = 34,
    MioOutSensorCtrlAonAstDebugOut1 = 35,
    MioOutSensorCtrlAonAstDebugOut2 = 36,
    MioOutSensorCtrlAonAstDebugOut3 = 37,
    MioOutSensorCtrlAonAstDebugOut4 = 38,
    MioOutSensorCtrlAonAstDebugOut5 = 39,
    MioOutSensorCtrlAonAstDebugOut6 = 40,
    MioOutSensorCtrlAonAstDebugOut7 = 41,
    MioOutSensorCtrlAonAstDebugOut8 = 42,
    MioOutOtpMacroTest0 = 43,
    MioOutSysrstCtrlAonBatDisable = 44,
    MioOutSysrstCtrlAonKey0Out = 45,
    MioOutSysrstCtrlAonKey1Out = 46,
    MioOutSysrstCtrlAonKey2Out = 47,
    MioOutSysrstCtrlAonPwrbOut = 48,
    MioOutSysrstCtrlAonZ3Wakeup = 49,
    MioOutCount = 50
  } mio_out_e;

  // Enumeration for DIO signals, used on both the top and chip-levels.
  typedef enum int unsigned {
    DioUsbdevUsbDp = 0,
    DioUsbdevUsbDn = 1,
    DioSpiHost0Sd0 = 2,
    DioSpiHost0Sd1 = 3,
    DioSpiHost0Sd2 = 4,
    DioSpiHost0Sd3 = 5,
    DioSpiDeviceSd0 = 6,
    DioSpiDeviceSd1 = 7,
    DioSpiDeviceSd2 = 8,
    DioSpiDeviceSd3 = 9,
    DioSysrstCtrlAonEcRstL = 10,
    DioSysrstCtrlAonFlashWpL = 11,
    DioSpiDeviceSck = 12,
    DioSpiDeviceCsb = 13,
    DioSpiHost0Sck = 14,
    DioSpiHost0Csb = 15,
    DioCount = 16
  } dio_e;

  // Enumeration for the types of pads.
  typedef enum {
    MioPad,
    DioPad
  } pad_type_e;

  // Raw MIO/DIO input array indices on chip-level.
  // TODO: Does not account for target specific stubbed/added pads.
  // Need to make a target-specific package for those.
  typedef enum int unsigned {
    MioPadIoa0 = 0,
    MioPadIoa1 = 1,
    MioPadIoa2 = 2,
    MioPadIoa3 = 3,
    MioPadIoa4 = 4,
    MioPadIoa5 = 5,
    MioPadIoa6 = 6,
    MioPadIoa7 = 7,
    MioPadIoa8 = 8,
    MioPadIob0 = 9,
    MioPadIob1 = 10,
    MioPadIob2 = 11,
    MioPadIob3 = 12,
    MioPadIob4 = 13,
    MioPadIob5 = 14,
    MioPadIob6 = 15,
    MioPadIob7 = 16,
    MioPadIob8 = 17,
    MioPadIob9 = 18,
    MioPadIob10 = 19,
    MioPadIob11 = 20,
    MioPadIob12 = 21,
    MioPadIoc0 = 22,
    MioPadIoc1 = 23,
    MioPadIoc2 = 24,
    MioPadIoc3 = 25,
    MioPadIoc4 = 26,
    MioPadIoc5 = 27,
    MioPadIoc6 = 28,
    MioPadIoc7 = 29,
    MioPadIoc8 = 30,
    MioPadIoc9 = 31,
    MioPadIoc10 = 32,
    MioPadIoc11 = 33,
    MioPadIoc12 = 34,
    MioPadIor0 = 35,
    MioPadIor1 = 36,
    MioPadIor2 = 37,
    MioPadIor3 = 38,
    MioPadIor4 = 39,
    MioPadIor5 = 40,
    MioPadIor6 = 41,
    MioPadIor7 = 42,
    MioPadIor10 = 43,
    MioPadIor11 = 44,
    MioPadIor12 = 45,
    MioPadIor13 = 46,
    MioPadCount
  } mio_pad_e;

  typedef enum int unsigned {
    DioPadPorN = 0,
    DioPadUsbP = 1,
    DioPadUsbN = 2,
    DioPadCc1 = 3,
    DioPadCc2 = 4,
    DioPadFlashTestVolt = 5,
    DioPadFlashTestMode0 = 6,
    DioPadFlashTestMode1 = 7,
    DioPadOtpExtVolt = 8,
    DioPadSpiHostD0 = 9,
    DioPadSpiHostD1 = 10,
    DioPadSpiHostD2 = 11,
    DioPadSpiHostD3 = 12,
    DioPadSpiHostClk = 13,
    DioPadSpiHostCsL = 14,
    DioPadSpiDevD0 = 15,
    DioPadSpiDevD1 = 16,
    DioPadSpiDevD2 = 17,
    DioPadSpiDevD3 = 18,
    DioPadSpiDevClk = 19,
    DioPadSpiDevCsL = 20,
    DioPadIor8 = 21,
    DioPadIor9 = 22,
    DioPadCount
  } dio_pad_e;

  // List of peripheral instantiated in this chip.
  typedef enum {
    PeripheralAdcCtrlAon,
    PeripheralAes,
    PeripheralAlertHandler,
    PeripheralAonTimerAon,
    PeripheralAst,
    PeripheralClkmgrAon,
    PeripheralCsrng,
    PeripheralEdn0,
    PeripheralEdn1,
    PeripheralEntropySrc,
    PeripheralFlashCtrl,
    PeripheralGpio,
    PeripheralHmac,
    PeripheralKeymgr,
    PeripheralKmac,
    PeripheralLcCtrl,
    PeripheralOtbn,
    PeripheralOtpCtrl,
    PeripheralOtpMacro,
    PeripheralPinmuxAon,
    PeripheralPwrmgrAon,
    PeripheralRomCtrl,
    PeripheralRstmgrAon,
    PeripheralRvCoreIbex,
    PeripheralRvDm,
    PeripheralRvPlic,
    PeripheralRvTimer,
    PeripheralSensorCtrlAon,
    PeripheralSpiDevice,
    PeripheralSpiHost0,
    PeripheralSramCtrlMain,
    PeripheralSramCtrlRetAon,
    PeripheralSysrstCtrlAon,
    PeripheralUart0,
    PeripheralUsbdev,
    PeripheralCount
  } peripheral_e;

  // MMIO Region
  //
  parameter int unsigned TOP_EARLGREY_MMIO_BASE_ADDR = 32'h40000000;
  parameter int unsigned TOP_EARLGREY_MMIO_SIZE_BYTES = 32'h10000000;

  // TODO: Enumeration for PLIC Interrupt source peripheral.

// MACROs for AST analog simulation support
`ifdef ANALOGSIM
  `define INOUT_AI input ast_pkg::awire_t
  `define INOUT_AO output ast_pkg::awire_t
`else
  `define INOUT_AI inout
  `define INOUT_AO inout
`endif

endpackage
