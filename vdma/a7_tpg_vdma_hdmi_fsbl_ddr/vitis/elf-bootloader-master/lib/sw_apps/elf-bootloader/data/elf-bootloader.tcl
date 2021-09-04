# Copyright (c) 2017 Henrik Brix Andersen <henrik@brixandersen.dk>
# All rights reserved.
#
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions
# are met:
# 1. Redistributions of source code must retain the above copyright
#    notice, this list of conditions and the following disclaimer.
# 2. Redistributions in binary form must reproduce the above copyright
#    notice, this list of conditions and the following disclaimer in the
#    documentation and/or other materials provided with the distribution.
#
# THIS SOFTWARE IS PROVIDED BY THE AUTHOR AND CONTRIBUTORS ``AS IS'' AND
# ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
# IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
# ARE DISCLAIMED.  IN NO EVENT SHALL THE AUTHOR OR CONTRIBUTORS BE LIABLE
# FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
# DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
# OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
# HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
# LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY
# OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
# SUCH DAMAGE.
#
# modified by Andreas
# refer /opt/Xilinx/Vitis/2020.1/data/embeddedsw/lib/sw_apps/srec_bootloader/data/srec_bootloader.tcl

proc swapp_get_name {} {
    return "SPI ELF Bootloader";
}

proc swapp_get_description {} {
    return "SPI ELF first-stage bootloader for microblaze processors by Henrik Brix Andersen.";
}

# for microblaze, we need 8k of memory.
proc get_required_mem_size {} {
    return "8192"
}

proc swapp_is_supported_hw {} {
    set proc_instance [hsi::get_sw_processor];
    set hw_processor [common::get_property HW_INSTANCE $proc_instance]

    set proc_type [common::get_property IP_NAME [hsi::get_cells -hier $hw_processor]];

    if { $proc_type != "microblaze" } {
        error "This application is supported only for microblaze processors.";
    }

    return 1;
}

proc swapp_is_supported_sw {} {
    set oslist [hsi::get_os];

    if { [llength $oslist] != 1 } {
        return 0;
    }
    set os [lindex $oslist 0];

    if { $os != "standalone"} {
        error "This application is supported only on the standalone Board Support Package.";
    }

    return 1;
}


proc get_mem_type { mem } {
    set mem_type [::hsi::utils::get_ip_sub_type [hsi::get_cells -hier $mem]]
    if { $mem_type == "BRAM_CTRL" } {
        return "BRAM"
    }
    return "OTHER"
}

proc get_program_code_memory {} {
    # obtain a unique list if "I", and "ID" memories
    set proc_instance [hsi::get_sw_processor];
    set imemlist [hsi::get_mem_ranges -of_objects [hsi::get_cells -hier $proc_instance] -filter { IS_INSTRUCTION == true && MEM_TYPE == "MEMORY"}];
    set idmemlist [hsi::get_mem_ranges -of_objects [hsi::get_cells -hier $proc_instance] -filter { IS_INSTRUCTION == true && IS_DATA == true && MEM_TYPE == "MEMORY" }];

    # concatenate "I", and "ID" memories
    set memlist [concat $imemlist $idmemlist];
    # create a unique list
    set unique_memlist {}
    foreach mem $memlist {
        set match [lsearch $unique_memlist $mem ]
        if { $match == -1 } {
            lappend unique_memlist $mem
        }
    }

    set required_mem_size [get_required_mem_size]
    # check for a memory with required size
    foreach mem $unique_memlist {
        set base [common::get_property BASE_VALUE $mem]
        set high [common::get_property HIGH_VALUE $mem]
        if { [expr $high - $base + 1] >= $required_mem_size } {
            if { [get_mem_type $mem] == "BRAM" } {
                return $mem;
            }
        }
    }

    error "This application requires atleast [expr $required_mem_size/1024] KB of BRAM memory for code.";
}

proc get_program_data_memory {} {
    # obtain a unique list if "D" and "ID" memories
    set proc_instance [hsi::get_sw_processor];
    set dmemlist [hsi::get_mem_ranges -of_objects [hsi::get_cells -hier $proc_instance] -filter { IS_DATA == true && MEM_TYPE == "MEMORY"}];
    set idmemlist [hsi::get_mem_ranges -of_objects [hsi::get_cells -hier $proc_instance] -filter { IS_INSTRUCTION == true && IS_DATA == true && MEM_TYPE == "MEMORY" }];

    # concatenate "D", and "ID" memories
    set memlist [concat $dmemlist $idmemlist];
    # create a unique list
    set unique_memlist {}
    foreach mem $memlist {
        set match [lsearch $unique_memlist $mem ]
        if { $match == -1 } {
            lappend unique_memlist $mem
        }
    }

    set required_mem_size [get_required_mem_size]
    # check for a memory with required size
    foreach mem $unique_memlist {
        set base [common::get_property BASE_VALUE $mem]
        set high [common::get_property HIGH_VALUE $mem]
        if { [expr $high - $base + 1] >= $required_mem_size } {
            if { [get_mem_type $mem] == "BRAM" } {
                return $mem;
            }
        }
    }

    error "This application requires atleast [expr $required_mem_size/1024] KB of BRAM memory for data.";
}

proc swapp_get_linker_constraints {} {
    set code_memory [get_program_code_memory];
    set data_memory [get_program_data_memory];

    # set code & data memory to point to bram
    # no need for heap
    return "code_memory $code_memory data_memory $data_memory heap 0";
}

proc swapp_get_supported_processors {} {
    return "microblaze";
}

proc swapp_get_supported_os {} {
    return "standalone";
}

proc swapp_generate {} {
    return;
}
