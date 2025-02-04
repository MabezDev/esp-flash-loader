

MEMORY {
    /* Start 64k into the RAM region */
    IRAM : ORIGIN = 0x40390000, LENGTH = 0x40000
}

PROVIDE( esp_rom_spiflash_wait_idle = 0x4000010c );
PROVIDE( esp_rom_spiflash_write_encrypted = 0x40000110 );
PROVIDE( esp_rom_spiflash_write_encrypted_dest = 0x40000114 );
PROVIDE( esp_rom_spiflash_write_encrypted_enable = 0x40000118 );
PROVIDE( esp_rom_spiflash_write_encrypted_disable = 0x4000011c );
PROVIDE( esp_rom_spiflash_erase_chip = 0x40000120 );
PROVIDE( esp_rom_spiflash_erase_block = 0x40000124 );
PROVIDE( esp_rom_spiflash_erase_sector = 0x40000128 );
PROVIDE( esp_rom_spiflash_write = 0x4000012c );
PROVIDE( esp_rom_spiflash_read = 0x40000130 );
PROVIDE( esp_rom_spiflash_config_param = 0x40000134 );
PROVIDE( esp_rom_spiflash_read_user_cmd = 0x40000138 );
PROVIDE( esp_rom_spiflash_select_qio_pins = 0x4000013c );
PROVIDE( esp_rom_spiflash_unlock = 0x40000140 );
PROVIDE( esp_rom_spi_flash_auto_sus_res = 0x40000144 );
PROVIDE( esp_rom_spi_flash_send_resume = 0x40000148 );
PROVIDE( esp_rom_spi_flash_update_id = 0x4000014c );
PROVIDE( esp_rom_spiflash_config_clk = 0x40000150 );
PROVIDE( esp_rom_spiflash_config_readmode = 0x40000154 );
PROVIDE( esp_rom_spiflash_read_status = 0x40000158 );
PROVIDE( esp_rom_spiflash_read_statushigh = 0x4000015c );
PROVIDE( esp_rom_spiflash_write_status = 0x40000160 );
PROVIDE( esp_rom_spiflash_attach = 0x40000164 );
PROVIDE( spi_flash_get_chip_size = 0x40000168 );
PROVIDE( spi_flash_guard_set = 0x4000016c );
PROVIDE( spi_flash_guard_get = 0x40000170 );
PROVIDE( spi_flash_write_config_set = 0x40000174 );
PROVIDE( spi_flash_write_config_get = 0x40000178 );
PROVIDE( spi_flash_safe_write_address_func_set = 0x4000017c );
PROVIDE( spi_flash_unlock = 0x40000180 );
PROVIDE( spi_flash_erase_range = 0x40000184 );
PROVIDE( spi_flash_erase_sector = 0x40000188 );
PROVIDE( spi_flash_write = 0x4000018c );
PROVIDE( spi_flash_read = 0x40000190 );
PROVIDE( spi_flash_write_encrypted = 0x40000194 );
PROVIDE( spi_flash_read_encrypted = 0x40000198 );
PROVIDE( spi_flash_mmap_os_func_set = 0x4000019c );
PROVIDE( spi_flash_mmap_page_num_init = 0x400001a0 );
PROVIDE( spi_flash_mmap = 0x400001a4 );
PROVIDE( spi_flash_mmap_pages = 0x400001a8 );
PROVIDE( spi_flash_munmap = 0x400001ac );
PROVIDE( spi_flash_mmap_dump = 0x400001b0 );
PROVIDE( spi_flash_check_and_flush_cache = 0x400001b4 );
PROVIDE( spi_flash_mmap_get_free_pages = 0x400001b8 );
PROVIDE( spi_flash_cache2phys = 0x400001bc );
PROVIDE( spi_flash_phys2cache = 0x400001c0 );
PROVIDE( spi_flash_disable_cache = 0x400001c4 );
PROVIDE( spi_flash_restore_cache = 0x400001c8 );
PROVIDE( spi_flash_cache_enabled = 0x400001cc );
PROVIDE( spi_flash_enable_cache = 0x400001d0 );
PROVIDE( spi_cache_mode_switch = 0x400001d4 );
PROVIDE( spi_common_set_dummy_output = 0x400001d8 );
PROVIDE( spi_common_set_flash_cs_timing = 0x400001dc );
PROVIDE( esp_enable_cache_flash_wrap = 0x400001e0 );
PROVIDE( SPIEraseArea = 0x400001e4 );
PROVIDE( SPILock = 0x400001e8 );
PROVIDE( SPIMasterReadModeCnfig = 0x400001ec );
PROVIDE( SPI_Common_Command = 0x400001f0 );
PROVIDE( SPI_WakeUp = 0x400001f4 );
PROVIDE( SPI_block_erase = 0x400001f8 );
PROVIDE( SPI_chip_erase = 0x400001fc );
PROVIDE( SPI_init = 0x40000200 );
PROVIDE( SPI_page_program = 0x40000204 );
PROVIDE( SPI_read_data = 0x40000208 );
PROVIDE( SPI_sector_erase = 0x4000020c );
PROVIDE( SPI_write_enable = 0x40000210 );
PROVIDE( SelectSpiFunction = 0x40000214 );
PROVIDE( SetSpiDrvs = 0x40000218 );
PROVIDE( Wait_SPI_Idle = 0x4000021c );
PROVIDE( spi_dummy_len_fix = 0x40000220 );
PROVIDE( Disable_QMode = 0x40000224 );
PROVIDE( Enable_QMode = 0x40000228 );


PROVIDE( ets_efuse_get_spiconfig = 0x4000071c );


PROVIDE( uart_tx_one_char = 0x40000068 );

/***************************************
 Group miniz
 ***************************************/

/* Functions */
mz_adler32 = 0x400000c0;
mz_crc32 = 0x400000c4;
mz_free = 0x400000c8;
tdefl_compress = 0x400000cc;
tdefl_compress_buffer = 0x400000d0;
tdefl_compress_mem_to_heap = 0x400000d4;
tdefl_compress_mem_to_mem = 0x400000d8;
tdefl_compress_mem_to_output = 0x400000dc;
tdefl_get_adler32 = 0x400000e0;
tdefl_get_prev_return_status = 0x400000e4;
tdefl_init = 0x400000e8;
tdefl_write_image_to_png_file_in_memory = 0x400000ec;
tdefl_write_image_to_png_file_in_memory_ex = 0x400000f0;
tinfl_decompress = 0x400000f4;
tinfl_decompress_mem_to_callback = 0x400000f8;
tinfl_decompress_mem_to_heap = 0x400000fc;
tinfl_decompress_mem_to_mem = 0x40000100;