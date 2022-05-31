#include <stdio.h>
#include "xparameters.h"
#include "platform.h"
#include "platform_config.h"

#include "xvidc.h"
#include "xv_tpg.h"
#include "tpg/tpg.h"
#include "xvtc.h"
#include "vtc/video_resolution.h"
#include "vtc/vtiming_gen.h"
#include "xclk_wiz.h"
#include "clk_wiz/clk_wiz.h"

#if defined (__MICROBLAZE__)
#include "xintc.h"
#else
#include "xscugic.h"
#endif

#include "xaxivdma.h"

#include "xgpio.h"

#include "xiicps.h"
#include "PS_i2c.h"

#include "sleep.h"

#include "bitmanip.h"
#include "trace_zzg_debug.h"

#include "config.h"

#define IIC_SCLK_RATE		100000

#define DDR_BASEADDR XPAR_DDR_MEM_BASEADDR
#define FRAME_BUFFER_BASE_ADDR  	(DDR_BASEADDR + (0x10000000))
//#define USR_FRAME_BUF_BASEADDR     	(DDR_BASEADDR + (0x20000000))

//#define FRAME_BUFFER_SIZE0      0x2000000    //0x2000000 for max 4KW RGB888 8bpc
#define FRAME_BUFFER_SIZE0      0x600000    //0x600000 for max 1080p RGB888 8bpc

#define FRAME_BUFFER_1          FRAME_BUFFER_BASE_ADDR
#define FRAME_BUFFER_2          FRAME_BUFFER_BASE_ADDR + FRAME_BUFFER_SIZE0
#define FRAME_BUFFER_3          FRAME_BUFFER_BASE_ADDR + (FRAME_BUFFER_SIZE0*2)
#define FRAME_BUFFER_4          FRAME_BUFFER_BASE_ADDR + (FRAME_BUFFER_SIZE0*3)
#define FRAME_BUFFER_5          FRAME_BUFFER_4 + FRAME_BUFFER_SIZE0
#define FRAME_BUFFER_6          FRAME_BUFFER_4 + (FRAME_BUFFER_SIZE0*2)

#define XVMIX_REG_OFFSET                (0x100)

#if defined (__MICROBLAZE__)
XIntc intc;
#else
XScuGic intc;
#endif

XGpio hdmi_reset;
XIicPs psiic_inst;
XV_tpg tpg_inst0;
XV_tpg tpg_inst1;
XV_tpg tpg_inst2;
XV_tpg tpg_inst3;
XClk_Wiz clk_wiz_inst;
XVtc vtc_inst;

XVidC_ColorFormat colorFmtIn = XVIDC_CSF_RGB;
u32 bckgndId = XTPG_BKGND_COLOR_BARS;

void clkwiz_vtc_cfg(void)
{
    u32 Status;
    XVtc_Config *VtcConfig;

    // dynamic config clkwiz
    Status = XClk_Wiz_dynamic_reconfig(&clk_wiz_inst, XPAR_CLK_WIZ_0_DEVICE_ID);
    if(Status != XST_SUCCESS)
    {
        xil_printf("XClk_Wiz0 dynamic reconfig failed.\r\n");
//      return XST_FAILURE;
    }
    //xil_printf("XClk_Wiz0 dynamic reconfig ok\n\r");

    // vtc configuration
    VtcConfig = XVtc_LookupConfig(XPAR_VTC_0_DEVICE_ID);
    Status = XVtc_CfgInitialize(&vtc_inst, VtcConfig, VtcConfig->BaseAddress);
    if(Status != XST_SUCCESS)
    {
        xil_printf("VTC0 Initialization failed %d\r\n", Status);
//      return(XST_FAILURE);
    }
    vtiming_gen_run(&vtc_inst, VIDEO_RESOLUTION_1080P, 2);
}

