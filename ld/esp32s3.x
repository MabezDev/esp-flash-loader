MEMORY {
    /* Start 64k into the RAM region */
    IRAM : ORIGIN = 0x40010000, LENGTH = 0x40000
}

/* ROM function interface esp32s3.rom.ld for esp32s3
 *
 *
 * Generated from ./interface-esp32s3.yml md5sum 39c4ce259b11323b9404c192b01b712b
 *
 * Compatible with ROM where ECO version equal or greater to 0.
 *
 * THIS FILE WAS AUTOMATICALLY GENERATED. DO NOT EDIT.
 */

PROVIDE ( esp_rom_spiflash_attach = spi_flash_attach );

/***************************************
 Group common
 ***************************************/

/* Functions */
rtc_get_reset_reason = 0x4000057c;
analog_super_wdt_reset_happened = 0x40000588;
jtag_cpu_reset_happened = 0x40000594;
rtc_get_wakeup_cause = 0x400005a0;
rtc_select_apb_bridge = 0x400005ac;
rtc_unhold_all_pads = 0x400005b8;
ets_is_print_boot = 0x400005c4;
ets_printf = 0x400005d0;
ets_install_putc1 = 0x400005dc;
ets_install_uart_printf = 0x400005e8;
ets_install_putc2 = 0x400005f4;
PROVIDE( ets_delay_us = 0x40000600 );
ets_get_stack_info = 0x4000060c;
ets_install_lock = 0x40000618;
ets_backup_dma_copy = 0x40000624;
ets_apb_backup_init_lock_func = 0x40000630;
UartRxString = 0x4000063c;
uart_tx_one_char = 0x40000648;
uart_tx_one_char2 = 0x40000654;
uart_rx_one_char = 0x40000660;
uart_rx_one_char_block = 0x4000066c;
uart_rx_readbuff = 0x40000678;
uartAttach = 0x40000684;
uart_tx_flush = 0x40000690;
uart_tx_wait_idle = 0x4000069c;
uart_div_modify = 0x400006a8;
ets_write_char_uart = 0x400006b4;
uart_tx_switch = 0x400006c0;
multofup = 0x400006cc;
software_reset = 0x400006d8;
software_reset_cpu = 0x400006e4;
assist_debug_clock_enable = 0x400006f0;
assist_debug_record_enable = 0x400006fc;
clear_super_wdt_reset_flag = 0x40000708;
disable_default_watchdog = 0x40000714;
ets_set_appcpu_boot_addr = 0x40000720;
esp_rom_set_rtc_wake_addr = 0x4000072c;
esp_rom_get_rtc_wake_addr = 0x40000738;
send_packet = 0x40000744;
recv_packet = 0x40000750;
GetUartDevice = 0x4000075c;
UartDwnLdProc = 0x40000768;
Uart_Init = 0x40000774;
ets_set_user_start = 0x40000780;
/* Data (.data, .bss, .rodata) */
ets_rom_layout_p = 0x3ff1fffc;
ets_ops_table_ptr = 0x3fcefffc;


/***************************************
 Group miniz
 ***************************************/

/* Functions */
mz_adler32 = 0x4000078c;
mz_crc32 = 0x40000798;
mz_free = 0x400007a4;
tdefl_compress = 0x400007b0;
tdefl_compress_buffer = 0x400007bc;
tdefl_compress_mem_to_heap = 0x400007c8;
tdefl_compress_mem_to_mem = 0x400007d4;
tdefl_compress_mem_to_output = 0x400007e0;
tdefl_get_adler32 = 0x400007ec;
tdefl_get_prev_return_status = 0x400007f8;
tdefl_init = 0x40000804;
tdefl_write_image_to_png_file_in_memory = 0x40000810;
tdefl_write_image_to_png_file_in_memory_ex = 0x4000081c;
tinfl_decompress = 0x40000828;
tinfl_decompress_mem_to_callback = 0x40000834;
tinfl_decompress_mem_to_heap = 0x40000840;
tinfl_decompress_mem_to_mem = 0x4000084c;


/***************************************
 Group tjpgd
 ***************************************/

/* Functions */
PROVIDE( jd_prepare = 0x40000858 );
PROVIDE (jd_decomp = 0x40000864 );


/***************************************
 Group esp-dsp
 ***************************************/

/* Data (.data, .bss, .rodata) */
dsps_fft2r_w_table_fc32_1024 = 0x3fcefff8;


/***************************************
 Group opi_flash
 ***************************************/

/* Functions */
PROVIDE( opi_flash_set_lock_func = 0x40000870 );
PROVIDE( esp_rom_spi_cmd_config = 0x4000087c );
PROVIDE( esp_rom_spi_cmd_start = 0x40000888 );
PROVIDE( esp_rom_opiflash_pin_config = 0x40000894 );
PROVIDE( esp_rom_spi_set_op_mode = 0x400008a0 );
PROVIDE( esp_rom_opiflash_mode_reset = 0x400008ac );
PROVIDE( esp_rom_opiflash_exec_cmd = 0x400008b8 );
PROVIDE( esp_rom_opiflash_soft_reset = 0x400008c4 );
PROVIDE( esp_rom_opiflash_read_id = 0x400008d0 );
PROVIDE( esp_rom_opiflash_rdsr = 0x400008dc );
PROVIDE( esp_rom_opiflash_wait_idle = 0x400008e8 );
PROVIDE( esp_rom_opiflash_wren = 0x400008f4 );
PROVIDE( esp_rom_opiflash_erase_sector = 0x40000900 );
PROVIDE( esp_rom_opiflash_erase_block_64k = 0x4000090c );
PROVIDE( esp_rom_opiflash_erase_area = 0x40000918 );
PROVIDE( esp_rom_opiflash_read = 0x40000924 );
PROVIDE( esp_rom_opiflash_write = 0x40000930 );
PROVIDE( esp_rom_spi_set_dtr_swap_mode = 0x4000093c );
PROVIDE( esp_rom_opiflash_exit_continuous_read_mode = 0x40000948 );
PROVIDE( esp_rom_opiflash_legacy_driver_init = 0x40000954 );
PROVIDE( esp_rom_opiflash_read_raw = 0x4004d9d4);
/* Data (.data, .bss, .rodata) */
PROVIDE( rom_opiflash_cmd_def = 0x3fcefff4 );
PROVIDE( rom_spi_usr_cmd_legacy_funcs = 0x3fcefff0 );


/***************************************
 Group spiflash_legacy
 ***************************************/

/* Functions */
PROVIDE( esp_rom_spiflash_wait_idle = 0x40000960 );
PROVIDE( esp_rom_spiflash_write_encrypted = 0x4000096c );
PROVIDE( esp_rom_spiflash_write_encrypted_dest = 0x40000978 );
PROVIDE( esp_rom_spiflash_write_encrypted_enable = 0x40000984 );
PROVIDE( esp_rom_spiflash_write_encrypted_disable = 0x40000990 );
PROVIDE( esp_rom_spiflash_erase_chip = 0x4000099c );
PROVIDE( _esp_rom_spiflash_erase_sector = 0x400009a8 );
PROVIDE( _esp_rom_spiflash_erase_block = 0x400009b4 );
PROVIDE( _esp_rom_spiflash_write = 0x400009c0 );
PROVIDE( _esp_rom_spiflash_read = 0x400009cc );
PROVIDE( _esp_rom_spiflash_unlock = 0x400009d8 );
PROVIDE( _SPIEraseArea = 0x400009e4 );
PROVIDE( _SPI_write_enable = 0x400009f0 );
PROVIDE( esp_rom_spiflash_erase_sector = 0x400009fc );
PROVIDE( esp_rom_spiflash_erase_block = 0x40000a08 );
PROVIDE( esp_rom_spiflash_write = 0x40000a14 );
PROVIDE( esp_rom_spiflash_read = 0x40000a20 );
PROVIDE( esp_rom_spiflash_unlock = 0x40000a2c );
PROVIDE( SPIEraseArea = 0x40000a38 );
PROVIDE( SPI_write_enable = 0x40000a44 );
PROVIDE( esp_rom_spiflash_config_param = 0x40000a50 );
PROVIDE( esp_rom_spiflash_read_user_cmd = 0x40000a5c );
PROVIDE( esp_rom_spiflash_select_qio_pins = 0x40000a68 );
PROVIDE( esp_rom_spi_flash_auto_sus_res = 0x40000a74 );
PROVIDE( esp_rom_spi_flash_send_resume = 0x40000a80 );
PROVIDE( esp_rom_spi_flash_update_id = 0x40000a8c );
PROVIDE( esp_rom_spiflash_config_clk = 0x40000a98 );
PROVIDE( esp_rom_spiflash_config_readmode = 0x40000aa4 );
PROVIDE( esp_rom_spiflash_read_status = 0x40000ab0 );
PROVIDE( esp_rom_spiflash_read_statushigh = 0x40000abc );
PROVIDE( esp_rom_spiflash_write_status = 0x40000ac8 );
PROVIDE( esp_rom_opiflash_cache_mode_config = 0x40000ad4 );
PROVIDE( esp_rom_spiflash_auto_wait_idle = 0x40000ae0 );
PROVIDE( spi_flash_attach = 0x40000aec );
PROVIDE( spi_flash_get_chip_size = 0x40000af8 );
PROVIDE( spi_flash_guard_set = 0x40000b04 );
PROVIDE( spi_flash_guard_get = 0x40000b10 );
PROVIDE( spi_flash_write_config_set = 0x40000b1c );
PROVIDE( spi_flash_write_config_get = 0x40000b28 );
PROVIDE( spi_flash_safe_write_address_func_set = 0x40000b34 );
PROVIDE( spi_flash_unlock = 0x40000b40 );
PROVIDE( spi_flash_erase_range = 0x40000b4c );
PROVIDE( spi_flash_erase_sector = 0x40000b58 );
PROVIDE( spi_flash_write = 0x40000b64 );
PROVIDE( spi_flash_read = 0x40000b70 );
PROVIDE( spi_flash_write_encrypted = 0x40000b7c );
PROVIDE( spi_flash_read_encrypted = 0x40000b88 );
PROVIDE( spi_flash_mmap_os_func_set = 0x40000b94 );
PROVIDE( spi_flash_mmap_page_num_init = 0x40000ba0 );
PROVIDE( spi_flash_mmap = 0x40000bac );
PROVIDE( spi_flash_mmap_pages = 0x40000bb8 );
PROVIDE( spi_flash_munmap = 0x40000bc4 );
PROVIDE( spi_flash_mmap_dump = 0x40000bd0 );
PROVIDE( spi_flash_check_and_flush_cache = 0x40000bdc );
PROVIDE( spi_flash_mmap_get_free_pages = 0x40000be8 );
PROVIDE( spi_flash_cache2phys = 0x40000bf4 );
PROVIDE( spi_flash_phys2cache = 0x40000c00 );
PROVIDE( spi_flash_disable_cache = 0x40000c0c );
PROVIDE( spi_flash_restore_cache = 0x40000c18 );
PROVIDE( spi_flash_cache_enabled = 0x40000c24 );
PROVIDE( spi_flash_enable_cache = 0x40000c30 );
PROVIDE( spi_cache_mode_switch = 0x40000c3c );
PROVIDE( spi_common_set_dummy_output = 0x40000c48 );
PROVIDE( spi_common_set_flash_cs_timing = 0x40000c54 );
PROVIDE( esp_rom_spi_set_address_bit_len = 0x40000c60 );
PROVIDE( esp_enable_cache_flash_wrap = 0x40000c6c );
PROVIDE( SPILock = 0x40000c78 );
PROVIDE( SPIMasterReadModeCnfig = 0x40000c84 );
PROVIDE( SPI_Common_Command = 0x40000c90 );
PROVIDE( SPI_WakeUp = 0x40000c9c );
PROVIDE( SPI_block_erase = 0x40000ca8 );
PROVIDE( SPI_chip_erase = 0x40000cb4 );
PROVIDE( SPI_init = 0x40000cc0 );
PROVIDE( SPI_page_program = 0x40000ccc );
PROVIDE( SPI_read_data = 0x40000cd8 );
PROVIDE( SPI_sector_erase = 0x40000ce4 );
PROVIDE( SelectSpiFunction = 0x40000cf0 );
PROVIDE( SetSpiDrvs = 0x40000cfc );
PROVIDE( Wait_SPI_Idle = 0x40000d08 );
PROVIDE( spi_dummy_len_fix = 0x40000d14 );
PROVIDE( Disable_QMode = 0x40000d20 );
PROVIDE( Enable_QMode = 0x40000d2c );
/* Data (.data, .bss, .rodata) */
PROVIDE( rom_spiflash_legacy_funcs = 0x3fceffe8 );
PROVIDE( rom_spiflash_legacy_data = 0x3fceffe4 );
PROVIDE( g_flash_guard_ops = 0x3fceffec );


/***************************************
 Group hal_soc
 ***************************************/

/* Functions */
PROVIDE( spi_flash_hal_poll_cmd_done = 0x40000d38 );
PROVIDE( spi_flash_hal_device_config = 0x40000d44 );
PROVIDE( spi_flash_hal_configure_host_io_mode = 0x40000d50 );
PROVIDE( spi_flash_hal_common_command = 0x40000d5c );
PROVIDE( spi_flash_hal_read = 0x40000d68 );
PROVIDE( spi_flash_hal_erase_chip = 0x40000d74 );
PROVIDE( spi_flash_hal_erase_sector = 0x40000d80 );
PROVIDE( spi_flash_hal_erase_block = 0x40000d8c );
PROVIDE( spi_flash_hal_program_page = 0x40000d98 );
PROVIDE( spi_flash_hal_set_write_protect = 0x40000da4 );
PROVIDE( spi_flash_hal_host_idle = 0x40000db0 );
PROVIDE( wdt_hal_init = 0x40000dbc );
PROVIDE( wdt_hal_deinit = 0x40000dc8 );
PROVIDE( wdt_hal_config_stage = 0x40000dd4 );
PROVIDE( wdt_hal_write_protect_disable = 0x40000de0 );
PROVIDE( wdt_hal_write_protect_enable = 0x40000dec );
PROVIDE( wdt_hal_enable = 0x40000df8 );
PROVIDE( wdt_hal_disable = 0x40000e04 );
PROVIDE( wdt_hal_handle_intr = 0x40000e10 );
PROVIDE( wdt_hal_feed = 0x40000e1c );
PROVIDE( wdt_hal_set_flashboot_en = 0x40000e28 );
PROVIDE( wdt_hal_is_enabled = 0x40000e34 );
PROVIDE( systimer_hal_get_counter_value = 0x40000e40 );
PROVIDE( systimer_hal_get_time = 0x40000e4c );
PROVIDE( systimer_hal_set_alarm_target = 0x40000e58 );
PROVIDE( systimer_hal_set_alarm_period = 0x40000e64 );
PROVIDE( systimer_hal_get_alarm_value = 0x40000e70 );
PROVIDE( systimer_hal_enable_alarm_int = 0x40000e7c );
PROVIDE( systimer_hal_on_apb_freq_update = 0x40000e88 );
PROVIDE( systimer_hal_counter_value_advance = 0x40000e94 );
PROVIDE( systimer_hal_enable_counter = 0x40000ea0 );
PROVIDE( systimer_hal_init = 0x40000eac );
PROVIDE( systimer_hal_select_alarm_mode = 0x40000eb8 );
PROVIDE( systimer_hal_connect_alarm_counter = 0x40000ec4 );


/***************************************
 Group spi_flash_chips
 ***************************************/

