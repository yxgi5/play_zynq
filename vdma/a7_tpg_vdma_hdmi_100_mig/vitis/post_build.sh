#!/bin/bash

cd ./sdk_workspace/vitis_proj/_ide/bitstream
source /opt/Xilinx/Vitis/2020.1/settings64.sh
updatemem -meminfo system_wrapper.mmi -data ../../Debug/vitis_proj.elf -proc system_i/microblaze_0 -bit system_wrapper.bit -out download.bit -force
mkdir -p ../flash
echo -e "the_ROM_image:\n{\n$PWD/download.bit\n}\n" > ../flash/bootimage.bif
echo "bootgen -arch fpga -image ../flash/bootimage.bif -w -o ../flash/BOOT.bin -interface spi"
bootgen -arch fpga -image ../flash/bootimage.bif -w -o ../flash/BOOT.bin -interface spi

cd -
mkdir -p output
rm -rf output/*
cp ./sdk_workspace/vitis_proj/_ide/flash/BOOT.bin ./output/app.bin


