#!/bin/bash
cd output
source /opt/Xilinx/Vitis/2020.1/settings64.sh
echo "program_flash -f fsbl.bin -offset 0 -flash_type mt25ql128-spi-x1_x2_x4 -verify -cable type xilinx_tcf url TCP:127.0.0.1:3121"
program_flash -f fsbl.bin -offset 0 -flash_type mt25ql128-spi-x1_x2_x4 -verify -cable type xilinx_tcf url TCP:127.0.0.1:3121
echo "program_flash -f app.bin -offset 0x00250000 -flash_type mt25ql128-spi-x1_x2_x4 -verify -cable type xilinx_tcf url TCP:127.0.0.1:3121"
program_flash -f app.bin -offset 0x00250000 -flash_type mt25ql128-spi-x1_x2_x4 -verify -cable type xilinx_tcf url TCP:127.0.0.1:3121
