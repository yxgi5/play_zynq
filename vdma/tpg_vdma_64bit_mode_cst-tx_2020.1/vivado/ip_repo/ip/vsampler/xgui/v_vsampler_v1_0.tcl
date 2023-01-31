# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  set Component_Name [ ipgui::add_param $IPINST -name "Component_Name" ]
#  set Component_Name [ ipgui::add_param  $IPINST  -name Component_Name ]
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0" -layout vertical]

  set SAMPLES_PER_CLOCK [ipgui::add_param $IPINST -name "SAMPLES_PER_CLOCK" -parent ${Page_0} -widget comboBox]
#  set SAMPLES_PER_CLOCK [ipgui::add_param $IPINST -name SAMPLES_PER_CLOCK -parent ${Page_0} -widget comboBox]
  set_property display_name "Pixels Per Clock" $SAMPLES_PER_CLOCK
  
  set VIDEO_FORMAT [ipgui::add_param $IPINST -name "VIDEO_FORMAT" -parent ${Page_0} -widget comboBox]
  set_property tooltip "Used to determine the number of components per pixel." $VIDEO_FORMAT
  
  set MAXIMUM_DATA_WIDTH [ipgui::add_param $IPINST -name "MAXIMUM_DATA_WIDTH" -parent ${Page_0} -widget comboBox]
  set_property display_name "AXI4S Video Input Component Width" $MAXIMUM_DATA_WIDTH
  
  ipgui::add_param $IPINST -name "MAXIMUM_NUMBER_OF_COLUMNS" -parent ${Page_0}
  ipgui::add_param $IPINST -name "MAXIMUM_NUMBER_OF_ROWS" -parent ${Page_0}
}

