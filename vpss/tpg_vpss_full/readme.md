1. open vivado
2. in the tcl shell, cd to vivado folder
3. in the tcl shell, source create_proj.tcl
4. build vivado project
5. export hdf to sdk/hdf folder
6. open xsct shell, cd to sdk folder
7. source create_SW_proj.tcl

# tpg_vpss

CSC, Scale, Deinterlace all in one.

vpss(full-fledged) has a buildin-vdma!

vpss(full-fledged) before custom-vdma is NOT going to work correctly! replace with simpler options. eg. scale-only+csc

vpss(full-fledged) after custom-vdma works!