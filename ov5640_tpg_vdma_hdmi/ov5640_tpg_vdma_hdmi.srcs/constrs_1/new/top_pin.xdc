set_property PACKAGE_PIN G16 [get_ports hdmi_clk]
set_property PACKAGE_PIN H22 [get_ports {hdmi_d[0]}]
set_property PACKAGE_PIN G22 [get_ports {hdmi_d[1]}]
set_property PACKAGE_PIN G17 [get_ports {hdmi_d[2]}]
set_property PACKAGE_PIN F17 [get_ports {hdmi_d[3]}]
set_property PACKAGE_PIN G15 [get_ports {hdmi_d[4]}]
set_property PACKAGE_PIN D15 [get_ports {hdmi_d[5]}]
set_property PACKAGE_PIN E15 [get_ports {hdmi_d[6]}]
set_property PACKAGE_PIN F18 [get_ports {hdmi_d[7]}]
set_property PACKAGE_PIN E18 [get_ports {hdmi_d[8]}]
set_property PACKAGE_PIN H17 [get_ports {hdmi_d[9]}]
set_property PACKAGE_PIN H18 [get_ports {hdmi_d[10]}]
set_property PACKAGE_PIN H19 [get_ports {hdmi_d[11]}]
set_property PACKAGE_PIN H20 [get_ports {hdmi_d[12]}]
set_property PACKAGE_PIN G19 [get_ports {hdmi_d[13]}]
set_property PACKAGE_PIN F19 [get_ports {hdmi_d[14]}]
set_property PACKAGE_PIN G20 [get_ports {hdmi_d[15]}]
set_property PACKAGE_PIN G21 [get_ports {hdmi_d[16]}]
set_property PACKAGE_PIN F21 [get_ports {hdmi_d[17]}]
set_property PACKAGE_PIN F22 [get_ports {hdmi_d[18]}]
set_property PACKAGE_PIN E21 [get_ports {hdmi_d[19]}]
set_property PACKAGE_PIN D21 [get_ports {hdmi_d[20]}]
set_property PACKAGE_PIN D22 [get_ports {hdmi_d[21]}]
set_property PACKAGE_PIN C22 [get_ports {hdmi_d[22]}]
set_property PACKAGE_PIN B21 [get_ports {hdmi_d[23]}]

set_property PACKAGE_PIN E20 [get_ports hdmi_de]
set_property PACKAGE_PIN E19 [get_ports hdmi_hs]
set_property PACKAGE_PIN C17 [get_ports hdmi_nreset]
set_property PACKAGE_PIN F16 [get_ports hdmi_vs]
set_property PACKAGE_PIN B22 [get_ports hdmi_i2c_scl_io]
set_property PACKAGE_PIN A22 [get_ports hdmi_i2c_sda_io]

set_property PULLUP true [get_ports hdmi_i2c_scl_io]
set_property PULLUP true [get_ports hdmi_i2c_sda_io]

set_property IOSTANDARD LVCMOS33 [get_ports hdmi_i2c_scl_io]
set_property IOSTANDARD LVCMOS33 [get_ports hdmi_i2c_sda_io]
set_property IOSTANDARD LVCMOS33 [get_ports hdmi_clk]
set_property IOSTANDARD LVCMOS33 [get_ports hdmi_de]
set_property IOSTANDARD LVCMOS33 [get_ports hdmi_hs]
set_property IOSTANDARD LVCMOS33 [get_ports {hdmi_d[*]}]
set_property IOSTANDARD LVCMOS33 [get_ports hdmi_vs]
set_property IOSTANDARD LVCMOS33 [get_ports hdmi_nreset]


set_property PACKAGE_PIN W20 [get_ports cmos_pclk]
set_property PACKAGE_PIN AA21 [get_ports cmos_href]
set_property PACKAGE_PIN AB21 [get_ports cmos_vsync]
set_property PACKAGE_PIN Y21 [get_ports cmos_rst_n]

set_property PACKAGE_PIN T19 [get_ports {cmos_data[9]}]
set_property PACKAGE_PIN R19 [get_ports {cmos_data[8]}]
set_property PACKAGE_PIN W22 [get_ports {cmos_data[7]}]
set_property PACKAGE_PIN AB19 [get_ports {cmos_data[6]}]
set_property PACKAGE_PIN N15 [get_ports {cmos_data[5]}]
set_property PACKAGE_PIN M15 [get_ports {cmos_data[4]}]
set_property PACKAGE_PIN M16 [get_ports {cmos_data[3]}]
set_property PACKAGE_PIN W21 [get_ports {cmos_data[2]}]
set_property PACKAGE_PIN V22 [get_ports {cmos_data[1]}]
set_property PACKAGE_PIN AB20 [get_ports {cmos_data[0]}]


set_property IOSTANDARD LVCMOS33 [get_ports cmos_rst_n]
set_property IOSTANDARD LVCMOS33 [get_ports cmos_pclk]
set_property IOSTANDARD LVCMOS33 [get_ports cmos_vsync]
set_property IOSTANDARD LVCMOS33 [get_ports cmos_href]
set_property IOSTANDARD LVCMOS33 [get_ports {cmos_data[*]}]

set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets cmos_pclk_IBUF]

#set_property IOSTANDARD LVCMOS33 [get_ports {emio_sccb_tri_io[1]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {emio_sccb_tri_io[0]}]
#set_property PACKAGE_PIN P21 [get_ports {emio_sccb_tri_io[0]}]
#set_property PACKAGE_PIN P15 [get_ports {emio_sccb_tri_io[1]}]

set_property PACKAGE_PIN P15 [get_ports cmos_i2c_scl_io]
set_property PACKAGE_PIN P21 [get_ports cmos_i2c_sda_io]
set_property PULLUP true [get_ports cmos_i2c_scl_io]
set_property PULLUP true [get_ports cmos_i2c_sda_io]
set_property IOSTANDARD LVCMOS33 [get_ports cmos_i2c_scl_io]
set_property IOSTANDARD LVCMOS33 [get_ports cmos_i2c_sda_io]