void tpg_config_0(void)
{
    u32 Status;

    // tpg
    //xil_printf("TPG Initializing\n\r");

    Status = XV_tpg_Initialize(&tpg_inst0, XPAR_V_TPG_0_DEVICE_ID);
    if(Status != XST_SUCCESS)
    {
        xil_printf("TPG0 configuration failed\r\n");
//      return(XST_FAILURE);
    }

    //Configure the TPG
    tpg_cfg(&tpg_inst0, 480, 720, colorFmtIn, bckgndId);

    //Configure the moving box of the TPG0
    tpg_box(&tpg_inst0, 25, 1);

    //Start the TPG
    XV_tpg_EnableAutoRestart(&tpg_inst0);
    XV_tpg_Start(&tpg_inst0);
    //xil_printf("TPG started!\r\n");
}
#if 0
void tpg_config_1(void)
{
    u32 Status;

    // tpg
    //xil_printf("TPG Initializing\n\r");

    Status = XV_tpg_Initialize(&tpg_inst1, XPAR_V_TPG_1_DEVICE_ID);
    if(Status != XST_SUCCESS)
    {
        xil_printf("TPG0 configuration failed\r\n");
//      return(XST_FAILURE);
    }

    //Configure the TPG
    tpg_cfg(&tpg_inst1, 480, 720, colorFmtIn, bckgndId);

    //Configure the moving box of the TPG0
    tpg_box(&tpg_inst1, 25, 1);

    //Start the TPG
    XV_tpg_EnableAutoRestart(&tpg_inst1);
    XV_tpg_Start(&tpg_inst1);
    //xil_printf("TPG started!\r\n");
}

void tpg_config_2(void)
{
    u32 Status;

    // tpg
    //xil_printf("TPG Initializing\n\r");

    Status = XV_tpg_Initialize(&tpg_inst2, XPAR_V_TPG_2_DEVICE_ID);
    if(Status != XST_SUCCESS)
    {
        xil_printf("TPG0 configuration failed\r\n");
//      return(XST_FAILURE);
    }

    //Configure the TPG
    tpg_cfg(&tpg_inst2, 480, 720, colorFmtIn, XTPG_BKGND_H_RAMP);

    //Configure the moving box of the TPG0
    tpg_box(&tpg_inst2, 25, 1);

    //Start the TPG
    XV_tpg_EnableAutoRestart(&tpg_inst2);
    XV_tpg_Start(&tpg_inst2);
    //xil_printf("TPG started!\r\n");
}

void tpg_config_3(void)
{
    u32 Status;

    // tpg
    //xil_printf("TPG Initializing\n\r");

    Status = XV_tpg_Initialize(&tpg_inst3, XPAR_V_TPG_3_DEVICE_ID);
    if(Status != XST_SUCCESS)
    {
        xil_printf("TPG0 configuration failed\r\n");
//      return(XST_FAILURE);
    }

    //Configure the TPG
    tpg_cfg(&tpg_inst3, 480, 720, colorFmtIn, XTPG_BKGND_V_RAMP);

    //Configure the moving box of the TPG0
    tpg_box(&tpg_inst3, 25, 1);

    //Start the TPG
    XV_tpg_EnableAutoRestart(&tpg_inst3);
    XV_tpg_Start(&tpg_inst3);
    //xil_printf("TPG started!\r\n");
}
#endif

void tpg_config(void)
{
    tpg_config_0();
//    tpg_config_1();
//    tpg_config_2();
//    tpg_config_3();
}

