# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "SAMPLES_PER_CLOCK" -parent ${Page_0} -widget comboBox
  ipgui::add_param $IPINST -name "MAXIMUM_DATA_WIDTH" -parent ${Page_0} -widget comboBox
  ipgui::add_param $IPINST -name "MAXIMUM_NUMBER_OF_COLUMNS" -parent ${Page_0}
  ipgui::add_param $IPINST -name "MAXIMUM_NUMBER_OF_ROWS" -parent ${Page_0}
  ipgui::add_param $IPINST -name "BAYER_PATTERN" -parent ${Page_0} -widget comboBox


}

proc update_PARAM_VALUE.BAYER_PATTERN { PARAM_VALUE.BAYER_PATTERN } {
	# Procedure called to update BAYER_PATTERN when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.BAYER_PATTERN { PARAM_VALUE.BAYER_PATTERN } {
	# Procedure called to validate BAYER_PATTERN
	return true
}

proc update_PARAM_VALUE.MAXIMUM_DATA_WIDTH { PARAM_VALUE.MAXIMUM_DATA_WIDTH } {
	# Procedure called to update MAXIMUM_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.MAXIMUM_DATA_WIDTH { PARAM_VALUE.MAXIMUM_DATA_WIDTH } {
	# Procedure called to validate MAXIMUM_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.MAXIMUM_NUMBER_OF_COLUMNS { PARAM_VALUE.MAXIMUM_NUMBER_OF_COLUMNS } {
	# Procedure called to update MAXIMUM_NUMBER_OF_COLUMNS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.MAXIMUM_NUMBER_OF_COLUMNS { PARAM_VALUE.MAXIMUM_NUMBER_OF_COLUMNS } {
	# Procedure called to validate MAXIMUM_NUMBER_OF_COLUMNS
	return true
}

proc update_PARAM_VALUE.MAXIMUM_NUMBER_OF_ROWS { PARAM_VALUE.MAXIMUM_NUMBER_OF_ROWS } {
	# Procedure called to update MAXIMUM_NUMBER_OF_ROWS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.MAXIMUM_NUMBER_OF_ROWS { PARAM_VALUE.MAXIMUM_NUMBER_OF_ROWS } {
	# Procedure called to validate MAXIMUM_NUMBER_OF_ROWS
	return true
}

proc update_PARAM_VALUE.NUM_VIDEO_COMPONENTS { PARAM_VALUE.NUM_VIDEO_COMPONENTS } {
	# Procedure called to update NUM_VIDEO_COMPONENTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NUM_VIDEO_COMPONENTS { PARAM_VALUE.NUM_VIDEO_COMPONENTS } {
	# Procedure called to validate NUM_VIDEO_COMPONENTS
	return true
}

proc update_PARAM_VALUE.SAMPLES_PER_CLOCK { PARAM_VALUE.SAMPLES_PER_CLOCK } {
	# Procedure called to update SAMPLES_PER_CLOCK when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.SAMPLES_PER_CLOCK { PARAM_VALUE.SAMPLES_PER_CLOCK } {
	# Procedure called to validate SAMPLES_PER_CLOCK
	return true
}


proc update_MODELPARAM_VALUE.NUM_VIDEO_COMPONENTS { MODELPARAM_VALUE.NUM_VIDEO_COMPONENTS PARAM_VALUE.NUM_VIDEO_COMPONENTS } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NUM_VIDEO_COMPONENTS}] ${MODELPARAM_VALUE.NUM_VIDEO_COMPONENTS}
}

proc update_MODELPARAM_VALUE.SAMPLES_PER_CLOCK { MODELPARAM_VALUE.SAMPLES_PER_CLOCK PARAM_VALUE.SAMPLES_PER_CLOCK } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.SAMPLES_PER_CLOCK}] ${MODELPARAM_VALUE.SAMPLES_PER_CLOCK}
}

proc update_MODELPARAM_VALUE.MAXIMUM_DATA_WIDTH { MODELPARAM_VALUE.MAXIMUM_DATA_WIDTH PARAM_VALUE.MAXIMUM_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.MAXIMUM_DATA_WIDTH}] ${MODELPARAM_VALUE.MAXIMUM_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.MAXIMUM_NUMBER_OF_COLUMNS { MODELPARAM_VALUE.MAXIMUM_NUMBER_OF_COLUMNS PARAM_VALUE.MAXIMUM_NUMBER_OF_COLUMNS } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.MAXIMUM_NUMBER_OF_COLUMNS}] ${MODELPARAM_VALUE.MAXIMUM_NUMBER_OF_COLUMNS}
}

proc update_MODELPARAM_VALUE.MAXIMUM_NUMBER_OF_ROWS { MODELPARAM_VALUE.MAXIMUM_NUMBER_OF_ROWS PARAM_VALUE.MAXIMUM_NUMBER_OF_ROWS } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.MAXIMUM_NUMBER_OF_ROWS}] ${MODELPARAM_VALUE.MAXIMUM_NUMBER_OF_ROWS}
}

proc update_MODELPARAM_VALUE.BAYER_PATTERN { MODELPARAM_VALUE.BAYER_PATTERN PARAM_VALUE.BAYER_PATTERN } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.BAYER_PATTERN}] ${MODELPARAM_VALUE.BAYER_PATTERN}
}

#proc update_MODELPARAM_VALUE.S_AXIS_WIDTH { MODELPARAM_VALUE.S_AXIS_WIDTH } {
#	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
#	# WARNING: There is no corresponding user parameter named "S_AXIS_WIDTH". Setting updated value from the model parameter.
#set_property value 24 ${MODELPARAM_VALUE.S_AXIS_WIDTH}
#}
#
#proc update_MODELPARAM_VALUE.S_AXIS_BYTES { MODELPARAM_VALUE.S_AXIS_BYTES } {
#	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
#	# WARNING: There is no corresponding user parameter named "S_AXIS_BYTES". Setting updated value from the model parameter.
#set_property value 3 ${MODELPARAM_VALUE.S_AXIS_BYTES}
#}
#
#proc update_MODELPARAM_VALUE.M_AXIS_WIDTH { MODELPARAM_VALUE.M_AXIS_WIDTH } {
#	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
#	# WARNING: There is no corresponding user parameter named "M_AXIS_WIDTH". Setting updated value from the model parameter.
#set_property value 8 ${MODELPARAM_VALUE.M_AXIS_WIDTH}
#}
#
#proc update_MODELPARAM_VALUE.M_AXIS_BYTES { MODELPARAM_VALUE.M_AXIS_BYTES } {
#	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
#	# WARNING: There is no corresponding user parameter named "M_AXIS_BYTES". Setting updated value from the model parameter.
#set_property value 1 ${MODELPARAM_VALUE.M_AXIS_BYTES}
#}

