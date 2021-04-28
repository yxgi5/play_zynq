1. open vivado
2. in the tcl shell, cd to vivado folder
3. in the tcl shell, source create_proj.tcl
4. build vivado project
5. export hdf to sdk/hdf folder
6. open xsct shell, cd to sdk folder
7. source create_SW_proj.tcl

# block diagram

![](images/tpg_hdmi.png)

simply generates test patterns and directly output to himi-tx convertion chip on AX7021. tpg config as 1080p(osd moving box) formats with yuv444, vtc config as 1080p60. Sil9134 config as yuv444 in with seperate syncs rgb888 out

在AX7021开发板，产生测试图样，直接输出到hdmi。tpg配置为1080p的YUV444彩条叠加移动box，vtc配置为重建1080p60时序，Sil9134配置为独立sync的yuv444输入rgb888输出。

![](images/tpg_hdmi.jpg)