void vdma_config_0(void)
{
    /* Start of VDMA Configuration */
    u32 bytePerPixels = 3;
    int offset0 = (20*1920+20)*3; // (y*w+x)*Bpp
//    int offset1 = 0; // (y*w+x)*Bpp

    u32 stride0 = 1920;
    u32 width0 = 720;
    u32 height0 = 480;
//    u32 stride1 = 1920;  // crop keeps write Stride
//    u32 width1 = 1920;
//    u32 height1 = 1080;

    /* Configure the Write interface (S2MM)*/
    // S2MM Control Register
    Xil_Out32(XPAR_AXI_VDMA_0_BASEADDR + 0x30, 0x8B);
    //S2MM Start Address 1
    Xil_Out32(XPAR_AXI_VDMA_0_BASEADDR + 0xAC, FRAME_BUFFER_1 + offset0);
    //S2MM Start Address 2
    Xil_Out32(XPAR_AXI_VDMA_0_BASEADDR + 0xB0, FRAME_BUFFER_2 + offset0);
    //S2MM Start Address 3
    Xil_Out32(XPAR_AXI_VDMA_0_BASEADDR + 0xB4, FRAME_BUFFER_3 + offset0);
    //S2MM Frame delay / Stride register
    Xil_Out32(XPAR_AXI_VDMA_0_BASEADDR + 0xA8, stride0 * bytePerPixels);
    // S2MM HSIZE register
    Xil_Out32(XPAR_AXI_VDMA_0_BASEADDR + 0xA4, width0 * bytePerPixels);
    // S2MM VSIZE register
    Xil_Out32(XPAR_AXI_VDMA_0_BASEADDR + 0xA0, height0);

//    /* Configure the Read interface (MM2S)*/
//    // MM2S Control Register
//    Xil_Out32(XPAR_AXI_VDMA_0_BASEADDR + 0x00, 0x8B);
//    // MM2S Start Address 1
//    Xil_Out32(XPAR_AXI_VDMA_0_BASEADDR + 0x5C, FRAME_BUFFER_1 + offset1);
//    // MM2S Start Address 2
//    Xil_Out32(XPAR_AXI_VDMA_0_BASEADDR + 0x60, FRAME_BUFFER_2 + offset1);
//    // MM2S Start Address 3
//    Xil_Out32(XPAR_AXI_VDMA_0_BASEADDR + 0x64, FRAME_BUFFER_3 + offset1);
//    // MM2S Frame delay / Stride register
//    Xil_Out32(XPAR_AXI_VDMA_0_BASEADDR + 0x58, stride1 * bytePerPixels);
//    // MM2S HSIZE register
//    Xil_Out32(XPAR_AXI_VDMA_0_BASEADDR + 0x54, width1 * bytePerPixels);
//    // MM2S VSIZE register
//    Xil_Out32(XPAR_AXI_VDMA_0_BASEADDR + 0x50, height1);
}
void vdma_config_1(void)
{
    /* Start of VDMA Configuration */
    u32 bytePerPixels = 3;
//    int offset0 = 0; // (y*w+x)*Bpp
    int offset1 = 0; // (y*w+x)*Bpp

//    u32 stride0 = 1920;
//    u32 width0 = 1920;
//    u32 height0 = 1080;
    u32 stride1 = 1920;  // crop keeps write Stride
    u32 width1 = 1920;
    u32 height1 = 1080;

//    /* Configure the Write interface (S2MM)*/
//    // S2MM Control Register
//    Xil_Out32(XPAR_AXI_VDMA_1_BASEADDR + 0x30, 0x8B);
//    //S2MM Start Address 1
//    Xil_Out32(XPAR_AXI_VDMA_1_BASEADDR + 0xAC, FRAME_BUFFER_1 + offset0);
//    //S2MM Start Address 2
//    Xil_Out32(XPAR_AXI_VDMA_1_BASEADDR + 0xB0, FRAME_BUFFER_2 + offset0);
//    //S2MM Start Address 3
//    Xil_Out32(XPAR_AXI_VDMA_1_BASEADDR + 0xB4, FRAME_BUFFER_3 + offset0);
//    //S2MM Frame delay / Stride register
//    Xil_Out32(XPAR_AXI_VDMA_1_BASEADDR + 0xA8, stride0 * bytePerPixels);
//    // S2MM HSIZE register
//    Xil_Out32(XPAR_AXI_VDMA_1_BASEADDR + 0xA4, width0 * bytePerPixels);
//    // S2MM VSIZE register
//    Xil_Out32(XPAR_AXI_VDMA_1_BASEADDR + 0xA0, height0);

    /* Configure the Read interface (MM2S)*/
    // MM2S Control Register
    Xil_Out32(XPAR_AXI_VDMA_1_BASEADDR + 0x00, 0x83);
    // MM2S Start Address 1
    Xil_Out32(XPAR_AXI_VDMA_1_BASEADDR + 0x5C, FRAME_BUFFER_1 + offset1);
    // MM2S Start Address 2
    Xil_Out32(XPAR_AXI_VDMA_1_BASEADDR + 0x60, FRAME_BUFFER_2 + offset1);
    // MM2S Start Address 3
    Xil_Out32(XPAR_AXI_VDMA_1_BASEADDR + 0x64, FRAME_BUFFER_3 + offset1);
    // MM2S Frame delay / Stride register
    Xil_Out32(XPAR_AXI_VDMA_1_BASEADDR + 0x58, stride1 * bytePerPixels);
    // MM2S HSIZE register
    Xil_Out32(XPAR_AXI_VDMA_1_BASEADDR + 0x54, width1 * bytePerPixels);
    // MM2S VSIZE register
    Xil_Out32(XPAR_AXI_VDMA_1_BASEADDR + 0x50, height1);
}
#if 0
void vdma_config_1(void)
{
    /* Start of VDMA Configuration */
    u32 bytePerPixels = 3;
    int offset0 = (20*1920+800)*3;; // (y*w+x)*Bpp
//    int offset1 = 0; // (y*w+x)*Bpp

    u32 stride0 = 1920;
    u32 width0 = 720;
    u32 height0 = 480;
//    u32 stride1 = 1920;  // crop keeps write Stride
//    u32 width1 = 1920;
//    u32 height1 = 1080;

    /* Configure the Write interface (S2MM)*/
    // S2MM Control Register
    Xil_Out32(XPAR_AXI_VDMA_1_BASEADDR + 0x30, 0x8B);
    //S2MM Start Address 1
    Xil_Out32(XPAR_AXI_VDMA_1_BASEADDR + 0xAC, FRAME_BUFFER_1 + offset0);
    //S2MM Start Address 2
    Xil_Out32(XPAR_AXI_VDMA_1_BASEADDR + 0xB0, FRAME_BUFFER_2 + offset0);
    //S2MM Start Address 3
    Xil_Out32(XPAR_AXI_VDMA_1_BASEADDR + 0xB4, FRAME_BUFFER_3 + offset0);
    //S2MM Frame delay / Stride register
    Xil_Out32(XPAR_AXI_VDMA_1_BASEADDR + 0xA8, stride0 * bytePerPixels);
    // S2MM HSIZE register
    Xil_Out32(XPAR_AXI_VDMA_1_BASEADDR + 0xA4, width0 * bytePerPixels);
    // S2MM VSIZE register
    Xil_Out32(XPAR_AXI_VDMA_1_BASEADDR + 0xA0, height0);

//    /* Configure the Read interface (MM2S)*/
//    // MM2S Control Register
//    Xil_Out32(XPAR_AXI_VDMA_1_BASEADDR + 0x00, 0x8B);
//    // MM2S Start Address 1
//    Xil_Out32(XPAR_AXI_VDMA_1_BASEADDR + 0x5C, FRAME_BUFFER_1 + offset1);
//    // MM2S Start Address 2
//    Xil_Out32(XPAR_AXI_VDMA_1_BASEADDR + 0x60, FRAME_BUFFER_2 + offset1);
//    // MM2S Start Address 3
//    Xil_Out32(XPAR_AXI_VDMA_1_BASEADDR + 0x64, FRAME_BUFFER_3 + offset1);
//    // MM2S Frame delay / Stride register
//    Xil_Out32(XPAR_AXI_VDMA_1_BASEADDR + 0x58, stride1 * bytePerPixels);
//    // MM2S HSIZE register
//    Xil_Out32(XPAR_AXI_VDMA_1_BASEADDR + 0x54, width1 * bytePerPixels);
//    // MM2S VSIZE register
//    Xil_Out32(XPAR_AXI_VDMA_1_BASEADDR + 0x50, height1);
}

