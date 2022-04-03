set_property BITSTREAM.GENERAL.COMPRESS TRUE [current_design]

#Camera 0 9296
set_property PACKAGE_PIN E9  [get_ports {cam_gpio_tri_io[0]}]    
set_property IOSTANDARD LVCMOS18 [get_ports {cam_gpio_tri_io[0]}]
set_property PULLUP true [get_ports {cam_gpio_tri_io[0]}]

set_property PACKAGE_PIN F7 [get_ports cam0_i2c_scl_io]
set_property PACKAGE_PIN G8 [get_ports cam0_i2c_sda_io]

set_property IOSTANDARD LVCMOS18 [get_ports cam0_i2c_scl_io]
set_property IOSTANDARD LVCMOS18 [get_ports cam0_i2c_sda_io]

set_property PULLUP true [get_ports cam0_i2c_scl_io]
set_property PULLUP true [get_ports cam0_i2c_sda_io]


#Camera 1 9295
set_property PACKAGE_PIN D4 [get_ports {cam_gpio_tri_io[1]}]
set_property IOSTANDARD LVCMOS18 [get_ports {cam_gpio_tri_io[1]}]
set_property PULLUP true [get_ports {cam_gpio_tri_io[1]}]

set_property PACKAGE_PIN D5 [get_ports cam1_i2c_scl_io]
set_property PACKAGE_PIN E5 [get_ports cam1_i2c_sda_io]

set_property IOSTANDARD LVCMOS18 [get_ports cam1_i2c_scl_io]
set_property IOSTANDARD LVCMOS18 [get_ports cam1_i2c_sda_io]


set_property PULLUP true [get_ports cam1_i2c_scl_io]
set_property PULLUP true [get_ports cam1_i2c_sda_io]


set_property PACKAGE_PIN D7 [get_ports hdmi_tx_clk_p]
set_property IOSTANDARD LVDS [get_ports hdmi_tx_clk_p]

set_property PACKAGE_PIN C8 [get_ports {hdmi_tx_data_p[0]}]
set_property PACKAGE_PIN A7 [get_ports {hdmi_tx_data_p[1]}]
set_property PACKAGE_PIN C6 [get_ports {hdmi_tx_data_p[2]}]
set_property IOSTANDARD LVDS [get_ports {hdmi_tx_data_p[*]}]

# adv7611
set_property PACKAGE_PIN L14 [get_ports hdmi_rx_rst]
set_property IOSTANDARD LVCMOS33 [get_ports hdmi_rx_rst]

set_property PACKAGE_PIN K13 [get_ports hdmi_rx_cfg_scl_io]
set_property PACKAGE_PIN K12 [get_ports hdmi_rx_cfg_sda_io]

set_property IOSTANDARD LVCMOS33 [get_ports hdmi_rx_cfg_scl_io]
set_property IOSTANDARD LVCMOS33 [get_ports hdmi_rx_cfg_sda_io]

set_property PULLUP true [get_ports hdmi_rx_cfg_scl_io]
set_property PULLUP true [get_ports hdmi_rx_cfg_sda_io]


set_false_path -from [get_clocks -of_objects [get_pins system_i/clk_wiz_0/inst/CLK_CORE_DRP_I/clk_inst/mmcme4_adv_inst/CLKOUT0]] -to [get_clocks system_i/uihdmitx_0/inst/PCLKX1_i]
set_false_path -from [get_clocks system_i/uihdmitx_0/inst/PCLKX1_i] -to [get_clocks system_i/uihdmitx_0/inst/PCLKX2_5_i]

