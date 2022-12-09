#!/bin/bash
bcompare vivado/vivado_proj/system.tcl vivado/bd/system.tcl
bcompare vivado/vivado_proj/vivado_proj.srcs/sources_1/bd/system/hw_handoff/system_bd.tcl vivado/bd/system.tcl
bcompare vivado/vivado_proj/vivado_proj.gen/sources_1/bd/system/hw_handoff/system_bd.tcl vivado/bd/system.tcl
bcompare vivado/vivado_proj/vivado_proj.srcs/constrs_1/new/system.xdc vivado/xdc/system.xdc
bcompare vivado/vivado_proj/vivado_proj.srcs/constrs_1/imports/xdc/system.xdc vivado/xdc/system.xdc
bcompare vitis/src/vitis_proj/src vitis/sdk_workspace/vitis_proj/src