/* Functions */
PROVIDE( spi_flash_chip_generic_probe = 0x40000ed0 );
PROVIDE( spi_flash_chip_generic_detect_size = 0x40000edc );
PROVIDE( spi_flash_chip_generic_write = 0x40000ee8 );
PROVIDE( spi_flash_chip_generic_write_encrypted = 0x40000ef4 );
PROVIDE( spi_flash_chip_generic_set_write_protect = 0x40000f00 );
PROVIDE( spi_flash_common_write_status_16b_wrsr = 0x40000f0c );
PROVIDE( spi_flash_chip_generic_reset = 0x40000f18 );
PROVIDE( spi_flash_chip_generic_erase_chip = 0x40000f24 );
PROVIDE( spi_flash_chip_generic_erase_sector = 0x40000f30 );
PROVIDE( spi_flash_chip_generic_erase_block = 0x40000f3c );
PROVIDE( spi_flash_chip_generic_page_program = 0x40000f48 );
PROVIDE( spi_flash_chip_generic_get_write_protect = 0x40000f54 );
PROVIDE( spi_flash_common_read_status_16b_rdsr_rdsr2 = 0x40000f60 );
PROVIDE( spi_flash_chip_generic_read_reg = 0x40000f6c );
PROVIDE( spi_flash_chip_generic_yield = 0x40000f78 );
PROVIDE( spi_flash_generic_wait_host_idle = 0x40000f84 );
PROVIDE( spi_flash_chip_generic_wait_idle = 0x40000f90 );
PROVIDE( spi_flash_chip_generic_config_host_io_mode = 0x40000f9c );
PROVIDE( spi_flash_chip_generic_read = 0x40000fa8 );
PROVIDE( spi_flash_common_read_status_8b_rdsr2 = 0x40000fb4 );
PROVIDE( spi_flash_chip_generic_get_io_mode = 0x40000fc0 );
PROVIDE( spi_flash_common_read_status_8b_rdsr = 0x40000fcc );
PROVIDE( spi_flash_common_write_status_8b_wrsr = 0x40000fd8 );
PROVIDE( spi_flash_common_write_status_8b_wrsr2 = 0x40000fe4 );
PROVIDE( spi_flash_common_set_io_mode = 0x40000ff0 );
PROVIDE( spi_flash_chip_generic_set_io_mode = 0x40000ffc );
PROVIDE( spi_flash_chip_gd_get_io_mode = 0x40001008 );
PROVIDE( spi_flash_chip_gd_probe = 0x40001014 );
PROVIDE( spi_flash_chip_gd_set_io_mode = 0x40001020 );
/* Data (.data, .bss, .rodata) */
PROVIDE( spi_flash_chip_generic_config_data = 0x3fceffe0 );


/***************************************
 Group memspi_host
 ***************************************/

/* Functions */
PROVIDE( memspi_host_read_id_hs = 0x4000102c );
PROVIDE( memspi_host_read_status_hs = 0x40001038 );
PROVIDE( memspi_host_flush_cache = 0x40001044 );
PROVIDE( memspi_host_erase_chip = 0x40001050 );
PROVIDE( memspi_host_erase_sector = 0x4000105c );
PROVIDE( memspi_host_erase_block = 0x40001068 );
PROVIDE( memspi_host_program_page = 0x40001074 );
PROVIDE( memspi_host_read = 0x40001080 );
PROVIDE( memspi_host_set_write_protect = 0x4000108c );
PROVIDE( memspi_host_set_max_read_len = 0x40001098 );
PROVIDE( memspi_host_read_data_slicer = 0x400010a4 );
PROVIDE( memspi_host_write_data_slicer = 0x400010b0 );


/***************************************
 Group esp_flash
 ***************************************/

/* Functions */
PROVIDE( esp_flash_chip_driver_initialized = 0x400010bc );
PROVIDE( esp_flash_read_id = 0x400010c8 );
PROVIDE( esp_flash_get_size = 0x400010d4 );
PROVIDE( esp_flash_erase_chip = 0x400010e0 );
PROVIDE( rom_esp_flash_erase_region = 0x400010ec );
PROVIDE( esp_flash_get_chip_write_protect = 0x400010f8 );
PROVIDE( esp_flash_set_chip_write_protect = 0x40001104 );
PROVIDE( esp_flash_get_protectable_regions = 0x40001110 );
PROVIDE( esp_flash_get_protected_region = 0x4000111c );
PROVIDE( esp_flash_set_protected_region = 0x40001128 );
PROVIDE( esp_flash_read = 0x40001134 );
PROVIDE( esp_flash_write = 0x40001140 );
PROVIDE( esp_flash_write_encrypted = 0x4000114c );
PROVIDE( esp_flash_read_encrypted = 0x40001158 );
PROVIDE( esp_flash_get_io_mode = 0x40001164 );
PROVIDE( esp_flash_set_io_mode = 0x40001170 );
PROVIDE( spi_flash_boot_attach = 0x4000117c );
PROVIDE( spi_flash_dump_counters = 0x40001188 );
PROVIDE( spi_flash_get_counters = 0x40001194 );
PROVIDE( spi_flash_op_counters_config = 0x400011a0 );
PROVIDE( spi_flash_reset_counters = 0x400011ac );
PROVIDE( esp_flash_read_chip_id = 0x400011b8 );
PROVIDE( detect_spi_flash_chip = 0x400011c4 );
PROVIDE( esp_rom_spiflash_write_disable = 0x400011d0 );
/* Data (.data, .bss, .rodata) */
PROVIDE( esp_flash_default_chip = 0x3fceffdc );
PROVIDE( esp_flash_api_funcs = 0x3fceffd8 );


/***************************************
 Group cache
 ***************************************/

/* Functions */
PROVIDE( Cache_Get_ICache_Line_Size = 0x400015fc );
PROVIDE( Cache_Get_DCache_Line_Size = 0x40001608 );
PROVIDE( Cache_Get_Mode = 0x40001614 );
PROVIDE( Cache_Set_ICache_Mode = 0x40001620 );
PROVIDE( Cache_Set_DCache_Mode = 0x4000162c );
PROVIDE( Cache_Address_Through_ICache = 0x40001638 );
PROVIDE( Cache_Address_Through_DCache = 0x40001644 );
PROVIDE( Cache_Set_Default_Mode = 0x40001650 );
PROVIDE( Cache_Enable_Defalut_ICache_Mode = 0x4000165c );
PROVIDE( ROM_Boot_Cache_Init = 0x40001668 );
PROVIDE( Cache_Invalidate_ICache_Items = 0x40001674 );
PROVIDE( Cache_Invalidate_DCache_Items = 0x40001680 );
PROVIDE( Cache_Clean_Items = 0x4000168c );
PROVIDE( Cache_WriteBack_Items = 0x40001698 );
PROVIDE( Cache_Op_Addr = 0x400016a4 );
PROVIDE( Cache_Invalidate_Addr = 0x400016b0 );
PROVIDE( Cache_Clean_Addr = 0x400016bc );
PROVIDE( rom_Cache_WriteBack_Addr = 0x400016c8 );
PROVIDE( Cache_Invalidate_ICache_All = 0x400016d4 );
PROVIDE( Cache_Invalidate_DCache_All = 0x400016e0 );
PROVIDE( Cache_Clean_All = 0x400016ec );
PROVIDE( Cache_WriteBack_All = 0x400016f8 );
PROVIDE( Cache_Mask_All = 0x40001704 );
PROVIDE( Cache_UnMask_Dram0 = 0x40001710 );
PROVIDE( Cache_Suspend_ICache_Autoload = 0x4000171c );
PROVIDE( Cache_Resume_ICache_Autoload = 0x40001728 );
PROVIDE( Cache_Suspend_DCache_Autoload = 0x40001734 );
PROVIDE( Cache_Resume_DCache_Autoload = 0x40001740 );
PROVIDE( Cache_Start_ICache_Preload = 0x4000174c );
PROVIDE( Cache_ICache_Preload_Done = 0x40001758 );
PROVIDE( Cache_End_ICache_Preload = 0x40001764 );
PROVIDE( Cache_Start_DCache_Preload = 0x40001770 );
PROVIDE( Cache_DCache_Preload_Done = 0x4000177c );
PROVIDE( Cache_End_DCache_Preload = 0x40001788 );
PROVIDE( Cache_Config_ICache_Autoload = 0x40001794 );
PROVIDE( Cache_Config_ICache_Region_Autoload = 0x400017a0 );
PROVIDE( Cache_Enable_ICache_Autoload = 0x400017ac );
PROVIDE( Cache_Disable_ICache_Autoload = 0x400017b8 );
PROVIDE( Cache_Config_DCache_Autoload = 0x400017c4 );
PROVIDE( Cache_Config_DCache_Region_Autoload = 0x400017d0 );
PROVIDE( Cache_Enable_DCache_Autoload = 0x400017dc );
PROVIDE( Cache_Disable_DCache_Autoload = 0x400017e8 );
PROVIDE( Cache_Enable_ICache_PreLock = 0x400017f4 );
PROVIDE( Cache_Disable_ICache_PreLock = 0x40001800 );
PROVIDE( Cache_Lock_ICache_Items = 0x4000180c );
PROVIDE( Cache_Unlock_ICache_Items = 0x40001818 );
PROVIDE( Cache_Enable_DCache_PreLock = 0x40001824 );
PROVIDE( Cache_Disable_DCache_PreLock = 0x40001830 );
PROVIDE( Cache_Lock_DCache_Items = 0x4000183c );
PROVIDE( Cache_Unlock_DCache_Items = 0x40001848 );
PROVIDE( Cache_Lock_Addr = 0x40001854 );
PROVIDE( Cache_Unlock_Addr = 0x40001860 );
PROVIDE( Cache_Disable_ICache = 0x4000186c );
PROVIDE( Cache_Enable_ICache = 0x40001878 );
PROVIDE( Cache_Disable_DCache = 0x40001884 );
PROVIDE( Cache_Enable_DCache = 0x40001890 );
PROVIDE( rom_Cache_Suspend_ICache = 0x4000189c );
PROVIDE( Cache_Resume_ICache = 0x400018a8 );
PROVIDE( rom_Cache_Suspend_DCache = 0x400018b4 );
PROVIDE( Cache_Resume_DCache = 0x400018c0 );
PROVIDE( Cache_Occupy_Items = 0x400018cc );
PROVIDE( Cache_Occupy_Addr = 0x400018d8 );
PROVIDE( rom_Cache_Freeze_ICache_Enable = 0x400018e4 );
PROVIDE( Cache_Freeze_ICache_Disable = 0x400018f0 );
PROVIDE( rom_Cache_Freeze_DCache_Enable = 0x400018fc );
PROVIDE( Cache_Freeze_DCache_Disable = 0x40001908 );
PROVIDE( Cache_Set_IDROM_MMU_Size = 0x40001914 );
PROVIDE( flash2spiram_instruction_offset = 0x40001920 );
PROVIDE( flash2spiram_rodata_offset = 0x4000192c );
PROVIDE( flash_instr_rodata_start_page = 0x40001938 );
PROVIDE( flash_instr_rodata_end_page = 0x40001944 );
PROVIDE( Cache_Set_IDROM_MMU_Info = 0x40001950 );
PROVIDE( Cache_Get_IROM_MMU_End = 0x4000195c );
PROVIDE( Cache_Get_DROM_MMU_End = 0x40001968 );
PROVIDE( Cache_Owner_Init = 0x40001974 );
PROVIDE( Cache_Occupy_ICache_MEMORY = 0x40001980 );
PROVIDE( Cache_Occupy_DCache_MEMORY = 0x4000198c );
PROVIDE( Cache_MMU_Init = 0x40001998 );
PROVIDE( Cache_Ibus_MMU_Set = 0x400019a4 );
PROVIDE( Cache_Dbus_MMU_Set = 0x400019b0 );
PROVIDE( rom_Cache_Count_Flash_Pages = 0x400019bc );
PROVIDE( Cache_Flash_To_SPIRAM_Copy = 0x400019c8 );
PROVIDE( Cache_Travel_Tag_Memory = 0x400019d4 );
PROVIDE( Cache_Travel_Tag_Memory2 = 0x400019e0 );
PROVIDE( Cache_Get_Virtual_Addr = 0x400019ec );
PROVIDE( Cache_Get_Memory_BaseAddr = 0x400019f8 );
PROVIDE( Cache_Get_Memory_Addr = 0x40001a04 );
PROVIDE( Cache_Get_Memory_value = 0x40001a10 );
PROVIDE( rom_config_instruction_cache_mode = 0x40001a1c );
PROVIDE( rom_config_data_cache_mode = 0x40001a28 );
/* Data (.data, .bss, .rodata) */
PROVIDE( rom_cache_op_cb = 0x3fceffc8 );
PROVIDE( rom_cache_internal_table_ptr = 0x3fceffc4 );


/***************************************
 Group clock
 ***************************************/

/* Functions */
ets_get_apb_freq = 0x40001a34;
ets_get_cpu_frequency = 0x40001a40;
ets_update_cpu_frequency = 0x40001a4c;
ets_get_printf_channel = 0x40001a58;
ets_get_xtal_div = 0x40001a64;
ets_set_xtal_div = 0x40001a70;
ets_get_xtal_freq = 0x40001a7c;


/***************************************
 Group gpio
 ***************************************/

/* Functions */
gpio_input_get = 0x40001a88;
gpio_matrix_in = 0x40001a94;
gpio_matrix_out = 0x40001aa0;
gpio_output_disable = 0x40001aac;
gpio_output_enable = 0x40001ab8;
gpio_output_set = 0x40001ac4;
gpio_pad_hold = 0x40001ad0;
gpio_pad_input_disable = 0x40001adc;
gpio_pad_input_enable = 0x40001ae8;
gpio_pad_pulldown = 0x40001af4;
gpio_pad_pullup = 0x40001b00;
gpio_pad_select_gpio = 0x40001b0c;
gpio_pad_set_drv = 0x40001b18;
gpio_pad_unhold = 0x40001b24;
gpio_pin_wakeup_disable = 0x40001b30;
gpio_pin_wakeup_enable = 0x40001b3c;
gpio_bypass_matrix_in = 0x40001b48;


/***************************************
 Group interrupts
 ***************************************/

/* Functions */
intr_matrix_set = 0x40001b54;
ets_intr_lock = 0x40001b60;
ets_intr_unlock = 0x40001b6c;
ets_isr_attach = 0x40001b78;
ets_isr_mask = 0x40001b84;
ets_isr_unmask = 0x40001b90;


/***************************************
 Group xtos
 ***************************************/

/* Functions */
xthal_bcopy = 0x40001b9c;
xthal_memcpy = 0x40001ba8;
xthal_get_ccompare = 0x40001bb4;
xthal_set_ccompare = 0x40001bc0;
xthal_get_ccount = 0x40001bcc;
xthal_get_interrupt = 0x40001bd8;
xthal_set_intclear = 0x40001be4;
_xtos_ints_off = 0x40001bf0;
_xtos_ints_on = 0x40001bfc;
_xtos_restore_intlevel = 0x40001c08;
_xtos_set_exception_handler = 0x40001c14;
_xtos_set_interrupt_handler = 0x40001c20;
_xtos_set_interrupt_handler_arg = 0x40001c2c;
_xtos_set_intlevel = 0x40001c38;
_xtos_set_vpri = 0x40001c44;


/***************************************
 Group crypto
 ***************************************/

/* Functions */
md5_vector = 0x40001c50;
MD5Init = 0x40001c5c;
MD5Update = 0x40001c68;
MD5Final = 0x40001c74;
hmac_md5_vector = 0x40001c80;
hmac_md5 = 0x40001c8c;
crc32_le = 0x40001c98;
crc32_be = 0x40001ca4;
crc16_le = 0x40001cb0;
crc16_be = 0x40001cbc;
crc8_le = 0x40001cc8;
crc8_be = 0x40001cd4;
esp_crc8 = 0x40001ce0;
ets_sha_enable = 0x40001cec;
ets_sha_disable = 0x40001cf8;
ets_sha_get_state = 0x40001d04;
ets_sha_init = 0x40001d10;
ets_sha_process = 0x40001d1c;
ets_sha_starts = 0x40001d28;
ets_sha_update = 0x40001d34;
ets_sha_finish = 0x40001d40;
ets_sha_clone = 0x40001d4c;
ets_hmac_enable = 0x40001d58;
ets_hmac_disable = 0x40001d64;
ets_hmac_calculate_message = 0x40001d70;
ets_hmac_calculate_downstream = 0x40001d7c;
ets_hmac_invalidate_downstream = 0x40001d88;
ets_jtag_enable_temporarily = 0x40001d94;
ets_aes_enable = 0x40001da0;
ets_aes_disable = 0x40001dac;
ets_aes_setkey = 0x40001db8;
ets_aes_block = 0x40001dc4;
ets_bigint_enable = 0x40001dd0;
ets_bigint_disable = 0x40001ddc;
ets_bigint_multiply = 0x40001de8;
ets_bigint_modmult = 0x40001df4;
ets_bigint_modexp = 0x40001e00;
ets_bigint_wait_finish = 0x40001e0c;
ets_bigint_getz = 0x40001e18;
ets_ds_enable = 0x40001e24;
ets_ds_disable = 0x40001e30;
ets_ds_start_sign = 0x40001e3c;
ets_ds_is_busy = 0x40001e48;
ets_ds_finish_sign = 0x40001e54;
ets_ds_encrypt_params = 0x40001e60;
ets_aes_setkey_dec = 0x40001e6c;
ets_aes_setkey_enc = 0x40001e78;
ets_mgf1_sha256 = 0x40001e84;


