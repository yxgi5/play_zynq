# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "ADDR_BITS" -parent ${Page_0}
  ipgui::add_param $IPINST -name "BURST_SIZE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "BUSRT_BITS" -parent ${Page_0}
  ipgui::add_param $IPINST -name "MEM_DATA_BITS" -parent ${Page_0}
  ipgui::add_param $IPINST -name "READ_DATA_BITS" -parent ${Page_0}


}

proc update_PARAM_VALUE.ADDR_BITS { PARAM_VALUE.ADDR_BITS } {
	# Procedure called to update ADDR_BITS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ADDR_BITS { PARAM_VALUE.ADDR_BITS } {
	# Procedure called to validate ADDR_BITS
	return true
}

proc update_PARAM_VALUE.BURST_SIZE { PARAM_VALUE.BURST_SIZE } {
	# Procedure called to update BURST_SIZE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.BURST_SIZE { PARAM_VALUE.BURST_SIZE } {
	# Procedure called to validate BURST_SIZE
	return true
}

proc update_PARAM_VALUE.BUSRT_BITS { PARAM_VALUE.BUSRT_BITS } {
	# Procedure called to update BUSRT_BITS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.BUSRT_BITS { PARAM_VALUE.BUSRT_BITS } {
	# Procedure called to validate BUSRT_BITS
	return true
}

proc update_PARAM_VALUE.MEM_DATA_BITS { PARAM_VALUE.MEM_DATA_BITS } {
	# Procedure called to update MEM_DATA_BITS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.MEM_DATA_BITS { PARAM_VALUE.MEM_DATA_BITS } {
	# Procedure called to validate MEM_DATA_BITS
	return true
}

proc update_PARAM_VALUE.READ_DATA_BITS { PARAM_VALUE.READ_DATA_BITS } {
	# Procedure called to update READ_DATA_BITS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.READ_DATA_BITS { PARAM_VALUE.READ_DATA_BITS } {
	# Procedure called to validate READ_DATA_BITS
	return true
}


proc update_MODELPARAM_VALUE.MEM_DATA_BITS { MODELPARAM_VALUE.MEM_DATA_BITS PARAM_VALUE.MEM_DATA_BITS } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.MEM_DATA_BITS}] ${MODELPARAM_VALUE.MEM_DATA_BITS}
}

proc update_MODELPARAM_VALUE.READ_DATA_BITS { MODELPARAM_VALUE.READ_DATA_BITS PARAM_VALUE.READ_DATA_BITS } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.READ_DATA_BITS}] ${MODELPARAM_VALUE.READ_DATA_BITS}
}

proc update_MODELPARAM_VALUE.ADDR_BITS { MODELPARAM_VALUE.ADDR_BITS PARAM_VALUE.ADDR_BITS } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ADDR_BITS}] ${MODELPARAM_VALUE.ADDR_BITS}
}

proc update_MODELPARAM_VALUE.BUSRT_BITS { MODELPARAM_VALUE.BUSRT_BITS PARAM_VALUE.BUSRT_BITS } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.BUSRT_BITS}] ${MODELPARAM_VALUE.BUSRT_BITS}
}

proc update_MODELPARAM_VALUE.BURST_SIZE { MODELPARAM_VALUE.BURST_SIZE PARAM_VALUE.BURST_SIZE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.BURST_SIZE}] ${MODELPARAM_VALUE.BURST_SIZE}
}

