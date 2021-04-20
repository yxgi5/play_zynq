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
  ipgui::add_param $IPINST -name "bayer_pattern" -parent ${Page_0}
  ipgui::add_param $IPINST -name "clk2_mode" -parent ${Page_0}
  ipgui::add_param $IPINST -name "h_active" -parent ${Page_0}
  ipgui::add_param $IPINST -name "h_total" -parent ${Page_0}
  ipgui::add_param $IPINST -name "input_mode" -parent ${Page_0}
  ipgui::add_param $IPINST -name "pattern_mode" -parent ${Page_0}
  ipgui::add_param $IPINST -name "v_active" -parent ${Page_0}
  ipgui::add_param $IPINST -name "v_total" -parent ${Page_0}
  ipgui::add_param $IPINST -name "word_width" -parent ${Page_0}


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

proc update_PARAM_VALUE.bayer_pattern { PARAM_VALUE.bayer_pattern } {
	# Procedure called to update bayer_pattern when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.bayer_pattern { PARAM_VALUE.bayer_pattern } {
	# Procedure called to validate bayer_pattern
	return true
}

proc update_PARAM_VALUE.clk2_mode { PARAM_VALUE.clk2_mode } {
	# Procedure called to update clk2_mode when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.clk2_mode { PARAM_VALUE.clk2_mode } {
	# Procedure called to validate clk2_mode
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

proc update_PARAM_VALUE.input_mode { PARAM_VALUE.input_mode } {
	# Procedure called to update input_mode when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.input_mode { PARAM_VALUE.input_mode } {
	# Procedure called to validate input_mode
	return true
}

proc update_PARAM_VALUE.pattern_mode { PARAM_VALUE.pattern_mode } {
	# Procedure called to update pattern_mode when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.pattern_mode { PARAM_VALUE.pattern_mode } {
	# Procedure called to validate pattern_mode
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

proc update_PARAM_VALUE.word_width { PARAM_VALUE.word_width } {
	# Procedure called to update word_width when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.word_width { PARAM_VALUE.word_width } {
	# Procedure called to validate word_width
	return true
}


proc update_MODELPARAM_VALUE.word_width { MODELPARAM_VALUE.word_width PARAM_VALUE.word_width } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.word_width}] ${MODELPARAM_VALUE.word_width}
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

proc update_MODELPARAM_VALUE.bayer_pattern { MODELPARAM_VALUE.bayer_pattern PARAM_VALUE.bayer_pattern } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.bayer_pattern}] ${MODELPARAM_VALUE.bayer_pattern}
}

proc update_MODELPARAM_VALUE.input_mode { MODELPARAM_VALUE.input_mode PARAM_VALUE.input_mode } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.input_mode}] ${MODELPARAM_VALUE.input_mode}
}

proc update_MODELPARAM_VALUE.clk2_mode { MODELPARAM_VALUE.clk2_mode PARAM_VALUE.clk2_mode } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.clk2_mode}] ${MODELPARAM_VALUE.clk2_mode}
}

proc update_MODELPARAM_VALUE.pattern_mode { MODELPARAM_VALUE.pattern_mode PARAM_VALUE.pattern_mode } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.pattern_mode}] ${MODELPARAM_VALUE.pattern_mode}
}