/***************************************
 Group efuse
 ***************************************/

/* Functions */
ets_efuse_read = 0x40001e90;
ets_efuse_program = 0x40001e9c;
ets_efuse_clear_program_registers = 0x40001ea8;
ets_efuse_write_key = 0x40001eb4;
ets_efuse_get_read_register_address = 0x40001ec0;
ets_efuse_get_key_purpose = 0x40001ecc;
ets_efuse_key_block_unused = 0x40001ed8;
ets_efuse_find_unused_key_block = 0x40001ee4;
ets_efuse_rs_calculate = 0x40001ef0;
ets_efuse_count_unused_key_blocks = 0x40001efc;
ets_efuse_secure_boot_enabled = 0x40001f08;
ets_efuse_secure_boot_aggressive_revoke_enabled = 0x40001f14;
ets_efuse_cache_encryption_enabled = 0x40001f20;
ets_efuse_download_modes_disabled = 0x40001f2c;
ets_efuse_find_purpose = 0x40001f38;
ets_efuse_flash_opi_5pads_power_sel_vddspi = 0x40001f44;
ets_efuse_force_send_resume = 0x40001f50;
ets_efuse_get_flash_delay_us = 0x40001f5c;
ets_efuse_get_mac = 0x40001f68;
ets_efuse_get_spiconfig = 0x40001f74;
ets_efuse_usb_print_is_disabled = 0x40001f80;
/*ets_efuse_get_uart_print_channel = 0x40001f8c;*/
ets_efuse_usb_serial_jtag_print_is_disabled = 0x40001f8c;
ets_efuse_get_uart_print_control = 0x40001f98;
ets_efuse_get_wp_pad = 0x40001fa4;
ets_efuse_legacy_spi_boot_mode_disabled = 0x40001fb0;
ets_efuse_security_download_modes_enabled = 0x40001fbc;
ets_efuse_set_timing = 0x40001fc8;
ets_efuse_jtag_disabled = 0x40001fd4;
ets_efuse_usb_download_mode_disabled = 0x40001fe0;
ets_efuse_usb_module_disabled = 0x40001fec;
ets_efuse_usb_device_disabled = 0x40001ff8;
ets_efuse_flash_octal_mode = 0x40002004;
ets_efuse_ecc_en = 0x40002010;
ets_efuse_ecc_flash_page_size = 0x4000201c;
ets_efuse_ecc_16to17_mode = 0x40002028;


/***************************************
 Group ecc
 ***************************************/

/* Functions */
ets_ecc_flash_enable = 0x40002034;
ets_ecc_flash_enable_all = 0x40002040;
ets_ecc_flash_disable = 0x4000204c;
ets_ecc_flash_disable_all = 0x40002058;
ets_ecc_get_flash_page_size = 0x40002064;
ets_ecc_set_flash_page_size = 0x40002070;
ets_ecc_set_flash_byte_mode = 0x4000207c;
ets_ecc_get_flash_byte_mode = 0x40002088;
ets_ecc_set_flash_range = 0x40002094;
ets_ecc_get_flash_range = 0x400020a0;
ets_ecc_sram_enable = 0x400020ac;
ets_ecc_sram_disable = 0x400020b8;
ets_ecc_sram_enable_all = 0x400020c4;
ets_ecc_sram_disable_all = 0x400020d0;
ets_ecc_get_sram_page_size = 0x400020dc;
ets_ecc_set_sram_page_size = 0x400020e8;
ets_ecc_get_sram_byte_mode = 0x400020f4;
ets_ecc_set_sram_byte_mode = 0x40002100;
ets_ecc_set_sram_range = 0x4000210c;
ets_ecc_get_sram_range = 0x40002118;
/* Data (.data, .bss, .rodata) */
ets_ecc_table_ptr = 0x3fceffc0;


/***************************************
 Group secureboot
 ***************************************/

/* Functions */
ets_emsa_pss_verify = 0x40002124;
ets_rsa_pss_verify = 0x40002130;
ets_secure_boot_verify_bootloader_with_keys = 0x4000213c;
ets_secure_boot_verify_signature = 0x40002148;
ets_secure_boot_read_key_digests = 0x40002154;
ets_secure_boot_revoke_public_key_digest = 0x40002160;


/***************************************
 Group usb_uart
 ***************************************/

/* Functions */
PROVIDE( usb_uart_otg_rx_one_char = 0x400025a4 );
PROVIDE( usb_uart_otg_rx_one_char_block = 0x400025b0 );
PROVIDE( usb_uart_otg_tx_flush = 0x400025bc );
PROVIDE( usb_uart_otg_tx_one_char = 0x400025c8 );
PROVIDE( usb_uart_device_rx_one_char = 0x400025d4 );
PROVIDE( usb_uart_device_rx_one_char_block = 0x400025e0 );
PROVIDE( usb_uart_device_tx_flush = 0x400025ec );
PROVIDE( usb_uart_device_tx_one_char = 0x400025f8 );
PROVIDE( Uart_Init_USB = 0x40002604 );
/* Data (.data, .bss, .rodata) */
PROVIDE( uart_acm_dev = 0x3fceffbc );
PROVIDE( g_uart_print = 0x3fceffb9 );
PROVIDE( g_usb_print = 0x3fceffb8 );


/***************************************
 Group usb_module
 ***************************************/

/* Functions */
cdc_acm_class_handle_req = 0x40002610;
cdc_acm_init = 0x4000261c;
cdc_acm_fifo_fill = 0x40002628;
cdc_acm_rx_fifo_cnt = 0x40002634;
cdc_acm_fifo_read = 0x40002640;
cdc_acm_irq_tx_enable = 0x4000264c;
cdc_acm_irq_tx_disable = 0x40002658;
cdc_acm_irq_state_enable = 0x40002664;
cdc_acm_irq_state_disable = 0x40002670;
cdc_acm_irq_tx_ready = 0x4000267c;
cdc_acm_irq_rx_enable = 0x40002688;
cdc_acm_irq_rx_disable = 0x40002694;
cdc_acm_irq_rx_ready = 0x400026a0;
cdc_acm_irq_is_pending = 0x400026ac;
cdc_acm_irq_callback_set = 0x400026b8;
cdc_acm_line_ctrl_set = 0x400026c4;
cdc_acm_line_ctrl_get = 0x400026d0;
cdc_acm_poll_out = 0x400026dc;
chip_usb_dw_did_persist = 0x400026e8;
chip_usb_dw_init = 0x400026f4;
chip_usb_detach = 0x40002700;
chip_usb_dw_prepare_persist = 0x4000270c;
chip_usb_get_persist_flags = 0x40002718;
chip_usb_set_persist_flags = 0x40002724;
cpio_start = 0x40002730;
cpio_feed = 0x4000273c;
cpio_done = 0x40002748;
cpio_destroy = 0x40002754;
dfu_flash_init = 0x40002760;
dfu_flash_erase = 0x4000276c;
dfu_flash_program = 0x40002778;
dfu_flash_read = 0x40002784;
dfu_flash_attach = 0x40002790;
dfu_cpio_callback = 0x4000279c;
dfu_updater_get_err = 0x400027a8;
dfu_updater_clear_err = 0x400027b4;
dfu_updater_enable = 0x400027c0;
dfu_updater_begin = 0x400027cc;
dfu_updater_feed = 0x400027d8;
dfu_updater_end = 0x400027e4;
dfu_updater_set_raw_addr = 0x400027f0;
dfu_updater_flash_read = 0x400027fc;
usb_dc_prepare_persist = 0x40002808;
usb_dw_isr_handler = 0x40002814;
usb_dc_attach = 0x40002820;
usb_dc_detach = 0x4000282c;
usb_dc_reset = 0x40002838;
usb_dc_set_address = 0x40002844;
usb_dc_ep_check_cap = 0x40002850;
usb_dc_ep_configure = 0x4000285c;
usb_dc_ep_set_stall = 0x40002868;
usb_dc_ep_clear_stall = 0x40002874;
usb_dc_ep_halt = 0x40002880;
usb_dc_ep_is_stalled = 0x4000288c;
usb_dc_ep_enable = 0x40002898;
usb_dc_ep_disable = 0x400028a4;
usb_dc_ep_flush = 0x400028b0;
usb_dc_ep_write_would_block = 0x400028bc;
usb_dc_ep_write = 0x400028c8;
usb_dc_ep_read_wait = 0x400028d4;
usb_dc_ep_read_continue = 0x400028e0;
usb_dc_ep_read = 0x400028ec;
usb_dc_ep_set_callback = 0x400028f8;
usb_dc_set_status_callback = 0x40002904;
usb_dc_ep_mps = 0x40002910;
usb_dc_check_poll_for_interrupts = 0x4000291c;
mac_addr_to_serial_str_desc = 0x40002928;
usb_set_current_descriptor = 0x40002934;
usb_get_descriptor = 0x40002940;
usb_dev_resume = 0x4000294c;
usb_dev_get_configuration = 0x40002958;
usb_set_config = 0x40002964;
usb_deconfig = 0x40002970;
usb_enable = 0x4000297c;
usb_disable = 0x40002988;
usb_write_would_block = 0x40002994;
usb_write = 0x400029a0;
usb_read = 0x400029ac;
usb_ep_set_stall = 0x400029b8;
usb_ep_clear_stall = 0x400029c4;
usb_ep_read_wait = 0x400029d0;
usb_ep_read_continue = 0x400029dc;
usb_transfer_ep_callback = 0x400029e8;
usb_transfer = 0x400029f4;
usb_cancel_transfer = 0x40002a00;
usb_transfer_sync = 0x40002a0c;
usb_dfu_set_detach_cb = 0x40002a18;
dfu_class_handle_req = 0x40002a24;
dfu_status_cb = 0x40002a30;
dfu_custom_handle_req = 0x40002a3c;
usb_dfu_init = 0x40002a48;
usb_dfu_force_detach = 0x40002a54;
usb_dev_deinit = 0x40002a60;
usb_dw_ctrl_deinit = 0x40002a6c;
/* Data (.data, .bss, .rodata) */
s_usb_osglue = 0x3fceffac;


/***************************************
 Group bluetooth
 ***************************************/

