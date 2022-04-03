gedit ./vivado_proj/vivado_proj.runs/system_v_tpg_0_0_synth_1/system_v_tpg_0_0/prj/impl/ip/run_ippack.tcl



vivado2018.3~2021.2的vtc在2022年之后timestamp-overflow问题
https://support.xilinx.com/s/question/0D52E00006uxnnFSAQ/2022-timestamp-overflow-error-2201011128-is-an-invalid-argument-please-specify-an-integer-value?language=en_US
https://support.xilinx.com/s/question/0D52E00006uxy49SAA/vivado-fails-to-export-ips-with-the-error-message-bad-lexical-cast-source-type-value-could-not-be-interpreted-as-target?language=en_US
https://support.xilinx.com/s/question/0D52E00006uxy49SAA/vivado-fails-to-export-ips-with-the-error-message-bad-lexical-cast-source-type-value-could-not-be-interpreted-as-target?language=en_US
最好的办法是修改时间的办法来规避
```
timedatectl set-ntp no
sudo date -s "20100405 14:31:00"
```
用完了恢复时间同步
```
timedatectl set-ntp yes
```

更好的办法是官网的patch,已经安装解决





////////////patched//////////////////////////////////


vivado_proj.bk csirx0--1600, csirx1--1000, csirx2--1000

vivado_proj.bk2 csirx0--1600, csirx1--800, csirx2--800, +ila0, +ila1 

vivado_proj.bk3 csirx0--1600, csirx1--1000, csirx2--1000, +axis_mon(ch2), +vpss(ch2)


