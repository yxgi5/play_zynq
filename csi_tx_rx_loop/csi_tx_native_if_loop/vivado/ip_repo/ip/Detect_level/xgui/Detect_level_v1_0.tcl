# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "Delay_ticks" -parent ${Page_0}
  ipgui::add_param $IPINST -name "level" -parent ${Page_0}


}

proc update_PARAM_VALUE.Delay_ticks { PARAM_VALUE.Delay_ticks } {
	# Procedure called to update Delay_ticks when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.Delay_ticks { PARAM_VALUE.Delay_ticks } {
	# Procedure called to validate Delay_ticks
	return true
}

proc update_PARAM_VALUE.level { PARAM_VALUE.level } {
	# Procedure called to update level when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.level { PARAM_VALUE.level } {
	# Procedure called to validate level
	return true
}


proc update_MODELPARAM_VALUE.Delay_ticks { MODELPARAM_VALUE.Delay_ticks PARAM_VALUE.Delay_ticks } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.Delay_ticks}] ${MODELPARAM_VALUE.Delay_ticks}
}

proc update_MODELPARAM_VALUE.level { MODELPARAM_VALUE.level PARAM_VALUE.level } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.level}] ${MODELPARAM_VALUE.level}
}