/* Functions */
bt_rf_coex_get_dft_cfg = 0x40002a78;
bt_rf_coex_hooks_p_set = 0x40002a84;
btdm_con_maxevtime_cal_impl = 0x40002a90;
btdm_controller_get_compile_version_impl = 0x40002a9c;
btdm_controller_rom_data_init = 0x40002aa8;
btdm_dis_privacy_err_report_impl = 0x40002ab4;
btdm_disable_adv_delay_impl = 0x40002ac0;
btdm_enable_scan_continue_impl = 0x40002acc;
btdm_enable_scan_forever_impl = 0x40002ad8;
btdm_get_power_state_impl = 0x40002ae4;
btdm_get_prevent_sleep_flag_impl = 0x40002af0;
btdm_power_state_active_impl = 0x40002afc;
btdm_switch_phy_coded_impl = 0x40002b08;
hci_acl_data_handler = 0x40002b14;
hci_disconnect_cmd_handler = 0x40002b20;
hci_le_con_upd_cmd_handler = 0x40002b2c;
hci_le_ltk_req_neg_reply_cmd_handler = 0x40002b38;
hci_le_ltk_req_reply_cmd_handler = 0x40002b44;
hci_le_rd_chnl_map_cmd_handler = 0x40002b50;
hci_le_rd_phy_cmd_handler = 0x40002b5c;
hci_le_rd_rem_feats_cmd_handler = 0x40002b68;
hci_le_rem_con_param_req_neg_reply_cmd_handler = 0x40002b74;
hci_le_rem_con_param_req_reply_cmd_handler = 0x40002b80;
hci_le_set_data_len_cmd_handler = 0x40002b8c;
hci_le_set_phy_cmd_handler = 0x40002b98;
hci_le_start_enc_cmd_handler = 0x40002ba4;
hci_rd_auth_payl_to_cmd_handler = 0x40002bb0;
hci_rd_rem_ver_info_cmd_handler = 0x40002bbc;
hci_rd_rssi_cmd_handler = 0x40002bc8;
hci_rd_tx_pwr_lvl_cmd_handler = 0x40002bd4;
hci_vs_set_pref_slave_evt_dur_cmd_handler = 0x40002be0;
hci_vs_set_pref_slave_latency_cmd_handler = 0x40002bec;
hci_wr_auth_payl_to_cmd_handler = 0x40002bf8;
ll_channel_map_ind_handler = 0x40002c04;
ll_connection_param_req_handler = 0x40002c10;
ll_connection_param_rsp_handler = 0x40002c1c;
ll_connection_update_ind_handler = 0x40002c28;
ll_enc_req_handler = 0x40002c34;
ll_enc_rsp_handler = 0x40002c40;
ll_feature_req_handler = 0x40002c4c;
ll_feature_rsp_handler = 0x40002c58;
ll_length_req_handler = 0x40002c64;
ll_length_rsp_handler = 0x40002c70;
ll_min_used_channels_ind_handler = 0x40002c7c;
ll_pause_enc_req_handler = 0x40002c88;
ll_pause_enc_rsp_handler = 0x40002c94;
ll_phy_req_handler = 0x40002ca0;
ll_phy_rsp_handler = 0x40002cac;
ll_phy_update_ind_handler = 0x40002cb8;
ll_ping_req_handler = 0x40002cc4;
ll_ping_rsp_handler = 0x40002cd0;
ll_slave_feature_req_handler = 0x40002cdc;
ll_start_enc_req_handler = 0x40002ce8;
ll_start_enc_rsp_handler = 0x40002cf4;
ll_terminate_ind_handler = 0x40002d00;
ll_version_ind_handler = 0x40002d0c;
llc_auth_payl_nearly_to_handler = 0x40002d18;
llc_auth_payl_real_to_handler = 0x40002d24;
llc_encrypt_ind_handler = 0x40002d30;
llc_hci_command_handler_wrapper = 0x40002d3c;
llc_ll_connection_param_req_pdu_send = 0x40002d48;
llc_ll_connection_param_rsp_pdu_send = 0x40002d54;
llc_ll_connection_update_ind_pdu_send = 0x40002d60;
llc_ll_enc_req_pdu_send = 0x40002d6c;
llc_ll_enc_rsp_pdu_send = 0x40002d78;
llc_ll_feature_req_pdu_send = 0x40002d84;
llc_ll_feature_rsp_pdu_send = 0x40002d90;
llc_ll_length_req_pdu_send = 0x40002d9c;
llc_ll_length_rsp_pdu_send = 0x40002da8;
llc_ll_pause_enc_req_pdu_send = 0x40002db4;
llc_ll_pause_enc_rsp_pdu_send = 0x40002dc0;
llc_ll_phy_req_pdu_send = 0x40002dcc;
llc_ll_phy_rsp_pdu_send = 0x40002dd8;
llc_ll_ping_req_pdu_send = 0x40002de4;
llc_ll_ping_rsp_pdu_send = 0x40002df0;
llc_ll_start_enc_req_pdu_send = 0x40002dfc;
llc_ll_start_enc_rsp_pdu_send = 0x40002e08;
llc_ll_terminate_ind_pdu_send = 0x40002e14;
llc_ll_unknown_rsp_pdu_send = 0x40002e20;
llc_llcp_ch_map_update_ind_pdu_send = 0x40002e2c;
llc_llcp_phy_upd_ind_pdu_send = 0x40002e38;
llc_llcp_version_ind_pdu_send = 0x40002e44;
llc_op_ch_map_upd_ind_handler = 0x40002e50;
llc_op_con_upd_ind_handler = 0x40002e5c;
llc_op_disconnect_ind_handler = 0x40002e68;
llc_op_dl_upd_ind_handler = 0x40002e74;
llc_op_encrypt_ind_handler = 0x40002e80;
llc_op_feats_exch_ind_handler = 0x40002e8c;
llc_op_le_ping_ind_handler = 0x40002e98;
llc_op_phy_upd_ind_handler = 0x40002ea4;
llc_op_ver_exch_ind_handler = 0x40002eb0;
llc_stopped_ind_handler = 0x40002ebc;
lld_acl_rx_ind_handler = 0x40002ec8;
lld_acl_tx_cfm_handler = 0x40002ed4;
lld_adv_end_ind_handler = 0x40002ee0;
lld_adv_rep_ind_handler = 0x40002eec;
lld_ch_map_upd_cfm_handler = 0x40002ef8;
lld_con_estab_ind_handler = 0x40002f04;
lld_con_evt_sd_evt_time_set = 0x40002f10;
lld_con_offset_upd_ind_handler = 0x40002f1c;
lld_con_param_upd_cfm_handler = 0x40002f28;
lld_disc_ind_handler = 0x40002f34;
lld_init_end_ind_handler = 0x40002f40;
lld_llcp_rx_ind_handler_wrapper = 0x40002f4c;
lld_llcp_tx_cfm_handler = 0x40002f58;
lld_per_adv_end_ind_handler = 0x40002f64;
lld_per_adv_rep_ind_handler = 0x40002f70;
lld_per_adv_rx_end_ind_handler = 0x40002f7c;
lld_phy_coded_500k_get = 0x40002f88;
lld_phy_upd_cfm_handler = 0x40002f94;
lld_scan_end_ind_handler = 0x40002fa0;
lld_scan_req_ind_handler = 0x40002fac;
lld_sync_start_req_handler = 0x40002fb8;
lld_test_end_ind_handler = 0x40002fc4;
lld_update_rxbuf_handler = 0x40002fd0;
llm_ch_map_update_ind_handler = 0x40002fdc;
llm_hci_command_handler_wrapper = 0x40002fe8;
llm_scan_period_to_handler = 0x40002ff4;
r_Add2SelfBigHex256 = 0x40003000;
r_AddBigHex256 = 0x4000300c;
r_AddBigHexModP256 = 0x40003018;
r_AddP256 = 0x40003024;
r_AddPdiv2_256 = 0x40003030;
r_GF_Jacobian_Point_Addition256 = 0x4000303c;
r_GF_Jacobian_Point_Double256 = 0x40003048;
r_GF_Point_Jacobian_To_Affine256 = 0x40003054;
r_MultiplyBigHexByUint32_256 = 0x40003060;
r_MultiplyBigHexModP256 = 0x4000306c;
r_MultiplyByU16ModP256 = 0x40003078;
r_SubtractBigHex256 = 0x40003084;
r_SubtractBigHexMod256 = 0x40003090;
r_SubtractBigHexUint32_256 = 0x4000309c;
r_SubtractFromSelfBigHex256 = 0x400030a8;
r_SubtractFromSelfBigHexSign256 = 0x400030b4;
r_aes_alloc = 0x400030c0;
r_aes_ccm_continue = 0x400030cc;
r_aes_ccm_process_e = 0x400030d8;
r_aes_ccm_xor_128_lsb = 0x400030e4;
r_aes_ccm_xor_128_msb = 0x400030f0;
r_aes_cmac_continue = 0x400030fc;
r_aes_cmac_start = 0x40003108;
r_aes_k1_continue = 0x40003114;
r_aes_k2_continue = 0x40003120;
r_aes_k3_continue = 0x4000312c;
r_aes_k4_continue = 0x40003138;
r_aes_shift_left_128 = 0x40003144;
r_aes_start = 0x40003150;
r_aes_xor_128 = 0x4000315c;
r_assert_err = 0x40003168;
r_assert_param = 0x40003174;
r_assert_warn = 0x40003180;
r_bigHexInversion256 = 0x4000318c;
r_ble_sw_cca_check_isr = 0x40003198;
r_ble_util_buf_acl_tx_alloc = 0x400031a4;
r_ble_util_buf_acl_tx_elt_get = 0x400031b0;
r_ble_util_buf_acl_tx_free = 0x400031bc;
r_ble_util_buf_acl_tx_free_in_isr = 0x400031c8;
r_ble_util_buf_adv_tx_alloc = 0x400031d4;
r_ble_util_buf_adv_tx_free = 0x400031e0;
r_ble_util_buf_adv_tx_free_in_isr = 0x400031ec;
r_ble_util_buf_env_deinit = 0x400031f8;
r_ble_util_buf_env_init = 0x40003204;
r_ble_util_buf_get_rx_buf_nb = 0x40003210;
r_ble_util_buf_get_rx_buf_size = 0x4000321c;
r_ble_util_buf_llcp_tx_alloc = 0x40003228;
r_ble_util_buf_llcp_tx_free = 0x40003234;
r_ble_util_buf_rx_alloc = 0x40003240;
r_ble_util_buf_rx_alloc_in_isr = 0x4000324c;
r_ble_util_buf_rx_free = 0x40003258;
r_ble_util_buf_rx_free_in_isr = 0x40003264;
r_ble_util_buf_set_rx_buf_nb = 0x40003270;
r_ble_util_buf_set_rx_buf_size = 0x4000327c;
r_ble_util_data_rx_buf_reset = 0x40003288;
r_bt_bb_get_intr_mask = 0x40003294;
r_bt_bb_intr_clear = 0x400032a0;
r_bt_bb_intr_mask_set = 0x400032ac;
/*
r_bt_bb_isr = 0x400032b8;
*/
r_bt_rf_coex_cfg_set = 0x400032c4;
r_bt_rf_coex_conn_dynamic_pti_en_get = 0x400032d0;
/*
r_bt_rf_coex_conn_phy_coded_data_time_limit_en_get = 0x400032dc;
*/
r_bt_rf_coex_ext_adv_dynamic_pti_en_get = 0x400032e8;
r_bt_rf_coex_ext_scan_dynamic_pti_en_get = 0x400032f4;
r_bt_rf_coex_legacy_adv_dynamic_pti_en_get = 0x40003300;
r_bt_rf_coex_per_adv_dynamic_pti_en_get = 0x4000330c;
r_bt_rf_coex_pti_table_get = 0x40003318;
r_bt_rf_coex_st_param_get = 0x40003324;
r_bt_rf_coex_st_param_set = 0x40003330;
r_bt_rf_coex_sync_scan_dynamic_pti_en_get = 0x4000333c;
r_bt_rma_apply_rule_cs_fmt = 0x40003348;
r_bt_rma_apply_rule_cs_idx = 0x40003354;
r_bt_rma_configure = 0x40003360;
r_bt_rma_deregister_rule_cs_fmt = 0x4000336c;
r_bt_rma_deregister_rule_cs_idx = 0x40003378;
r_bt_rma_get_ant_by_act = 0x40003384;
r_bt_rma_init = 0x40003390;
r_bt_rma_register_rule_cs_fmt = 0x4000339c;
r_bt_rma_register_rule_cs_idx = 0x400033a8;
r_bt_rtp_apply_rule_cs_fmt = 0x400033b4;
r_bt_rtp_apply_rule_cs_idx = 0x400033c0;
r_bt_rtp_deregister_rule_cs_fmt = 0x400033cc;
r_bt_rtp_deregister_rule_cs_idx = 0x400033d8;
/*
r_bt_rtp_get_txpwr_idx_by_act = 0x400033e4;
*/
r_bt_rtp_init = 0x400033f0;
r_bt_rtp_register_rule_cs_fmt = 0x400033fc;
r_bt_rtp_register_rule_cs_idx = 0x40003408;
r_btdm_isr = 0x40003414;
/*
r_btdm_task_post = 0x40003420;
r_btdm_task_post_from_isr = 0x4000342c;
r_btdm_task_recycle = 0x40003438;
*/
r_cali_phase_match_p = 0x40003444;
r_cmp_abs_time = 0x40003450;
r_cmp_dest_id = 0x4000345c;
r_cmp_timer_id = 0x40003468;
r_co_bdaddr_compare = 0x40003474;
r_co_ble_pkt_dur_in_us = 0x40003480;
r_co_list_extract = 0x4000348c;
r_co_list_extract_after = 0x40003498;
r_co_list_extract_sublist = 0x400034a4;
r_co_list_find = 0x400034b0;
r_co_list_init = 0x400034bc;
r_co_list_insert_after = 0x400034c8;
r_co_list_insert_before = 0x400034d4;
r_co_list_merge = 0x400034e0;
r_co_list_pool_init = 0x400034ec;
r_co_list_pop_front = 0x400034f8;
r_co_list_push_back = 0x40003504;
r_co_list_push_back_sublist = 0x40003510;
r_co_list_push_front = 0x4000351c;
r_co_list_size = 0x40003528;
r_co_nb_good_le_channels = 0x40003534;
r_co_util_pack = 0x40003540;
r_co_util_read_array_size = 0x4000354c;
r_co_util_unpack = 0x40003558;
r_dbg_env_deinit = 0x40003564;
r_dbg_env_init = 0x40003570;
r_dbg_platform_reset_complete = 0x4000357c;
r_dl_upd_proc_start = 0x40003588;
r_dump_data = 0x40003594;
r_ecc_abort_key256_generation = 0x400035a0;
r_ecc_gen_new_public_key = 0x400035ac;
r_ecc_gen_new_secret_key = 0x400035b8;
r_ecc_generate_key256 = 0x400035c4;
r_ecc_get_debug_Keys = 0x400035d0;
r_ecc_init = 0x400035dc;
r_ecc_is_valid_point = 0x400035e8;
r_ecc_multiplication_event_handler = 0x400035f4;
r_ecc_point_multiplication_win_256 = 0x40003600;
r_emi_alloc_em_mapping_by_offset = 0x4000360c;
r_emi_base_reg_lut_show = 0x40003618;
r_emi_em_base_reg_show = 0x40003624;
r_emi_free_em_mapping_by_offset = 0x40003630;
r_emi_get_em_mapping_idx_by_offset = 0x4000363c;
r_emi_get_mem_addr_by_offset = 0x40003648;
r_emi_overwrite_em_mapping_by_offset = 0x40003654;
r_esp_vendor_hci_command_handler = 0x40003660;
r_get_stack_usage = 0x4000366c;
r_h4tl_acl_hdr_rx_evt_handler = 0x40003678;
r_h4tl_cmd_hdr_rx_evt_handler = 0x40003684;
r_h4tl_cmd_pld_rx_evt_handler = 0x40003690;
r_h4tl_eif_io_event_post = 0x4000369c;
r_h4tl_eif_register = 0x400036a8;
r_h4tl_init = 0x400036b4;
r_h4tl_out_of_sync = 0x400036c0;
r_h4tl_out_of_sync_check = 0x400036cc;
r_h4tl_read_hdr = 0x400036d8;
r_h4tl_read_next_out_of_sync = 0x400036e4;
r_h4tl_read_payl = 0x400036f0;
r_h4tl_read_start = 0x400036fc;
r_h4tl_rx_acl_hdr_extract = 0x40003708;
r_h4tl_rx_cmd_hdr_extract = 0x40003714;
r_h4tl_rx_done = 0x40003720;
r_h4tl_start = 0x4000372c;
r_h4tl_stop = 0x40003738;
r_h4tl_tx_done = 0x40003744;
r_h4tl_tx_evt_handler = 0x40003750;
r_h4tl_write = 0x4000375c;
r_hci_acl_tx_data_alloc = 0x40003768;
r_hci_acl_tx_data_received = 0x40003774;
r_hci_basic_cmd_send_2_controller = 0x40003780;
r_hci_ble_adv_report_filter_check = 0x4000378c;
r_hci_ble_adv_report_tx_check = 0x40003798;
r_hci_ble_conhdl_register = 0x400037a4;
r_hci_ble_conhdl_unregister = 0x400037b0;
r_hci_build_acl_data = 0x400037bc;
r_hci_build_cc_evt = 0x400037c8;
r_hci_build_cs_evt = 0x400037d4;
r_hci_build_evt = 0x400037e0;
r_hci_build_le_evt = 0x400037ec;
r_hci_cmd_get_max_param_size = 0x400037f8;
r_hci_cmd_received = 0x40003804;
r_hci_cmd_reject = 0x40003810;
r_hci_evt_mask_check = 0x4000381c;
r_hci_evt_mask_set = 0x40003828;
r_hci_fc_acl_buf_size_set = 0x40003834;
r_hci_fc_acl_en = 0x40003840;
r_hci_fc_acl_packet_sent = 0x4000384c;
r_hci_fc_check_host_available_nb_acl_packets = 0x40003858;
r_hci_fc_host_nb_acl_pkts_complete = 0x40003864;
r_hci_fc_init = 0x40003870;
r_hci_look_for_cmd_desc = 0x4000387c;
r_hci_look_for_evt_desc = 0x40003888;
r_hci_look_for_le_evt_desc = 0x40003894;
r_hci_look_for_le_evt_desc_esp = 0x400038a0;
r_hci_pack_bytes = 0x400038ac;
/*
r_hci_register_vendor_desc_tab = 0x400038b8;
*/
r_hci_send_2_controller = 0x400038c4;
r_hci_send_2_host = 0x400038d0;
r_hci_tl_c2h_data_flow_on = 0x400038dc;
r_hci_tl_cmd_hdr_rx_evt_handler = 0x400038e8;
r_hci_tl_cmd_pld_rx_evt_handler = 0x400038f4;
r_hci_tl_get_pkt = 0x40003900;
r_hci_tl_hci_pkt_handler = 0x4000390c;
r_hci_tl_hci_tx_done_evt_handler = 0x40003918;
r_hci_tl_inc_nb_h2c_cmd_pkts = 0x40003924;
r_hci_tl_save_pkt = 0x40003930;
r_hci_tl_send = 0x4000393c;
r_hci_tx_done = 0x40003948;
r_hci_tx_start = 0x40003954;
r_hci_tx_trigger = 0x40003960;
r_isValidSecretKey_256 = 0x4000396c;
r_ke_check_malloc = 0x40003978;
r_ke_event_callback_set = 0x40003984;
r_ke_event_clear = 0x40003990;
r_ke_event_flush = 0x4000399c;
r_ke_event_get = 0x400039a8;
r_ke_event_get_all = 0x400039b4;
r_ke_event_init = 0x400039c0;
r_ke_event_schedule = 0x400039cc;
r_ke_event_set = 0x400039d8;
r_ke_flush = 0x400039e4;
r_ke_free = 0x400039f0;
r_ke_handler_search = 0x400039fc;
r_ke_init = 0x40003a08;
r_ke_is_free = 0x40003a14;
r_ke_malloc = 0x40003a20;
r_ke_mem_init = 0x40003a2c;
r_ke_mem_is_empty = 0x40003a38;
r_ke_mem_is_in_heap = 0x40003a44;
r_ke_msg_alloc = 0x40003a50;
r_ke_msg_dest_id_get = 0x40003a5c;
r_ke_msg_discard = 0x40003a68;
r_ke_msg_forward = 0x40003a74;
r_ke_msg_forward_new_id = 0x40003a80;
r_ke_msg_free = 0x40003a8c;
r_ke_msg_in_queue = 0x40003a98;
r_ke_msg_save = 0x40003aa4;
r_ke_msg_send = 0x40003ab0;
r_ke_msg_send_basic = 0x40003abc;
r_ke_msg_src_id_get = 0x40003ac8;
r_ke_queue_extract = 0x40003ad4;
r_ke_queue_insert = 0x40003ae0;
r_ke_sleep_check = 0x40003aec;
r_ke_state_get = 0x40003af8;
r_ke_state_set = 0x40003b04;
r_ke_task_check = 0x40003b10;
r_ke_task_create = 0x40003b1c;
r_ke_task_delete = 0x40003b28;
r_ke_task_handler_get = 0x40003b34;
r_ke_task_init = 0x40003b40;
r_ke_task_msg_flush = 0x40003b4c;
r_ke_task_saved_update = 0x40003b58;
/*
r_ke_task_schedule = 0x40003b64;
*/
r_ke_time = 0x40003b70;
r_ke_time_cmp = 0x40003b7c;
r_ke_time_past = 0x40003b88;
r_ke_timer_active = 0x40003b94;
r_ke_timer_adjust_all = 0x40003ba0;
r_ke_timer_clear = 0x40003bac;
r_ke_timer_init = 0x40003bb8;
r_ke_timer_schedule = 0x40003bc4;
r_ke_timer_set = 0x40003bd0;
r_led_init = 0x40003bdc;
r_led_set_all = 0x40003be8;
r_llc_aes_res_cb = 0x40003bf4;
r_llc_ch_map_up_proc_err_cb = 0x40003c00;
r_llc_cleanup = 0x40003c0c;
r_llc_cmd_cmp_send = 0x40003c18;
r_llc_cmd_stat_send = 0x40003c24;
r_llc_con_move_cbk = 0x40003c30;
r_llc_con_plan_set_update = 0x40003c3c;
r_llc_con_upd_param_in_range = 0x40003c48;
r_llc_disconnect = 0x40003c54;
r_llc_disconnect_end = 0x40003c60;
r_llc_disconnect_proc_continue = 0x40003c6c;
r_llc_disconnect_proc_err_cb = 0x40003c78;
r_llc_dl_chg_check = 0x40003c84;
r_llc_dle_proc_err_cb = 0x40003c90;
r_llc_feats_exch_proc_err_cb = 0x40003c9c;
r_llc_hci_cmd_handler_tab_p_get = 0x40003ca8;
/*
r_llc_hci_command_handler = 0x40003cb4;
*/
r_llc_hci_con_param_req_evt_send = 0x40003cc0;
r_llc_hci_con_upd_info_send = 0x40003ccc;
r_llc_hci_disconnected_dis = 0x40003cd8;
r_llc_hci_dl_upd_info_send = 0x40003ce4;
r_llc_hci_enc_evt_send = 0x40003cf0;
r_llc_hci_feats_info_send = 0x40003cfc;
r_llc_hci_le_phy_upd_cmp_evt_send = 0x40003d08;
r_llc_hci_ltk_request_evt_send = 0x40003d14;
r_llc_hci_nb_cmp_pkts_evt_send = 0x40003d20;
r_llc_hci_version_info_send = 0x40003d2c;
r_llc_init_term_proc = 0x40003d38;
r_llc_iv_skd_rand_gen = 0x40003d44;
r_llc_le_ping_proc_continue = 0x40003d50;
r_llc_le_ping_proc_err_cb = 0x40003d5c;
r_llc_le_ping_restart = 0x40003d68;
r_llc_le_ping_set = 0x40003d74;
r_llc_ll_pause_enc_rsp_ack_handler = 0x40003d80;
r_llc_ll_reject_ind_ack_handler = 0x40003d8c;
r_llc_ll_reject_ind_pdu_send = 0x40003d98;
r_llc_ll_start_enc_rsp_ack_handler = 0x40003da4;
r_llc_ll_terminate_ind_ack = 0x40003db0;
r_llc_ll_unknown_ind_handler = 0x40003dbc;
r_llc_llcp_send = 0x40003dc8;
r_llc_llcp_state_set = 0x40003dd4;
r_llc_llcp_trans_timer_set = 0x40003de0;
r_llc_llcp_tx_check = 0x40003dec;
r_llc_loc_ch_map_proc_continue = 0x40003df8;
/*
r_llc_loc_con_upd_proc_continue = 0x40003e04;
*/
r_llc_loc_con_upd_proc_err_cb = 0x40003e10;
r_llc_loc_dl_upd_proc_continue = 0x40003e1c;
r_llc_loc_encrypt_proc_continue = 0x40003e28;
r_llc_loc_encrypt_proc_err_cb = 0x40003e34;
r_llc_loc_feats_exch_proc_continue = 0x40003e40;
r_llc_loc_phy_upd_proc_continue = 0x40003e4c;
r_llc_loc_phy_upd_proc_err_cb = 0x40003e58;
r_llc_msg_handler_tab_p_get = 0x40003e64;
r_llc_pref_param_compute = 0x40003e70;
r_llc_proc_collision_check = 0x40003e7c;
r_llc_proc_err_ind = 0x40003e88;
r_llc_proc_get = 0x40003e94;
r_llc_proc_id_get = 0x40003ea0;
r_llc_proc_reg = 0x40003eac;
r_llc_proc_state_get = 0x40003eb8;
r_llc_proc_state_set = 0x40003ec4;
r_llc_proc_timer_pause_set = 0x40003ed0;
r_llc_proc_timer_set = 0x40003edc;
r_llc_proc_unreg = 0x40003ee8;
r_llc_rem_ch_map_proc_continue = 0x40003ef4;
/*
r_llc_rem_con_upd_proc_continue = 0x40003f00;
*/
r_llc_rem_con_upd_proc_err_cb = 0x40003f0c;
r_llc_rem_dl_upd_proc = 0x40003f18;
r_llc_rem_encrypt_proc_continue = 0x40003f24;
r_llc_rem_encrypt_proc_err_cb = 0x40003f30;
r_llc_rem_phy_upd_proc_continue = 0x40003f3c;
r_llc_rem_phy_upd_proc_err_cb = 0x40003f48;
r_llc_role_get = 0x40003f54;
r_llc_sk_gen = 0x40003f60;
r_llc_start = 0x40003f6c;
r_llc_stop = 0x40003f78;
r_llc_ver_exch_loc_proc_continue = 0x40003f84;
r_llc_ver_proc_err_cb = 0x40003f90;
r_llcp_pdu_handler_tab_p_get = 0x40003f9c;
r_lld_aa_gen = 0x40003fa8;
r_lld_adv_adv_data_set = 0x40003fb4;
r_lld_adv_adv_data_update = 0x40003fc0;
r_lld_adv_aux_ch_idx_set = 0x40003fcc;
r_lld_adv_aux_evt_canceled_cbk = 0x40003fd8;
r_lld_adv_aux_evt_start_cbk = 0x40003fe4;
r_lld_adv_coex_check_ext_adv_synced = 0x40003ff0;
r_lld_adv_coex_env_reset = 0x40003ffc;
r_lld_adv_duration_update = 0x40004008;
r_lld_adv_dynamic_pti_process = 0x40004014;
r_lld_adv_end = 0x40004020;
r_lld_adv_evt_canceled_cbk = 0x4000402c;
r_lld_adv_evt_start_cbk = 0x40004038;
r_lld_adv_ext_chain_construct = 0x40004044;
r_lld_adv_ext_pkt_prepare = 0x40004050;
r_lld_adv_frm_cbk = 0x4000405c;
r_lld_adv_frm_isr = 0x40004068;
r_lld_adv_frm_skip_isr = 0x40004074;
r_lld_adv_init = 0x40004080;
r_lld_adv_pkt_rx = 0x4000408c;
r_lld_adv_pkt_rx_connect_ind = 0x40004098;
r_lld_adv_pkt_rx_send_scan_req_evt = 0x400040a4;
r_lld_adv_rand_addr_update = 0x400040b0;
r_lld_adv_restart = 0x400040bc;
r_lld_adv_scan_rsp_data_set = 0x400040c8;
r_lld_adv_scan_rsp_data_update = 0x400040d4;
r_lld_adv_set_tx_power = 0x400040e0;
r_lld_adv_start = 0x400040ec;
r_lld_adv_stop = 0x400040f8;
r_lld_adv_sync_info_set = 0x40004104;
r_lld_adv_sync_info_update = 0x40004110;
r_lld_calc_aux_rx = 0x4000411c;
r_lld_cca_alloc = 0x40004128;
r_lld_cca_data_reset = 0x40004134;
r_lld_cca_free = 0x40004140;
r_lld_ch_assess_data_get = 0x4000414c;
r_lld_ch_idx_get = 0x40004158;
r_lld_ch_map_set = 0x40004164;
r_lld_channel_assess = 0x40004170;
r_lld_con_activity_act_offset_compute = 0x4000417c;
r_lld_con_activity_offset_compute = 0x40004188;
r_lld_con_ch_map_update = 0x40004194;
r_lld_con_cleanup = 0x400041a0;
r_lld_con_current_tx_power_get = 0x400041ac;
r_lld_con_data_flow_set = 0x400041b8;
r_lld_con_data_len_update = 0x400041c4;
r_lld_con_data_tx = 0x400041d0;
r_lld_con_enc_key_load = 0x400041dc;
r_lld_con_event_counter_get = 0x400041e8;
r_lld_con_evt_canceled_cbk = 0x400041f4;
r_lld_con_evt_duration_min_get = 0x40004200;
r_lld_con_evt_max_eff_time_cal = 0x4000420c;
r_lld_con_evt_sd_evt_time_get = 0x40004218;
r_lld_con_evt_start_cbk = 0x40004224;
r_lld_con_evt_time_update = 0x40004230;
r_lld_con_free_all_tx_buf = 0x4000423c;
r_lld_con_frm_cbk = 0x40004248;
r_lld_con_frm_isr = 0x40004254;
r_lld_con_frm_skip_isr = 0x40004260;
r_lld_con_init = 0x4000426c;
r_lld_con_llcp_tx = 0x40004278;
r_lld_con_max_lat_calc = 0x40004284;
r_lld_con_offset_get = 0x40004290;
r_lld_con_param_update = 0x4000429c;
r_lld_con_phys_update = 0x400042a8;
r_lld_con_pref_slave_evt_dur_set = 0x400042b4;
r_lld_con_pref_slave_latency_set = 0x400042c0;
r_lld_con_rssi_get = 0x400042cc;
r_lld_con_rx = 0x400042d8;
r_lld_con_rx_channel_assess = 0x400042e4;
r_lld_con_rx_enc = 0x400042f0;
r_lld_con_rx_isr = 0x400042fc;
r_lld_con_rx_link_info_check = 0x40004308;
r_lld_con_rx_llcp_check = 0x40004314;
r_lld_con_rx_sync_time_update = 0x40004320;
/*
r_lld_con_sched = 0x4000432c;
*/
r_lld_con_set_tx_power = 0x40004338;
r_lld_con_start = 0x40004344;
/*
r_lld_con_stop = 0x40004350;
*/
r_lld_con_tx = 0x4000435c;
r_lld_con_tx_enc = 0x40004368;
r_lld_con_tx_isr = 0x40004374;
r_lld_con_tx_len_update = 0x40004380;
r_lld_con_tx_len_update_for_intv = 0x4000438c;
r_lld_con_tx_len_update_for_rate = 0x40004398;
r_lld_con_tx_prog = 0x400043a4;
r_lld_conn_dynamic_pti_process = 0x400043b0;
r_lld_continue_scan_rx_isr_end_process = 0x400043bc;
r_lld_ext_scan_dynamic_pti_process = 0x400043c8;
r_lld_hw_cca_end_isr = 0x400043d4;
r_lld_hw_cca_evt_handler = 0x400043e0;
r_lld_hw_cca_isr = 0x400043ec;
r_lld_init_cal_anchor_point = 0x400043f8;
r_lld_init_compute_winoffset = 0x40004404;
r_lld_init_connect_req_pack = 0x40004410;
r_lld_init_end = 0x4000441c;
r_lld_init_evt_canceled_cbk = 0x40004428;
r_lld_init_evt_start_cbk = 0x40004434;
r_lld_init_frm_cbk = 0x40004440;
r_lld_init_frm_eof_isr = 0x4000444c;
r_lld_init_frm_skip_isr = 0x40004458;
r_lld_init_init = 0x40004464;
r_lld_init_process_pkt_rx = 0x40004470;
r_lld_init_process_pkt_rx_adv_ext_ind = 0x4000447c;
r_lld_init_process_pkt_rx_adv_ind_or_direct_ind = 0x40004488;
r_lld_init_process_pkt_rx_aux_connect_rsp = 0x40004494;
r_lld_init_process_pkt_tx = 0x400044a0;
r_lld_init_process_pkt_tx_cal_con_timestamp = 0x400044ac;
r_lld_init_sched = 0x400044b8;
r_lld_init_set_tx_power = 0x400044c4;
r_lld_init_start = 0x400044d0;
r_lld_init_stop = 0x400044dc;
r_lld_instant_proc_end = 0x400044e8;
/*
r_lld_llcp_rx_ind_handler = 0x400044f4;
*/
r_lld_per_adv_ch_map_update = 0x40004500;
r_lld_per_adv_chain_construct = 0x4000450c;
r_lld_per_adv_cleanup = 0x40004518;
r_lld_per_adv_coex_env_reset = 0x40004524;
r_lld_per_adv_data_set = 0x40004530;
r_lld_per_adv_data_update = 0x4000453c;
r_lld_per_adv_dynamic_pti_process = 0x40004548;
r_lld_per_adv_evt_canceled_cbk = 0x40004554;
r_lld_per_adv_evt_start_cbk = 0x40004560;
r_lld_per_adv_ext_pkt_prepare = 0x4000456c;
r_lld_per_adv_frm_cbk = 0x40004578;
r_lld_per_adv_frm_isr = 0x40004584;
r_lld_per_adv_frm_skip_isr = 0x40004590;
r_lld_per_adv_init = 0x4000459c;
r_lld_per_adv_init_info_get = 0x400045a8;
r_lld_per_adv_list_add = 0x400045b4;
r_lld_per_adv_list_rem = 0x400045c0;
/*
r_lld_per_adv_sched = 0x400045cc;
*/
r_lld_per_adv_set_tx_power = 0x400045d8;
r_lld_per_adv_start = 0x400045e4;
r_lld_per_adv_stop = 0x400045f0;
r_lld_per_adv_sync_info_get = 0x400045fc;
r_lld_process_cca_data = 0x40004608;
r_lld_ral_search = 0x40004614;
r_lld_read_clock = 0x40004620;
r_lld_res_list_add = 0x4000462c;
r_lld_res_list_clear = 0x40004638;
r_lld_res_list_is_empty = 0x40004644;
r_lld_res_list_local_rpa_get = 0x40004650;
r_lld_res_list_peer_rpa_get = 0x4000465c;
r_lld_res_list_peer_update = 0x40004668;
r_lld_res_list_priv_mode_update = 0x40004674;
r_lld_res_list_rem = 0x40004680;
r_lld_reset_reg = 0x4000468c;
r_lld_rpa_renew = 0x40004698;
r_lld_rpa_renew_evt_canceled_cbk = 0x400046a4;
r_lld_rpa_renew_evt_start_cbk = 0x400046b0;
r_lld_rpa_renew_instant_cbk = 0x400046bc;
r_lld_rxdesc_check = 0x400046c8;
r_lld_rxdesc_free = 0x400046d4;
r_lld_scan_create_sync = 0x400046e0;
r_lld_scan_create_sync_cancel = 0x400046ec;
r_lld_scan_end = 0x400046f8;
r_lld_scan_evt_canceled_cbk = 0x40004704;
r_lld_scan_evt_start_cbk = 0x40004710;
r_lld_scan_frm_cbk = 0x4000471c;
r_lld_scan_frm_eof_isr = 0x40004728;
r_lld_scan_frm_rx_isr = 0x40004734;
r_lld_scan_frm_skip_isr = 0x40004740;
r_lld_scan_init = 0x4000474c;
r_lld_scan_params_update = 0x40004758;
/*
r_lld_scan_process_pkt_rx = 0x40004764;
r_lld_scan_process_pkt_rx_adv_rep = 0x40004770;
*/
r_lld_scan_process_pkt_rx_aux_adv_ind = 0x4000477c;
r_lld_scan_process_pkt_rx_aux_chain_ind = 0x40004788;
r_lld_scan_process_pkt_rx_aux_scan_rsp = 0x40004794;
r_lld_scan_process_pkt_rx_ext_adv = 0x400047a0;
r_lld_scan_process_pkt_rx_ext_adv_ind = 0x400047ac;
r_lld_scan_process_pkt_rx_legacy_adv = 0x400047b8;
r_lld_scan_restart = 0x400047c4;
r_lld_scan_sched = 0x400047d0;
r_lld_scan_set_tx_power = 0x400047dc;
r_lld_scan_start = 0x400047e8;
r_lld_scan_stop = 0x400047f4;
r_lld_scan_sync_accept = 0x40004800;
r_lld_scan_sync_info_unpack = 0x4000480c;
r_lld_scan_trunc_ind = 0x40004818;
r_lld_sw_cca_evt_handler = 0x40004824;
r_lld_sw_cca_isr = 0x40004830;
r_lld_sync_ch_map_update = 0x4000483c;
r_lld_sync_cleanup = 0x40004848;
r_lld_sync_evt_canceled_cbk = 0x40004854;
r_lld_sync_evt_start_cbk = 0x40004860;
r_lld_sync_frm_cbk = 0x4000486c;
r_lld_sync_frm_eof_isr = 0x40004878;
r_lld_sync_frm_rx_isr = 0x40004884;
r_lld_sync_frm_skip_isr = 0x40004890;
r_lld_sync_init = 0x4000489c;
r_lld_sync_process_pkt_rx = 0x400048a8;
r_lld_sync_process_pkt_rx_aux_sync_ind = 0x400048b4;
r_lld_sync_process_pkt_rx_pkt_check = 0x400048c0;
r_lld_sync_scan_dynamic_pti_process = 0x400048cc;
r_lld_sync_sched = 0x400048d8;
r_lld_sync_start = 0x400048e4;
r_lld_sync_stop = 0x400048f0;
r_lld_sync_trunc_ind = 0x400048fc;
r_lld_test_cleanup = 0x40004908;
r_lld_test_evt_canceled_cbk = 0x40004914;
r_lld_test_evt_start_cbk = 0x40004920;
r_lld_test_freq2chnl = 0x4000492c;
r_lld_test_frm_cbk = 0x40004938;
r_lld_test_frm_isr = 0x40004944;
r_lld_test_init = 0x40004950;
r_lld_test_rx_isr = 0x4000495c;
r_lld_test_set_tx_power = 0x40004968;
r_lld_test_start = 0x40004974;
r_lld_test_stop = 0x40004980;
r_lld_update_rxbuf = 0x4000498c;
r_lld_update_rxbuf_isr = 0x40004998;
r_lld_white_list_add = 0x400049a4;
r_lld_white_list_rem = 0x400049b0;
r_llm_activity_free_get = 0x400049bc;
r_llm_activity_free_set = 0x400049c8;
r_llm_activity_syncing_get = 0x400049d4;
r_llm_adv_con_len_check = 0x400049e0;
r_llm_adv_hdl_to_id = 0x400049ec;
r_llm_adv_rep_flow_control_check = 0x400049f8;
r_llm_adv_rep_flow_control_update = 0x40004a04;
r_llm_adv_reports_list_check = 0x40004a10;
r_llm_adv_set_all_release = 0x40004a1c;
r_llm_adv_set_dft_params = 0x40004a28;
r_llm_adv_set_release = 0x40004a34;
r_llm_aes_res_cb = 0x40004a40;
r_llm_ble_update_adv_flow_control = 0x40004a4c;
r_llm_ch_map_update = 0x40004a58;
r_llm_cmd_cmp_send = 0x40004a64;
r_llm_cmd_stat_send = 0x40004a70;
r_llm_dev_list_empty_entry = 0x40004a7c;
r_llm_dev_list_search = 0x40004a88;
r_llm_env_adv_dup_filt_deinit = 0x40004a94;
r_llm_env_adv_dup_filt_init = 0x40004aa0;
r_llm_init_ble_adv_report_flow_contol = 0x40004aac;
r_llm_is_dev_connected = 0x40004ab8;
r_llm_is_dev_synced = 0x40004ac4;
r_llm_is_non_con_act_ongoing_check = 0x40004ad0;
r_llm_is_wl_accessible = 0x40004adc;
r_llm_le_evt_mask_check = 0x40004ae8;
/*
r_llm_le_features_get = 0x40004af4;
*/
r_llm_link_disc = 0x40004b00;
r_llm_master_ch_map_get = 0x40004b0c;
r_llm_msg_handler_tab_p_get = 0x40004b18;
r_llm_no_activity = 0x40004b24;
r_llm_per_adv_slot_dur = 0x40004b30;
r_llm_plan_elt_get = 0x40004b3c;
r_llm_rx_path_comp_get = 0x40004b48;
r_llm_scan_start = 0x40004b54;
r_llm_scan_sync_acad_attach = 0x40004b60;
r_llm_scan_sync_acad_detach = 0x40004b6c;
r_llm_send_adv_lost_event_to_host = 0x40004b78;
r_llm_tx_path_comp_get = 0x40004b84;
r_misc_deinit = 0x40004b90;
r_misc_free_em_buf_in_isr = 0x40004b9c;
r_misc_init = 0x40004ba8;
r_misc_msg_handler_tab_p_get = 0x40004bb4;
r_notEqual256 = 0x40004bc0;
r_phy_upd_proc_start = 0x40004bcc;
r_platform_reset = 0x40004bd8;
/*
r_register_esp_vendor_cmd_handler = 0x40004be4;
*/
r_rf_em_init = 0x40004bf0;
r_rf_force_agc_enable = 0x40004bfc;
r_rf_reg_rd = 0x40004c08;
r_rf_reg_wr = 0x40004c14;
r_rf_reset = 0x40004c20;
r_rf_rssi_convert = 0x40004c2c;
r_rf_rw_v9_le_disable = 0x40004c38;
r_rf_rw_v9_le_enable = 0x40004c44;
r_rf_sleep = 0x40004c50;
/*
r_rf_txpwr_cs_get = 0x40004c5c;
r_rf_txpwr_dbm_get = 0x40004c68;
*/
r_rf_util_cs_fmt_convert = 0x40004c74;
r_rw_crypto_aes_ccm = 0x40004c80;
r_rw_crypto_aes_encrypt = 0x40004c8c;
r_rw_crypto_aes_init = 0x40004c98;
r_rw_crypto_aes_k1 = 0x40004ca4;
r_rw_crypto_aes_k2 = 0x40004cb0;
r_rw_crypto_aes_k3 = 0x40004cbc;
r_rw_crypto_aes_k4 = 0x40004cc8;
r_rw_crypto_aes_rand = 0x40004cd4;
r_rw_crypto_aes_result_handler = 0x40004ce0;
r_rw_crypto_aes_s1 = 0x40004cec;
r_rw_cryto_aes_cmac = 0x40004cf8;
r_rw_v9_init_em_radio_table = 0x40004d04;
/*
r_rwble_isr = 0x40004d10;
*/
r_rwble_sleep_enter = 0x40004d1c;
r_rwble_sleep_wakeup_end = 0x40004d28;
r_rwbtdm_isr_wrapper = 0x40004d34;
r_rwip_active_check = 0x40004d40;
r_rwip_aes_encrypt = 0x40004d4c;
r_rwip_assert = 0x40004d58;
r_rwip_crypt_evt_handler = 0x40004d64;
r_rwip_crypt_isr_handler = 0x40004d70;
r_rwip_eif_get = 0x40004d7c;
r_rwip_half_slot_2_lpcycles = 0x40004d88;
r_rwip_hus_2_lpcycles = 0x40004d94;
r_rwip_isr = 0x40004da0;
r_rwip_lpcycles_2_hus = 0x40004dac;
r_rwip_prevent_sleep_clear = 0x40004db8;
r_rwip_prevent_sleep_set = 0x40004dc4;
r_rwip_schedule = 0x40004dd0;
r_rwip_sleep = 0x40004ddc;
r_rwip_sw_int_handler = 0x40004de8;
r_rwip_sw_int_req = 0x40004df4;
r_rwip_time_get = 0x40004e00;
r_rwip_timer_10ms_handler = 0x40004e0c;
r_rwip_timer_10ms_set = 0x40004e18;
r_rwip_timer_hs_handler = 0x40004e24;
r_rwip_timer_hs_set = 0x40004e30;
r_rwip_timer_hus_handler = 0x40004e3c;
r_rwip_timer_hus_set = 0x40004e48;
r_rwip_wakeup = 0x40004e54;
r_rwip_wakeup_end = 0x40004e60;
r_rwip_wlcoex_set = 0x40004e6c;
r_sch_alarm_clear = 0x40004e78;
r_sch_alarm_init = 0x40004e84;
r_sch_alarm_prog = 0x40004e90;
r_sch_alarm_set = 0x40004e9c;
r_sch_alarm_timer_isr = 0x40004ea8;
r_sch_arb_conflict_check = 0x40004eb4;
r_sch_arb_elt_cancel = 0x40004ec0;
/*
r_sch_arb_event_start_isr = 0x40004ecc;
*/
r_sch_arb_init = 0x40004ed8;
r_sch_arb_insert = 0x40004ee4;
r_sch_arb_prog_timer = 0x40004ef0;
r_sch_arb_remove = 0x40004efc;
r_sch_arb_sw_isr = 0x40004f08;
r_sch_plan_chk = 0x40004f14;
r_sch_plan_clock_wrap_offset_update = 0x40004f20;
r_sch_plan_init = 0x40004f2c;
r_sch_plan_interval_req = 0x40004f38;
r_sch_plan_offset_max_calc = 0x40004f44;
r_sch_plan_offset_req = 0x40004f50;
r_sch_plan_position_range_compute = 0x40004f5c;
r_sch_plan_rem = 0x40004f68;
r_sch_plan_req = 0x40004f74;
/*
r_sch_plan_set = 0x40004f80;
r_sch_prog_end_isr = 0x40004f8c;
*/
r_sch_prog_init = 0x40004f98;
r_sch_prog_push = 0x40004fa4;
r_sch_prog_rx_isr = 0x40004fb0;
r_sch_prog_skip_isr = 0x40004fbc;
r_sch_prog_tx_isr = 0x40004fc8;
r_sch_slice_bg_add = 0x40004fd4;
r_sch_slice_bg_remove = 0x40004fe0;
r_sch_slice_compute = 0x40004fec;
r_sch_slice_fg_add = 0x40004ff8;
r_sch_slice_fg_remove = 0x40005004;
r_sch_slice_init = 0x40005010;
r_sch_slice_per_add = 0x4000501c;
r_sch_slice_per_remove = 0x40005028;
r_sdk_config_get_bt_sleep_enable = 0x40005034;
r_sdk_config_get_hl_derived_opts = 0x40005040;
r_sdk_config_get_opts = 0x4000504c;
r_sdk_config_get_priv_opts = 0x40005058;
r_sdk_config_set_bt_sleep_enable = 0x40005064;
r_sdk_config_set_hl_derived_opts = 0x40005070;
r_sdk_config_set_opts = 0x4000507c;
r_specialModP256 = 0x40005088;
r_unloaded_area_init = 0x40005094;
r_vhci_flow_off = 0x400050a0;
r_vhci_flow_on = 0x400050ac;
r_vhci_notify_host_send_available = 0x400050b8;
r_vhci_send_to_host = 0x400050c4;
r_vnd_hci_command_handler = 0x400050d0;
r_vshci_init = 0x400050dc;
vnd_hci_command_handler_wrapper = 0x400050e8;
r_lld_legacy_adv_dynamic_pti_get = 0x400050f4;
r_lld_legacy_adv_dynamic_pti_process = 0x40005100;
r_lld_ext_adv_dynamic_pti_get = 0x4000510c;
r_lld_ext_adv_dynamic_aux_pti_process = 0x40005118;
r_lld_ext_adv_dynamic_pti_process = 0x40005124;
r_lld_adv_ext_pkt_prepare_set = 0x40005130;
/*
r_lld_adv_ext_chain_none_construct = 0x4000513c;
*/
r_lld_adv_ext_chain_connectable_construct = 0x40005148;
/*
r_lld_adv_ext_chain_scannable_construct = 0x40005154;
*/
r_lld_adv_pkt_rx_connect_post = 0x40005160;
r_lld_adv_start_init_evt_param = 0x4000516c;
r_lld_adv_start_set_cs = 0x40005178;
r_lld_adv_start_update_filter_policy = 0x40005184;
r_lld_adv_start_schedule_asap = 0x40005190;
r_lld_con_tx_prog_new_packet_coex = 0x4000519c;
/*
r_lld_con_tx_prog_new_packet = 0x400051a8;
*/
r_lld_per_adv_dynamic_pti_get = 0x400051b4;
r_lld_per_adv_evt_start_chm_upd = 0x400051c0;
r_lld_ext_scan_dynamic_pti_get = 0x400051cc;
r_lld_scan_try_sched = 0x400051d8;
r_lld_sync_insert = 0x400051e4;
r_sch_prog_ble_push = 0x400051f0;
r_sch_prog_bt_push = 0x400051fc;
r_lld_init_evt_end_type_set = 0x40005208;
r_lld_init_evt_end_type_get = 0x40005214;
r_lld_adv_direct_adv_use_rpa_addr_state_set = 0x40005220;
r_lld_adv_direct_adv_use_rpa_addr_state_get = 0x4000522c;
r_lld_init_evt_end_type_check_state_set = 0x40005238;
r_lld_init_evt_end_type_check_state_get = 0x40005244;
/* Data (.data, .bss, .rodata) */
bt_rf_coex_cfg_p = 0x3fceffa8;
bt_rf_coex_hooks_p = 0x3fceffa4;
btdm_env_p = 0x3fceffa0;
g_rw_controller_task_handle = 0x3fceff9c;
g_rw_init_sem = 0x3fceff98;
g_rw_schd_queue = 0x3fceff94;
lld_init_env = 0x3fceff90;
lld_rpa_renew_env = 0x3fceff8c;
lld_scan_env = 0x3fceff88;
lld_scan_sync_env = 0x3fceff84;
lld_test_env = 0x3fceff80;
p_ble_util_buf_env = 0x3fceff7c;
p_lld_env = 0x3fceff78;
p_llm_env = 0x3fceff74;
r_h4tl_eif_p = 0x3fceff70;
r_hli_funcs_p = 0x3fceff6c;
r_ip_funcs_p = 0x3fceff68;
r_modules_funcs_p = 0x3fceff64;
r_osi_funcs_p = 0x3fceff60;
r_plf_funcs_p = 0x3fceff5c;
vhci_env_p = 0x3fceff58;
aa_gen = 0x3fceff54;
aes_env = 0x3fceff48;
bt_rf_coex_cfg_cb = 0x3fcefef8;
btdm_pwr_state = 0x3fcefef4;
btdm_slp_err = 0x3fcefef0;
ecc_env = 0x3fcefee8;
esp_handler = 0x3fcefee0;
esp_vendor_cmd = 0x3fcefed8;
g_adv_delay_dis = 0x3fcefed4;
g_conflict_elt = 0x3fcefed0;
g_eif_api = 0x3fcefec0;
g_event_empty = 0x3fcefeb4;
g_llc_state = 0x3fcefeaa;
g_llm_state = 0x3fcefea9;
g_max_evt_env = 0x3fcefea7;
g_misc_state = 0x3fcefea6;
g_rma_rule_db = 0x3fcefe8a;
g_rtp_rule_db = 0x3fcefe6e;
g_scan_forever = 0x3fcefe6d;
g_time_msb = 0x3fcefe6c;
h4tl_env = 0x3fcefe44;
hci_env = 0x3fcefe21;
hci_ext_host = 0x3fcefe20;
hci_fc_env = 0x3fcefe18;
hci_tl_env = 0x3fcefdec;
ke_env = 0x3fcefdbc;
ke_event_env = 0x3fcefd7c;
ke_task_env = 0x3fcefd00;
llc_env = 0x3fcefcd8;
lld_adv_env = 0x3fcefcb0;
lld_con_env = 0x3fcefc88;
lld_exp_sync_pos_tab = 0x3fcefc80;
lld_per_adv_env = 0x3fcefc58;
lld_sync_env = 0x3fcefc30;
llm_le_adv_flow_env = 0x3fcefc24;
rw_sleep_enable = 0x3fcefc20;
rwble_env = 0x3fcefc18;
rwip_env = 0x3fcefbfc;
rwip_param = 0x3fcefbf0;
rwip_prog_delay = 0x3fcefbec;
rwip_rf = 0x3fcefbb4;
sch_alarm_env = 0x3fcefbac;
sch_arb_env = 0x3fcefb98;
sch_plan_env = 0x3fcefb90;
sch_prog_env = 0x3fcefa8c;
sch_slice_env = 0x3fcefa2c;
sch_slice_params = 0x3fcefa24;
timer_env = 0x3fcefa1c;
unloaded_area = 0x3fcefa18;
vshci_state = 0x3fcefa14;
TASK_DESC_LLC = 0x3fcefa08;
TASK_DESC_LLM = 0x3fcef9fc;
TASK_DESC_VSHCI = 0x3fcef9f0;
co_default_bdaddr = 0x3fcef9e8;
dbg_assert_block = 0x3fcef9e4;
g_bt_plf_log_level = 0x3fcef9e0;
hci_cmd_desc_tab_vs_esp = 0x3fcef9bc;
hci_command_handler_tab_esp = 0x3fcef9a4;
privacy_en = 0x3fcef9a0;
sdk_cfg_priv_opts = 0x3fcef958;
BasePoint_x_256 = 0x3ff1ffdc;
BasePoint_y_256 = 0x3ff1ffbc;
DebugE256PublicKey_x = 0x3ff1ff9c;
DebugE256PublicKey_y = 0x3ff1ff7c;
DebugE256SecretKey = 0x3ff1ff5c;
ECC_4Win_Look_up_table = 0x3ff1f7a0;
LLM_AA_CT1 = 0x3ff1f79a;
LLM_AA_CT2 = 0x3ff1f798;
RF_TX_PW_CONV_TBL = 0x3ff1f790;
TASK_DESC_MISC = 0x3ff1f784;
adv_evt_prop2type = 0x3ff1f766;
adv_evt_type2prop = 0x3ff1f761;
aes_cmac_zero = 0x3ff1f751;
aes_k2_salt = 0x3ff1f741;
aes_k3_id64 = 0x3ff1f73c;
aes_k3_salt = 0x3ff1f72c;
aes_k4_id6 = 0x3ff1f728;
aes_k4_salt = 0x3ff1f718;
bigHexP256 = 0x3ff1f6ec;
byte_tx_time = 0x3ff1f6e2;
co_null_bdaddr = 0x3ff1f6dc;
co_phy_mask_to_rate = 0x3ff1f6d7;
co_phy_mask_to_value = 0x3ff1f6d2;
co_phy_to_rate = 0x3ff1f6ce;
co_phy_value_to_mask = 0x3ff1f6ca;
co_rate_to_byte_dur_us = 0x3ff1f6c5;
co_rate_to_phy = 0x3ff1f6c0;
co_rate_to_phy_mask = 0x3ff1f6bc;
co_sca2ppm = 0x3ff1f6ac;
coef_B = 0x3ff1f680;
connect_req_dur_tab = 0x3ff1f678;
ecc_Jacobian_InfinityPoint256 = 0x3ff1f5f4;
em_base_reg_lut = 0x3ff1f526;
fixed_tx_time = 0x3ff1f51e;
h4tl_msgtype2hdrlen = 0x3ff1f518;
hci_cmd_desc_root_tab = 0x3ff1f4e8;
hci_cmd_desc_tab_ctrl_bb = 0x3ff1f47c;
hci_cmd_desc_tab_info_par = 0x3ff1f44c;
hci_cmd_desc_tab_le = 0x3ff1f0b0;
hci_cmd_desc_tab_lk_ctrl = 0x3ff1f098;
hci_cmd_desc_tab_stat_par = 0x3ff1f08c;
hci_cmd_desc_tab_vs = 0x3ff1f050;
hci_evt_desc_tab = 0x3ff1f008;
hci_evt_le_desc_tab = 0x3ff1ef68;
hci_evt_le_desc_tab_esp = 0x3ff1ef60;
hci_rsvd_evt_msk = 0x3ff1ef57;
lld_aux_phy_to_rate = 0x3ff1ef54;
lld_init_max_aux_dur_tab = 0x3ff1ef4c;
lld_scan_map_legacy_pdu_to_evt_type = 0x3ff1ef44;
lld_scan_max_aux_dur_tab = 0x3ff1ef3c;
lld_sync_max_aux_dur_tab = 0x3ff1ef34;
llm_local_le_feats = 0x3ff1ef2c;
llm_local_le_states = 0x3ff1ef24;
llm_local_supp_cmds = 0x3ff1eefc;
maxSecretKey_256 = 0x3ff1eedc;
max_data_tx_time = 0x3ff1eed4;
one_bits = 0x3ff1eec3;
rwip_coex_cfg = 0x3ff1eebe;
rwip_priority = 0x3ff1eea8;
veryBigHexP256 = 0x3ff1ee5c;