void vdma_config_2(void)
{
    /* Start of VDMA Configuration */
    u32 bytePerPixels = 3;
    int offset0 = (520*1920+20)*3;; // (y*w+x)*Bpp
//    int offset1 = 0; // (y*w+x)*Bpp

    u32 stride0 = 1920;
    u32 width0 = 720;
    u32 height0 = 480;
//    u32 stride1 = 1920;  // crop keeps write Stride
//    u32 width1 = 1920;
//    u32 height1 = 1080;

    /* Configure the Write interface (S2MM)*/
    // S2MM Control Register
    Xil_Out32(XPAR_AXI_VDMA_2_BASEADDR + 0x30, 0x8B);
    //S2MM Start Address 1
    Xil_Out32(XPAR_AXI_VDMA_2_BASEADDR + 0xAC, FRAME_BUFFER_1 + offset0);
    //S2MM Start Address 2
    Xil_Out32(XPAR_AXI_VDMA_2_BASEADDR + 0xB0, FRAME_BUFFER_2 + offset0);
    //S2MM Start Address 3
    Xil_Out32(XPAR_AXI_VDMA_2_BASEADDR + 0xB4, FRAME_BUFFER_3 + offset0);
    //S2MM Frame delay / Stride register
    Xil_Out32(XPAR_AXI_VDMA_2_BASEADDR + 0xA8, stride0 * bytePerPixels);
    // S2MM HSIZE register
    Xil_Out32(XPAR_AXI_VDMA_2_BASEADDR + 0xA4, width0 * bytePerPixels);
    // S2MM VSIZE register
    Xil_Out32(XPAR_AXI_VDMA_2_BASEADDR + 0xA0, height0);

//    /* Configure the Read interface (MM2S)*/
//    // MM2S Control Register
//    Xil_Out32(XPAR_AXI_VDMA_2_BASEADDR + 0x00, 0x8B);
//    // MM2S Start Address 1
//    Xil_Out32(XPAR_AXI_VDMA_2_BASEADDR + 0x5C, FRAME_BUFFER_1 + offset1);
//    // MM2S Start Address 2
//    Xil_Out32(XPAR_AXI_VDMA_2_BASEADDR + 0x60, FRAME_BUFFER_2 + offset1);
//    // MM2S Start Address 3
//    Xil_Out32(XPAR_AXI_VDMA_2_BASEADDR + 0x64, FRAME_BUFFER_3 + offset1);
//    // MM2S Frame delay / Stride register
//    Xil_Out32(XPAR_AXI_VDMA_2_BASEADDR + 0x58, stride1 * bytePerPixels);
//    // MM2S HSIZE register
//    Xil_Out32(XPAR_AXI_VDMA_2_BASEADDR + 0x54, width1 * bytePerPixels);
//    // MM2S VSIZE register
//    Xil_Out32(XPAR_AXI_VDMA_2_BASEADDR + 0x50, height1);
}