proc update_PARAM_VALUE.II { PARAM_VALUE.II } {
	# Procedure called to update II when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.II { PARAM_VALUE.II } {
	# Procedure called to validate II
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

proc update_PARAM_VALUE.SAMPLES_PER_CLOCK { PARAM_VALUE.SAMPLES_PER_CLOCK } {
	# Procedure called to update SAMPLES_PER_CLOCK when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.SAMPLES_PER_CLOCK { PARAM_VALUE.SAMPLES_PER_CLOCK } {
	# Procedure called to validate SAMPLES_PER_CLOCK
	return true
}

proc update_PARAM_VALUE.VIDEO_FORMAT { PARAM_VALUE.VIDEO_FORMAT } {
	# Procedure called to update VIDEO_FORMAT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.VIDEO_FORMAT { PARAM_VALUE.VIDEO_FORMAT } {
	# Procedure called to validate VIDEO_FORMAT
	return true
}

proc update_PARAM_VALUE.clk_period { PARAM_VALUE.clk_period } {
	# Procedure called to update clk_period when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.clk_period { PARAM_VALUE.clk_period } {
	# Procedure called to validate clk_period
	return true
}

proc update_PARAM_VALUE.combinational { PARAM_VALUE.combinational } {
	# Procedure called to update combinational when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.combinational { PARAM_VALUE.combinational } {
	# Procedure called to validate combinational
	return true
}

proc update_PARAM_VALUE.latency { PARAM_VALUE.latency } {
	# Procedure called to update latency when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.latency { PARAM_VALUE.latency } {
	# Procedure called to validate latency
	return true
}

proc update_PARAM_VALUE.machine { PARAM_VALUE.machine } {
	# Procedure called to update machine when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.machine { PARAM_VALUE.machine } {
	# Procedure called to validate machine
	return true
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

proc update_MODELPARAM_VALUE.S_AXIS_WIDTH { MODELPARAM_VALUE.S_AXIS_WIDTH PARAM_VALUE.SAMPLES_PER_CLOCK PARAM_VALUE.VIDEO_FORMAT PARAM_VALUE.MAXIMUM_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	# WARNING: There is no corresponding user parameter named "S_AXIS_WIDTH". Setting updated value from the model parameter.
	
  set pixels_per_clk  [get_property value ${PARAM_VALUE.SAMPLES_PER_CLOCK}]
  set comp_per_pixel [ calc_num_components [ get_property value ${PARAM_VALUE.VIDEO_FORMAT} ] ] 
  set bits_per_comp  [get_property value ${PARAM_VALUE.MAXIMUM_DATA_WIDTH}]
  set data_width [expr $pixels_per_clk * $comp_per_pixel * $bits_per_comp]
  set tdata_width        [expr int(($data_width + 7)/8) *8]
  set_property value $tdata_width ${MODELPARAM_VALUE.S_AXIS_WIDTH} 
}

proc update_MODELPARAM_VALUE.S_AXIS_BYTES { MODELPARAM_VALUE.S_AXIS_BYTES PARAM_VALUE.SAMPLES_PER_CLOCK PARAM_VALUE.VIDEO_FORMAT PARAM_VALUE.MAXIMUM_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	# WARNING: There is no corresponding user parameter named "S_AXIS_BYTES". Setting updated value from the model parameter.
  set pixels_per_clk  [get_property value ${PARAM_VALUE.SAMPLES_PER_CLOCK}]
  set comp_per_pixel [ calc_num_components [ get_property value ${PARAM_VALUE.VIDEO_FORMAT} ] ] 
  set bits_per_comp  [get_property value ${PARAM_VALUE.MAXIMUM_DATA_WIDTH}]
  set data_width [expr $pixels_per_clk * $comp_per_pixel * $bits_per_comp]
  set tdata_width        [expr int(($data_width + 7)/8)]
  set_property value $tdata_width ${MODELPARAM_VALUE.S_AXIS_BYTES} 
}

proc update_MODELPARAM_VALUE.M_AXIS_WIDTH { MODELPARAM_VALUE.M_AXIS_WIDTH PARAM_VALUE.SAMPLES_PER_CLOCK PARAM_VALUE.VIDEO_FORMAT PARAM_VALUE.MAXIMUM_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	# WARNING: There is no corresponding user parameter named "M_AXIS_WIDTH". Setting updated value from the model parameter.
  set pixels_per_clk  [get_property value ${PARAM_VALUE.SAMPLES_PER_CLOCK}]
  set comp_per_pixel [ calc_num_components [ get_property value ${PARAM_VALUE.VIDEO_FORMAT} ] ] 
  set bits_per_comp  [get_property value ${PARAM_VALUE.MAXIMUM_DATA_WIDTH}]
  set data_width [expr $pixels_per_clk * $comp_per_pixel * $bits_per_comp]
  set tdata_width        [expr int(($data_width + 7)/8) *8]
  set_property value $tdata_width ${MODELPARAM_VALUE.M_AXIS_WIDTH} 
}

proc update_MODELPARAM_VALUE.M_AXIS_BYTES { MODELPARAM_VALUE.M_AXIS_BYTES PARAM_VALUE.SAMPLES_PER_CLOCK PARAM_VALUE.VIDEO_FORMAT PARAM_VALUE.MAXIMUM_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	# WARNING: There is no corresponding user parameter named "M_AXIS_BYTES". Setting updated value from the model parameter.
  set pixels_per_clk  [get_property value ${PARAM_VALUE.SAMPLES_PER_CLOCK}]
  set comp_per_pixel [ calc_num_components [ get_property value ${PARAM_VALUE.VIDEO_FORMAT} ] ] 
  set bits_per_comp  [get_property value ${PARAM_VALUE.MAXIMUM_DATA_WIDTH}]
  set data_width [expr $pixels_per_clk * $comp_per_pixel * $bits_per_comp]
  set tdata_width        [expr int(($data_width + 7)/8)]
  set_property value $tdata_width ${MODELPARAM_VALUE.M_AXIS_BYTES} 
}

################################################################
# Other Procs
################################################################
proc calc_num_components {video_format} {
  set num_components 2
  if { $video_format == 0 } {
    set num_components 2
  }
  if { $video_format == 1 } {
    set num_components 3
  }
  if { $video_format == 2 } {
    set num_components 3 
  }
  if { $video_format == 3 } {
    set num_components 2
  }
  if { $video_format == 4 } {
    set num_components 3
  }
  if { $video_format == 5 } {
    set num_components 4 
  }
  if { $video_format == 6 } {
    set num_components 4
  }
  if { $video_format == 7 } {
    set num_components 2
  }
  if { $video_format == 8 } {
    set num_components 4
  }
  if { $video_format == 9 } {
    set num_components 4
  }
  if { $video_format == 10 } {
    set num_components 4
  }
  if { $video_format == 11 } {
    set num_components 3
  }
  if { $video_format == 12 } {
    set num_components 1
  }
  return $num_components
}

