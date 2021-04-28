# play_zynq

Play on my AX7021, Mizar_Z7020, AXU2CGB boards.






## 6. VPSS: CSC, Scale, Deinterlace, PIP

#### tpg_vpss

CSC, Scale, Deinterlace all in one.

vpss full fledged has a buildin vdma!

#### tpg_vpss_csc_only

tpg: 1080p, YUV422

vpss out: 1080p60, RGB888

#### tpg_vpss_scale_only


Select an option:

1. Change TPG background

2. Enable/Disable TPG moving box

3. Change input resolution

4. Change output resolution

5. Show VPSS log

6. AXI4-Stream to Video Out status

z. Display this menu again



Change Background pattern:

1. Horizontal Ramp

2. Vertical Ramp

3. Temporal Ramp

4. Solid Red

5. Solid Blue

6. Solid Green

7. Solid Black

8. Solid White

9. Color Bar

...

#### tpg_vpss_deint_only

The base address used by the DMA engine inside of the VPSS need to be defined before initializing the VPSS
VPSS这玩意这样用需要通过DMA访问DDR，DMA基地址需要被指定。

另外，这一工程使用了tcl脚本工程模式。


## 7. VDMA: Crop, PIP, static TPG

tpg_vdma_crop

tpg_vdma_pip

tpg_vdma_tpg

## 8. TPG --> CSI-TX --> CSI-RX


## TODO:
cmos->vid_in->swich->vdma->ddr->resize/crop/pan/etc..->vdma->vid_out on AX7021, todo

cmos->vid_in->isp(here?)->swich->vdma->?->ddr->resize/crop/pan/etc..->vdma->vid_out on AX7021, todo


linux config isp and ....

microblaze implements on Microphase board(Artix-7)

edid
