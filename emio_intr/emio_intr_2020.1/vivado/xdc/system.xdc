set_property BITSTREAM.GENERAL.COMPRESS TRUE [current_design]

# LED2
set_property -dict {PACKAGE_PIN A16 IOSTANDARD LVCMOS33} [get_ports {emio_tri_io[0]}]

# KEY2
set_property -dict {PACKAGE_PIN A17 IOSTANDARD LVCMOS33} [get_ports {emio_tri_io[1]}]