void vdma_config_3(void)
{
    /* Start of VDMA Configuration */
    u32 bytePerPixels = 3;
    int offset0 = (520*1920+800)*3;; // (y*w+x)*Bpp
//    int offset1 = 0; // (y*w+x)*Bpp

    u32 stride0 = 1920;
    u32 width0 = 720;
    u32 height0 = 480;
//    u32 stride1 = 1920;  // crop keeps write Stride
//    u32 width1 = 1920;
//    u32 height1 = 1080;

    /* Configure the Write interface (S2MM)*/
    // S2MM Control Register
    Xil_Out32(XPAR_AXI_VDMA_3_BASEADDR + 0x30, 0x8B);
    //S2MM Start Address 1
    Xil_Out32(XPAR_AXI_VDMA_3_BASEADDR + 0xAC, FRAME_BUFFER_1 + offset0);
    //S2MM Start Address 2
    Xil_Out32(XPAR_AXI_VDMA_3_BASEADDR + 0xB0, FRAME_BUFFER_2 + offset0);
    //S2MM Start Address 3
    Xil_Out32(XPAR_AXI_VDMA_3_BASEADDR + 0xB4, FRAME_BUFFER_3 + offset0);
    //S2MM Frame delay / Stride register
    Xil_Out32(XPAR_AXI_VDMA_3_BASEADDR + 0xA8, stride0 * bytePerPixels);
    // S2MM HSIZE register
    Xil_Out32(XPAR_AXI_VDMA_3_BASEADDR + 0xA4, width0 * bytePerPixels);
    // S2MM VSIZE register
    Xil_Out32(XPAR_AXI_VDMA_3_BASEADDR + 0xA0, height0);

//    /* Configure the Read interface (MM2S)*/
//    // MM2S Control Register
//    Xil_Out32(XPAR_AXI_VDMA_3_BASEADDR + 0x00, 0x8B);
//    // MM2S Start Address 1
//    Xil_Out32(XPAR_AXI_VDMA_3_BASEADDR + 0x5C, FRAME_BUFFER_1 + offset1);
//    // MM2S Start Address 2
//    Xil_Out32(XPAR_AXI_VDMA_3_BASEADDR + 0x60, FRAME_BUFFER_2 + offset1);
//    // MM2S Start Address 3
//    Xil_Out32(XPAR_AXI_VDMA_3_BASEADDR + 0x64, FRAME_BUFFER_3 + offset1);
//    // MM2S Frame delay / Stride register
//    Xil_Out32(XPAR_AXI_VDMA_3_BASEADDR + 0x58, stride1 * bytePerPixels);
//    // MM2S HSIZE register
//    Xil_Out32(XPAR_AXI_VDMA_3_BASEADDR + 0x54, width1 * bytePerPixels);
//    // MM2S VSIZE register
//    Xil_Out32(XPAR_AXI_VDMA_3_BASEADDR + 0x50, height1);
}

