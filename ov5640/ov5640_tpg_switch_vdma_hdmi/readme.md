1. open vivado
2. in the tcl shell, cd to vivado folder
3. in the tcl shell, source create_proj.tcl
4. build vivado project
5. export hdf to sdk/hdf folder
6. open xsct shell, cd to sdk folder
7. source create_SW_proj.tcl

# ov5640_tpg_vdma_hdmi

Base on ov5640_vdma_hdmi project， add a tpg config as 1024x768, swich axi4-stream path by a 2-1 axis_swich.

在ov5640_vdma_hdmi基础上，添加一个1024x768的tpg源，通过axis_swich切换通路。

![](images/ov5640_tpg_vdma_hdmi.png)
