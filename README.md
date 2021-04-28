# play_zynq

Play on my AX7021, Mizar_Z7020, AXU2CGB boards.



## 3. ov5640_vdma_hdmi, done

On AX7021 board, a single OV5640 cmos sensor config as RGB565 DVP at resolusion of 1024x768， buffered by vdma， regerates 1024x768@60fps timing then output to hdmi.

在AX7021开发板，接入单个OV5640摄像头，配置为1024x768的RGB565输入，然后通过vdma缓存之后重建1024x768@60fps时序输出到hdmi。

![](doc/ov5640_vdma_hdmi.png)




#### 配置一个 1024x768 的 RAW DVP-10 输入

raw_ov5640_colorbar_vdma_hdmi

这个工程是1024x768@50fps raw

![](doc/raw_ov5640_colorbar_vdma_hdmi.png)

在针对raw数据使用demosaic或者cfa这样的ip进行插值之后，发现RGB分量顺序的GB分量是反的

经查ug934，Table 1-4，LSB分量是G，然后是B，R，依次到最高分量

结论，按手册，其实axis都符合这样的定义。这个和 native stream 不太一样，需要注意。

那么推理是在经过 vid_out 转换成 native stream 之后调整分量，不需要在[3DW-1: 2DW] [2DW-1: DW]之间交换。

![](doc/axis_RGB.png)

其次，分量的位宽

这里进去就通过vid_in_axis丢弃低两位，这样axis通路所有分量都是8位宽，省事。

如果非要比如设置10bit分量位宽，那么需要在axis通路留意分量位宽。另外是vid_out_axis设置正确的native分量位宽。否则显示异常。



#### 配置一个 1080p30 的 RAW DVP-10 输入

标准的分辨率和timing是1920x1080-2200x1125

ISP window可以保持2623x1943

data out size 1920x1080

0x3808=0x07

0x3809=0x80

0x380a=0x04

0x380b=0x38


timing window 2500x1280

0x380c=0x09

0x380d=0xc4

0x380e=0x05

0x380f=0x00


pclk=92MHz for raw

0x3036=0x73

keep others


0x3034

0x3035

0x3037

0x3108

...

ref to https://github.com/xenpac/sun4i_csi/blob/master/device/ov5640.c

scale off

0x5001=0x83

0x3814=0x11

0x3815=0x11

0x3821=0x00

0x3618=0x04

0x3612=0x2b

0x3709=0x12

0x370c=0x00

raw_ov5640_colorbar_vdma_hdmi的sdk代码中已经有配置序列了。



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
