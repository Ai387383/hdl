
set dac_fifo_name axi_adrv9009_dacfifo
set dac_fifo_address_width 10
set dac_data_width 64     ; # should be TX_TPL_BYTES_PER_BEAT * L (transport layer octets per beat * number of TX lanes)
set dac_dma_data_width 64

source $ad_hdl_dir/projects/common/zc706/zc706_system_bd.tcl
source $ad_hdl_dir/projects/common/zc706/zc706_plddr3_dacfifo_bd.tcl

ad_ip_parameter sys_ps7 CONFIG.PCW_FPGA2_PERIPHERAL_FREQMHZ 250

source ../common/adrv9009_bd.tcl

ad_connect  sys_dma_clk sys_ps7/FCLK_CLK2
ad_connect  sys_ps7/FCLK_RESET2_N sys_dma_rstgen/ext_reset_in