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
//Include the subsystem header file xvprocss.h that defines the subsystem object.
#include "xvprocss.h"

#define VDMA_ID          		XPAR_AXIVDMA_0_DEVICE_ID
#define VDMA_BASE_ADDR 			0x08000000
#define SCREEN_X				1920
#define SCREEN_Y				1080

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
//XVidC_ColorFormat colorFmtIn = XVIDC_CSF_YCBCR_422;
XVidC_ColorFormat colorFmtIn = XVIDC_CSF_RGB;
#define VDMA_ID          		XPAR_AXIVDMA_0_DEVICE_ID
#define VDMA_BASE_ADDR 			0x08000000
#define SCREEN_X				1920
#define SCREEN_Y				1080

//Declare an instance of the subsystem object in the application code
XVprocSs VprocInst;

//Declare the VPSS config pointer
XVprocSs_Config *VprocCfgPtr;

//Declare stream in and stream out instances
XVidC_VideoStream StreamIn, StreamOut;


// Stream settings
XVidC_VideoMode resId;
XVidC_VideoTiming const *TimingPtr;
XVidC_VideoStream StreamIn, StreamOut;


int main()
{
	int Status;
    init_platform();
#if 1
    print("VPSS CSC application on AX7021 using on-board HDMI\n\r");

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

    vtiming_gen_run(&VtcInst, VIDEO_RESOLUTION_1080P, 2);

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
	
//	/* Start of VDMA Configuration */
//    /* Configure the Write interface (S2MM)*/
//    // S2MM Control Register
//    Xil_Out32(XPAR_AXI_VDMA_0_BASEADDR + 0x30, 0x8B);
//    //S2MM Start Address 1
//    Xil_Out32(XPAR_AXI_VDMA_0_BASEADDR + 0xAC, 0x10000000);
//    //S2MM Start Address 2
//    Xil_Out32(XPAR_AXI_VDMA_0_BASEADDR + 0xB0, 0x10200000);
//    //S2MM Start Address 3
//    Xil_Out32(XPAR_AXI_VDMA_0_BASEADDR + 0xB4, 0x10400000);
//    //S2MM Frame delay / Stride register
//    Xil_Out32(XPAR_AXI_VDMA_0_BASEADDR + 0xA8, Width*2);
//    // S2MM HSIZE register
//    Xil_Out32(XPAR_AXI_VDMA_0_BASEADDR + 0xA4, Width*2);
//    // S2MM VSIZE register
//    Xil_Out32(XPAR_AXI_VDMA_0_BASEADDR + 0xA0, Height);
//
//    /* Configure the Read interface (MM2S)*/
//    // MM2S Control Register
//    Xil_Out32(XPAR_AXI_VDMA_0_BASEADDR + 0x00, 0x8B);
//    // MM2S Start Address 1
//    Xil_Out32(XPAR_AXI_VDMA_0_BASEADDR + 0x5C, 0x10000000);
//    // MM2S Start Address 2
//    Xil_Out32(XPAR_AXI_VDMA_0_BASEADDR + 0x60, 0x10200000);
//    // MM2S Start Address 3
//    Xil_Out32(XPAR_AXI_VDMA_0_BASEADDR + 0x64, 0x10400000);
//    // MM2S Frame delay / Stride register
//    Xil_Out32(XPAR_AXI_VDMA_0_BASEADDR + 0x58, Width*2);
//    // MM2S HSIZE register
//    Xil_Out32(XPAR_AXI_VDMA_0_BASEADDR + 0x54, Width*2);
//    // MM2S VSIZE register
//    Xil_Out32(XPAR_AXI_VDMA_0_BASEADDR + 0x50, Height);
	
    run_vdma_frame_buffer(&vdma, VDMA_ID, SCREEN_X, SCREEN_Y,
    				VDMA_BASE_ADDR,0,0,BOTH);
	xil_printf("VDMA started!\r\n");
	/* End of VDMA Configuration */
#endif
	/* VPSS Configuration*/

	VprocCfgPtr = XVprocSs_LookupConfig(XPAR_V_PROC_SS_0_CSC_DEVICE_ID);
	XVprocSs_CfgInitialize(&VprocInst, VprocCfgPtr, VprocCfgPtr->BaseAddress);

	//Get the resolution details
	resId = XVidC_GetVideoModeId(Width, Height, XVIDC_FR_60HZ, 0);
	TimingPtr = XVidC_GetTimingInfo(resId);

	//Set the input stream
	StreamIn.VmId           = resId;
	StreamIn.Timing         = *TimingPtr;
	StreamIn.ColorFormatId  = colorFmtIn;
	StreamIn.ColorDepth     = VprocCfgPtr->ColorDepth;
	StreamIn.PixPerClk      = VprocCfgPtr->PixPerClock;
	StreamIn.FrameRate      = XVIDC_FR_60HZ;
	StreamIn.IsInterlaced   = 0;
	XVprocSs_SetVidStreamIn(&VprocInst, &StreamIn);

	//Set the input stream
	StreamOut.VmId           = resId;
	StreamOut.Timing         = *TimingPtr;
	StreamOut.ColorFormatId  = XVIDC_CSF_YCBCR_422;
	StreamOut.ColorDepth     = VprocCfgPtr->ColorDepth;
	StreamOut.PixPerClk      = VprocCfgPtr->PixPerClock;
	StreamOut.FrameRate      = XVIDC_FR_60HZ;
	StreamOut.IsInterlaced   = 0;
	XVprocSs_SetVidStreamOut(&VprocInst, &StreamOut);

	Status = XVprocSs_SetSubsystemConfig(&VprocInst);
	if(Status!= XST_SUCCESS)
	{
			xil_printf("VPSS failed\r\n");
			return(XST_FAILURE);
	}
	xil_printf("VPSS Started\r\n");

	/* Endf of VPSS configuration */

	while(1)
	{
	}


    cleanup_platform();
    return 0;
}


