# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "H_BACK_PORCH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "H_FRONT_PORCH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "H_SYNCH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "V_BACK_PORCH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "V_FRONT_PORCH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "V_SYNCH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "h_active" -parent ${Page_0}
  ipgui::add_param $IPINST -name "h_total" -parent ${Page_0}
  ipgui::add_param $IPINST -name "v_active" -parent ${Page_0}
  ipgui::add_param $IPINST -name "v_total" -parent ${Page_0}


}

proc update_PARAM_VALUE.H_BACK_PORCH { PARAM_VALUE.H_BACK_PORCH } {
	# Procedure called to update H_BACK_PORCH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.H_BACK_PORCH { PARAM_VALUE.H_BACK_PORCH } {
	# Procedure called to validate H_BACK_PORCH
	return true
}

proc update_PARAM_VALUE.H_FRONT_PORCH { PARAM_VALUE.H_FRONT_PORCH } {
	# Procedure called to update H_FRONT_PORCH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.H_FRONT_PORCH { PARAM_VALUE.H_FRONT_PORCH } {
	# Procedure called to validate H_FRONT_PORCH
	return true
}

proc update_PARAM_VALUE.H_SYNCH { PARAM_VALUE.H_SYNCH } {
	# Procedure called to update H_SYNCH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.H_SYNCH { PARAM_VALUE.H_SYNCH } {
	# Procedure called to validate H_SYNCH
	return true
}

proc update_PARAM_VALUE.V_BACK_PORCH { PARAM_VALUE.V_BACK_PORCH } {
	# Procedure called to update V_BACK_PORCH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.V_BACK_PORCH { PARAM_VALUE.V_BACK_PORCH } {
	# Procedure called to validate V_BACK_PORCH
	return true
}

proc update_PARAM_VALUE.V_FRONT_PORCH { PARAM_VALUE.V_FRONT_PORCH } {
	# Procedure called to update V_FRONT_PORCH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.V_FRONT_PORCH { PARAM_VALUE.V_FRONT_PORCH } {
	# Procedure called to validate V_FRONT_PORCH
	return true
}

proc update_PARAM_VALUE.V_SYNCH { PARAM_VALUE.V_SYNCH } {
	# Procedure called to update V_SYNCH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.V_SYNCH { PARAM_VALUE.V_SYNCH } {
	# Procedure called to validate V_SYNCH
	return true
}

proc update_PARAM_VALUE.h_active { PARAM_VALUE.h_active } {
	# Procedure called to update h_active when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.h_active { PARAM_VALUE.h_active } {
	# Procedure called to validate h_active
	return true
}

proc update_PARAM_VALUE.h_total { PARAM_VALUE.h_total } {
	# Procedure called to update h_total when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.h_total { PARAM_VALUE.h_total } {
	# Procedure called to validate h_total
	return true
}

proc update_PARAM_VALUE.v_active { PARAM_VALUE.v_active } {
	# Procedure called to update v_active when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.v_active { PARAM_VALUE.v_active } {
	# Procedure called to validate v_active
	return true
}

proc update_PARAM_VALUE.v_total { PARAM_VALUE.v_total } {
	# Procedure called to update v_total when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.v_total { PARAM_VALUE.v_total } {
	# Procedure called to validate v_total
	return true
}


proc update_MODELPARAM_VALUE.h_active { MODELPARAM_VALUE.h_active PARAM_VALUE.h_active } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.h_active}] ${MODELPARAM_VALUE.h_active}
}

proc update_MODELPARAM_VALUE.h_total { MODELPARAM_VALUE.h_total PARAM_VALUE.h_total } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.h_total}] ${MODELPARAM_VALUE.h_total}
}

proc update_MODELPARAM_VALUE.v_active { MODELPARAM_VALUE.v_active PARAM_VALUE.v_active } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.v_active}] ${MODELPARAM_VALUE.v_active}
}

proc update_MODELPARAM_VALUE.v_total { MODELPARAM_VALUE.v_total PARAM_VALUE.v_total } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.v_total}] ${MODELPARAM_VALUE.v_total}
}

proc update_MODELPARAM_VALUE.H_FRONT_PORCH { MODELPARAM_VALUE.H_FRONT_PORCH PARAM_VALUE.H_FRONT_PORCH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.H_FRONT_PORCH}] ${MODELPARAM_VALUE.H_FRONT_PORCH}
}

proc update_MODELPARAM_VALUE.H_SYNCH { MODELPARAM_VALUE.H_SYNCH PARAM_VALUE.H_SYNCH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.H_SYNCH}] ${MODELPARAM_VALUE.H_SYNCH}
}

proc update_MODELPARAM_VALUE.H_BACK_PORCH { MODELPARAM_VALUE.H_BACK_PORCH PARAM_VALUE.H_BACK_PORCH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.H_BACK_PORCH}] ${MODELPARAM_VALUE.H_BACK_PORCH}
}

proc update_MODELPARAM_VALUE.V_FRONT_PORCH { MODELPARAM_VALUE.V_FRONT_PORCH PARAM_VALUE.V_FRONT_PORCH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.V_FRONT_PORCH}] ${MODELPARAM_VALUE.V_FRONT_PORCH}
}

proc update_MODELPARAM_VALUE.V_SYNCH { MODELPARAM_VALUE.V_SYNCH PARAM_VALUE.V_SYNCH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.V_SYNCH}] ${MODELPARAM_VALUE.V_SYNCH}
}

proc update_MODELPARAM_VALUE.V_BACK_PORCH { MODELPARAM_VALUE.V_BACK_PORCH PARAM_VALUE.V_BACK_PORCH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.V_BACK_PORCH}] ${MODELPARAM_VALUE.V_BACK_PORCH}
}

