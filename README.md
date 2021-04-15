# play_zynq

my plan:

1. tpg->vid_out on AX7021, done

          vtc--^

2. tgp->vdma->ddr->vdma->vid_out on AX7021, done

			               vtc--^

3. cmos rgb565->vid_in->vdma->ddr->vdma->vid_out on AX7021, done

                                         vtc--^

4. cmos rgb565->vid_in->swich->vdma->ddr->vdma->vid_out on AX7021, todo

                    tpg-----^                   vtc--^

5. cmos rgb565->vid_in->swich->vdma->ddr->resize/crop/pan/etc..->vdma->vid_out on AX7021, todo

6. cmos rgb565->vid_in->isp(here?)->swich->vdma->?->ddr->resize/crop/pan/etc..->vdma->vid_out on AX7021, todo

7. linux config isp and ....

8. microblaze implements on Microphase board(Artix-7)
