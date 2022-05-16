set BOARD [lindex $argv 0]

set outputDir build

open_checkpoint $outputDir/post_route.dcp

write_bitstream -force $outputDir/system_wrapper.bit
write_debug_probes -force $outputDir/system_wrapper.ltx

#Use this for Vivado 2019.1 (xsdk)
#write_sysdef -force -hwdef $outputDir/post_place.hwdef -bitfile $outputDir/system_wrapper.bit -file $outputDir/system_wrapper.hdf

#Use this for Vivado 2019.2 and up (vitis)
if {[string equal ${BOARD} "ultra96v2"]} {
    set_property board_part em.avnet.com:ultra96v2:part0:1.0 [current_project]	
} elseif {[string equal ${BOARD} "kv260"]} {
    set_property board_part xilinx.com:kv260_som:part0:1.2 [current_project]
    set_property board_connections {som240_1_connector xilinx.com:kv260_carrier:som240_1_connector:1.2} [current_project]
} elseif {[string equal ${BOARD} "ACQ_V2"]} {
    create_project -part xczu2cg-sfvc784-1-i -in_memory
}

#write_mem_info -force $outputDir/system_wrapper.mmi
#write_hw_platform -fixed -force -include_bit $outputDir/system_wrapper.xsa
write_hw_platform -fixed -force $outputDir/system_wrapper.xsa
