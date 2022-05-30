set_property BITSTREAM.GENERAL.COMPRESS TRUE [current_design]

# trigger
set_property -dict {PACKAGE_PIN J21  IOSTANDARD LVCMOS33} [get_ports {gpio_intr_tri_io}]


# iic master
set_property -dict {PACKAGE_PIN T21  IOSTANDARD LVCMOS33} [get_ports {iic_0_scl_io}]
set_property -dict {PACKAGE_PIN U21  IOSTANDARD LVCMOS33} [get_ports {iic_0_sda_io}]

#set_property PULLUP true [get_ports iic_0_scl_io]
#set_property PULLUP true [get_ports iic_0_sda_io]

# iic slave
set_property -dict {PACKAGE_PIN U20  IOSTANDARD LVCMOS33} [get_ports {iic_1_scl_io}]
set_property -dict {PACKAGE_PIN V20  IOSTANDARD LVCMOS33} [get_ports {iic_1_sda_io}]

#set_property PULLUP true [get_ports iic_1_scl_io]
#set_property PULLUP true [get_ports iic_1_sda_io]

#dummy ports
set_property -dict {PACKAGE_PIN Y19  IOSTANDARD LVCMOS33} [get_ports {gpo_0}]
set_property -dict {PACKAGE_PIN AA19 IOSTANDARD LVCMOS33} [get_ports {gpo_1}]