/* bluetooth hook funcs */
r_llc_loc_encrypt_proc_continue_hook = 0x40001c60;
r_llc_loc_phy_upd_proc_continue_hook = 0x40001c64;
r_llc_rem_phy_upd_proc_continue_hook = 0x40001c68;
r_lld_scan_frm_eof_isr_hook = 0x40001c6c;
r_lld_scan_evt_start_cbk_hook = 0x40001c70;
/*
r_lld_scan_start_hook = 0x40001c74;
*/
r_lld_scan_process_pkt_rx_ext_adv_hook = 0x40001c78;
r_lld_scan_sched_hook = 0x40001c7c;
/*
r_lld_adv_start_hook = 0x40001c80;
*/
r_lld_adv_evt_start_cbk_hook = 0x40001c84;
r_lld_adv_aux_evt_start_cbk_hook = 0x40001c88;
r_lld_adv_frm_isr_hook = 0x40001c8c;
r_lld_adv_start_init_evt_param_hook = 0x40001c90;
r_lld_con_evt_canceled_cbk_hook = 0x40001c94;
r_lld_con_frm_isr_hook = 0x40001c98;
r_lld_con_tx_hook = 0x40001c9c;
r_lld_con_rx_hook = 0x40001ca0;
r_lld_con_evt_start_cbk_hook = 0x40001ca4;
/*
r_lld_con_start_hook = 0x40001ca8;
*/
r_lld_con_tx_prog_new_packet_hook = 0x40001cac;
r_lld_init_frm_eof_isr_hook = 0x40001cb0;
r_lld_init_evt_start_cbk_hook = 0x40001cb4;
/*
r_lld_init_start_hook = 0x40001cb8;
*/
r_lld_init_sched_hook = 0x40001cbc;
r_lld_init_process_pkt_tx_hook = 0x40001cc0;
r_lld_per_adv_evt_start_cbk_hook = 0x40001cc4;
r_lld_per_adv_frm_isr_hook = 0x40001cc8;
r_lld_per_adv_start_hook = 0x40001ccc;
r_lld_sync_frm_eof_isr_hook = 0x40001cd0;
r_lld_sync_evt_start_cbk_hook = 0x40001cd4;
r_lld_sync_start_hook = 0x40001cd8;
r_lld_sync_process_pkt_rx_pkt_check_hook = 0x40001cdc;
r_sch_arb_insert_hook = 0x40001ce0;
r_sch_plan_offset_req_hook = 0x40001ce4;

