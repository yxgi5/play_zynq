# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "H_BACK" -parent ${Page_0}
  ipgui::add_param $IPINST -name "H_DISP" -parent ${Page_0}
  ipgui::add_param $IPINST -name "H_FRONT" -parent ${Page_0}
  ipgui::add_param $IPINST -name "H_SYNC" -parent ${Page_0}
  ipgui::add_param $IPINST -name "H_TOTAL" -parent ${Page_0}
  ipgui::add_param $IPINST -name "V_BACK" -parent ${Page_0}
  ipgui::add_param $IPINST -name "V_DISP" -parent ${Page_0}
  ipgui::add_param $IPINST -name "V_FRONT" -parent ${Page_0}
  ipgui::add_param $IPINST -name "V_SYNC" -parent ${Page_0}
  ipgui::add_param $IPINST -name "V_TOTAL" -parent ${Page_0}


}

proc update_PARAM_VALUE.H_BACK { PARAM_VALUE.H_BACK } {
	# Procedure called to update H_BACK when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.H_BACK { PARAM_VALUE.H_BACK } {
	# Procedure called to validate H_BACK
	return true
}

proc update_PARAM_VALUE.H_DISP { PARAM_VALUE.H_DISP } {
	# Procedure called to update H_DISP when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.H_DISP { PARAM_VALUE.H_DISP } {
	# Procedure called to validate H_DISP
	return true
}

proc update_PARAM_VALUE.H_FRONT { PARAM_VALUE.H_FRONT } {
	# Procedure called to update H_FRONT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.H_FRONT { PARAM_VALUE.H_FRONT } {
	# Procedure called to validate H_FRONT
	return true
}

proc update_PARAM_VALUE.H_SYNC { PARAM_VALUE.H_SYNC } {
	# Procedure called to update H_SYNC when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.H_SYNC { PARAM_VALUE.H_SYNC } {
	# Procedure called to validate H_SYNC
	return true
}

proc update_PARAM_VALUE.H_TOTAL { PARAM_VALUE.H_TOTAL } {
	# Procedure called to update H_TOTAL when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.H_TOTAL { PARAM_VALUE.H_TOTAL } {
	# Procedure called to validate H_TOTAL
	return true
}

proc update_PARAM_VALUE.V_BACK { PARAM_VALUE.V_BACK } {
	# Procedure called to update V_BACK when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.V_BACK { PARAM_VALUE.V_BACK } {
	# Procedure called to validate V_BACK
	return true
}

proc update_PARAM_VALUE.V_DISP { PARAM_VALUE.V_DISP } {
	# Procedure called to update V_DISP when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.V_DISP { PARAM_VALUE.V_DISP } {
	# Procedure called to validate V_DISP
	return true
}

proc update_PARAM_VALUE.V_FRONT { PARAM_VALUE.V_FRONT } {
	# Procedure called to update V_FRONT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.V_FRONT { PARAM_VALUE.V_FRONT } {
	# Procedure called to validate V_FRONT
	return true
}

proc update_PARAM_VALUE.V_SYNC { PARAM_VALUE.V_SYNC } {
	# Procedure called to update V_SYNC when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.V_SYNC { PARAM_VALUE.V_SYNC } {
	# Procedure called to validate V_SYNC
	return true
}

proc update_PARAM_VALUE.V_TOTAL { PARAM_VALUE.V_TOTAL } {
	# Procedure called to update V_TOTAL when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.V_TOTAL { PARAM_VALUE.V_TOTAL } {
	# Procedure called to validate V_TOTAL
	return true
}


proc update_MODELPARAM_VALUE.H_SYNC { MODELPARAM_VALUE.H_SYNC PARAM_VALUE.H_SYNC } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.H_SYNC}] ${MODELPARAM_VALUE.H_SYNC}
}

proc update_MODELPARAM_VALUE.H_BACK { MODELPARAM_VALUE.H_BACK PARAM_VALUE.H_BACK } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.H_BACK}] ${MODELPARAM_VALUE.H_BACK}
}

proc update_MODELPARAM_VALUE.H_DISP { MODELPARAM_VALUE.H_DISP PARAM_VALUE.H_DISP } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.H_DISP}] ${MODELPARAM_VALUE.H_DISP}
}

proc update_MODELPARAM_VALUE.H_FRONT { MODELPARAM_VALUE.H_FRONT PARAM_VALUE.H_FRONT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.H_FRONT}] ${MODELPARAM_VALUE.H_FRONT}
}

proc update_MODELPARAM_VALUE.H_TOTAL { MODELPARAM_VALUE.H_TOTAL PARAM_VALUE.H_TOTAL } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.H_TOTAL}] ${MODELPARAM_VALUE.H_TOTAL}
}

proc update_MODELPARAM_VALUE.V_SYNC { MODELPARAM_VALUE.V_SYNC PARAM_VALUE.V_SYNC } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.V_SYNC}] ${MODELPARAM_VALUE.V_SYNC}
}

proc update_MODELPARAM_VALUE.V_BACK { MODELPARAM_VALUE.V_BACK PARAM_VALUE.V_BACK } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.V_BACK}] ${MODELPARAM_VALUE.V_BACK}
}

proc update_MODELPARAM_VALUE.V_DISP { MODELPARAM_VALUE.V_DISP PARAM_VALUE.V_DISP } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.V_DISP}] ${MODELPARAM_VALUE.V_DISP}
}

proc update_MODELPARAM_VALUE.V_FRONT { MODELPARAM_VALUE.V_FRONT PARAM_VALUE.V_FRONT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.V_FRONT}] ${MODELPARAM_VALUE.V_FRONT}
}

proc update_MODELPARAM_VALUE.V_TOTAL { MODELPARAM_VALUE.V_TOTAL PARAM_VALUE.V_TOTAL } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.V_TOTAL}] ${MODELPARAM_VALUE.V_TOTAL}
}

