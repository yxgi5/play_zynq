set_property BITSTREAM.GENERAL.COMPRESS TRUE [current_design]

#Camera 0 9296
set_property PACKAGE_PIN AH13 [get_ports {emio_i2c_tri_io[2]}]
set_property IOSTANDARD LVCMOS18 [get_ports {emio_i2c_tri_io[2]}]
set_property PULLUP true [get_ports {emio_i2c_tri_io[2]}]

set_property PACKAGE_PIN AH14 [get_ports {emio_i2c_tri_io[1]}]
set_property PACKAGE_PIN AG13 [get_ports {emio_i2c_tri_io[0]}]
set_property IOSTANDARD LVCMOS18 [get_ports {emio_i2c_tri_io[1]}]
set_property IOSTANDARD LVCMOS18 [get_ports {emio_i2c_tri_io[0]}]
set_property PULLUP true [get_ports {emio_i2c_tri_io[1]}]
set_property PULLUP true [get_ports {emio_i2c_tri_io[0]}]

#Camera 1 9288
set_property PACKAGE_PIN AD15 [get_ports {emio_i2c_tri_io[5]}]
set_property IOSTANDARD LVCMOS18 [get_ports {emio_i2c_tri_io[5]}]
set_property PULLUP true [get_ports {emio_i2c_tri_io[5]}]

set_property PACKAGE_PIN AC14 [get_ports {emio_i2c_tri_io[4]}]
set_property PACKAGE_PIN AD14 [get_ports {emio_i2c_tri_io[3]}]
set_property IOSTANDARD LVCMOS18 [get_ports {emio_i2c_tri_io[4]}]
set_property IOSTANDARD LVCMOS18 [get_ports {emio_i2c_tri_io[3]}]
set_property PULLUP true [get_ports {emio_i2c_tri_io[4]}]
set_property PULLUP true [get_ports {emio_i2c_tri_io[3]}]

set_property PACKAGE_PIN D7 [get_ports hdmi_tx0_clk_p]
set_property IOSTANDARD LVDS [get_ports hdmi_tx0_clk_p]

set_property PACKAGE_PIN C8 [get_ports {hdmi_tx0_data_p[0]}]
set_property PACKAGE_PIN A7 [get_ports {hdmi_tx0_data_p[1]}]
set_property PACKAGE_PIN C6 [get_ports {hdmi_tx0_data_p[2]}]
set_property IOSTANDARD LVDS [get_ports {hdmi_tx0_data_p[*]}]

#set_property PACKAGE_PIN D4 [get_ports hdmi_tx1_clk_p]
#set_property IOSTANDARD LVDS [get_ports hdmi_tx1_clk_p]

#set_property PACKAGE_PIN E5 [get_ports {hdmi_tx1_data_p[0]}]
#set_property PACKAGE_PIN F8 [get_ports {hdmi_tx1_data_p[1]}]
#set_property PACKAGE_PIN G5 [get_ports {hdmi_tx1_data_p[2]}]
#set_property IOSTANDARD LVDS [get_ports {hdmi_tx1_data_p[*]}]


set_property PACKAGE_PIN G10 [get_ports uart0_rxd]
set_property IOSTANDARD LVCMOS33 [get_ports uart0_rxd]
set_property PACKAGE_PIN H11 [get_ports uart0_txd]
set_property IOSTANDARD LVCMOS33 [get_ports uart0_txd]

set_false_path -from [get_clocks -of_objects [get_pins system_i/clk_wiz_0/inst/CLK_CORE_DRP_I/clk_inst/mmcme4_adv_inst/CLKOUT0]] -to [get_clocks system_i/uihdmitx_0/inst/PCLKX1_i]
set_false_path -from [get_clocks system_i/uihdmitx_0/inst/PCLKX1_i] -to [get_clocks system_i/uihdmitx_0/inst/PCLKX2_5_i]

#set_false_path -from [get_clocks -of_objects [get_pins system_i/clk_wiz_1/inst/CLK_CORE_DRP_I/clk_inst/mmcme4_adv_inst/CLKOUT0]] -to [get_clocks system_i/uihdmitx_1/inst/PCLKX1_i]
set_false_path -from [get_clocks -of_objects [get_pins system_i/clk_wiz_0/inst/CLK_CORE_DRP_I/clk_inst/mmcme4_adv_inst/CLKOUT0]] -to [get_clocks system_i/uihdmitx_1/inst/PCLKX1_i]
#set_false_path -from [get_clocks system_i/uihdmitx_1/inst/PCLKX1_i] -to [get_clocks system_i/uihdmitx_1/inst/PCLKX2_5_i]

#set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
#set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
#set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
#connect_debug_port dbg_hub/clk [get_nets clk]