void vdma_config_4(void)
{
    /* Start of VDMA Configuration */
    u32 bytePerPixels = 3;
//    int offset0 = 0; // (y*w+x)*Bpp
    int offset1 = 0; // (y*w+x)*Bpp

//    u32 stride0 = 1920;
//    u32 width0 = 1920;
//    u32 height0 = 1080;
    u32 stride1 = 1920;  // crop keeps write Stride
    u32 width1 = 1920;
    u32 height1 = 1080;

//    /* Configure the Write interface (S2MM)*/
//    // S2MM Control Register
//    Xil_Out32(XPAR_AXI_VDMA_4_BASEADDR + 0x30, 0x8B);
//    //S2MM Start Address 1
//    Xil_Out32(XPAR_AXI_VDMA_4_BASEADDR + 0xAC, FRAME_BUFFER_1 + offset0);
//    //S2MM Start Address 2
//    Xil_Out32(XPAR_AXI_VDMA_4_BASEADDR + 0xB0, FRAME_BUFFER_2 + offset0);
//    //S2MM Start Address 3
//    Xil_Out32(XPAR_AXI_VDMA_4_BASEADDR + 0xB4, FRAME_BUFFER_3 + offset0);
//    //S2MM Frame delay / Stride register
//    Xil_Out32(XPAR_AXI_VDMA_4_BASEADDR + 0xA8, stride0 * bytePerPixels);
//    // S2MM HSIZE register
//    Xil_Out32(XPAR_AXI_VDMA_4_BASEADDR + 0xA4, width0 * bytePerPixels);
//    // S2MM VSIZE register
//    Xil_Out32(XPAR_AXI_VDMA_4_BASEADDR + 0xA0, height0);

    /* Configure the Read interface (MM2S)*/
    // MM2S Control Register
    Xil_Out32(XPAR_AXI_VDMA_4_BASEADDR + 0x00, 0x8B);
    // MM2S Start Address 1
    Xil_Out32(XPAR_AXI_VDMA_4_BASEADDR + 0x5C, FRAME_BUFFER_1 + offset1);
    // MM2S Start Address 2
    Xil_Out32(XPAR_AXI_VDMA_4_BASEADDR + 0x60, FRAME_BUFFER_2 + offset1);
    // MM2S Start Address 3
    Xil_Out32(XPAR_AXI_VDMA_4_BASEADDR + 0x64, FRAME_BUFFER_3 + offset1);
    // MM2S Frame delay / Stride register
    Xil_Out32(XPAR_AXI_VDMA_4_BASEADDR + 0x58, stride1 * bytePerPixels);
    // MM2S HSIZE register
    Xil_Out32(XPAR_AXI_VDMA_4_BASEADDR + 0x54, width1 * bytePerPixels);
    // MM2S VSIZE register
    Xil_Out32(XPAR_AXI_VDMA_4_BASEADDR + 0x50, height1);

    Xil_Out32(XPAR_AXI_VDMA_4_BASEADDR + 0x00, 0x8B);
}
#endif
void vdma_config(void)
{
	vdma_config_0();
	vdma_config_1();
//	vdma_config_2();
//	vdma_config_3();
//	vdma_config_4();
}

