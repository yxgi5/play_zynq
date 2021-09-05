/******************************************************************************
*
* Copyright (C) 2009 - 2014 Xilinx, Inc.  All rights reserved.
*
* Permission is hereby granted, free of charge, to any person obtaining a copy
* of this software and associated documentation files (the "Software"), to deal
* in the Software without restriction, including without limitation the rights
* to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
* copies of the Software, and to permit persons to whom the Software is
* furnished to do so, subject to the following conditions:
*
* The above copyright notice and this permission notice shall be included in
* all copies or substantial portions of the Software.
*
* Use of the Software is limited solely to applications:
* (a) running on a Xilinx device, or
* (b) that interact with a Xilinx device through a bus or interconnect.
*
* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
* IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
* FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
* XILINX  BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
* WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF
* OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
* SOFTWARE.
*
* Except as contained in this notice, the name of the Xilinx shall not be used
* in advertising or otherwise to promote the sale, use or other dealings in
* this Software without prior written authorization from Xilinx.
*
******************************************************************************/

/*
 * helloworld.c: simple test application
 *
 * This application configures UART 16550 to baud rate 9600.
 * PS7 UART (Zynq) is not initialized by this application, since
 * bootrom/bsp configures it to baud rate 115200
 *
 * ------------------------------------------------
 * | UART TYPE   BAUD RATE                        |
 * ------------------------------------------------
 *   uartns550   9600
 *   uartlite    Configurable only in HW design
 *   ps7_uart    115200 (configured by bootrom/bsp)
 */

#include <stdio.h>
#include "platform.h"
#include "xil_printf.h"
#include "xstatus.h"
//#include "xvidc.h"
//#include "tpg/tpg.h"
//#include "clk_wiz.h"
#include "xvtc.h"
#include "vtc/video_resolution.h"
#include "vtc/vtiming_gen.h"
#include "xil_cache.h"

#define _DMA_DBG_ 1

#define VDMA_ID          		XPAR_AXIVDMA_0_DEVICE_ID
#define VDMA_BASE_ADDR 			0x08000000
//#define VDMA1_ID          		XPAR_AXIVDMA_1_DEVICE_ID
//#define VDMA1_BASE_ADDR			0x10000000

//#define FRAME_BUFFER_BASE_ADDR	0x10000000
#define FRAME_BUFFER_BASE_ADDR	0x81000000
//#define FRAME_BUFFER_SIZE		0x400000	//0x400000 for max 1080p YCbCr422 8bpc
#define FRAME_BUFFER_SIZE		0x600000	//0x600000 for max 1080p RGB888 8bpc
#define FRAME_BUFFER_1			FRAME_BUFFER_BASE_ADDR
#define FRAME_BUFFER_2			FRAME_BUFFER_BASE_ADDR + FRAME_BUFFER_SIZE
#define FRAME_BUFFER_3			FRAME_BUFFER_BASE_ADDR + (FRAME_BUFFER_SIZE*2)

#define FRAME_BUFFER_BASE_ADDR1	FRAME_BUFFER_BASE_ADDR + (FRAME_BUFFER_SIZE*3)
#define FRAME_BUFFER_4			FRAME_BUFFER_BASE_ADDR1
#define FRAME_BUFFER_5			FRAME_BUFFER_BASE_ADDR1 + FRAME_BUFFER_SIZE
#define FRAME_BUFFER_6			FRAME_BUFFER_BASE_ADDR1 + (FRAME_BUFFER_SIZE*2)

//XClk_Wiz ClkWizInst0;
XVtc		VtcInst0;		/**< Instance of the VTC core. */
XVtc_Config *VtcConfig0;
//XV_tpg tpg_inst0;
//XV_tpg_Config *tpg_config0;
//XVidC_ColorFormat colorFmtIn0 = XVIDC_CSF_RGB;

void clkwiz_vtc_cfg(void)
{
	u32 Status;
	// dynamic config clkwiz
//    Status = XClk_Wiz_dynamic_reconfig(&ClkWizInst0, XPAR_CLK_WIZ_0_DEVICE_ID);
//    if (Status != XST_SUCCESS)
//    {
//      xil_printf("XClk_Wiz0 dynamic reconfig failed.\r\n");
////      return XST_FAILURE;
//    }
//    xil_printf("XClk_Wiz0 dynamic reconfig ok\n\r");

    // vtc configuration
    VtcConfig0 = XVtc_LookupConfig(XPAR_VTC_0_DEVICE_ID);
    Status = XVtc_CfgInitialize(&VtcInst0, VtcConfig0, VtcConfig0->BaseAddress);
    if(Status != XST_SUCCESS)
	{
		xil_printf("VTC0 Initialization failed %d\r\n", Status);
//		return(XST_FAILURE);
	}

    vtiming_gen_run(&VtcInst0, VIDEO_RESOLUTION_1080P, 2);
}

