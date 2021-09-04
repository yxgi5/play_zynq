# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "MS_WAIT_TIME" -parent ${Page_0}
  ipgui::add_param $IPINST -name "RST_MS_MAX" -parent ${Page_0}
  ipgui::add_param $IPINST -name "SYS_CYCLE" -parent ${Page_0}


}

proc update_PARAM_VALUE.MS_WAIT_TIME { PARAM_VALUE.MS_WAIT_TIME } {
	# Procedure called to update MS_WAIT_TIME when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.MS_WAIT_TIME { PARAM_VALUE.MS_WAIT_TIME } {
	# Procedure called to validate MS_WAIT_TIME
	return true
}

proc update_PARAM_VALUE.RST_MS_MAX { PARAM_VALUE.RST_MS_MAX } {
	# Procedure called to update RST_MS_MAX when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.RST_MS_MAX { PARAM_VALUE.RST_MS_MAX } {
	# Procedure called to validate RST_MS_MAX
	return true
}

proc update_PARAM_VALUE.SYS_CYCLE { PARAM_VALUE.SYS_CYCLE } {
	# Procedure called to update SYS_CYCLE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.SYS_CYCLE { PARAM_VALUE.SYS_CYCLE } {
	# Procedure called to validate SYS_CYCLE
	return true
}


proc update_MODELPARAM_VALUE.SYS_CYCLE { MODELPARAM_VALUE.SYS_CYCLE PARAM_VALUE.SYS_CYCLE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.SYS_CYCLE}] ${MODELPARAM_VALUE.SYS_CYCLE}
}

proc update_MODELPARAM_VALUE.MS_WAIT_TIME { MODELPARAM_VALUE.MS_WAIT_TIME PARAM_VALUE.MS_WAIT_TIME } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.MS_WAIT_TIME}] ${MODELPARAM_VALUE.MS_WAIT_TIME}
}

proc update_MODELPARAM_VALUE.RST_MS_MAX { MODELPARAM_VALUE.RST_MS_MAX PARAM_VALUE.RST_MS_MAX } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.RST_MS_MAX}] ${MODELPARAM_VALUE.RST_MS_MAX}
}