void XV_tpg_Stop(XV_tpg *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XV_tpg_ReadReg(InstancePtr->Config.BaseAddress, XV_TPG_CTRL_ADDR_AP_CTRL) & 0x80;
    XV_tpg_WriteReg(InstancePtr->Config.BaseAddress, XV_TPG_CTRL_ADDR_AP_CTRL, Data &~ 0x01);
}

int main(void)
{
    int Status;

    XVidC_ColorFormat Cfmt;

    init_platform();

    i2c_init(&psiic_inst, XPAR_XIICPS_0_DEVICE_ID, IIC_SCLK_RATE);
    XGpio_Initialize(&hdmi_reset, XPAR_AXI_GPIO_0_DEVICE_ID);   //initialize GPIO IP
    XGpio_SetDataDirection(&hdmi_reset, 1, 0x0);            //set GPIO as output
    XGpio_DiscreteWrite(&hdmi_reset, 1, 0x0);               //set GPIO output value to 0
    usleep(50000);
    XGpio_DiscreteWrite(&hdmi_reset, 1, 0x1);
    i2c_reg8_write(&psiic_inst, 0x72 >> 1, 0x08, 0x35);
    i2c_reg8_write(&psiic_inst, 0x7a >> 1, 0x2f, 0x00);
    // sil9134 in yuv422 out rgb
    //i2c_reg8_write(&IicInstance,0x72>>1,0x48,0x30); // csc select
    //i2c_reg8_write(&IicInstance,0x72>>1,0x4a,0x3c);

    // sil9134 in yuv422 out yuv422
    //i2c_reg8_write(&IicInstance,0x72>>1,0x48,0x20);
    //i2c_reg8_write(&IicInstance,0x72>>1,0x4a,0x00);

    // sil9134 in yuv422 out yuv444
    //i2c_reg8_write(&IicInstance,0x72>>1,0x48,0x20);
    //i2c_reg8_write(&IicInstance,0x72>>1,0x4a,0x14);

    // sil9134 in yuv444 out rgb
    //i2c_reg8_write(&IicInstance,0x72>>1,0x48,0x10);
    //i2c_reg8_write(&IicInstance,0x72>>1,0x4a,0x38);

    clkwiz_vtc_cfg();
    tpg_config();
    vdma_config();

    while(1)
    {
        asm("NOP");
    }

    cleanup_platform();

    return 0;
}
