#
# SDK v2018.3 (64-bit)
#
# create_SW_proj.tcl: Tcl script for re-creating project
#

# Set SDK Workspace
sdk setws -switch ./sdk_workspace

# Create the HW platform
sdk createhw -name hw_0 -hwspec ./hdf/system_wrapper.hdf

#Create the BSP
set project_name 				ov5640_rgb565_vdma_hdmi
sdk createbsp -name ${project_name}_bsp -hwproject hw_0 -proc ps7_cortexa9_0 -os standalone
#sdk createbsp -name ${project_name}_bsp -hwproject hw_0 -proc psu_cortexa53_0 -os standalone
sdk projects -build -type bsp -name ${project_name}_bsp

#creating empty application
sdk createapp -name ${project_name}_app -hwproject hw_0 -proc ps7_cortexa9_0 -os standalone -lang C -app {Empty Application} -bsp ${project_name}_bsp
#sdk createapp -name ${project_name}_app -hwproject hw_0 -proc psu_cortexa53_0 -os standalone -lang C -app {Empty Application} -bsp ${project_name}_bsp

#importe the src files
sdk importsources -name ${project_name}_app -path ./src -linker-script

#build
sdk projects -clean -type app -name ${project_name}_app
sdk projects -build -type app -name ${project_name}_app

#exit
