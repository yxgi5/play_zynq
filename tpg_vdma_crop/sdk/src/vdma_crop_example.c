// SPDX-License-Identifier: GPL-2.0
/*
 * vpss_csc_example.c
 *
 *  Created on: 28 Feb 2019
 *      Author: florentw
 */


#include <stdio.h>
#include "platform.h"
#include "xil_printf.h"

#include "iic_utils.h"
#include "app_hdmi.h"
#include "xvidc.h"
#include "xgpio.h"
#include "clk_wiz.h"
#include "xvtc.h"
#include "video_resolution.h"
#include "vtiming_gen.h"
#include "vdma_api.h"

#define VDMA_ID          		XPAR_AXIVDMA_0_DEVICE_ID
#define VDMA_BASE_ADDR 			0x08000000
#define SCREEN_X				1920
#define SCREEN_Y				1080

#define FRAME_BUFFER_BASE_ADDR	0x10000000
//#define FRAME_BUFFER_SIZE		0x400000	//0x400000 for max 1080p YCbCr422 8bpc
#define FRAME_BUFFER_SIZE		0x600000	//0x600000 for max 1080p RGB888 8bpc
#define FRAME_BUFFER_1			FRAME_BUFFER_BASE_ADDR
#define FRAME_BUFFER_2			FRAME_BUFFER_BASE_ADDR + FRAME_BUFFER_SIZE
#define FRAME_BUFFER_3			FRAME_BUFFER_BASE_ADDR + (FRAME_BUFFER_SIZE*2)

XIicPs IicPs_inst;
XV_tpg tpg_inst;
XV_tpg_Config *tpg_config;
XGpio GpioOutput;
XClk_Wiz ClkWizInst;
XVtc		VtcInst;		/**< Instance of the VTC core. */
XVtc_Config *VtcConfig;

XAxiVdma     vdma;

//Video In parameter
int Width = 1920, Height = 1080;
//XVidC_ColorFormat colorFmtIn = XVIDC_CSF_YCRCB_422;
XVidC_ColorFormat colorFmtIn = XVIDC_CSF_RGB;

int main()
{
	int Status;
    init_platform();
#if 1
    print("VDMA application on AX7021 using on-board HDMI\n\r");

    Status = XClk_Wiz_dynamic_reconfig(&ClkWizInst);
    if (Status != XST_SUCCESS)
    {
      xil_printf("XClk_Wiz dynamic reconfig failed.\r\n");
      return XST_FAILURE;
    }
    xil_printf("XClk_Wiz dynamic reconfig ok\n\r");

    VtcConfig = XVtc_LookupConfig(XPAR_VTC_0_DEVICE_ID);
    Status = XVtc_CfgInitialize(&VtcInst, VtcConfig, VtcConfig->BaseAddress);
    if(Status != XST_SUCCESS)
	{
		xil_printf("VTC Initialization failed %d\r\n", Status);
		return(XST_FAILURE);
	}

    vtiming_gen_run(&VtcInst, VIDEO_RESOLUTION_720P, 2);

    set_on_board_hdmi(&IicPs_inst, &GpioOutput);

    xil_printf("HDMI Setup Complete!\r\n");

    //Initialize the TPG IP
    Status = XV_tpg_Initialize(&tpg_inst, XPAR_V_TPG_0_DEVICE_ID);
    if(Status!= XST_SUCCESS)
    {
    	xil_printf("TPG configuration failed\r\n");
    	return(XST_FAILURE);
    }

    //Configure the TPG
    app_hdmi_conf_tpg(&tpg_inst, Height, Width, colorFmtIn, XTPG_BKGND_COLOR_BARS);

    //Configure the moving box of the TPG
    app_hdmi_conf_tpg_box(&tpg_inst, 50, 1);

    //Start the TPG
    XV_tpg_EnableAutoRestart(&tpg_inst);
    XV_tpg_Start(&tpg_inst);
    xil_printf("TPG started!\r\n");
	

	/* Start of VDMA Configuration */
    u32 bytePerPixels = 3;

    int offset0 = 0; // (y*w+x)*Bpp
    u32 stride0 = 1920;
    u32 width0 = 1920;
    u32 height0 = 1080;

    int offset1 = 0; // (y*w+x)*Bpp
    offset1 = 960;// center the crop window horizontally, y=0,x=(1920-1280)/2
    u32 stride1 = 1920;  // crop keeps write Stride
    u32 width1 = 1280;
    u32 height1 = 720;

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
    Xil_Out32(XPAR_AXI_VDMA_0_BASEADDR + 0xA8, stride0*bytePerPixels);
    // S2MM HSIZE register
    Xil_Out32(XPAR_AXI_VDMA_0_BASEADDR + 0xA4, width0*bytePerPixels);
    // S2MM VSIZE register
    Xil_Out32(XPAR_AXI_VDMA_0_BASEADDR + 0xA0, height0);

    /* Configure the Read interface (MM2S)*/
    // MM2S Control Register
    Xil_Out32(XPAR_AXI_VDMA_0_BASEADDR + 0x00, 0x8B);
    // MM2S Start Address 1
    Xil_Out32(XPAR_AXI_VDMA_0_BASEADDR + 0x5C, FRAME_BUFFER_1 + offset1);
    // MM2S Start Address 2
    Xil_Out32(XPAR_AXI_VDMA_0_BASEADDR + 0x60, FRAME_BUFFER_2 + offset1);
    // MM2S Start Address 3
    Xil_Out32(XPAR_AXI_VDMA_0_BASEADDR + 0x64, FRAME_BUFFER_3 + offset1);
    // MM2S Frame delay / Stride register
    Xil_Out32(XPAR_AXI_VDMA_0_BASEADDR + 0x58, stride1*bytePerPixels);
    // MM2S HSIZE register
    Xil_Out32(XPAR_AXI_VDMA_0_BASEADDR + 0x54, width1*bytePerPixels);
    // MM2S VSIZE register
    Xil_Out32(XPAR_AXI_VDMA_0_BASEADDR + 0x50, height1);
	
//    run_vdma_frame_buffer(&vdma, VDMA_ID, SCREEN_X, SCREEN_Y,
//    				VDMA_BASE_ADDR,0,0,BOTH);

	xil_printf("VDMA started!\r\n");
	/* End of VDMA Configuration */
#endif

	while(1)
	{
	}


    cleanup_platform();
    return 0;
}


