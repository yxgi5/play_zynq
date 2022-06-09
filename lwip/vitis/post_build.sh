#!/bin/bash

#source /opt/Xilinx/Vivado/xxx/settings64.sh
source setenv.sh

top=$PWD

cd ./sdk_workspace/vitis_proj/_ide/bitstream
#updatemem -meminfo system_wrapper.mmi -data ../../Debug/vitis_proj.elf -proc system_i/microblaze_0 -bit system_wrapper.bit -out download.bit -force
#mkdir -p ../flash
#echo -e "the_ROM_image:\n{\n$PWD/download.bit\n}\n" > ../flash/bootimage.bif
#echo "bootgen -arch fpga -image ../flash/bootimage.bif -w -o ../flash/BOOT.bin -interface spi"
#bootgen -arch fpga -image ../flash/bootimage.bif -w -o ../flash/BOOT.bin -interface spi
mkdir -p ../bootimage
echo -e "//arch = zynqmp; split = false; format = BIN\nthe_ROM_image:\n{\n [bootloader, destination_cpu=a53-0] $PWD/../../../system_wrapper/export/system_wrapper/sw/system_wrapper/boot/fsbl.elf\n [destination_device=pl] $PWD/system_wrapper.bit\n [destination_cpu = a53-0] $PWD/../../Debug/vitis_proj.elf\n}\n" > ../bootimage/vitis_proj.bif
#echo -e "//arch = zynq; split = false; format = BIN\nthe_ROM_image:\n{\n [bootloader] $PWD/../../../system_wrapper/export/system_wrapper/sw/system_wrapper/boot/fsbl.elf\n $PWD/system_wrapper.bit\n $PWD/../../Debug/vitis_proj.elf\n}\n" > ../bootimage/vitis_proj.bif
#echo "bootgen -arch fpga -image ../flash/bootimage.bif -w -o ../flash/BOOT.bin -interface spi"
bootgen -image ../bootimage/vitis_proj.bif -arch zynqmp -o ../bootimage/BOOT.bin -w on
#bootgen -image ../bootimage/vitis_proj.bif -arch zynq -o ../bootimage/BOOT.bin -w on 

if [ $? != 0 ]
then
    echo -e "\n"
    echo -e "\033[41;36m gen BOOT.bin fail!!! Press any key to exit \033[0m"
    exit 1
else
    echo -e "\n"
    echo -e "\033[42;31m gen BOOT.bin done!!! \033[0m"
fi

cd $top

#cd -
mkdir -p output
rm -rf output/*
echo -e "\n"
echo -e "\033[42;31m clear output done!!! \033[0m"

#cp ./sdk_workspace/vitis_proj/_ide/flash/BOOT.bin ./output/app.bin
#cp ./sdk_workspace/vitis_proj/_ide/bitstream/download.bit ./output/
cp ./sdk_workspace/system_wrapper/export/system_wrapper/sw/system_wrapper/boot/fsbl.elf ./output/
cp ./sdk_workspace/vitis_proj/_ide/bootimage/BOOT.bin ./output/BOOT.bin
if [ $? != 0 ]
then
    echo -e "\n"
    echo -e "\033[41;36m cp BOOT.bin fail!!! Press any key to exit \033[0m"
    exit 1
fi

du -b ./output/BOOT.bin | awk '{print substr($1,$2)}' | xargs -I {} printf "%x\n" {} > ./output/BOOT.txt
if [ $? != 0 ]
then
    echo -e "\n"
    echo -e "\033[41;36m calc size fail!!! Press any key to exit \033[0m"
    exit 1
fi

#cp u-boot.elf ./output
#cp cmd ./output

# if [ $? != 0 ]
# then
#     echo -e "\n"
#     echo -e "\033[41;36m BOOT.bin fail!!! Press any key to exit \033[0m"
#     exit 1
# else
    echo -e "\n"
    echo -e "\033[42;31m cp BOOT.bin and calc size done!!! Press any key to exit \033[0m"
# fi


# function pause(){
# #	read -p "$*"
#     printf "$*\n"
# #    read -n 1
#     read
# #    printf "\n"
# }
# pause 'Press any key to continue'
function pause(){
    read -n 1
}
pause