//void tpg_config(void)
//{
//	u32 Status;
//#if TPG_TEST
//	// tpg0
//	xil_printf("TPG Initializing\n\r");
//	Tpg_ConfigPtr = XV_tpg_LookupConfig(XPAR_V_TPG_0_DEVICE_ID);
//	if(Tpg_ConfigPtr == NULL)
//	{
//		Tpg.IsReady = 0;
//		return (XST_DEVICE_NOT_FOUND);
//	}
//	Status = XV_tpg_CfgInitialize(&Tpg,
//				Tpg_ConfigPtr, Tpg_ConfigPtr->BaseAddress);
//	if(Status != XST_SUCCESS)
//	{
//		xil_printf("ERR:: TPG0 Initialization failed %d\r\n", Status);
//		return(XST_FAILURE);
//	}
//	else
//	{
//		xil_printf("TPG0 Initialization ok\r\n");
//	}
//
//	XV_ConfigTpg(&Tpg, XTPG_BKGND_COLOR_BARS);
//	xil_printf("TPG0 started!\r\n");
//
////	// tpg1
////	xil_printf("TPG1 Initializing\n\r");
////	Tpg_ConfigPtr1 = XV_tpg_LookupConfig(XPAR_V_TPG_1_DEVICE_ID);
////	if(Tpg_ConfigPtr1 == NULL)
////	{
////		Tpg.IsReady = 0;
////		return (XST_DEVICE_NOT_FOUND);
////	}
////	Status = XV_tpg_CfgInitialize(&Tpg1,
////				Tpg_ConfigPtr1, Tpg_ConfigPtr1->BaseAddress);
////	if(Status != XST_SUCCESS)
////	{
////		xil_printf("ERR:: TPG1 Initialization failed %d\r\n", Status);
////		return(XST_FAILURE);
////	}
////	else
////	{
////		xil_printf("TPG1 Initialization ok\r\n");
////	}
////
////	XV_ConfigTpg(&Tpg1, XTPG_BKGND_HV_RAMP);
////	xil_printf("TPG1 started!\r\n");
//#else
//	// tpg0
//	xil_printf("TPG0 Initializing\n\r");
//
//    Status = XV_tpg_Initialize(&tpg_inst0, XPAR_V_TPG_0_DEVICE_ID);
//    if(Status!= XST_SUCCESS)
//    {
//    	xil_printf("TPG0 configuration failed\r\n");
////    	return(XST_FAILURE);
//    }
//
//    //Configure the TPG0
//    tpg_cfg(&tpg_inst0, 1080, 1920, colorFmtIn0, XTPG_BKGND_COLOR_BARS);
//
//    //Configure the moving box of the TPG0
//    tpg_box(&tpg_inst0, 50, 1);
//
//    //Start the TPG0
//    XV_tpg_EnableAutoRestart(&tpg_inst0);
//    XV_tpg_Start(&tpg_inst0);
//    xil_printf("TPG0 started!\r\n");
//
////    // tpg1
////	xil_printf("TPG1 Initializing\n\r");
////	Status = XV_tpg_Initialize(&tpg_inst1, XPAR_V_TPG_1_DEVICE_ID);
////	if(Status!= XST_SUCCESS)
////	{
////		xil_printf("TPG1 configuration failed\r\n");
////		return(XST_FAILURE);
////	}
////
////	//Configure the TPG1
////	tpg_cfg(&tpg_inst1, VIDEO_ROWS, VIDEO_COLUMNS, colorFmtIn1, XTPG_BKGND_COLOR_BARS);
////
////	//Configure the moving box of the TPG1
////	tpg_box(&tpg_inst1, 50, 1);
////
////	//Start the TPG1
////	XV_tpg_EnableAutoRestart(&tpg_inst1);
////	XV_tpg_Start(&tpg_inst1);
////	xil_printf("TPG1 started!\r\n");
//#endif
//}

void clear_display(void)
{
    //print("Initialize frame buffer data...");
	Xil_Out32(XPAR_AXI_VDMA_0_BASEADDR + 0x00, 0x8A);
    //Disable the data cache to initialize the frame buffer with a blue color
//    Xil_DCacheDisable();
    UINTPTR Addr1=FRAME_BUFFER_1,Addr2=FRAME_BUFFER_2,Addr3=FRAME_BUFFER_3;
    UINTPTR Addr4=FRAME_BUFFER_4,Addr5=FRAME_BUFFER_5,Addr6=FRAME_BUFFER_6;
    int line, column;
	for(line=0; line < 1080; line++)
	{
//		for(column=0; column < 1920*3/4; column++)
		for(column=0; column < 1440; column++)
		{
			Xil_Out32(Addr1, 0x0);
			Xil_Out32(Addr2, 0x0);
			Xil_Out32(Addr3, 0x0);

			Addr1+=4;
			Addr2+=4;
			Addr3+=4;
		}
	}
	memset((void*)Addr4, 0, 6220800);
	memset((void*)Addr5, 0, 6220800);
	memset((void*)Addr6, 0, 6220800);
//	print_no_link_notify();
	//vdma_config_blank();
    //Re-enable the data cache
//	Xil_DCacheEnable();
	Xil_DCacheFlush();
	print("Done\n\r");
}

