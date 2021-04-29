1. open vivado
2. in the tcl shell, cd to vivado folder
3. in the tcl shell, source create_proj.tcl
4. build vivado project
5. export hdf to sdk/hdf folder
6. open xsct shell, cd to sdk folder
7. source create_SW_proj.tcl

# tpg_vpss_deint_only

The base address used by the DMA engine inside of the VPSS need to be defined before initializing the VPSS
VPSS这玩意这样用需要通过DMA访问DDR，DMA基地址需要被指定。

