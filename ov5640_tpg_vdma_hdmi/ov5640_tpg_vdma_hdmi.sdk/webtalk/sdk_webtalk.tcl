webtalk_init -webtalk_dir /home/andy/zynq/play_zynq/ov5640_vdma_hdmi/ov5640_vdma_hdmi.sdk/webtalk
webtalk_register_client -client project
webtalk_add_data -client project -key date_generated -value "2021-04-15 18:02:23" -context "software_version_and_target_device"
webtalk_add_data -client project -key product_version -value "SDK v2018.3" -context "software_version_and_target_device"
webtalk_add_data -client project -key build_version -value "2018.3" -context "software_version_and_target_device"
webtalk_add_data -client project -key os_platform -value "amd64" -context "software_version_and_target_device"
webtalk_add_data -client project -key registration_id -value "" -context "software_version_and_target_device"
webtalk_add_data -client project -key tool_flow -value "SDK" -context "software_version_and_target_device"
webtalk_add_data -client project -key beta -value "false" -context "software_version_and_target_device"
webtalk_add_data -client project -key route_design -value "NA" -context "software_version_and_target_device"
webtalk_add_data -client project -key target_family -value "NA" -context "software_version_and_target_device"
webtalk_add_data -client project -key target_device -value "NA" -context "software_version_and_target_device"
webtalk_add_data -client project -key target_package -value "NA" -context "software_version_and_target_device"
webtalk_add_data -client project -key target_speed -value "NA" -context "software_version_and_target_device"
webtalk_add_data -client project -key random_id -value "tlv35n03h3m43dlmno6fblicbt" -context "software_version_and_target_device"
webtalk_add_data -client project -key project_id -value "2018.3_35" -context "software_version_and_target_device"
webtalk_add_data -client project -key project_iteration -value "35" -context "software_version_and_target_device"
webtalk_add_data -client project -key os_name -value "Arch" -context "user_environment"
webtalk_add_data -client project -key os_release -value "Arch Linux" -context "user_environment"
webtalk_add_data -client project -key cpu_name -value "Intel(R) Core(TM) i7-10700 CPU @ 2.90GHz" -context "user_environment"
webtalk_add_data -client project -key cpu_speed -value "2900.000 MHz" -context "user_environment"
webtalk_add_data -client project -key total_processors -value "1" -context "user_environment"
webtalk_add_data -client project -key system_ram -value "16.502 GB" -context "user_environment"
webtalk_register_client -client sdk
webtalk_add_data -client sdk -key uid -value "1618478039000" -context "sdk\\\\hardware/1618478039000"
webtalk_add_data -client sdk -key isZynq -value "true" -context "sdk\\\\hardware/1618478039000"
webtalk_add_data -client sdk -key isZynqMP -value "false" -context "sdk\\\\hardware/1618478039000"
webtalk_add_data -client sdk -key Processors -value "2" -context "sdk\\\\hardware/1618478039000"
webtalk_add_data -client sdk -key VivadoVersion -value "2018.3" -context "sdk\\\\hardware/1618478039000"
webtalk_add_data -client sdk -key Arch -value "zynq" -context "sdk\\\\hardware/1618478039000"
webtalk_add_data -client sdk -key Device -value "7z020" -context "sdk\\\\hardware/1618478039000"
webtalk_add_data -client sdk -key IsHandoff -value "true" -context "sdk\\\\hardware/1618478039000"
webtalk_add_data -client sdk -key os -value "NA" -context "sdk\\\\hardware/1618478039000"
webtalk_add_data -client sdk -key apptemplate -value "NA" -context "sdk\\\\hardware/1618478039000"
webtalk_add_data -client sdk -key RecordType -value "HWCreation" -context "sdk\\\\hardware/1618478039000"
webtalk_add_data -client sdk -key uid -value "1618478055000" -context "sdk\\\\bsp/1618478055000"
webtalk_add_data -client sdk -key hwid -value "1618478039000" -context "sdk\\\\bsp/1618478055000"
webtalk_add_data -client sdk -key os -value "standalone" -context "sdk\\\\bsp/1618478055000"
webtalk_add_data -client sdk -key apptemplate -value "null" -context "sdk\\\\bsp/1618478055000"
webtalk_add_data -client sdk -key RecordType -value "BSPCreation" -context "sdk\\\\bsp/1618478055000"
webtalk_add_data -client sdk -key uid -value "NA" -context "sdk\\\\bsp/1618480943637"
webtalk_add_data -client sdk -key RecordType -value "ToolUsage" -context "sdk\\\\bsp/1618480943637"
webtalk_add_data -client sdk -key BootgenCount -value "0" -context "sdk\\\\bsp/1618480943637"
webtalk_add_data -client sdk -key DebugCount -value "19" -context "sdk\\\\bsp/1618480943637"
webtalk_add_data -client sdk -key PerfCount -value "0" -context "sdk\\\\bsp/1618480943637"
webtalk_add_data -client sdk -key FlashCount -value "0" -context "sdk\\\\bsp/1618480943637"
webtalk_add_data -client sdk -key CrossTriggCount -value "0" -context "sdk\\\\bsp/1618480943637"
webtalk_add_data -client sdk -key QemuDebugCount -value "0" -context "sdk\\\\bsp/1618480943637"
webtalk_transmit -clientid 3700527169 -regid "" -xml /home/andy/zynq/play_zynq/ov5640_vdma_hdmi/ov5640_vdma_hdmi.sdk/webtalk/usage_statistics_ext_sdk.xml -html /home/andy/zynq/play_zynq/ov5640_vdma_hdmi/ov5640_vdma_hdmi.sdk/webtalk/usage_statistics_ext_sdk.html -wdm /home/andy/zynq/play_zynq/ov5640_vdma_hdmi/ov5640_vdma_hdmi.sdk/webtalk/sdk_webtalk.wdm -intro "<H3>SDK Usage Report</H3><BR>"
webtalk_terminate