void vdma_config(void)
{

#if _DMA_DBG_
	/* Start of VDMA Configuration */
    u32 bytePerPixels = 3;

//    int offset0 = 0; // (y*w+x)*Bpp
//    u32 stride0 = 1920;
//    u32 width0 = 640;
//    u32 height0 = 480;
//
//    int offset1 = 0; // (y*w+x)*Bpp
//    //offset1 = 960; // shift left
//    //offset1 = -960; // shift right
//    u32 stride1 = 1920;  // crop keeps write Stride
//    u32 width1 = 1920;
//    u32 height1 = 1080;

    int offset0 = 0; // (y*w+x)*Bpp

    u32 stride0 = 1920;
    u32 width0 = 1920;
    u32 height0 = 1080;

    int offset1 = 0; // (y*w+x)*Bpp
    u32 stride1 = 1920;  // crop keeps write Stride
    u32 width1 = 1920;
    u32 height1 = 1080;

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


//    /* Configure the Write interface (S2MM)*/
//    // S2MM Control Register
//    Xil_Out32(XPAR_AXI_VDMA_1_BASEADDR + 0x30, 0x8B);
//    //S2MM Start Address 1
//    Xil_Out32(XPAR_AXI_VDMA_1_BASEADDR + 0xAC, FRAME_BUFFER_1_1 + offset0);
//    //S2MM Start Address 2
//    Xil_Out32(XPAR_AXI_VDMA_1_BASEADDR + 0xB0, FRAME_BUFFER_1_2 + offset0);
//    //S2MM Start Address 3
//    Xil_Out32(XPAR_AXI_VDMA_1_BASEADDR + 0xB4, FRAME_BUFFER_1_3 + offset0);
//    //S2MM Frame delay / Stride register
//    Xil_Out32(XPAR_AXI_VDMA_1_BASEADDR + 0xA8, stride0*bytePerPixels);
//    // S2MM HSIZE register
//    Xil_Out32(XPAR_AXI_VDMA_1_BASEADDR + 0xA4, width0*bytePerPixels);
//    // S2MM VSIZE register
//    Xil_Out32(XPAR_AXI_VDMA_1_BASEADDR + 0xA0, height0);
//
//    /* Configure the Read interface (MM2S)*/
//    // MM2S Control Register
//    Xil_Out32(XPAR_AXI_VDMA_1_BASEADDR + 0x00, 0x8B);
//    // MM2S Start Address 1
//    Xil_Out32(XPAR_AXI_VDMA_1_BASEADDR + 0x5C, FRAME_BUFFER_1_1 + offset1);
//    // MM2S Start Address 2
//    Xil_Out32(XPAR_AXI_VDMA_1_BASEADDR + 0x60, FRAME_BUFFER_1_2 + offset1);
//    // MM2S Start Address 3
//    Xil_Out32(XPAR_AXI_VDMA_1_BASEADDR + 0x64, FRAME_BUFFER_1_3 + offset1);
//    // MM2S Frame delay / Stride register
//    Xil_Out32(XPAR_AXI_VDMA_1_BASEADDR + 0x58, stride1*bytePerPixels);
//    // MM2S HSIZE register
//    Xil_Out32(XPAR_AXI_VDMA_1_BASEADDR + 0x54, width1*bytePerPixels);
//    // MM2S VSIZE register
//    Xil_Out32(XPAR_AXI_VDMA_1_BASEADDR + 0x50, height1);
#else
    run_vdma_frame_buffer(&vdma0, VDMA_ID, VIDEO_COLUMNS, VIDEO_ROWS,
    				VDMA_BASE_ADDR,0,0,BOTH);
//    run_vdma_frame_buffer(&vdma1, VDMA1_ID, VIDEO_COLUMNS, VIDEO_ROWS,
//        				VDMA1_BASE_ADDR,0,0,BOTH);
#endif
	xil_printf("VDMA started!\r\n");
	/* End of VDMA Configuration */
}

int main()
{
    init_platform();

//    print("Hello World\n\r");
//    print("Successfully ran Hello World application");

    clkwiz_vtc_cfg();
//    tpg_config();
//    clear_display();
    vdma_config();

	while(1)
	{

	}

    cleanup_platform();
    return 0;
}
