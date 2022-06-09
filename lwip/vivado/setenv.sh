#!/bin/bash
if [[ "$OSTYPE" == "linux-gnu"* ]]; then
    echo "OSTYPE = $OSTYPE"
    source /opt/Xilinx/Vivado/2020.2/settings64.sh
else
    echo "OSTYPE = $OSTYPE"
    source 'D:\Xilinx\Vivado\2020.2\settings64.sh'
fi
#vivado -mode tcl

