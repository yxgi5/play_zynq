#!/bin/bash

# echo $0
# echo $1
# echo $2
# echo $#
# echo $*
# echo $?
# echo $$
# echo $PPID

# if test "$1" = ""; then
#     echo "null"
# fi

# if [ $# -lt 2 ]; then
#     echo "Usage: $0 [parameters]"
#     echo "avalible parameters:"
#     echo "-c: clear log files(default)"
#     echo "-w: delete workspace(default)"
#     echo "-d: delete output"
#     echo "-t: move to trash"
#     echo "-h|--help: show this help"
#     exit 1
# fi


#RM_LOG=1
#RM_WORKSPACE=1
RM_METHOD=0
#RM_OUTPUT=0
RM_LVL=1
BATCH_MODE=0

#while true
while [ $# -gt 0 ] # Until you run out of parameters
do
case "$1" in
-b) #echo
#    echo "the -a option exists"
#    RM_LOG=1
    BATCH_MODE=1
    ;;
-c) #echo
#    echo "the -a option exists"
#    RM_LOG=1
    RM_LVL=1
    ;;
-w) #echo
#    echo "the -w option exists"
#    RM_WORKSPACE=1
    RM_LVL=2
    ;;
-d) #echo
#    echo "the -w option exists"
#    RM_OUTPUT=1
    RM_LVL=3
    ;;
-t) #echo
#    echo "the -t option exists"
    RM_METHOD=1
    ;;
-h|--help) echo "Usage: $0 [parameters]"
    echo "avalible parameters:"
    echo "-c: clear log files(default)"
    echo "-w: delete workspace"
    echo "-d: delete output"
    echo "-t: move to trash"
    echo "-b: batch mode"
    echo "-h|--help: show this help"
    exit 1
    ;;
esac
shift # Check next set of parameters.
done

if [ $RM_LVL -ge 1 ]; then
#echo "hahah1"
    if [ $RM_METHOD -eq 0 ]; then
        rm -rf ./.Xil
        rm -rf ./*.jou
        rm -rf ./*.log
        rm -rf ./Packages
    else
        gio trash ./.Xil
        gio trash ./*.jou
        gio trash ./*.log
        gio trash ./Packages
    fi
fi

if [ $RM_LVL -ge 2 ]; then
#echo "hahah2"
    if [ $RM_METHOD -eq 0 ]; then
#        rm -rf ./.Xil
#        rm -rf ./*.jou
#        rm -rf ./*.log
#        rm -rf ./Packages
        rm -rf ./sdk_workspace
    else
#        gio trash ./.Xil
#        gio trash ./*.jou
#        gio trash ./*.log
#        gio trash ./Packages
        gio trash ./sdk_workspace
    fi
fi

if [ $RM_LVL -ge 3 ]; then
#echo "hahah3"
    if [ $RM_METHOD -eq 0 ]; then
#        rm -rf ./.Xil
#        rm -rf ./*.jou
#        rm -rf ./*.log
#        rm -rf ./Packages
#        rm -rf ./sdk_workspace
        rm -rf ./output
    else
#        gio trash ./.Xil
#        gio trash ./*.jou
#        gio trash ./*.log
#        gio trash ./Packages
#        gio trash ./sdk_workspace
        gio trash ./output
    fi
fi

#if [ $? != 0 ]
#then
#    echo -e "\n"
#    echo -e "\033[41;36m proj_ch$i fail!!! \033[0m"
#else
#    echo -e "\n"
#    echo -e "\033[42;31m clean done!!! Press any key to exit \033[0m"
#fi

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


if [ $BATCH_MODE -eq 1 ]
then
    echo -e "\033[42;31m clean done!!! \033[0m"
    exit 0
else
    echo -e "\033[42;31m clean done!!! Press any key to exit \033[0m"
    pause
fi



# while [ -n "$1" ]
# do
# case "$1" in
# -a|--a) echo "the -a option exists";;
# -w|--w) echo "the -w option exists";;
# -t|--t) echo "the -t option exists";;
# * | -h | --help) echo "Usage: $0 [parameters]"
#     echo "avalible parameters:"
#     echo "-a|--a: remove all"
#     echo "-w|--w: keep output"
#     echo "-t|--t: move to trash can"
#     echo "-h|--help: show this help"
#     ;;
# esac
# shift
# done



#!/bin/bash

# while true ;do
while false
do
    read -n1 -p "remove forever(0) or remove to trash can(1): " variable
    case $variable in
    0) echo
        echo -e "\033[42;31m rm .xxx \033[0m"
        rm -rf ./.Xil
        rm -rf ./sdk_workspace
        rm -rf ./*.jou
        rm -rf ./*.log
        rm -rf ./Packages
        break
        ;;
    1) echo
        echo -e "\033[42;31m trash xxx\033[0m"
        gio trash ./.Xil
        gio trash ./sdk_workspace
        gio trash ./*.jou
        gio trash ./*.log
        gio trash ./Packages
        break
        ;;
    *) echo 
        echo -e "\033[41;36m illegal input...again \033[0m"
        ;;
    esac
done

# read -n1 -p "remove forever(0) or remove to trash can(1): "
# case $REPLY in
# 0) echo
#    rm -rf ./.Xil
#    rm -rf ./sdk_workspace
#    rm -rf ./*.jou
#    rm -rf ./*.log
#    rm -rf ./Packages
#    ;;
# 1) echo
#    gio trash ./.Xil
#    gio trash ./sdk_workspace
#    gio trash ./*.jou
#    gio trash ./*.log
#    gio trash ./Packages
#    ;;
# *) echo
#    echo -e "illegal input...exiting"
#    exit 1
#    ;;
# esac
# echo $?

# a=$REPLY
# read -n1 -p "remove output[Y/N]?"
# case $REPLY in
# # y);&
# # Y) echo
# Y | y) echo
#     case a in
#         0) echo
#         rm -rf ./output;;
#         1) echo
#         gio trash ./output;;
#     esac
#     ;;
# # n);&
# # N) echo
# N | n) echo
#     ;;
# *) echo
#    echo -e "illegal input...exiting"
#    exit 1
#    ;;
# esac

#rm -rf ./.Xil
#gio trash ./.Xil
#rm -rf ./sdk_workspace
#gio trash ./sdk_workspace

#rm -rf ./*.jou
#gio trash ./*.jou

#rm -rf ./*.log
#gio trash ./*.log

#rm -rf ./output
#gio trash ./output

#rm -rf ./Packages
#gio trash ./Packages
