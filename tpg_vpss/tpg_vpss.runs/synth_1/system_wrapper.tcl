# 
# Synthesis run script generated by Vivado
# 

set TIME_start [clock seconds] 
proc create_report { reportName command } {
  set status "."
  append status $reportName ".fail"
  if { [file exists $status] } {
    eval file delete [glob $status]
  }
  send_msg_id runtcl-4 info "Executing : $command"
  set retval [eval catch { $command } msg]
  if { $retval != 0 } {
    set fp [open $status w]
    close $fp
    send_msg_id runtcl-5 warning "$msg"
  }
}
create_project -in_memory -part xc7z020clg484-2

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir /home/andy/zynq/play_zynq/tpg_vpss/tpg_vpss.cache/wt [current_project]
set_property parent.project_path /home/andy/zynq/play_zynq/tpg_vpss/tpg_vpss.xpr [current_project]
set_property XPM_LIBRARIES {XPM_CDC XPM_FIFO XPM_MEMORY} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property ip_repo_paths /home/andy/zynq/repo [current_project]
update_ip_catalog
set_property ip_output_repo /home/andy/zynq/play_zynq/tpg_vpss/tpg_vpss.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_verilog -library xil_defaultlib /home/andy/zynq/play_zynq/tpg_vpss/tpg_vpss.srcs/sources_1/bd/system/hdl/system_wrapper.v
add_files /home/andy/zynq/play_zynq/tpg_vpss/tpg_vpss.srcs/sources_1/bd/system/system.bd
set_property used_in_implementation false [get_files -all /home/andy/zynq/play_zynq/tpg_vpss/tpg_vpss.srcs/sources_1/bd/system/ip/system_processing_system7_0_0/system_processing_system7_0_0.xdc]
set_property used_in_implementation false [get_files -all /home/andy/zynq/play_zynq/tpg_vpss/tpg_vpss.srcs/sources_1/bd/system/ip/system_v_axi4s_vid_out_0_0/system_v_axi4s_vid_out_0_0_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/andy/zynq/play_zynq/tpg_vpss/tpg_vpss.srcs/sources_1/bd/system/ip/system_v_axi4s_vid_out_0_0/system_v_axi4s_vid_out_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/andy/zynq/play_zynq/tpg_vpss/tpg_vpss.srcs/sources_1/bd/system/ip/system_v_tc_0_0/system_v_tc_0_0_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/andy/zynq/play_zynq/tpg_vpss/tpg_vpss.srcs/sources_1/bd/system/ip/system_v_tc_0_0/system_v_tc_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/andy/zynq/play_zynq/tpg_vpss/tpg_vpss.srcs/sources_1/bd/system/ip/system_axi_gpio_0_0/system_axi_gpio_0_0_board.xdc]
set_property used_in_implementation false [get_files -all /home/andy/zynq/play_zynq/tpg_vpss/tpg_vpss.srcs/sources_1/bd/system/ip/system_axi_gpio_0_0/system_axi_gpio_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/andy/zynq/play_zynq/tpg_vpss/tpg_vpss.srcs/sources_1/bd/system/ip/system_axi_gpio_0_0/system_axi_gpio_0_0.xdc]
set_property used_in_implementation false [get_files -all /home/andy/zynq/play_zynq/tpg_vpss/tpg_vpss.srcs/sources_1/bd/system/ip/system_v_tpg_0_0/system_v_tpg_0_0.xdc]
set_property used_in_implementation false [get_files -all /home/andy/zynq/play_zynq/tpg_vpss/tpg_vpss.srcs/sources_1/bd/system/ip/system_v_tpg_0_0/system_v_tpg_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/andy/zynq/play_zynq/tpg_vpss/tpg_vpss.srcs/sources_1/bd/system/ip/system_clk_wiz_0_1/system_clk_wiz_0_1_board.xdc]
set_property used_in_implementation false [get_files -all /home/andy/zynq/play_zynq/tpg_vpss/tpg_vpss.srcs/sources_1/bd/system/ip/system_clk_wiz_0_1/system_clk_wiz_0_1.xdc]
set_property used_in_implementation false [get_files -all /home/andy/zynq/play_zynq/tpg_vpss/tpg_vpss.srcs/sources_1/bd/system/ip/system_clk_wiz_0_1/system_clk_wiz_0_1_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/andy/zynq/play_zynq/tpg_vpss/tpg_vpss.srcs/sources_1/bd/system/ip/system_axis_subset_converter_0_0/system_axis_subset_converter_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/andy/zynq/play_zynq/tpg_vpss/tpg_vpss.srcs/sources_1/bd/system/ip/system_rst_video_clk_wiz_148M_1/system_rst_video_clk_wiz_148M_1_board.xdc]
set_property used_in_implementation false [get_files -all /home/andy/zynq/play_zynq/tpg_vpss/tpg_vpss.srcs/sources_1/bd/system/ip/system_rst_video_clk_wiz_148M_1/system_rst_video_clk_wiz_148M_1.xdc]
set_property used_in_implementation false [get_files -all /home/andy/zynq/play_zynq/tpg_vpss/tpg_vpss.srcs/sources_1/bd/system/ip/system_rst_video_clk_wiz_148M_1/system_rst_video_clk_wiz_148M_1_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/andy/zynq/play_zynq/tpg_vpss/tpg_vpss.srcs/sources_1/bd/system/ip/system_axi_vdma_0_0/system_axi_vdma_0_0.xdc]
set_property used_in_implementation false [get_files -all /home/andy/zynq/play_zynq/tpg_vpss/tpg_vpss.srcs/sources_1/bd/system/ip/system_axi_vdma_0_0/system_axi_vdma_0_0_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/andy/zynq/play_zynq/tpg_vpss/tpg_vpss.srcs/sources_1/bd/system/ip/system_axi_vdma_0_0/system_axi_vdma_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/andy/zynq/play_zynq/tpg_vpss/tpg_vpss.srcs/sources_1/bd/system/ip/system_rst_ps7_0_100M_7/system_rst_ps7_0_100M_7_board.xdc]
set_property used_in_implementation false [get_files -all /home/andy/zynq/play_zynq/tpg_vpss/tpg_vpss.srcs/sources_1/bd/system/ip/system_rst_ps7_0_100M_7/system_rst_ps7_0_100M_7.xdc]
set_property used_in_implementation false [get_files -all /home/andy/zynq/play_zynq/tpg_vpss/tpg_vpss.srcs/sources_1/bd/system/ip/system_rst_ps7_0_100M_7/system_rst_ps7_0_100M_7_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/andy/zynq/play_zynq/tpg_vpss/tpg_vpss.srcs/sources_1/bd/system/ip/system_rst_ps7_0_133M_1/system_rst_ps7_0_133M_1_board.xdc]
set_property used_in_implementation false [get_files -all /home/andy/zynq/play_zynq/tpg_vpss/tpg_vpss.srcs/sources_1/bd/system/ip/system_rst_ps7_0_133M_1/system_rst_ps7_0_133M_1.xdc]
set_property used_in_implementation false [get_files -all /home/andy/zynq/play_zynq/tpg_vpss/tpg_vpss.srcs/sources_1/bd/system/ip/system_rst_ps7_0_133M_1/system_rst_ps7_0_133M_1_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/andy/zynq/play_zynq/tpg_vpss/tpg_vpss.srcs/sources_1/bd/system/ip/system_axis_subset_converter_1_0/system_axis_subset_converter_1_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/andy/zynq/play_zynq/tpg_vpss/tpg_vpss.srcs/sources_1/bd/system/ip/system_axi_smc_3/bd_0/ip/ip_1/bd_45a3_psr_aclk_0_board.xdc]
set_property used_in_implementation false [get_files -all /home/andy/zynq/play_zynq/tpg_vpss/tpg_vpss.srcs/sources_1/bd/system/ip/system_axi_smc_3/bd_0/ip/ip_1/bd_45a3_psr_aclk_0.xdc]
set_property used_in_implementation false [get_files -all /home/andy/zynq/play_zynq/tpg_vpss/tpg_vpss.srcs/sources_1/bd/system/ip/system_axi_smc_3/bd_0/ip/ip_2/bd_45a3_arsw_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/andy/zynq/play_zynq/tpg_vpss/tpg_vpss.srcs/sources_1/bd/system/ip/system_axi_smc_3/bd_0/ip/ip_3/bd_45a3_rsw_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/andy/zynq/play_zynq/tpg_vpss/tpg_vpss.srcs/sources_1/bd/system/ip/system_axi_smc_3/bd_0/ip/ip_4/bd_45a3_awsw_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/andy/zynq/play_zynq/tpg_vpss/tpg_vpss.srcs/sources_1/bd/system/ip/system_axi_smc_3/bd_0/ip/ip_5/bd_45a3_wsw_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/andy/zynq/play_zynq/tpg_vpss/tpg_vpss.srcs/sources_1/bd/system/ip/system_axi_smc_3/bd_0/ip/ip_6/bd_45a3_bsw_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/andy/zynq/play_zynq/tpg_vpss/tpg_vpss.srcs/sources_1/bd/system/ip/system_axi_smc_3/bd_0/ip/ip_10/bd_45a3_s00a2s_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/andy/zynq/play_zynq/tpg_vpss/tpg_vpss.srcs/sources_1/bd/system/ip/system_axi_smc_3/bd_0/ip/ip_11/bd_45a3_sarn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/andy/zynq/play_zynq/tpg_vpss/tpg_vpss.srcs/sources_1/bd/system/ip/system_axi_smc_3/bd_0/ip/ip_12/bd_45a3_srn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/andy/zynq/play_zynq/tpg_vpss/tpg_vpss.srcs/sources_1/bd/system/ip/system_axi_smc_3/bd_0/ip/ip_16/bd_45a3_s01a2s_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/andy/zynq/play_zynq/tpg_vpss/tpg_vpss.srcs/sources_1/bd/system/ip/system_axi_smc_3/bd_0/ip/ip_17/bd_45a3_sawn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/andy/zynq/play_zynq/tpg_vpss/tpg_vpss.srcs/sources_1/bd/system/ip/system_axi_smc_3/bd_0/ip/ip_18/bd_45a3_swn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/andy/zynq/play_zynq/tpg_vpss/tpg_vpss.srcs/sources_1/bd/system/ip/system_axi_smc_3/bd_0/ip/ip_19/bd_45a3_sbn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/andy/zynq/play_zynq/tpg_vpss/tpg_vpss.srcs/sources_1/bd/system/ip/system_axi_smc_3/bd_0/ip/ip_23/bd_45a3_s02a2s_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/andy/zynq/play_zynq/tpg_vpss/tpg_vpss.srcs/sources_1/bd/system/ip/system_axi_smc_3/bd_0/ip/ip_24/bd_45a3_sarn_1_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/andy/zynq/play_zynq/tpg_vpss/tpg_vpss.srcs/sources_1/bd/system/ip/system_axi_smc_3/bd_0/ip/ip_25/bd_45a3_srn_1_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/andy/zynq/play_zynq/tpg_vpss/tpg_vpss.srcs/sources_1/bd/system/ip/system_axi_smc_3/bd_0/ip/ip_26/bd_45a3_sawn_1_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/andy/zynq/play_zynq/tpg_vpss/tpg_vpss.srcs/sources_1/bd/system/ip/system_axi_smc_3/bd_0/ip/ip_27/bd_45a3_swn_1_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/andy/zynq/play_zynq/tpg_vpss/tpg_vpss.srcs/sources_1/bd/system/ip/system_axi_smc_3/bd_0/ip/ip_28/bd_45a3_sbn_1_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/andy/zynq/play_zynq/tpg_vpss/tpg_vpss.srcs/sources_1/bd/system/ip/system_axi_smc_3/bd_0/ip/ip_29/bd_45a3_m00s2a_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/andy/zynq/play_zynq/tpg_vpss/tpg_vpss.srcs/sources_1/bd/system/ip/system_axi_smc_3/bd_0/ip/ip_30/bd_45a3_m00arn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/andy/zynq/play_zynq/tpg_vpss/tpg_vpss.srcs/sources_1/bd/system/ip/system_axi_smc_3/bd_0/ip/ip_31/bd_45a3_m00rn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/andy/zynq/play_zynq/tpg_vpss/tpg_vpss.srcs/sources_1/bd/system/ip/system_axi_smc_3/bd_0/ip/ip_32/bd_45a3_m00awn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/andy/zynq/play_zynq/tpg_vpss/tpg_vpss.srcs/sources_1/bd/system/ip/system_axi_smc_3/bd_0/ip/ip_33/bd_45a3_m00wn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/andy/zynq/play_zynq/tpg_vpss/tpg_vpss.srcs/sources_1/bd/system/ip/system_axi_smc_3/bd_0/ip/ip_34/bd_45a3_m00bn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/andy/zynq/play_zynq/tpg_vpss/tpg_vpss.srcs/sources_1/bd/system/ip/system_axi_smc_3/ooc.xdc]
set_property used_in_implementation false [get_files -all /home/andy/zynq/play_zynq/tpg_vpss/tpg_vpss.srcs/sources_1/bd/system/ip/system_xbar_5/system_xbar_5_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/andy/zynq/play_zynq/tpg_vpss/tpg_vpss.srcs/sources_1/bd/system/ip/system_v_proc_ss_0_0/bd_0/ip/ip_1/bd_2d50_xbar_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/andy/zynq/play_zynq/tpg_vpss/tpg_vpss.srcs/sources_1/bd/system/ip/system_v_proc_ss_0_0/bd_0/ip/ip_2/bd_2d50_vsc_0.xdc]
set_property used_in_implementation false [get_files -all /home/andy/zynq/play_zynq/tpg_vpss/tpg_vpss.srcs/sources_1/bd/system/ip/system_v_proc_ss_0_0/bd_0/ip/ip_2/bd_2d50_vsc_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/andy/zynq/play_zynq/tpg_vpss/tpg_vpss.srcs/sources_1/bd/system/ip/system_v_proc_ss_0_0/bd_0/ip/ip_3/bd_2d50_hsc_0.xdc]
set_property used_in_implementation false [get_files -all /home/andy/zynq/play_zynq/tpg_vpss/tpg_vpss.srcs/sources_1/bd/system/ip/system_v_proc_ss_0_0/bd_0/ip/ip_3/bd_2d50_hsc_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/andy/zynq/play_zynq/tpg_vpss/tpg_vpss.srcs/sources_1/bd/system/ip/system_v_proc_ss_0_0/bd_0/ip/ip_4/bd_2d50_input_size_set_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/andy/zynq/play_zynq/tpg_vpss/tpg_vpss.srcs/sources_1/bd/system/ip/system_v_proc_ss_0_0/bd_0/ip/ip_5/bd_2d50_ltr_0.xdc]
set_property used_in_implementation false [get_files -all /home/andy/zynq/play_zynq/tpg_vpss/tpg_vpss.srcs/sources_1/bd/system/ip/system_v_proc_ss_0_0/bd_0/ip/ip_5/bd_2d50_ltr_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/andy/zynq/play_zynq/tpg_vpss/tpg_vpss.srcs/sources_1/bd/system/ip/system_v_proc_ss_0_0/bd_0/ip/ip_6/bd_2d50_csc_0.xdc]
set_property used_in_implementation false [get_files -all /home/andy/zynq/play_zynq/tpg_vpss/tpg_vpss.srcs/sources_1/bd/system/ip/system_v_proc_ss_0_0/bd_0/ip/ip_6/bd_2d50_csc_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/andy/zynq/play_zynq/tpg_vpss/tpg_vpss.srcs/sources_1/bd/system/ip/system_v_proc_ss_0_0/bd_0/ip/ip_10/bd_2d50_xbar_1_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/andy/zynq/play_zynq/tpg_vpss/tpg_vpss.srcs/sources_1/bd/system/ip/system_v_proc_ss_0_0/bd_0/ip/ip_11/bd_2d50_reset_sel_axis_0_board.xdc]
set_property used_in_implementation false [get_files -all /home/andy/zynq/play_zynq/tpg_vpss/tpg_vpss.srcs/sources_1/bd/system/ip/system_v_proc_ss_0_0/bd_0/ip/ip_11/bd_2d50_reset_sel_axis_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/andy/zynq/play_zynq/tpg_vpss/tpg_vpss.srcs/sources_1/bd/system/ip/system_v_proc_ss_0_0/bd_0/ip/ip_11/bd_2d50_reset_sel_axis_0.xdc]
set_property used_in_implementation false [get_files -all /home/andy/zynq/play_zynq/tpg_vpss/tpg_vpss.srcs/sources_1/bd/system/ip/system_v_proc_ss_0_0/bd_0/ip/ip_12/bd_2d50_rst_axis_0_board.xdc]
set_property used_in_implementation false [get_files -all /home/andy/zynq/play_zynq/tpg_vpss/tpg_vpss.srcs/sources_1/bd/system/ip/system_v_proc_ss_0_0/bd_0/ip/ip_12/bd_2d50_rst_axis_0.xdc]
set_property used_in_implementation false [get_files -all /home/andy/zynq/play_zynq/tpg_vpss/tpg_vpss.srcs/sources_1/bd/system/ip/system_v_proc_ss_0_0/bd_0/ip/ip_12/bd_2d50_rst_axis_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/andy/zynq/play_zynq/tpg_vpss/tpg_vpss.srcs/sources_1/bd/system/ip/system_v_proc_ss_0_0/bd_0/ip/ip_14/bd_2d50_xbar_2_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/andy/zynq/play_zynq/tpg_vpss/tpg_vpss.srcs/sources_1/bd/system/ip/system_v_proc_ss_0_0/bd_0/ip/ip_15/bd_2d50_vdma_pad_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/andy/zynq/play_zynq/tpg_vpss/tpg_vpss.srcs/sources_1/bd/system/ip/system_v_proc_ss_0_0/bd_0/ip/ip_16/bd_2d50_vdma_trunc_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/andy/zynq/play_zynq/tpg_vpss/tpg_vpss.srcs/sources_1/bd/system/ip/system_v_proc_ss_0_0/bd_0/ip/ip_17/bd_2d50_axi_vdma_0.xdc]
set_property used_in_implementation false [get_files -all /home/andy/zynq/play_zynq/tpg_vpss/tpg_vpss.srcs/sources_1/bd/system/ip/system_v_proc_ss_0_0/bd_0/ip/ip_17/bd_2d50_axi_vdma_0_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/andy/zynq/play_zynq/tpg_vpss/tpg_vpss.srcs/sources_1/bd/system/ip/system_v_proc_ss_0_0/bd_0/ip/ip_17/bd_2d50_axi_vdma_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/andy/zynq/play_zynq/tpg_vpss/tpg_vpss.srcs/sources_1/bd/system/ip/system_v_proc_ss_0_0/bd_0/ip/ip_18/bd_2d50_reset_sel_axi_mm_0_board.xdc]
set_property used_in_implementation false [get_files -all /home/andy/zynq/play_zynq/tpg_vpss/tpg_vpss.srcs/sources_1/bd/system/ip/system_v_proc_ss_0_0/bd_0/ip/ip_18/bd_2d50_reset_sel_axi_mm_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/andy/zynq/play_zynq/tpg_vpss/tpg_vpss.srcs/sources_1/bd/system/ip/system_v_proc_ss_0_0/bd_0/ip/ip_18/bd_2d50_reset_sel_axi_mm_0.xdc]
set_property used_in_implementation false [get_files -all /home/andy/zynq/play_zynq/tpg_vpss/tpg_vpss.srcs/sources_1/bd/system/ip/system_v_proc_ss_0_0/bd_0/ip/ip_19/bd_2d50_rst_axi_mm_0_board.xdc]
set_property used_in_implementation false [get_files -all /home/andy/zynq/play_zynq/tpg_vpss/tpg_vpss.srcs/sources_1/bd/system/ip/system_v_proc_ss_0_0/bd_0/ip/ip_19/bd_2d50_rst_axi_mm_0.xdc]
set_property used_in_implementation false [get_files -all /home/andy/zynq/play_zynq/tpg_vpss/tpg_vpss.srcs/sources_1/bd/system/ip/system_v_proc_ss_0_0/bd_0/ip/ip_19/bd_2d50_rst_axi_mm_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/andy/zynq/play_zynq/tpg_vpss/tpg_vpss.srcs/sources_1/bd/system/ip/system_v_proc_ss_0_0/bd_0/ip/ip_20/bd_2d50_dint_0.xdc]
set_property used_in_implementation false [get_files -all /home/andy/zynq/play_zynq/tpg_vpss/tpg_vpss.srcs/sources_1/bd/system/ip/system_v_proc_ss_0_0/bd_0/ip/ip_20/bd_2d50_dint_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/andy/zynq/play_zynq/tpg_vpss/tpg_vpss.srcs/sources_1/bd/system/ip/system_v_proc_ss_0_0/bd_0/ip/ip_21/bd_2d50_deint_ss_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/andy/zynq/play_zynq/tpg_vpss/tpg_vpss.srcs/sources_1/bd/system/ip/system_v_proc_ss_0_0/bd_0/ip/ip_23/bd_2d50_deint_cc_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/andy/zynq/play_zynq/tpg_vpss/tpg_vpss.srcs/sources_1/bd/system/ip/system_v_proc_ss_0_0/bd_0/ip/ip_26/bd_2d50_vcr_i_0.xdc]
set_property used_in_implementation false [get_files -all /home/andy/zynq/play_zynq/tpg_vpss/tpg_vpss.srcs/sources_1/bd/system/ip/system_v_proc_ss_0_0/bd_0/ip/ip_26/bd_2d50_vcr_i_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/andy/zynq/play_zynq/tpg_vpss/tpg_vpss.srcs/sources_1/bd/system/ip/system_v_proc_ss_0_0/bd_0/ip/ip_27/bd_2d50_vcr_o_0.xdc]
set_property used_in_implementation false [get_files -all /home/andy/zynq/play_zynq/tpg_vpss/tpg_vpss.srcs/sources_1/bd/system/ip/system_v_proc_ss_0_0/bd_0/ip/ip_27/bd_2d50_vcr_o_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/andy/zynq/play_zynq/tpg_vpss/tpg_vpss.srcs/sources_1/bd/system/ip/system_v_proc_ss_0_0/bd_0/ip/ip_28/bd_2d50_hcr_0.xdc]
set_property used_in_implementation false [get_files -all /home/andy/zynq/play_zynq/tpg_vpss/tpg_vpss.srcs/sources_1/bd/system/ip/system_v_proc_ss_0_0/bd_0/ip/ip_28/bd_2d50_hcr_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/andy/zynq/play_zynq/tpg_vpss/tpg_vpss.srcs/sources_1/bd/system/ip/system_v_proc_ss_0_0/bd_0/bd_2d50_ooc.xdc]
set_property used_in_synthesis false [get_files -all /home/andy/zynq/play_zynq/tpg_vpss/tpg_vpss.srcs/sources_1/bd/system/ip/system_v_proc_ss_0_0/bd_0/ip/ip_40/bd_2d50_auto_cc_0_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/andy/zynq/play_zynq/tpg_vpss/tpg_vpss.srcs/sources_1/bd/system/ip/system_v_proc_ss_0_0/bd_0/ip/ip_40/bd_2d50_auto_cc_0_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/andy/zynq/play_zynq/tpg_vpss/tpg_vpss.srcs/sources_1/bd/system/ip/system_v_proc_ss_0_0/bd_0/ip/ip_40/bd_2d50_auto_cc_0_ooc.xdc]
set_property used_in_synthesis false [get_files -all /home/andy/zynq/play_zynq/tpg_vpss/tpg_vpss.srcs/sources_1/bd/system/ip/system_v_proc_ss_0_0/bd_0/ip/ip_41/bd_2d50_auto_cc_1_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/andy/zynq/play_zynq/tpg_vpss/tpg_vpss.srcs/sources_1/bd/system/ip/system_v_proc_ss_0_0/bd_0/ip/ip_41/bd_2d50_auto_cc_1_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/andy/zynq/play_zynq/tpg_vpss/tpg_vpss.srcs/sources_1/bd/system/ip/system_v_proc_ss_0_0/bd_0/ip/ip_41/bd_2d50_auto_cc_1_ooc.xdc]
set_property used_in_synthesis false [get_files -all /home/andy/zynq/play_zynq/tpg_vpss/tpg_vpss.srcs/sources_1/bd/system/ip/system_v_proc_ss_0_0/bd_0/ip/ip_42/bd_2d50_auto_cc_2_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/andy/zynq/play_zynq/tpg_vpss/tpg_vpss.srcs/sources_1/bd/system/ip/system_v_proc_ss_0_0/bd_0/ip/ip_42/bd_2d50_auto_cc_2_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/andy/zynq/play_zynq/tpg_vpss/tpg_vpss.srcs/sources_1/bd/system/ip/system_v_proc_ss_0_0/bd_0/ip/ip_42/bd_2d50_auto_cc_2_ooc.xdc]
set_property used_in_synthesis false [get_files -all /home/andy/zynq/play_zynq/tpg_vpss/tpg_vpss.srcs/sources_1/bd/system/ip/system_v_proc_ss_0_0/bd_0/ip/ip_43/bd_2d50_auto_cc_3_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/andy/zynq/play_zynq/tpg_vpss/tpg_vpss.srcs/sources_1/bd/system/ip/system_v_proc_ss_0_0/bd_0/ip/ip_43/bd_2d50_auto_cc_3_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/andy/zynq/play_zynq/tpg_vpss/tpg_vpss.srcs/sources_1/bd/system/ip/system_v_proc_ss_0_0/bd_0/ip/ip_43/bd_2d50_auto_cc_3_ooc.xdc]
set_property used_in_synthesis false [get_files -all /home/andy/zynq/play_zynq/tpg_vpss/tpg_vpss.srcs/sources_1/bd/system/ip/system_v_proc_ss_0_0/bd_0/ip/ip_44/bd_2d50_auto_cc_4_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/andy/zynq/play_zynq/tpg_vpss/tpg_vpss.srcs/sources_1/bd/system/ip/system_v_proc_ss_0_0/bd_0/ip/ip_44/bd_2d50_auto_cc_4_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/andy/zynq/play_zynq/tpg_vpss/tpg_vpss.srcs/sources_1/bd/system/ip/system_v_proc_ss_0_0/bd_0/ip/ip_44/bd_2d50_auto_cc_4_ooc.xdc]
set_property used_in_synthesis false [get_files -all /home/andy/zynq/play_zynq/tpg_vpss/tpg_vpss.srcs/sources_1/bd/system/ip/system_v_proc_ss_0_0/bd_0/ip/ip_45/bd_2d50_auto_cc_5_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/andy/zynq/play_zynq/tpg_vpss/tpg_vpss.srcs/sources_1/bd/system/ip/system_v_proc_ss_0_0/bd_0/ip/ip_45/bd_2d50_auto_cc_5_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/andy/zynq/play_zynq/tpg_vpss/tpg_vpss.srcs/sources_1/bd/system/ip/system_v_proc_ss_0_0/bd_0/ip/ip_45/bd_2d50_auto_cc_5_ooc.xdc]
set_property used_in_synthesis false [get_files -all /home/andy/zynq/play_zynq/tpg_vpss/tpg_vpss.srcs/sources_1/bd/system/ip/system_v_proc_ss_0_0/bd_0/ip/ip_46/bd_2d50_auto_cc_6_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/andy/zynq/play_zynq/tpg_vpss/tpg_vpss.srcs/sources_1/bd/system/ip/system_v_proc_ss_0_0/bd_0/ip/ip_46/bd_2d50_auto_cc_6_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/andy/zynq/play_zynq/tpg_vpss/tpg_vpss.srcs/sources_1/bd/system/ip/system_v_proc_ss_0_0/bd_0/ip/ip_46/bd_2d50_auto_cc_6_ooc.xdc]
set_property used_in_synthesis false [get_files -all /home/andy/zynq/play_zynq/tpg_vpss/tpg_vpss.srcs/sources_1/bd/system/ip/system_v_proc_ss_0_0/bd_0/ip/ip_47/bd_2d50_auto_cc_7_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/andy/zynq/play_zynq/tpg_vpss/tpg_vpss.srcs/sources_1/bd/system/ip/system_v_proc_ss_0_0/bd_0/ip/ip_47/bd_2d50_auto_cc_7_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/andy/zynq/play_zynq/tpg_vpss/tpg_vpss.srcs/sources_1/bd/system/ip/system_v_proc_ss_0_0/bd_0/ip/ip_47/bd_2d50_auto_cc_7_ooc.xdc]
set_property used_in_synthesis false [get_files -all /home/andy/zynq/play_zynq/tpg_vpss/tpg_vpss.srcs/sources_1/bd/system/ip/system_v_proc_ss_0_0/bd_0/ip/ip_48/bd_2d50_auto_cc_8_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/andy/zynq/play_zynq/tpg_vpss/tpg_vpss.srcs/sources_1/bd/system/ip/system_v_proc_ss_0_0/bd_0/ip/ip_48/bd_2d50_auto_cc_8_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/andy/zynq/play_zynq/tpg_vpss/tpg_vpss.srcs/sources_1/bd/system/ip/system_v_proc_ss_0_0/bd_0/ip/ip_48/bd_2d50_auto_cc_8_ooc.xdc]
set_property used_in_synthesis false [get_files -all /home/andy/zynq/play_zynq/tpg_vpss/tpg_vpss.srcs/sources_1/bd/system/ip/system_v_proc_ss_0_0/bd_0/ip/ip_49/bd_2d50_auto_cc_9_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/andy/zynq/play_zynq/tpg_vpss/tpg_vpss.srcs/sources_1/bd/system/ip/system_v_proc_ss_0_0/bd_0/ip/ip_49/bd_2d50_auto_cc_9_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/andy/zynq/play_zynq/tpg_vpss/tpg_vpss.srcs/sources_1/bd/system/ip/system_v_proc_ss_0_0/bd_0/ip/ip_49/bd_2d50_auto_cc_9_ooc.xdc]
set_property used_in_synthesis false [get_files -all /home/andy/zynq/play_zynq/tpg_vpss/tpg_vpss.srcs/sources_1/bd/system/ip/system_v_proc_ss_0_0/bd_0/ip/ip_50/bd_2d50_auto_cc_10_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/andy/zynq/play_zynq/tpg_vpss/tpg_vpss.srcs/sources_1/bd/system/ip/system_v_proc_ss_0_0/bd_0/ip/ip_50/bd_2d50_auto_cc_10_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/andy/zynq/play_zynq/tpg_vpss/tpg_vpss.srcs/sources_1/bd/system/ip/system_v_proc_ss_0_0/bd_0/ip/ip_50/bd_2d50_auto_cc_10_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/andy/zynq/play_zynq/tpg_vpss/tpg_vpss.srcs/sources_1/bd/system/ip/system_v_proc_ss_0_0/bd_0/ip/ip_54/bd_2d50_auto_cc_12_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/andy/zynq/play_zynq/tpg_vpss/tpg_vpss.srcs/sources_1/bd/system/ip/system_v_proc_ss_0_0/bd_0/ip/ip_55/bd_2d50_auto_ds_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/andy/zynq/play_zynq/tpg_vpss/tpg_vpss.srcs/sources_1/bd/system/ip/system_v_proc_ss_0_0/bd_0/ip/ip_56/bd_2d50_auto_ss_slid_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/andy/zynq/play_zynq/tpg_vpss/tpg_vpss.srcs/sources_1/bd/system/ip/system_v_proc_ss_0_0/bd_0/ip/ip_57/bd_2d50_auto_cc_13_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/andy/zynq/play_zynq/tpg_vpss/tpg_vpss.srcs/sources_1/bd/system/ip/system_v_proc_ss_0_0/bd_0/ip/ip_29/bd_2d50_m00_regslice_0_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/andy/zynq/play_zynq/tpg_vpss/tpg_vpss.srcs/sources_1/bd/system/ip/system_v_proc_ss_0_0/bd_0/ip/ip_29/bd_2d50_m00_regslice_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/andy/zynq/play_zynq/tpg_vpss/tpg_vpss.srcs/sources_1/bd/system/ip/system_v_proc_ss_0_0/bd_0/ip/ip_30/bd_2d50_m01_regslice_0_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/andy/zynq/play_zynq/tpg_vpss/tpg_vpss.srcs/sources_1/bd/system/ip/system_v_proc_ss_0_0/bd_0/ip/ip_30/bd_2d50_m01_regslice_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/andy/zynq/play_zynq/tpg_vpss/tpg_vpss.srcs/sources_1/bd/system/ip/system_v_proc_ss_0_0/bd_0/ip/ip_31/bd_2d50_m02_regslice_0_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/andy/zynq/play_zynq/tpg_vpss/tpg_vpss.srcs/sources_1/bd/system/ip/system_v_proc_ss_0_0/bd_0/ip/ip_31/bd_2d50_m02_regslice_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/andy/zynq/play_zynq/tpg_vpss/tpg_vpss.srcs/sources_1/bd/system/ip/system_v_proc_ss_0_0/bd_0/ip/ip_51/bd_2d50_auto_us_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/andy/zynq/play_zynq/tpg_vpss/tpg_vpss.srcs/sources_1/bd/system/ip/system_v_proc_ss_0_0/bd_0/ip/ip_52/bd_2d50_auto_cc_11_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/andy/zynq/play_zynq/tpg_vpss/tpg_vpss.srcs/sources_1/bd/system/ip/system_v_proc_ss_0_0/bd_0/ip/ip_53/bd_2d50_auto_ss_slidr_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/andy/zynq/play_zynq/tpg_vpss/tpg_vpss.srcs/sources_1/bd/system/ip/system_v_proc_ss_0_0/bd_0/ip/ip_32/bd_2d50_m04_regslice_0_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/andy/zynq/play_zynq/tpg_vpss/tpg_vpss.srcs/sources_1/bd/system/ip/system_v_proc_ss_0_0/bd_0/ip/ip_32/bd_2d50_m04_regslice_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/andy/zynq/play_zynq/tpg_vpss/tpg_vpss.srcs/sources_1/bd/system/ip/system_v_proc_ss_0_0/bd_0/ip/ip_33/bd_2d50_m05_regslice_0_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/andy/zynq/play_zynq/tpg_vpss/tpg_vpss.srcs/sources_1/bd/system/ip/system_v_proc_ss_0_0/bd_0/ip/ip_33/bd_2d50_m05_regslice_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/andy/zynq/play_zynq/tpg_vpss/tpg_vpss.srcs/sources_1/bd/system/ip/system_v_proc_ss_0_0/bd_0/ip/ip_34/bd_2d50_m06_regslice_0_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/andy/zynq/play_zynq/tpg_vpss/tpg_vpss.srcs/sources_1/bd/system/ip/system_v_proc_ss_0_0/bd_0/ip/ip_34/bd_2d50_m06_regslice_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/andy/zynq/play_zynq/tpg_vpss/tpg_vpss.srcs/sources_1/bd/system/ip/system_v_proc_ss_0_0/bd_0/ip/ip_35/bd_2d50_m07_regslice_0_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/andy/zynq/play_zynq/tpg_vpss/tpg_vpss.srcs/sources_1/bd/system/ip/system_v_proc_ss_0_0/bd_0/ip/ip_35/bd_2d50_m07_regslice_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/andy/zynq/play_zynq/tpg_vpss/tpg_vpss.srcs/sources_1/bd/system/ip/system_v_proc_ss_0_0/bd_0/ip/ip_36/bd_2d50_m08_regslice_0_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/andy/zynq/play_zynq/tpg_vpss/tpg_vpss.srcs/sources_1/bd/system/ip/system_v_proc_ss_0_0/bd_0/ip/ip_36/bd_2d50_m08_regslice_0_ooc.xdc]
set_property used_in_synthesis false [get_files -all /home/andy/zynq/play_zynq/tpg_vpss/tpg_vpss.srcs/sources_1/bd/system/ip/system_v_proc_ss_0_0/bd_0/ip/ip_58/bd_2d50_auto_us_df_0_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/andy/zynq/play_zynq/tpg_vpss/tpg_vpss.srcs/sources_1/bd/system/ip/system_v_proc_ss_0_0/bd_0/ip/ip_58/bd_2d50_auto_us_df_0_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/andy/zynq/play_zynq/tpg_vpss/tpg_vpss.srcs/sources_1/bd/system/ip/system_v_proc_ss_0_0/bd_0/ip/ip_58/bd_2d50_auto_us_df_0_ooc.xdc]
set_property used_in_synthesis false [get_files -all /home/andy/zynq/play_zynq/tpg_vpss/tpg_vpss.srcs/sources_1/bd/system/ip/system_v_proc_ss_0_0/bd_0/ip/ip_37/bd_2d50_auto_us_df_1_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/andy/zynq/play_zynq/tpg_vpss/tpg_vpss.srcs/sources_1/bd/system/ip/system_v_proc_ss_0_0/bd_0/ip/ip_37/bd_2d50_auto_us_df_1_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/andy/zynq/play_zynq/tpg_vpss/tpg_vpss.srcs/sources_1/bd/system/ip/system_v_proc_ss_0_0/bd_0/ip/ip_37/bd_2d50_auto_us_df_1_ooc.xdc]
set_property used_in_synthesis false [get_files -all /home/andy/zynq/play_zynq/tpg_vpss/tpg_vpss.srcs/sources_1/bd/system/ip/system_v_proc_ss_0_0/bd_0/ip/ip_38/bd_2d50_auto_us_df_2_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/andy/zynq/play_zynq/tpg_vpss/tpg_vpss.srcs/sources_1/bd/system/ip/system_v_proc_ss_0_0/bd_0/ip/ip_38/bd_2d50_auto_us_df_2_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/andy/zynq/play_zynq/tpg_vpss/tpg_vpss.srcs/sources_1/bd/system/ip/system_v_proc_ss_0_0/bd_0/ip/ip_38/bd_2d50_auto_us_df_2_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/andy/zynq/play_zynq/tpg_vpss/tpg_vpss.srcs/sources_1/bd/system/ip/system_v_proc_ss_0_0/system_v_proc_ss_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/andy/zynq/play_zynq/tpg_vpss/tpg_vpss.srcs/sources_1/bd/system/ip/system_axi_gpio_1_0/system_axi_gpio_1_0_board.xdc]
set_property used_in_implementation false [get_files -all /home/andy/zynq/play_zynq/tpg_vpss/tpg_vpss.srcs/sources_1/bd/system/ip/system_axi_gpio_1_0/system_axi_gpio_1_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/andy/zynq/play_zynq/tpg_vpss/tpg_vpss.srcs/sources_1/bd/system/ip/system_axi_gpio_1_0/system_axi_gpio_1_0.xdc]
set_property used_in_implementation false [get_files -all /home/andy/zynq/play_zynq/tpg_vpss/tpg_vpss.srcs/sources_1/bd/system/ip/system_auto_pc_0/system_auto_pc_0_ooc.xdc]
set_property used_in_synthesis false [get_files -all /home/andy/zynq/play_zynq/tpg_vpss/tpg_vpss.srcs/sources_1/bd/system/ip/system_auto_cc_0/system_auto_cc_0_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/andy/zynq/play_zynq/tpg_vpss/tpg_vpss.srcs/sources_1/bd/system/ip/system_auto_cc_0/system_auto_cc_0_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/andy/zynq/play_zynq/tpg_vpss/tpg_vpss.srcs/sources_1/bd/system/ip/system_auto_cc_0/system_auto_cc_0_ooc.xdc]
set_property used_in_synthesis false [get_files -all /home/andy/zynq/play_zynq/tpg_vpss/tpg_vpss.srcs/sources_1/bd/system/ip/system_auto_cc_1/system_auto_cc_1_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/andy/zynq/play_zynq/tpg_vpss/tpg_vpss.srcs/sources_1/bd/system/ip/system_auto_cc_1/system_auto_cc_1_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/andy/zynq/play_zynq/tpg_vpss/tpg_vpss.srcs/sources_1/bd/system/ip/system_auto_cc_1/system_auto_cc_1_ooc.xdc]
set_property used_in_synthesis false [get_files -all /home/andy/zynq/play_zynq/tpg_vpss/tpg_vpss.srcs/sources_1/bd/system/ip/system_auto_cc_2/system_auto_cc_2_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/andy/zynq/play_zynq/tpg_vpss/tpg_vpss.srcs/sources_1/bd/system/ip/system_auto_cc_2/system_auto_cc_2_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/andy/zynq/play_zynq/tpg_vpss/tpg_vpss.srcs/sources_1/bd/system/ip/system_auto_cc_2/system_auto_cc_2_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/andy/zynq/play_zynq/tpg_vpss/tpg_vpss.srcs/sources_1/bd/system/system_ooc.xdc]

# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc /home/andy/zynq/play_zynq/tpg_vpss/tpg_vpss.srcs/constrs_1/imports/constraints/ax7021.xdc
set_property used_in_implementation false [get_files /home/andy/zynq/play_zynq/tpg_vpss/tpg_vpss.srcs/constrs_1/imports/constraints/ax7021.xdc]

read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]
set_param ips.enableIPCacheLiteLoad 1
close [open __synthesis_is_running__ w]

synth_design -top system_wrapper -part xc7z020clg484-2


# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef system_wrapper.dcp
create_report "synth_1_synth_report_utilization_0" "report_utilization -file system_wrapper_utilization_synth.rpt -pb system_wrapper_utilization_synth.pb"
file delete __synthesis_is_running__
close [open __synthesis_is_complete__ w]