/***************************************
 Group rom_pp
 ***************************************/

/* Functions */
esp_pp_rom_version_get = 0x40005250;
RC_GetBlockAckTime = 0x4000525c;
ebuf_list_remove = 0x40005268;
/*esf_buf_alloc = 0x40005274;*/
/*esf_buf_alloc_dynamic = 0x40005280;*/
/*esf_buf_recycle = 0x4000528c;*/
GetAccess = 0x40005298;
hal_mac_is_low_rate_enabled = 0x400052a4;
hal_mac_tx_get_blockack = 0x400052b0;
/* hal_mac_tx_set_ppdu = 0x400052bc;*/
ic_get_trc = 0x400052c8;
/* ic_mac_deinit = 0x400052d4; */
ic_mac_init = 0x400052e0;
ic_interface_enabled = 0x400052ec;
is_lmac_idle = 0x400052f8;
lmacAdjustTimestamp = 0x40005304;
lmacDiscardAgedMSDU = 0x40005310;
/*lmacDiscardMSDU = 0x4000531c;*/
lmacEndFrameExchangeSequence = 0x40005328;
lmacIsIdle = 0x40005334;
lmacIsLongFrame = 0x40005340;
lmacMSDUAged = 0x4000534c;
lmacPostTxComplete = 0x40005358;
lmacProcessAllTxTimeout = 0x40005364;
lmacProcessCollisions = 0x40005370;
lmacProcessRxSucData = 0x4000537c;
lmacReachLongLimit = 0x40005388;
lmacReachShortLimit = 0x40005394;
lmacRecycleMPDU = 0x400053a0;
lmacRxDone = 0x400053ac;
/*lmacSetTxFrame = 0x400053b8;*/
lmacTxDone = 0x400053c4;
/*lmacTxFrame = 0x400053d0;*/
mac_tx_set_duration = 0x400053dc;
/* mac_tx_set_htsig = 0x400053e8;*/
mac_tx_set_plcp0 = 0x400053f4;
/* mac_tx_set_plcp1 = 0x40005400;*/
mac_tx_set_plcp2 = 0x4000540c;
pm_check_state = 0x40005418;
pm_disable_dream_timer = 0x40005424;
pm_disable_sleep_delay_timer = 0x40005430;
pm_dream = 0x4000543c;
pm_mac_wakeup = 0x40005448;
pm_mac_sleep = 0x40005454;
pm_enable_active_timer = 0x40005460;
pm_enable_sleep_delay_timer = 0x4000546c;
pm_local_tsf_process = 0x40005478;
pm_set_beacon_filter = 0x40005484;
pm_is_in_wifi_slice_threshold = 0x40005490;
pm_is_waked = 0x4000549c;
pm_keep_alive = 0x400054a8;
/* pm_on_beacon_rx = 0x400054b4; */
pm_on_data_rx = 0x400054c0;
pm_on_tbtt = 0x400054cc;
/* pm_parse_beacon = 0x400054d8;*/
/* pm_process_tim = 0x400054e4; */
/*pm_rx_beacon_process = 0x400054f0;*/
/* pm_rx_data_process = 0x400054fc; */
/*pm_sleep = 0x40005508;*/
pm_sleep_for = 0x40005514;
/* pm_tbtt_process = 0x40005520; */
ppAMPDU2Normal = 0x4000552c;
ppAssembleAMPDU = 0x40005538;
ppCalFrameTimes = 0x40005544;
ppCalSubFrameLength = 0x40005550;
ppCalTxAMPDULength = 0x4000555c;
ppCheckTxAMPDUlength = 0x40005568;
ppDequeueRxq_Locked = 0x40005574;
ppDequeueTxQ = 0x40005580;
ppEmptyDelimiterLength = 0x4000558c;
ppEnqueueRxq = 0x40005598;
ppEnqueueTxDone = 0x400055a4;
ppGetTxQFirstAvail_Locked = 0x400055b0;
ppGetTxframe = 0x400055bc;
/*ppMapTxQueue = 0x400055c8;*/
ppProcessRxPktHdr = 0x400055e0;
ppProcessTxQ = 0x400055ec;
ppRecordBarRRC = 0x400055f8;
lmacRequestTxopQueue = 0x40005604;
lmacReleaseTxopQueue = 0x40005610;
ppRecycleAmpdu = 0x4000561c;
ppRecycleRxPkt = 0x40005628;
ppResortTxAMPDU = 0x40005634;
ppResumeTxAMPDU = 0x40005640;
/* ppRxFragmentProc = 0x4000564c; */
ppRxPkt = 0x40005658;
ppRxProtoProc = 0x40005664;
ppSearchTxQueue = 0x40005670;
ppSearchTxframe = 0x4000567c;
ppSelectNextQueue = 0x40005688;
ppSubFromAMPDU = 0x40005694;
/* ppTask = 0x400056a0; */
ppTxPkt = 0x400056ac;
ppTxProtoProc = 0x400056b8;
ppTxqUpdateBitmap = 0x400056c4;
pp_coex_tx_request = 0x400056d0;
pp_hdrsize = 0x400056dc;
pp_post = 0x400056e8;
pp_process_hmac_waiting_txq = 0x400056f4;
rcGetAmpduSched = 0x40005700;
rcUpdateRxDone = 0x4000570c;
rc_get_trc = 0x40005718;
rc_get_trc_by_index = 0x40005724;
rcAmpduLowerRate = 0x40005730;
rcampduuprate = 0x4000573c;
rcClearCurAMPDUSched = 0x40005748;
rcClearCurSched = 0x40005754;
rcClearCurStat = 0x40005760;
/*rcGetSched = 0x4000576c;*/
rcLowerSched = 0x40005778;
rcSetTxAmpduLimit = 0x40005784;
/* rcTxUpdatePer = 0x40005790;*/
rcUpdateAckSnr = 0x4000579c;
rcUpdateRate = 0x400057a8;
/* rcUpdateTxDone = 0x400057b4; */
rcUpdateTxDoneAmpdu2 = 0x400057c0;
rcUpSched = 0x400057cc;
rssi_margin = 0x400057d8;
rx11NRate2AMPDULimit = 0x400057e4;
TRC_AMPDU_PER_DOWN_THRESHOLD = 0x400057f0;
TRC_AMPDU_PER_UP_THRESHOLD = 0x400057fc;
trc_calc_duration = 0x40005808;
trc_isTxAmpduOperational = 0x40005814;
trc_onAmpduOp = 0x40005820;
TRC_PER_IS_GOOD = 0x4000582c;
trc_SetTxAmpduState = 0x40005838;
trc_tid_isTxAmpduOperational = 0x40005844;
trcAmpduSetState = 0x40005850;
wDevCheckBlockError = 0x4000585c;
wDev_AppendRxBlocks = 0x40005868;
wDev_DiscardFrame = 0x40005874;
wDev_GetNoiseFloor = 0x40005880;
wDev_IndicateAmpdu = 0x4000588c;
/*wDev_IndicateFrame = 0x40005898;*/
wdev_bank_store = 0x400058a4;
wdev_bank_load = 0x400058b0;
wdev_mac_reg_load = 0x400058bc;
wdev_mac_reg_store = 0x400058c8;
wdev_mac_special_reg_load = 0x400058d4;
wdev_mac_special_reg_store = 0x400058e0;
wdev_mac_wakeup = 0x400058ec;
wdev_mac_sleep = 0x400058f8;
hal_mac_is_dma_enable = 0x40005904;
/* wDev_ProcessFiq = 0x40005910; */
/*wDev_ProcessRxSucData = 0x4000591c;*/
wdevProcessRxSucDataAll = 0x40005928;
wdev_csi_len_align = 0x40005934;
ppDequeueTxDone_Locked = 0x40005940;
/*ppProcTxDone = 0x4000594c;*/
/*pm_tx_data_done_process = 0x40005958;*/
config_is_cache_tx_buf_enabled = 0x40005964;
ppMapWaitTxq = 0x40005970;
ppProcessWaitingQueue = 0x4000597c;
ppDisableQueue = 0x40005988;
pm_allow_tx = 0x40005994;
wdev_is_data_in_rxlist = 0x400059a0;
ppProcTxCallback = 0x400059ac;
/* Data (.data, .bss, .rodata) */
our_instances_ptr = 0x3ff1ee58;
pTxRx = 0x3fcef954;
lmacConfMib_ptr = 0x3fcef950;
our_wait_eb = 0x3fcef94c;
our_tx_eb = 0x3fcef948;
pp_wdev_funcs = 0x3fcef944;
g_osi_funcs_p = 0x3fcef940;
wDevCtrl_ptr = 0x3fcef93c;
g_wdev_last_desc_reset_ptr = 0x3ff1ee54;
wDevMacSleep_ptr = 0x3fcef938;
g_lmac_cnt_ptr = 0x3fcef934;
our_controls_ptr = 0x3ff1ee50;
pp_sig_cnt_ptr = 0x3fcef930;
g_eb_list_desc_ptr = 0x3fcef92c;
s_fragment_ptr = 0x3fcef928;
if_ctrl_ptr = 0x3fcef924;
g_intr_lock_mux = 0x3fcef920;
g_wifi_global_lock = 0x3fcef91c;
s_wifi_queue = 0x3fcef918;
pp_task_hdl = 0x3fcef914;
s_pp_task_create_sem = 0x3fcef910;
s_pp_task_del_sem = 0x3fcef90c;
g_wifi_menuconfig_ptr = 0x3fcef908;
xphyQueue = 0x3fcef904;
ap_no_lr_ptr = 0x3fcef900;
rc11BSchedTbl_ptr = 0x3fcef8fc;
rc11NSchedTbl_ptr = 0x3fcef8f8;
rcLoRaSchedTbl_ptr = 0x3fcef8f4;
BasicOFDMSched_ptr = 0x3fcef8f0;
trc_ctl_ptr = 0x3fcef8ec;
g_pm_cnt_ptr = 0x3fcef8e8;
g_pm_ptr = 0x3fcef8e4;
g_pm_cfg_ptr = 0x3fcef8e0;
g_esp_mesh_quick_funcs_ptr = 0x3fcef8dc;
g_txop_queue_status_ptr = 0x3fcef8d8;
g_mac_sleep_en_ptr = 0x3fcef8d4;
g_mesh_is_root_ptr = 0x3fcef8d0;
g_mesh_topology_ptr = 0x3fcef8cc;
g_mesh_init_ps_type_ptr = 0x3fcef8c8;
g_mesh_is_started_ptr = 0x3fcef8c4;
g_config_func = 0x3fcef8c0;
g_net80211_tx_func = 0x3fcef8bc;
g_timer_func = 0x3fcef8b8;
s_michael_mic_failure_cb = 0x3fcef8b4;
wifi_sta_rx_probe_req = 0x3fcef8b0;
g_tx_done_cb_func = 0x3fcef8ac;
g_per_conn_trc = 0x3fcef860;
s_encap_amsdu_func = 0x3fcef85c;


