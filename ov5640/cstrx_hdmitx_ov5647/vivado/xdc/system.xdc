set_property IOSTANDARD LVCMOS33 [get_ports {HDMI_HPD_tri_i[0]}]
set_property PACKAGE_PIN F16 [get_ports {HDMI_HPD_tri_i[0]}]

set_property PACKAGE_PIN K17 [get_ports TMDS_0_clk_p]
set_property PACKAGE_PIN G19 [get_ports {TMDS_0_data_p[0]}]
set_property PACKAGE_PIN F19 [get_ports {TMDS_0_data_p[1]}]
set_property PACKAGE_PIN D19 [get_ports {TMDS_0_data_p[2]}]
set_property IOSTANDARD TMDS_33 [get_ports TMDS_0_clk_p]
set_property IOSTANDARD TMDS_33 [get_ports {TMDS_0_data_p[*]}]

set_property IOSTANDARD LVCMOS33 [get_ports {HDMI_OEN[0]}]
set_property PACKAGE_PIN M20 [get_ports {HDMI_OEN[0]}]


set_false_path -from [get_clocks clk_fpga_0] -to [get_clocks clk_fpga_1]
#set_false_path -from [get_clocks -of_objects [get_pins hdmi_out_i/video_clk_wiz/inst/CLK_CORE_DRP_I/clk_inst/mmcm_adv_inst/CLKOUT0]] -to [get_clocks hdmi_out_i/uihdmitx_0/inst/PCLKX1_i]

set_property INTERNAL_VREF 0.6 [get_iobanks 13]

set_property PACKAGE_PIN V11 [get_ports {mipi_phy_if_0_data_lp_p[1]}]
set_property PACKAGE_PIN V10 [get_ports {mipi_phy_if_0_data_lp_n[1]}]
set_property PACKAGE_PIN Y12 [get_ports {mipi_phy_if_0_data_lp_p[0]}]
set_property PACKAGE_PIN Y13 [get_ports {mipi_phy_if_0_data_lp_n[0]}]
set_property PACKAGE_PIN Y9 [get_ports mipi_phy_if_0_clk_lp_p]
set_property PACKAGE_PIN Y8 [get_ports mipi_phy_if_0_clk_lp_n]
set_property PACKAGE_PIN W11 [get_ports {mipi_phy_if_0_data_hs_p[0]}]
set_property PACKAGE_PIN Y11 [get_ports {mipi_phy_if_0_data_hs_n[0]}]
set_property PACKAGE_PIN W10 [get_ports {mipi_phy_if_0_data_hs_p[1]}]
set_property PACKAGE_PIN W9 [get_ports {mipi_phy_if_0_data_hs_n[1]}]
set_property PACKAGE_PIN T9 [get_ports mipi_phy_if_0_clk_hs_p]
set_property PACKAGE_PIN U10 [get_ports mipi_phy_if_0_clk_hs_n]

##Use for Switching between IO standards
set_property IOSTANDARD HSUL_12 [get_ports {mipi_phy_if_0_data_lp_n[1]}]
set_property IOSTANDARD HSUL_12 [get_ports {mipi_phy_if_0_data_lp_p[1]}]
set_property IOSTANDARD HSUL_12 [get_ports {mipi_phy_if_0_data_lp_n[0]}]
set_property IOSTANDARD HSUL_12 [get_ports {mipi_phy_if_0_data_lp_p[0]}]
set_property IOSTANDARD HSUL_12 [get_ports mipi_phy_if_0_clk_lp_n]
set_property IOSTANDARD HSUL_12 [get_ports mipi_phy_if_0_clk_lp_p]
set_property IOSTANDARD LVDS_25 [get_ports {mipi_phy_if_0_data_hs_n[1]}]
set_property IOSTANDARD LVDS_25 [get_ports mipi_phy_if_0_clk_hs_n]
set_property IOSTANDARD LVDS_25 [get_ports {mipi_phy_if_0_data_hs_p[1]}]
set_property IOSTANDARD LVDS_25 [get_ports mipi_phy_if_0_clk_hs_p]
set_property IOSTANDARD LVDS_25 [get_ports {mipi_phy_if_0_data_hs_n[0]}]
set_property IOSTANDARD LVDS_25 [get_ports {mipi_phy_if_0_data_hs_p[0]}]


set_property PACKAGE_PIN H17  [get_ports cam_enable]    
set_property IOSTANDARD LVCMOS33 [get_ports cam_enable]
#set_property PULLUP true [get_ports cam_enable]

set_property PACKAGE_PIN A20 [get_ports cam_i2c_scl_io]
set_property PACKAGE_PIN E17 [get_ports cam_i2c_sda_io]

set_property IOSTANDARD LVCMOS33 [get_ports cam_i2c_scl_io]
set_property IOSTANDARD LVCMOS33 [get_ports cam_i2c_sda_io]

#set_property PULLUP true [get_ports cam0_i2c_scl_io]
#set_property PULLUP true [get_ports cam0_i2c_sda_io]