set_property BITSTREAM.GENERAL.COMPRESS TRUE [current_design]

set_property PACKAGE_PIN AG13 [get_ports uart_0_rxd]
set_property IOSTANDARD LVCMOS33 [get_ports uart_0_rxd]
set_property PACKAGE_PIN W11 [get_ports uart_0_txd]
set_property IOSTANDARD LVCMOS33 [get_ports uart_0_txd]
set_property PACKAGE_PIN AH13 [get_ports {uart_0_txen[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {uart_0_txen[0]}]

# IT6801 i2c
## sda
set_property PACKAGE_PIN D15 [get_ports i2c_0_sda_io]
set_property IOSTANDARD LVCMOS33 [get_ports i2c_0_sda_io]
## scl
set_property PACKAGE_PIN D14 [get_ports i2c_0_scl_io]
set_property IOSTANDARD LVCMOS33 [get_ports i2c_0_scl_io]


# ch_0
## sda
set_property PACKAGE_PIN G5 [get_ports i2c_1_sda_io]
set_property IOSTANDARD LVCMOS18 [get_ports i2c_1_sda_io]
## scl
set_property PACKAGE_PIN F5 [get_ports i2c_1_scl_io]
set_property IOSTANDARD LVCMOS18 [get_ports i2c_1_scl_io]

# ch_1
## sda
set_property PACKAGE_PIN G3 [get_ports i2c_2_sda_io]
set_property IOSTANDARD LVCMOS18 [get_ports i2c_2_sda_io]
## scl
set_property PACKAGE_PIN F3 [get_ports i2c_2_scl_io]
set_property IOSTANDARD LVCMOS18 [get_ports i2c_2_scl_io]

# ch_2
## sda
set_property PACKAGE_PIN D6 [get_ports i2c_3_sda_io]
set_property IOSTANDARD LVCMOS18 [get_ports i2c_3_sda_io]
## scl
set_property PACKAGE_PIN D7 [get_ports i2c_3_scl_io]
set_property IOSTANDARD LVCMOS18 [get_ports i2c_3_scl_io]

# ch_3
## sda
set_property PACKAGE_PIN B8 [get_ports i2c_4_sda_io]
set_property IOSTANDARD LVCMOS18 [get_ports i2c_4_sda_io]
## scl
set_property PACKAGE_PIN C8 [get_ports i2c_4_scl_io]
set_property IOSTANDARD LVCMOS18 [get_ports i2c_4_scl_io]

# SiI9136-3 timing
#set_property PACKAGE_PIN L13 [get_ports vid_clk]
#set_property IOSTANDARD LVCMOS33 [get_ports vid_clk]

#set_property PACKAGE_PIN K14 [get_ports vid_de]
#set_property IOSTANDARD LVCMOS33 [get_ports vid_de]

#set_property PACKAGE_PIN H12 [get_ports vid_vs]
#set_property IOSTANDARD LVCMOS33 [get_ports vid_vs]

#set_property PACKAGE_PIN J12 [get_ports vid_hs]
#set_property IOSTANDARD LVCMOS33 [get_ports vid_hs]

## IT6801 data
#set_property PACKAGE_PIN J14 [get_ports {vid_data[0]}]
#set_property PACKAGE_PIN H13 [get_ports {vid_data[1]}]
#set_property PACKAGE_PIN H14 [get_ports {vid_data[2]}]
#set_property PACKAGE_PIN F13 [get_ports {vid_data[3]}]
#set_property PACKAGE_PIN G13 [get_ports {vid_data[4]}]
#set_property PACKAGE_PIN L14 [get_ports {vid_data[5]}]
#set_property PACKAGE_PIN C14 [get_ports {vid_data[6]}]
#set_property PACKAGE_PIN C13 [get_ports {vid_data[7]}]
#set_property PACKAGE_PIN B14 [get_ports {vid_data[8]}]
#set_property PACKAGE_PIN A14 [get_ports {vid_data[9]}]
#set_property PACKAGE_PIN B13 [get_ports {vid_data[10]}]
#set_property PACKAGE_PIN A13 [get_ports {vid_data[11]}]
#set_property PACKAGE_PIN E14 [get_ports {vid_data[12]}]
#set_property PACKAGE_PIN E13 [get_ports {vid_data[13]}]
#set_property PACKAGE_PIN F12 [get_ports {vid_data[14]}]
#set_property PACKAGE_PIN F11 [get_ports {vid_data[15]}]
#set_property PACKAGE_PIN A11 [get_ports {vid_data[16]}]
#set_property PACKAGE_PIN A12 [get_ports {vid_data[17]}]
#set_property PACKAGE_PIN C12 [get_ports {vid_data[18]}]
#set_property PACKAGE_PIN D12 [get_ports {vid_data[19]}]
#set_property PACKAGE_PIN A10 [get_ports {vid_data[20]}]
#set_property PACKAGE_PIN B11 [get_ports {vid_data[21]}]
#set_property PACKAGE_PIN B10 [get_ports {vid_data[22]}]
#set_property PACKAGE_PIN C11 [get_ports {vid_data[23]}]

#set_property IOSTANDARD LVCMOS33 [get_ports {vid_data[*]}]

## HDMII_INT
#set_property PACKAGE_PIN G14 [get_ports hdmi_int]
#set_property IOSTANDARD LVCMOS33 [get_ports hdmi_int]
### HDMII_SYSRSTN
#set_property PACKAGE_PIN G15 [get_ports hdmi_rstn]
#set_property IOSTANDARD LVCMOS33 [get_ports hdmi_rstn]

# eeprom
## eeprom wp: (lo: wr; hi: ro)
set_property PACKAGE_PIN AB14 [get_ports {gpio_tri_io[19]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpio_tri_io[19]}]
## eeprom sda
set_property PACKAGE_PIN W14 [get_ports ps_iic_0_sda_io]
set_property IOSTANDARD LVCMOS33 [get_ports ps_iic_0_sda_io]
## eeprom scl
set_property PACKAGE_PIN AB15 [get_ports ps_iic_0_scl_io]
set_property IOSTANDARD LVCMOS33 [get_ports ps_iic_0_scl_io]

# relay_ctrl
set_property PACKAGE_PIN AG11 [get_ports {gpio_tri_io[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpio_tri_io[0]}]

# HDMII_SYSRSTN
set_property PACKAGE_PIN G15 [get_ports {gpio_tri_io[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpio_tri_io[1]}]

# PL_LOCK_LED
set_property PACKAGE_PIN AF11 [get_ports {gpio_tri_io[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpio_tri_io[2]}]


#gpio for maxim chips

#chi0_lock
set_property PACKAGE_PIN F2 [get_ports {gpio_tri_io[3]}]
set_property IOSTANDARD LVCMOS18 [get_ports {gpio_tri_io[3]}]

#chip0_mfp8
set_property PACKAGE_PIN E2 [get_ports {gpio_tri_io[4]}]
set_property IOSTANDARD LVCMOS18 [get_ports {gpio_tri_io[4]}]

#chip0_pwdnb
set_property PACKAGE_PIN G1 [get_ports {gpio_tri_io[5]}]
set_property IOSTANDARD LVCMOS18 [get_ports {gpio_tri_io[5]}]

#chip0_pclk
set_property PACKAGE_PIN F1 [get_ports {gpio_tri_io[6]}]
set_property IOSTANDARD LVCMOS18 [get_ports {gpio_tri_io[6]}]


#chip1_lock
set_property PACKAGE_PIN G8 [get_ports {gpio_tri_io[7]}]
set_property IOSTANDARD LVCMOS18 [get_ports {gpio_tri_io[7]}]

#chip1_mfp8
set_property PACKAGE_PIN F7 [get_ports {gpio_tri_io[8]}]
set_property IOSTANDARD LVCMOS18 [get_ports {gpio_tri_io[8]}]

#chip1_pwdnb
set_property PACKAGE_PIN G6 [get_ports {gpio_tri_io[9]}]
set_property IOSTANDARD LVCMOS18 [get_ports {gpio_tri_io[9]}]

#chip1_pclk
set_property PACKAGE_PIN F6 [get_ports {gpio_tri_io[10]}]
set_property IOSTANDARD LVCMOS18 [get_ports {gpio_tri_io[10]}]


#chip2_lock
set_property PACKAGE_PIN D4 [get_ports {gpio_tri_io[11]}]
set_property IOSTANDARD LVCMOS18 [get_ports {gpio_tri_io[11]}]

#chip2_mfp8
set_property PACKAGE_PIN C4 [get_ports {gpio_tri_io[12]}]
set_property IOSTANDARD LVCMOS18 [get_ports {gpio_tri_io[12]}]

#chip2_pwdnb
set_property PACKAGE_PIN C3 [get_ports {gpio_tri_io[13]}]
set_property IOSTANDARD LVCMOS18 [get_ports {gpio_tri_io[13]}]

#chip2_pclk
set_property PACKAGE_PIN C2 [get_ports {gpio_tri_io[14]}]
set_property IOSTANDARD LVCMOS18 [get_ports {gpio_tri_io[14]}]

#chip3_lock
set_property PACKAGE_PIN A2 [get_ports {gpio_tri_io[15]}]
set_property IOSTANDARD LVCMOS18 [get_ports {gpio_tri_io[15]}]

#chip3_lock
set_property PACKAGE_PIN B5 [get_ports {gpio_tri_io[16]}]
set_property IOSTANDARD LVCMOS18 [get_ports {gpio_tri_io[16]}]

#chip3_errb
set_property PACKAGE_PIN A1 [get_ports {gpio_tri_io[17]}]
set_property IOSTANDARD LVCMOS18 [get_ports {gpio_tri_io[17]}]

#chip3_mfp6
set_property PACKAGE_PIN A5 [get_ports {gpio_tri_io[18]}]
set_property IOSTANDARD LVCMOS18 [get_ports {gpio_tri_io[18]}]

#
#set_property PACKAGE_PIN F8 [get_ports hdmi_tx0_clk_p]
#set_property IOSTANDARD LVDS [get_ports hdmi_tx0_clk_p]

#set_property PACKAGE_PIN B5 [get_ports {hdmi_tx0_data_p[0]}]
#set_property PACKAGE_PIN A9 [get_ports {hdmi_tx0_data_p[1]}]
#set_property PACKAGE_PIN E9 [get_ports {hdmi_tx0_data_p[2]}]
#set_property IOSTANDARD LVDS [get_ports {hdmi_tx0_data_p[*]}]

#
#set_property PACKAGE_PIN B4 [get_ports hdmi_tx1_clk_p]
#set_property IOSTANDARD LVDS [get_ports hdmi_tx1_clk_p]

#set_property PACKAGE_PIN C1 [get_ports {hdmi_tx1_data_p[0]}]
#set_property PACKAGE_PIN C6 [get_ports {hdmi_tx1_data_p[1]}]
#set_property PACKAGE_PIN E1 [get_ports {hdmi_tx1_data_p[2]}]
#set_property IOSTANDARD LVDS [get_ports {hdmi_tx1_data_p[*]}]

# vivado tcl console input
# set_param drc.disableLUTOverUtilError 1

set_false_path -from [get_clocks clk_pl_0] -to [get_clocks clk_pl_2]

create_debug_core u_ila_0 ila
set_property ALL_PROBE_SAME_MU true [get_debug_cores u_ila_0]
set_property ALL_PROBE_SAME_MU_CNT 1 [get_debug_cores u_ila_0]
set_property C_ADV_TRIGGER false [get_debug_cores u_ila_0]
set_property C_DATA_DEPTH 2048 [get_debug_cores u_ila_0]
set_property C_EN_STRG_QUAL false [get_debug_cores u_ila_0]
set_property C_INPUT_PIPE_STAGES 0 [get_debug_cores u_ila_0]
set_property C_TRIGIN_EN false [get_debug_cores u_ila_0]
set_property C_TRIGOUT_EN false [get_debug_cores u_ila_0]
set_property port_width 1 [get_debug_ports u_ila_0/clk]
connect_debug_port u_ila_0/clk [get_nets [list system_i/zynq_ultra_ps_e_0/inst/pl_clk0]]
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe0]
set_property port_width 16 [get_debug_ports u_ila_0/probe0]
connect_debug_port u_ila_0/probe0 [get_nets [list {system_i/axis_passthrough_mon_2/inst/s_axis_tdata[0]} {system_i/axis_passthrough_mon_2/inst/s_axis_tdata[1]} {system_i/axis_passthrough_mon_2/inst/s_axis_tdata[2]} {system_i/axis_passthrough_mon_2/inst/s_axis_tdata[3]} {system_i/axis_passthrough_mon_2/inst/s_axis_tdata[4]} {system_i/axis_passthrough_mon_2/inst/s_axis_tdata[5]} {system_i/axis_passthrough_mon_2/inst/s_axis_tdata[6]} {system_i/axis_passthrough_mon_2/inst/s_axis_tdata[7]} {system_i/axis_passthrough_mon_2/inst/s_axis_tdata[8]} {system_i/axis_passthrough_mon_2/inst/s_axis_tdata[9]} {system_i/axis_passthrough_mon_2/inst/s_axis_tdata[10]} {system_i/axis_passthrough_mon_2/inst/s_axis_tdata[11]} {system_i/axis_passthrough_mon_2/inst/s_axis_tdata[12]} {system_i/axis_passthrough_mon_2/inst/s_axis_tdata[13]} {system_i/axis_passthrough_mon_2/inst/s_axis_tdata[14]} {system_i/axis_passthrough_mon_2/inst/s_axis_tdata[15]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe1]
set_property port_width 32 [get_debug_ports u_ila_0/probe1]
connect_debug_port u_ila_0/probe1 [get_nets [list {system_i/axis_passthrough_mon_0/inst/fps_cnt[0]} {system_i/axis_passthrough_mon_0/inst/fps_cnt[1]} {system_i/axis_passthrough_mon_0/inst/fps_cnt[2]} {system_i/axis_passthrough_mon_0/inst/fps_cnt[3]} {system_i/axis_passthrough_mon_0/inst/fps_cnt[4]} {system_i/axis_passthrough_mon_0/inst/fps_cnt[5]} {system_i/axis_passthrough_mon_0/inst/fps_cnt[6]} {system_i/axis_passthrough_mon_0/inst/fps_cnt[7]} {system_i/axis_passthrough_mon_0/inst/fps_cnt[8]} {system_i/axis_passthrough_mon_0/inst/fps_cnt[9]} {system_i/axis_passthrough_mon_0/inst/fps_cnt[10]} {system_i/axis_passthrough_mon_0/inst/fps_cnt[11]} {system_i/axis_passthrough_mon_0/inst/fps_cnt[12]} {system_i/axis_passthrough_mon_0/inst/fps_cnt[13]} {system_i/axis_passthrough_mon_0/inst/fps_cnt[14]} {system_i/axis_passthrough_mon_0/inst/fps_cnt[15]} {system_i/axis_passthrough_mon_0/inst/fps_cnt[16]} {system_i/axis_passthrough_mon_0/inst/fps_cnt[17]} {system_i/axis_passthrough_mon_0/inst/fps_cnt[18]} {system_i/axis_passthrough_mon_0/inst/fps_cnt[19]} {system_i/axis_passthrough_mon_0/inst/fps_cnt[20]} {system_i/axis_passthrough_mon_0/inst/fps_cnt[21]} {system_i/axis_passthrough_mon_0/inst/fps_cnt[22]} {system_i/axis_passthrough_mon_0/inst/fps_cnt[23]} {system_i/axis_passthrough_mon_0/inst/fps_cnt[24]} {system_i/axis_passthrough_mon_0/inst/fps_cnt[25]} {system_i/axis_passthrough_mon_0/inst/fps_cnt[26]} {system_i/axis_passthrough_mon_0/inst/fps_cnt[27]} {system_i/axis_passthrough_mon_0/inst/fps_cnt[28]} {system_i/axis_passthrough_mon_0/inst/fps_cnt[29]} {system_i/axis_passthrough_mon_0/inst/fps_cnt[30]} {system_i/axis_passthrough_mon_0/inst/fps_cnt[31]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe2]
set_property port_width 1 [get_debug_ports u_ila_0/probe2]
connect_debug_port u_ila_0/probe2 [get_nets [list {system_i/axis_passthrough_mon_2/inst/s_axis_tuser[0]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe3]
set_property port_width 16 [get_debug_ports u_ila_0/probe3]
connect_debug_port u_ila_0/probe3 [get_nets [list {system_i/axis_passthrough_mon_2/inst/line_cnt[0]} {system_i/axis_passthrough_mon_2/inst/line_cnt[1]} {system_i/axis_passthrough_mon_2/inst/line_cnt[2]} {system_i/axis_passthrough_mon_2/inst/line_cnt[3]} {system_i/axis_passthrough_mon_2/inst/line_cnt[4]} {system_i/axis_passthrough_mon_2/inst/line_cnt[5]} {system_i/axis_passthrough_mon_2/inst/line_cnt[6]} {system_i/axis_passthrough_mon_2/inst/line_cnt[7]} {system_i/axis_passthrough_mon_2/inst/line_cnt[8]} {system_i/axis_passthrough_mon_2/inst/line_cnt[9]} {system_i/axis_passthrough_mon_2/inst/line_cnt[10]} {system_i/axis_passthrough_mon_2/inst/line_cnt[11]} {system_i/axis_passthrough_mon_2/inst/line_cnt[12]} {system_i/axis_passthrough_mon_2/inst/line_cnt[13]} {system_i/axis_passthrough_mon_2/inst/line_cnt[14]} {system_i/axis_passthrough_mon_2/inst/line_cnt[15]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe4]
set_property port_width 16 [get_debug_ports u_ila_0/probe4]
connect_debug_port u_ila_0/probe4 [get_nets [list {system_i/axis_passthrough_mon_2/inst/col_cnt[0]} {system_i/axis_passthrough_mon_2/inst/col_cnt[1]} {system_i/axis_passthrough_mon_2/inst/col_cnt[2]} {system_i/axis_passthrough_mon_2/inst/col_cnt[3]} {system_i/axis_passthrough_mon_2/inst/col_cnt[4]} {system_i/axis_passthrough_mon_2/inst/col_cnt[5]} {system_i/axis_passthrough_mon_2/inst/col_cnt[6]} {system_i/axis_passthrough_mon_2/inst/col_cnt[7]} {system_i/axis_passthrough_mon_2/inst/col_cnt[8]} {system_i/axis_passthrough_mon_2/inst/col_cnt[9]} {system_i/axis_passthrough_mon_2/inst/col_cnt[10]} {system_i/axis_passthrough_mon_2/inst/col_cnt[11]} {system_i/axis_passthrough_mon_2/inst/col_cnt[12]} {system_i/axis_passthrough_mon_2/inst/col_cnt[13]} {system_i/axis_passthrough_mon_2/inst/col_cnt[14]} {system_i/axis_passthrough_mon_2/inst/col_cnt[15]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe5]
set_property port_width 1 [get_debug_ports u_ila_0/probe5]
connect_debug_port u_ila_0/probe5 [get_nets [list {system_i/axis_passthrough_mon_0/inst/s_axis_tuser[0]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe6]
set_property port_width 16 [get_debug_ports u_ila_0/probe6]
connect_debug_port u_ila_0/probe6 [get_nets [list {system_i/axis_passthrough_mon_0/inst/col_cnt[0]} {system_i/axis_passthrough_mon_0/inst/col_cnt[1]} {system_i/axis_passthrough_mon_0/inst/col_cnt[2]} {system_i/axis_passthrough_mon_0/inst/col_cnt[3]} {system_i/axis_passthrough_mon_0/inst/col_cnt[4]} {system_i/axis_passthrough_mon_0/inst/col_cnt[5]} {system_i/axis_passthrough_mon_0/inst/col_cnt[6]} {system_i/axis_passthrough_mon_0/inst/col_cnt[7]} {system_i/axis_passthrough_mon_0/inst/col_cnt[8]} {system_i/axis_passthrough_mon_0/inst/col_cnt[9]} {system_i/axis_passthrough_mon_0/inst/col_cnt[10]} {system_i/axis_passthrough_mon_0/inst/col_cnt[11]} {system_i/axis_passthrough_mon_0/inst/col_cnt[12]} {system_i/axis_passthrough_mon_0/inst/col_cnt[13]} {system_i/axis_passthrough_mon_0/inst/col_cnt[14]} {system_i/axis_passthrough_mon_0/inst/col_cnt[15]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe7]
set_property port_width 16 [get_debug_ports u_ila_0/probe7]
connect_debug_port u_ila_0/probe7 [get_nets [list {system_i/axis_passthrough_mon_0/inst/line_cnt[0]} {system_i/axis_passthrough_mon_0/inst/line_cnt[1]} {system_i/axis_passthrough_mon_0/inst/line_cnt[2]} {system_i/axis_passthrough_mon_0/inst/line_cnt[3]} {system_i/axis_passthrough_mon_0/inst/line_cnt[4]} {system_i/axis_passthrough_mon_0/inst/line_cnt[5]} {system_i/axis_passthrough_mon_0/inst/line_cnt[6]} {system_i/axis_passthrough_mon_0/inst/line_cnt[7]} {system_i/axis_passthrough_mon_0/inst/line_cnt[8]} {system_i/axis_passthrough_mon_0/inst/line_cnt[9]} {system_i/axis_passthrough_mon_0/inst/line_cnt[10]} {system_i/axis_passthrough_mon_0/inst/line_cnt[11]} {system_i/axis_passthrough_mon_0/inst/line_cnt[12]} {system_i/axis_passthrough_mon_0/inst/line_cnt[13]} {system_i/axis_passthrough_mon_0/inst/line_cnt[14]} {system_i/axis_passthrough_mon_0/inst/line_cnt[15]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe8]
set_property port_width 32 [get_debug_ports u_ila_0/probe8]
connect_debug_port u_ila_0/probe8 [get_nets [list {system_i/axis_passthrough_mon_2/inst/fps_cnt[0]} {system_i/axis_passthrough_mon_2/inst/fps_cnt[1]} {system_i/axis_passthrough_mon_2/inst/fps_cnt[2]} {system_i/axis_passthrough_mon_2/inst/fps_cnt[3]} {system_i/axis_passthrough_mon_2/inst/fps_cnt[4]} {system_i/axis_passthrough_mon_2/inst/fps_cnt[5]} {system_i/axis_passthrough_mon_2/inst/fps_cnt[6]} {system_i/axis_passthrough_mon_2/inst/fps_cnt[7]} {system_i/axis_passthrough_mon_2/inst/fps_cnt[8]} {system_i/axis_passthrough_mon_2/inst/fps_cnt[9]} {system_i/axis_passthrough_mon_2/inst/fps_cnt[10]} {system_i/axis_passthrough_mon_2/inst/fps_cnt[11]} {system_i/axis_passthrough_mon_2/inst/fps_cnt[12]} {system_i/axis_passthrough_mon_2/inst/fps_cnt[13]} {system_i/axis_passthrough_mon_2/inst/fps_cnt[14]} {system_i/axis_passthrough_mon_2/inst/fps_cnt[15]} {system_i/axis_passthrough_mon_2/inst/fps_cnt[16]} {system_i/axis_passthrough_mon_2/inst/fps_cnt[17]} {system_i/axis_passthrough_mon_2/inst/fps_cnt[18]} {system_i/axis_passthrough_mon_2/inst/fps_cnt[19]} {system_i/axis_passthrough_mon_2/inst/fps_cnt[20]} {system_i/axis_passthrough_mon_2/inst/fps_cnt[21]} {system_i/axis_passthrough_mon_2/inst/fps_cnt[22]} {system_i/axis_passthrough_mon_2/inst/fps_cnt[23]} {system_i/axis_passthrough_mon_2/inst/fps_cnt[24]} {system_i/axis_passthrough_mon_2/inst/fps_cnt[25]} {system_i/axis_passthrough_mon_2/inst/fps_cnt[26]} {system_i/axis_passthrough_mon_2/inst/fps_cnt[27]} {system_i/axis_passthrough_mon_2/inst/fps_cnt[28]} {system_i/axis_passthrough_mon_2/inst/fps_cnt[29]} {system_i/axis_passthrough_mon_2/inst/fps_cnt[30]} {system_i/axis_passthrough_mon_2/inst/fps_cnt[31]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe9]
set_property port_width 16 [get_debug_ports u_ila_0/probe9]
connect_debug_port u_ila_0/probe9 [get_nets [list {system_i/axis_passthrough_mon_1/inst/col_cnt[0]} {system_i/axis_passthrough_mon_1/inst/col_cnt[1]} {system_i/axis_passthrough_mon_1/inst/col_cnt[2]} {system_i/axis_passthrough_mon_1/inst/col_cnt[3]} {system_i/axis_passthrough_mon_1/inst/col_cnt[4]} {system_i/axis_passthrough_mon_1/inst/col_cnt[5]} {system_i/axis_passthrough_mon_1/inst/col_cnt[6]} {system_i/axis_passthrough_mon_1/inst/col_cnt[7]} {system_i/axis_passthrough_mon_1/inst/col_cnt[8]} {system_i/axis_passthrough_mon_1/inst/col_cnt[9]} {system_i/axis_passthrough_mon_1/inst/col_cnt[10]} {system_i/axis_passthrough_mon_1/inst/col_cnt[11]} {system_i/axis_passthrough_mon_1/inst/col_cnt[12]} {system_i/axis_passthrough_mon_1/inst/col_cnt[13]} {system_i/axis_passthrough_mon_1/inst/col_cnt[14]} {system_i/axis_passthrough_mon_1/inst/col_cnt[15]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe10]
set_property port_width 16 [get_debug_ports u_ila_0/probe10]
connect_debug_port u_ila_0/probe10 [get_nets [list {system_i/axis_passthrough_mon_0/inst/s_axis_tdata[0]} {system_i/axis_passthrough_mon_0/inst/s_axis_tdata[1]} {system_i/axis_passthrough_mon_0/inst/s_axis_tdata[2]} {system_i/axis_passthrough_mon_0/inst/s_axis_tdata[3]} {system_i/axis_passthrough_mon_0/inst/s_axis_tdata[4]} {system_i/axis_passthrough_mon_0/inst/s_axis_tdata[5]} {system_i/axis_passthrough_mon_0/inst/s_axis_tdata[6]} {system_i/axis_passthrough_mon_0/inst/s_axis_tdata[7]} {system_i/axis_passthrough_mon_0/inst/s_axis_tdata[8]} {system_i/axis_passthrough_mon_0/inst/s_axis_tdata[9]} {system_i/axis_passthrough_mon_0/inst/s_axis_tdata[10]} {system_i/axis_passthrough_mon_0/inst/s_axis_tdata[11]} {system_i/axis_passthrough_mon_0/inst/s_axis_tdata[12]} {system_i/axis_passthrough_mon_0/inst/s_axis_tdata[13]} {system_i/axis_passthrough_mon_0/inst/s_axis_tdata[14]} {system_i/axis_passthrough_mon_0/inst/s_axis_tdata[15]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe11]
set_property port_width 32 [get_debug_ports u_ila_0/probe11]
connect_debug_port u_ila_0/probe11 [get_nets [list {system_i/axis_passthrough_mon_1/inst/fps_cnt[0]} {system_i/axis_passthrough_mon_1/inst/fps_cnt[1]} {system_i/axis_passthrough_mon_1/inst/fps_cnt[2]} {system_i/axis_passthrough_mon_1/inst/fps_cnt[3]} {system_i/axis_passthrough_mon_1/inst/fps_cnt[4]} {system_i/axis_passthrough_mon_1/inst/fps_cnt[5]} {system_i/axis_passthrough_mon_1/inst/fps_cnt[6]} {system_i/axis_passthrough_mon_1/inst/fps_cnt[7]} {system_i/axis_passthrough_mon_1/inst/fps_cnt[8]} {system_i/axis_passthrough_mon_1/inst/fps_cnt[9]} {system_i/axis_passthrough_mon_1/inst/fps_cnt[10]} {system_i/axis_passthrough_mon_1/inst/fps_cnt[11]} {system_i/axis_passthrough_mon_1/inst/fps_cnt[12]} {system_i/axis_passthrough_mon_1/inst/fps_cnt[13]} {system_i/axis_passthrough_mon_1/inst/fps_cnt[14]} {system_i/axis_passthrough_mon_1/inst/fps_cnt[15]} {system_i/axis_passthrough_mon_1/inst/fps_cnt[16]} {system_i/axis_passthrough_mon_1/inst/fps_cnt[17]} {system_i/axis_passthrough_mon_1/inst/fps_cnt[18]} {system_i/axis_passthrough_mon_1/inst/fps_cnt[19]} {system_i/axis_passthrough_mon_1/inst/fps_cnt[20]} {system_i/axis_passthrough_mon_1/inst/fps_cnt[21]} {system_i/axis_passthrough_mon_1/inst/fps_cnt[22]} {system_i/axis_passthrough_mon_1/inst/fps_cnt[23]} {system_i/axis_passthrough_mon_1/inst/fps_cnt[24]} {system_i/axis_passthrough_mon_1/inst/fps_cnt[25]} {system_i/axis_passthrough_mon_1/inst/fps_cnt[26]} {system_i/axis_passthrough_mon_1/inst/fps_cnt[27]} {system_i/axis_passthrough_mon_1/inst/fps_cnt[28]} {system_i/axis_passthrough_mon_1/inst/fps_cnt[29]} {system_i/axis_passthrough_mon_1/inst/fps_cnt[30]} {system_i/axis_passthrough_mon_1/inst/fps_cnt[31]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe12]
set_property port_width 1 [get_debug_ports u_ila_0/probe12]
connect_debug_port u_ila_0/probe12 [get_nets [list {system_i/axis_passthrough_mon_1/inst/s_axis_tuser[0]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe13]
set_property port_width 16 [get_debug_ports u_ila_0/probe13]
connect_debug_port u_ila_0/probe13 [get_nets [list {system_i/axis_passthrough_mon_1/inst/s_axis_tdata[0]} {system_i/axis_passthrough_mon_1/inst/s_axis_tdata[1]} {system_i/axis_passthrough_mon_1/inst/s_axis_tdata[2]} {system_i/axis_passthrough_mon_1/inst/s_axis_tdata[3]} {system_i/axis_passthrough_mon_1/inst/s_axis_tdata[4]} {system_i/axis_passthrough_mon_1/inst/s_axis_tdata[5]} {system_i/axis_passthrough_mon_1/inst/s_axis_tdata[6]} {system_i/axis_passthrough_mon_1/inst/s_axis_tdata[7]} {system_i/axis_passthrough_mon_1/inst/s_axis_tdata[8]} {system_i/axis_passthrough_mon_1/inst/s_axis_tdata[9]} {system_i/axis_passthrough_mon_1/inst/s_axis_tdata[10]} {system_i/axis_passthrough_mon_1/inst/s_axis_tdata[11]} {system_i/axis_passthrough_mon_1/inst/s_axis_tdata[12]} {system_i/axis_passthrough_mon_1/inst/s_axis_tdata[13]} {system_i/axis_passthrough_mon_1/inst/s_axis_tdata[14]} {system_i/axis_passthrough_mon_1/inst/s_axis_tdata[15]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe14]
set_property port_width 16 [get_debug_ports u_ila_0/probe14]
connect_debug_port u_ila_0/probe14 [get_nets [list {system_i/axis_passthrough_mon_1/inst/line_cnt[0]} {system_i/axis_passthrough_mon_1/inst/line_cnt[1]} {system_i/axis_passthrough_mon_1/inst/line_cnt[2]} {system_i/axis_passthrough_mon_1/inst/line_cnt[3]} {system_i/axis_passthrough_mon_1/inst/line_cnt[4]} {system_i/axis_passthrough_mon_1/inst/line_cnt[5]} {system_i/axis_passthrough_mon_1/inst/line_cnt[6]} {system_i/axis_passthrough_mon_1/inst/line_cnt[7]} {system_i/axis_passthrough_mon_1/inst/line_cnt[8]} {system_i/axis_passthrough_mon_1/inst/line_cnt[9]} {system_i/axis_passthrough_mon_1/inst/line_cnt[10]} {system_i/axis_passthrough_mon_1/inst/line_cnt[11]} {system_i/axis_passthrough_mon_1/inst/line_cnt[12]} {system_i/axis_passthrough_mon_1/inst/line_cnt[13]} {system_i/axis_passthrough_mon_1/inst/line_cnt[14]} {system_i/axis_passthrough_mon_1/inst/line_cnt[15]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe15]
set_property port_width 1 [get_debug_ports u_ila_0/probe15]
connect_debug_port u_ila_0/probe15 [get_nets [list system_i/axis_passthrough_mon_1/inst/s_axis_tlast]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe16]
set_property port_width 1 [get_debug_ports u_ila_0/probe16]
connect_debug_port u_ila_0/probe16 [get_nets [list system_i/axis_passthrough_mon_0/inst/s_axis_tlast]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe17]
set_property port_width 1 [get_debug_ports u_ila_0/probe17]
connect_debug_port u_ila_0/probe17 [get_nets [list system_i/axis_passthrough_mon_2/inst/s_axis_tlast]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe18]
set_property port_width 1 [get_debug_ports u_ila_0/probe18]
connect_debug_port u_ila_0/probe18 [get_nets [list system_i/axis_passthrough_mon_1/inst/s_axis_tready]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe19]
set_property port_width 1 [get_debug_ports u_ila_0/probe19]
connect_debug_port u_ila_0/probe19 [get_nets [list system_i/axis_passthrough_mon_2/inst/s_axis_tready]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe20]
set_property port_width 1 [get_debug_ports u_ila_0/probe20]
connect_debug_port u_ila_0/probe20 [get_nets [list system_i/axis_passthrough_mon_0/inst/s_axis_tready]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe21]
set_property port_width 1 [get_debug_ports u_ila_0/probe21]
connect_debug_port u_ila_0/probe21 [get_nets [list system_i/axis_passthrough_mon_2/inst/s_axis_tvalid]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe22]
set_property port_width 1 [get_debug_ports u_ila_0/probe22]
connect_debug_port u_ila_0/probe22 [get_nets [list system_i/axis_passthrough_mon_0/inst/s_axis_tvalid]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe23]
set_property port_width 1 [get_debug_ports u_ila_0/probe23]
connect_debug_port u_ila_0/probe23 [get_nets [list system_i/axis_passthrough_mon_1/inst/s_axis_tvalid]]
set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
connect_debug_port dbg_hub/clk [get_nets u_ila_0_pl_clk0]