/***************************************
 Group rom_net80211
 ***************************************/

/* Functions */
esp_net80211_rom_version_get = 0x400059b8;
ampdu_dispatch = 0x400059c4;
ampdu_dispatch_all = 0x400059d0;
ampdu_dispatch_as_many_as_possible = 0x400059dc;
ampdu_dispatch_movement = 0x400059e8;
ampdu_dispatch_upto = 0x400059f4;
chm_is_at_home_channel = 0x40005a00;
cnx_node_is_existing = 0x40005a0c;
cnx_node_search = 0x40005a18;
ic_ebuf_recycle_rx = 0x40005a24;
ic_ebuf_recycle_tx = 0x40005a30;
ic_reset_rx_ba = 0x40005a3c;
ieee80211_align_eb = 0x40005a48;
ieee80211_ampdu_reorder = 0x40005a54;
ieee80211_ampdu_start_age_timer = 0x40005a60;
/* ieee80211_encap_esfbuf = 0x40005a6c; */
ieee80211_is_tx_allowed = 0x40005a78;
ieee80211_output_pending_eb = 0x40005a84;
/*ieee80211_output_process = 0x40005a90;*/
ieee80211_set_tx_desc = 0x40005a9c;
/*sta_input = 0x40005aa8;*/
wifi_get_macaddr = 0x40005ab4;
wifi_rf_phy_disable = 0x40005ac0;
wifi_rf_phy_enable = 0x40005acc;
ic_ebuf_alloc = 0x40005ad8;
ieee80211_classify = 0x40005ae4;
ieee80211_copy_eb_header = 0x40005af0;
ieee80211_recycle_cache_eb = 0x40005afc;
ieee80211_search_node = 0x40005b08;
roundup2 = 0x40005b14;
ieee80211_crypto_encap = 0x40005b20;
/* ieee80211_crypto_decap = 0x40005b2c; */
/* ieee80211_decap = 0x40005b38; */
ieee80211_set_tx_pti = 0x40005b44;
wifi_is_started = 0x40005b50;
ieee80211_gettid = 0x40005b5c;
/* Data (.data, .bss, .rodata) */
net80211_funcs = 0x3fcef858;
g_scan = 0x3fcef854;
g_chm = 0x3fcef850;
g_ic_ptr = 0x3fcef84c;
g_hmac_cnt_ptr = 0x3fcef848;
g_tx_cacheq_ptr = 0x3fcef844;
s_netstack_free = 0x3fcef840;
mesh_rxcb = 0x3fcef83c;
sta_rxcb = 0x3fcef838;


/***************************************
 Group rom_coexist
 ***************************************/

/* Functions */
esp_coex_rom_version_get = 0x40005b68;
coex_bt_release = 0x40005b74;
coex_bt_request = 0x40005b80;
coex_core_ble_conn_dyn_prio_get = 0x40005b8c;
coex_core_event_duration_get = 0x40005b98;
coex_core_pti_get = 0x40005ba4;
coex_core_release = 0x40005bb0;
coex_core_request = 0x40005bbc;
coex_core_status_get = 0x40005bc8;
/*coex_core_timer_idx_get = 0x40005bd4;*/
coex_event_duration_get = 0x40005be0;
coex_hw_timer_disable = 0x40005bec;
coex_hw_timer_enable = 0x40005bf8;
coex_hw_timer_set = 0x40005c04;
coex_schm_interval_set = 0x40005c10;
coex_schm_lock = 0x40005c1c;
coex_schm_unlock = 0x40005c28;
coex_status_get = 0x40005c34;
coex_wifi_release = 0x40005c40;
esp_coex_ble_conn_dynamic_prio_get = 0x40005c4c;
/* Data (.data, .bss, .rodata) */
coex_env_ptr = 0x3fcef834;
coex_pti_tab_ptr = 0x3fcef830;
coex_schm_env_ptr = 0x3fcef82c;
coexist_funcs = 0x3fcef828;
g_coa_funcs_p = 0x3fcef824;
g_coex_param_ptr = 0x3fcef820;


/***************************************
 Group rom_phy
 ***************************************/

/* Functions */
phy_get_romfuncs = 0x40005c58;
rom_abs_temp = 0x40005c64;
rom_bb_bss_cbw40_dig = 0x40005c70;
rom_bb_wdg_test_en = 0x40005c7c;
rom_bb_wdt_get_status = 0x40005c88;
rom_bb_wdt_int_enable = 0x40005c94;
rom_bb_wdt_rst_enable = 0x40005ca0;
rom_bb_wdt_timeout_clear = 0x40005cac;
rom_cbw2040_cfg = 0x40005cb8;
rom_check_noise_floor = 0x40005cc4;
rom_chip_i2c_readReg = 0x40005cd0;
rom_chip_i2c_writeReg = 0x40005cdc;
rom_dc_iq_est = 0x40005ce8;
rom_disable_agc = 0x40005cf4;
rom_en_pwdet = 0x40005d00;
rom_enable_agc = 0x40005d0c;
rom_get_bbgain_db = 0x40005d18;
rom_get_data_sat = 0x40005d24;
rom_get_i2c_read_mask = 0x40005d30;
rom_get_pwctrl_correct = 0x40005d3c;
rom_i2c_readReg = 0x40005d48;
rom_i2c_readReg_Mask = 0x40005d54;
rom_i2c_writeReg = 0x40005d60;
rom_i2c_writeReg_Mask = 0x40005d6c;
rom_index_to_txbbgain = 0x40005d78;
rom_iq_est_disable = 0x40005d84;
rom_iq_est_enable = 0x40005d90;
rom_linear_to_db = 0x40005d9c;
rom_loopback_mode_en = 0x40005da8;
rom_mhz2ieee = 0x40005db4;
rom_noise_floor_auto_set = 0x40005dc0;
rom_pbus_debugmode = 0x40005dcc;
rom_pbus_force_mode = 0x40005dd8;
rom_pbus_force_test = 0x40005de4;
rom_pbus_rd = 0x40005df0;
rom_pbus_rd_addr = 0x40005dfc;
rom_pbus_rd_shift = 0x40005e08;
rom_pbus_set_dco = 0x40005e14;
rom_pbus_set_rxgain = 0x40005e20;
rom_pbus_workmode = 0x40005e2c;
rom_pbus_xpd_rx_off = 0x40005e38;
rom_pbus_xpd_rx_on = 0x40005e44;
rom_pbus_xpd_tx_off = 0x40005e50;
rom_pbus_xpd_tx_on = 0x40005e5c;
rom_phy_byte_to_word = 0x40005e68;
rom_phy_disable_cca = 0x40005e74;
rom_phy_enable_cca = 0x40005e80;
rom_phy_get_noisefloor = 0x40005e8c;
rom_phy_get_rx_freq = 0x40005e98;
rom_phy_set_bbfreq_init = 0x40005ea4;
rom_pow_usr = 0x40005eb0;
rom_pwdet_sar2_init = 0x40005ebc;
rom_read_hw_noisefloor = 0x40005ec8;
rom_read_sar_dout = 0x40005ed4;
rom_set_cal_rxdc = 0x40005ee0;
rom_set_chan_cal_interp = 0x40005eec;
rom_set_loopback_gain = 0x40005ef8;
rom_set_noise_floor = 0x40005f04;
rom_set_rxclk_en = 0x40005f10;
rom_set_tx_dig_gain = 0x40005f1c;
rom_set_txcap_reg = 0x40005f28;
rom_set_txclk_en = 0x40005f34;
rom_spur_cal = 0x40005f40;
rom_spur_reg_write_one_tone = 0x40005f4c;
rom_target_power_add_backoff = 0x40005f58;
rom_tx_pwctrl_bg_init = 0x40005f64;
rom_txbbgain_to_index = 0x40005f70;
rom_wifi_11g_rate_chg = 0x40005f7c;
rom_write_gain_mem = 0x40005f88;
chip728_phyrom_version = 0x40005f94;
rom_disable_wifi_agc = 0x40005fa0;
rom_enable_wifi_agc = 0x40005fac;
rom_bt_index_to_bb = 0x40005fb8;
rom_bt_bb_to_index = 0x40005fc4;
rom_spur_coef_cfg = 0x40005fd0;
rom_bb_bss_cbw40 = 0x40005fdc;
rom_set_cca = 0x40005fe8;
rom_tx_paon_set = 0x40005ff4;
rom_i2cmst_reg_init = 0x40006000;
rom_iq_corr_enable = 0x4000600c;
rom_fe_reg_init = 0x40006018;
rom_agc_reg_init = 0x40006024;
rom_bb_reg_init = 0x40006030;
rom_mac_enable_bb = 0x4000603c;
rom_bb_wdg_cfg = 0x40006048;
rom_force_txon = 0x40006054;
rom_fe_txrx_reset = 0x40006060;
rom_set_rx_comp = 0x4000606c;
rom_set_pbus_reg = 0x40006078;
rom_write_chan_freq = 0x40006084;
rom_phy_xpd_rf = 0x40006090;
rom_set_xpd_sar = 0x4000609c;
rom_get_target_power_offset = 0x400060a8;
rom_write_txrate_power_offset = 0x400060b4;
rom_get_rate_fcc_index = 0x400060c0;
rom_get_rate_target_power = 0x400060cc;
rom_pkdet_vol_start = 0x400060d8;
rom_read_sar2_code = 0x400060e4;
rom_get_sar2_vol = 0x400060f0;
rom_get_pll_vol = 0x400060fc;
rom_get_phy_target_power = 0x40006108;
rom_temp_to_power = 0x40006114;
rom_phy_track_pll_cap = 0x40006120;
rom_phy_pwdet_always_en = 0x4000612c;
rom_phy_pwdet_onetime_en = 0x40006138;
rom_get_i2c_mst0_mask = 0x40006144;
rom_get_i2c_hostid = 0x40006150;
rom_enter_critical_phy = 0x4000615c;
rom_exit_critical_phy = 0x40006168;
rom_chip_i2c_readReg_org = 0x40006174;
rom_i2c_paral_set_mst0 = 0x40006180;
rom_i2c_paral_set_read = 0x4000618c;
rom_i2c_paral_read = 0x40006198;
rom_i2c_paral_write = 0x400061a4;
rom_i2c_paral_write_num = 0x400061b0;
rom_i2c_paral_write_mask = 0x400061bc;
rom_bb_bss_cbw40_ana = 0x400061c8;
rom_chan_to_freq = 0x400061d4;
rom_open_i2c_xpd = 0x400061e0;
rom_dac_rate_set = 0x400061ec;
rom_tsens_read_init = 0x400061f8;
rom_tsens_code_read = 0x40006204;
rom_tsens_index_to_dac = 0x40006210;
rom_tsens_index_to_offset = 0x4000621c;
rom_tsens_dac_cal = 0x40006228;
rom_code_to_temp = 0x40006234;
rom_write_pll_cap_mem = 0x40006240;
rom_pll_correct_dcap = 0x4000624c;
rom_phy_en_hw_set_freq = 0x40006258;
rom_phy_dis_hw_set_freq = 0x40006264;
rom_pll_vol_cal = 0x40006270;
rom_wrtie_pll_cap = 0x4000627c;
rom_set_tx_gain_mem = 0x40006288;
rom_bt_tx_dig_gain = 0x40006294;
rom_bt_get_tx_gain = 0x400062a0;
rom_get_chan_target_power = 0x400062ac;
rom_get_tx_gain_value = 0x400062b8;
rom_wifi_tx_dig_gain = 0x400062c4;
rom_wifi_get_tx_gain = 0x400062d0;
rom_fe_i2c_reg_renew = 0x400062dc;
rom_wifi_agc_sat_gain = 0x400062e8;
rom_i2c_master_reset = 0x400062f4;
rom_bt_filter_reg = 0x40006300;
rom_phy_bbpll_cal = 0x4000630c;
rom_i2c_sar2_init_code = 0x40006318;
rom_phy_param_addr = 0x40006324;
rom_phy_reg_init = 0x40006330;
rom_set_chan_reg = 0x4000633c;
rom_phy_wakeup_init = 0x40006348;
rom_phy_i2c_init1 = 0x40006354;
rom_tsens_temp_read = 0x40006360;
rom_bt_track_pll_cap = 0x4000636c;
rom_wifi_track_pll_cap = 0x40006378;
rom_wifi_set_tx_gain = 0x40006384;
rom_txpwr_cal_track = 0x40006390;
rom_tx_pwctrl_background = 0x4000639c;
rom_bt_set_tx_gain = 0x400063a8;
rom_noise_check_loop = 0x400063b4;
rom_phy_close_rf = 0x400063c0;
rom_phy_xpd_tsens = 0x400063cc;
rom_phy_freq_mem_backup = 0x400063d8;
rom_phy_ant_init = 0x400063e4;
rom_bt_track_tx_power = 0x400063f0;
rom_wifi_track_tx_power = 0x400063fc;
rom_phy_dig_reg_backup = 0x40006408;
chip728_phyrom_version_num = 0x40006414;
rom_mac_tx_chan_offset = 0x40006420;
rom_rx_gain_force = 0x4000642c;
/* Data (.data, .bss, .rodata) */
phy_param_rom = 0x3fcef81c;
