/*******************************************************************************
 *
 * Copyright (C) 2017 Xilinx, Inc.  All rights reserved.
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
 * XILINX BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
 * WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF
 * OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 * SOFTWARE.
 *
 * Except as contained in this notice, the name of the Xilinx shall not be used
 * in advertising or otherwise to promote the sale, use or other dealings in
 * this Software without prior written authorization from Xilinx.
 *
 *******************************************************************************/
/*****************************************************************************/
/**
 *
 * @file xdpdma_video_example.c
 *
 *
 * This file contains a design example using the DPDMA driver (XDpDma)
 * This example demonstrates the use of DPDMA for displaying a Graphics Overlay
 *
 * @note
 *
 * None.
 *
 * <pre>
 * MODIFICATION HISTORY:
 *
 * Ver   Who Date     Changes
 * ----- --- -------- -----------------------------------------------
 * 1.0	aad 10/19/17	Initial Release
 * 1.1   aad 02/22/18    Fixed the header
 *</pre>
 *
 ******************************************************************************/

/***************************** Include Files *********************************/

#include "xil_exception.h"
#include "xil_printf.h"
#include "xil_cache.h"

#include "xdpdma.h"			/* DPDMA device driver */
#include "xscugic.h"		/* Interrupt controller device driver */
#include "xdppsu.h"			/* DP controller device driver */
#include "xavbuf.h"    		/* AVBUF is the video pipeline driver */
#include "xavbuf_clk.h"		/* Clock Driver for Video(VPLL) and Audio(RPLL) clocks */
#include "xscugic.h"		/* Interrupt controller device driver */

#include "dp.h"
#define VIDEO_COLUMNS 1920
#define VIDEO_ROWS 1080

/************************** Constant Definitions *****************************/
#define DPPSU_DEVICE_ID		XPAR_PSU_DP_DEVICE_ID
#define AVBUF_DEVICE_ID		XPAR_PSU_DP_DEVICE_ID
#define DPDMA_DEVICE_ID		XPAR_XDPDMA_0_DEVICE_ID
#define DPPSU_INTR_ID		151
#define DPDMA_INTR_ID		154
#define INTC_DEVICE_ID		XPAR_SCUGIC_0_DEVICE_ID

#define DPPSU_BASEADDR		XPAR_PSU_DP_BASEADDR
#define AVBUF_BASEADDR		XPAR_PSU_DP_BASEADDR
#define DPDMA_BASEADDR		XPAR_PSU_DPDMA_BASEADDR

#define BUFFERSIZE			1920 * 1080 * 4		/* HTotal * VTotal * BPP */
//#define LINESIZE			1920 * 4			/* HTotal * BPP */
//#define BUFFERSIZE          1920 * 1080 * 3     /* HTotal * VTotal * BPP */
#define FRAMESIZE           1920 * 1080 * 3
#define LINESIZE            1920 * 3            /* HTotal * BPP */
#define STRIDE				1920 * 4			/* The stride value should
													be aligned to 256*/

XDpPsu dppsu;
XDpDma dpdma;

static int dummy_user_data = 0;

/************************** Variable Declarations ***************************/
//u8 Frame[BUFFERSIZE] __attribute__ ((__aligned__(256)));
XDpDma_FrameBuffer FrameBuffer0;
XDpDma_FrameBuffer FrameBuffer1;
XDpDma_FrameBuffer FrameBuffer2;
/**************************** Type Definitions *******************************/

/*****************************************************************************/
/**
 *
 * Main function to call the DPDMA Video example.
 *
 * @param	None
 *
 * @return	XST_SUCCESS if successful, otherwise XST_FAILURE.
 *
 * @note		None
 *
 ******************************************************************************/
//int main()
//{
//	int Status;
//
//	Xil_DCacheDisable();
//	Xil_ICacheDisable();
//
//	xil_printf("DPDMA Generic Video Example Test \r\n");
//	Status = DpdmaVideoExample(&RunCfg);
//	if (Status != XST_SUCCESS) {
//			xil_printf("DPDMA Video Example Test Failed\r\n");
//			return XST_FAILURE;
//	}
//
//	xil_printf("Successfully ran DPDMA Video Example Test\r\n");
//
//    return XST_SUCCESS;
//}
/*****************************************************************************/
/**
 *
 * The purpose of this function is to illustrate how to use the XDpDma device
 * driver in Graphics overlay mode.
 *
 * @param	RunCfgPtr is a pointer to the application configuration structure.
 *
 * @return	XST_SUCCESS if successful, else XST_FAILURE.
 *
 * @note		None.
 *
 *****************************************************************************/
int DpdmaVideo(Run_Config *RunCfgPtr, UINTPTR Frame)

{
    u32 Status;
    /* Initialize the application configuration */
    InitRunConfig(RunCfgPtr);
    Status = InitDpDmaSubsystem(RunCfgPtr);
    if(Status != XST_SUCCESS)
    {
        return XST_FAILURE;
    }

    SetupInterrupts(RunCfgPtr);
    xil_printf("Generating Overlay.....\n\r");
    GraphicsOverlay(Frame, RunCfgPtr);

    /* Populate the FrameBuffer structure with the frame attributes */
    FrameBuffer0.Address = (INTPTR) Frame;
    FrameBuffer0.Stride = STRIDE;
    FrameBuffer0.LineSize = LINESIZE;
//	FrameBuffer0.Size = BUFFERSIZE;
    FrameBuffer0.Size = FRAMESIZE;

    FrameBuffer1.Address = (INTPTR) Frame+0x800000;
    FrameBuffer1.Stride = STRIDE;
    FrameBuffer1.LineSize = LINESIZE;
//  FrameBuffer1.Size = BUFFERSIZE;
    FrameBuffer1.Size = FRAMESIZE;

    FrameBuffer2.Address = (INTPTR) Frame+0x800000*2;
    FrameBuffer2.Stride = STRIDE;
    FrameBuffer2.LineSize = LINESIZE;
//  FrameBuffer2.Size = BUFFERSIZE;
    FrameBuffer2.Size = FRAMESIZE;

    //SetupInterrupts(RunCfgPtr); //上面	
//	XDpDma_DisplayGfxFrameBuffer(RunCfgPtr->DpDmaPtr, &FrameBuffer0);
	XDpDma_DisplayVideoFrameBuffer(RunCfgPtr->DpDmaPtr, &FrameBuffer0, &FrameBuffer1, &FrameBuffer2);

    return XST_SUCCESS;
}

/*****************************************************************************/
/**
 *
 * The purpose of this function is to initialize the application configuration.
 *
 * @param	RunCfgPtr is a pointer to the application configuration structure.
 *
 * @return	None.
 *
 * @note		None.
 *
 *****************************************************************************/
void InitRunConfig(Run_Config *RunCfgPtr)
{
    /* Initial configuration parameters. */
    RunCfgPtr->DpPsuPtr = &DpPsu;
    RunCfgPtr->IntrPtr = &Intr;
    RunCfgPtr->AVBufPtr = &AVBuf;
    RunCfgPtr->DpDmaPtr = &DpDma;
    RunCfgPtr->VideoMode = XVIDC_VM_1920x1080_60_P;
    RunCfgPtr->Bpc = XVIDC_BPC_8;
    RunCfgPtr->ColorEncode = XDPPSU_CENC_RGB;
    RunCfgPtr->UseMaxCfgCaps = 1;
    RunCfgPtr->LaneCount = LANE_COUNT_2;
    RunCfgPtr->LinkRate = LINK_RATE_540GBPS;
    RunCfgPtr->EnSynchClkMode = 0;
    RunCfgPtr->UseMaxLaneCount = 1;
    RunCfgPtr->UseMaxLinkRate = 1;
}

/*****************************************************************************/
/**
 *
 * The purpose of this function is to initialize the DP Subsystem (XDpDma,
 * XAVBuf, XDpPsu)
 *
 * @param	RunCfgPtr is a pointer to the application configuration structure.
 *
 * @return	None.
 *
 * @note		None.
 *
 *****************************************************************************/
int InitDpDmaSubsystem(Run_Config *RunCfgPtr)
{
    u32 Status;
    XDpPsu *DpPsuPtr = RunCfgPtr->DpPsuPtr;
    XDpPsu_Config *DpPsuCfgPtr;
    XAVBuf *AVBufPtr = RunCfgPtr->AVBufPtr;
    XDpDma_Config *DpDmaCfgPtr;
    XDpDma *DpDmaPtr = RunCfgPtr->DpDmaPtr;

    /* Initialize DisplayPort driver. */
    DpPsuCfgPtr = XDpPsu_LookupConfig(DPPSU_DEVICE_ID);
    XDpPsu_CfgInitialize(DpPsuPtr, DpPsuCfgPtr, DpPsuCfgPtr->BaseAddr);
    /* Initialize Video Pipeline driver */
    XAVBuf_CfgInitialize(AVBufPtr, DpPsuPtr->Config.BaseAddr, AVBUF_DEVICE_ID);

    /* Initialize the DPDMA driver */
    DpDmaCfgPtr = XDpDma_LookupConfig(DPDMA_DEVICE_ID);
    XDpDma_CfgInitialize(DpDmaPtr, DpDmaCfgPtr);

    /* Initialize the DisplayPort TX core. */
    Status = XDpPsu_InitializeTx(DpPsuPtr);
    if(Status != XST_SUCCESS)
    {
        return XST_FAILURE;
    }
#if 1
    /* Set the format graphics frame for DPDMA*/
//	Status = XDpDma_SetGraphicsFormat(DpDmaPtr, RGBA8888);
    Status = XDpDma_SetGraphicsFormat(DpDmaPtr, BGR888);
    //Status = XDpDma_SetGraphicsFormat(DpDmaPtr, RGB888_GFX);
    if(Status != XST_SUCCESS)
    {
        return XST_FAILURE;
    }
#endif
#if 1
    Status = XDpDma_SetVideoFormat(DpDmaPtr, RGB888);
    if(Status != XST_SUCCESS)
    {
        return XST_FAILURE;
    }
#endif
#if 0
    /* Set the format graphics frame for Video Pipeline*/
//	Status = XAVBuf_SetInputNonLiveGraphicsFormat(AVBufPtr, RGBA8888);
    Status = XAVBuf_SetInputNonLiveGraphicsFormat(AVBufPtr, BGR888);
    if(Status != XST_SUCCESS)
    {
        return XST_FAILURE;
    }
#endif
#if 1
    Status = XAVBuf_SetInputNonLiveVideoFormat(AVBufPtr, RGB888);
    if(Status != XST_SUCCESS)
    {
        return XST_FAILURE;
    }
#endif
    /* Set the QOS for Video */
    XDpDma_SetQOS(RunCfgPtr->DpDmaPtr, 11);
    /* Enable the Buffers required by Graphics Channel */
//    XAVBuf_EnableGraphicsBuffers(RunCfgPtr->AVBufPtr, 1);
    XAVBuf_EnableVideoBuffers(RunCfgPtr->AVBufPtr, 1);
    /* Set the output Video Format */
    XAVBuf_SetOutputVideoFormat(AVBufPtr, RGB_8BPC);

    /* Select the Input Video Sources.
     * Here in this example we are going to demonstrate
     * graphics overlay over the TPG video.
     */
    XAVBuf_InputVideoSelect(AVBufPtr, XAVBUF_VIDSTREAM1_NONLIVE, XAVBUF_VIDSTREAM2_NONE);
    /* Configure Video pipeline for graphics channel */
    //XAVBuf_ConfigureGraphicsPipeline(AVBufPtr);
    XAVBuf_ConfigureVideoPipeline(AVBufPtr);
    /* Configure the output video pipeline */
    XAVBuf_ConfigureOutputVideo(AVBufPtr);
    /* Disable the global alpha, since we are using the pixel based alpha */
//	XAVBuf_SetBlenderAlpha(AVBufPtr, 0, 0);
    XAVBuf_SetBlenderAlpha(AVBufPtr, 127, 1);
    /* Set the clock mode */
    XDpPsu_CfgMsaEnSynchClkMode(DpPsuPtr, RunCfgPtr->EnSynchClkMode);
    /* Set the clock source depending on the use case.
     * Here for simplicity we are using PS clock as the source*/
    XAVBuf_SetAudioVideoClkSrc(AVBufPtr, XAVBUF_PS_CLK, XAVBUF_PS_CLK);
    /* Issue a soft reset after selecting the input clock sources */
    XAVBuf_SoftReset(AVBufPtr);

    return XST_SUCCESS;
}

/*****************************************************************************/
/**
 *
 * The purpose of this function is to setup call back functions for the DP
 * controller interrupts.
 *
 * @param	RunCfgPtr is a pointer to the application configuration structure.
 *
 * @return	None.
 *
 * @note		None.
 *
 *****************************************************************************/
void SetupInterrupts(Run_Config *RunCfgPtr)
{
    XDpPsu *DpPsuPtr = RunCfgPtr->DpPsuPtr;
    XScuGic *IntrPtr = RunCfgPtr->IntrPtr;
    XScuGic_Config *IntrCfgPtr;
    u32 IntrMask = XDPPSU_INTR_HPD_IRQ_MASK | XDPPSU_INTR_HPD_EVENT_MASK;

    XDpPsu_WriteReg(DpPsuPtr->Config.BaseAddr, XDPPSU_INTR_DIS, 0xFFFFFFFF);
    XDpPsu_WriteReg(DpPsuPtr->Config.BaseAddr, XDPPSU_INTR_MASK, 0xFFFFFFFF);

    XDpPsu_SetHpdEventHandler(DpPsuPtr, DpPsu_IsrHpdEvent, RunCfgPtr);
    XDpPsu_SetHpdPulseHandler(DpPsuPtr, DpPsu_IsrHpdPulse, RunCfgPtr);

    /* Initialize interrupt controller driver. */
    IntrCfgPtr = XScuGic_LookupConfig(INTC_DEVICE_ID);
    XScuGic_CfgInitialize(IntrPtr, IntrCfgPtr, IntrCfgPtr->CpuBaseAddress);

    /* Register ISRs. */
    XScuGic_Connect(IntrPtr, DPPSU_INTR_ID, (Xil_InterruptHandler) XDpPsu_HpdInterruptHandler, RunCfgPtr->DpPsuPtr);

    /* Trigger DP interrupts on rising edge. */
    XScuGic_SetPriorityTriggerType(IntrPtr, DPPSU_INTR_ID, 0x0, 0x03);

    /* Connect DPDMA Interrupt */
    XScuGic_Connect(IntrPtr, DPDMA_INTR_ID, (Xil_ExceptionHandler) XDpDma_InterruptHandler, RunCfgPtr->DpDmaPtr);

    /* Initialize exceptions. */
    Xil_ExceptionInit();
    Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_IRQ_INT, (Xil_ExceptionHandler) XScuGic_DeviceInterruptHandler,
    INTC_DEVICE_ID);

    /* Enable exceptions for interrupts. */
    Xil_ExceptionEnableMask(XIL_EXCEPTION_IRQ);
    Xil_ExceptionEnable()
    ;

    /* Enable DP interrupts. */
    XScuGic_Enable(IntrPtr, DPPSU_INTR_ID);
    XDpPsu_WriteReg(DpPsuPtr->Config.BaseAddr, XDPPSU_INTR_EN, IntrMask);

    /* Enable DPDMA Interrupts */
    XScuGic_Enable(IntrPtr, DPDMA_INTR_ID);
    XDpDma_InterruptEnable(RunCfgPtr->DpDmaPtr, XDPDMA_IEN_VSYNC_INT_MASK);

}
/*****************************************************************************/
/**
 *
 * The purpose of this function is to generate a Graphics frame of the format
 * RGBA8888 which generates an overlay on 1/2 of the bottom of the screen.
 * This is just to illustrate the functionality of the graphics overlay.
 *
 * @param	RunCfgPtr is a pointer to the application configuration structure.
 * @param	Frame is a pointer to a buffer which is going to be populated with
 * 			rendered frame
 *
 * @return	Returns a pointer to the frame.
 *
 * @note		None.
 *
 *****************************************************************************/
u8 *GraphicsOverlay(u8* Frame, Run_Config *RunCfgPtr)
{
    u64 Index;
//    u32 *RGBA;
//    RGBA = (u32 *) Frame;
//    int24 *RGB;
//    int24 color_s;
//    color_s.data=0xFF0000;
//    RGB = (int24 *)Frame;

    u8* ADDR = Frame;

    /*
     * Red at the top half
     * Alpha = 0x0F
     * */
//    for(Index = 0; Index < (BUFFERSIZE / 4) / 2; Index++)
//    {
//        RGBA[Index] = 0xFF0000FF;
//    }
//    for(; Index < BUFFERSIZE / 4; Index++)
//    {
//        /*
//         * Green at the bottom half
//         * Alpha = 0xF0
//         * */
//        RGBA[Index] = 0xFF00FF00;
//    }
//    for(Index = 0; Index < (BUFFERSIZE) / 2; Index++)
//    {
////        RGBA[Index] = 0xFF0000FF;
////        RGB[Index].data = color_s.data;
////        Xil_Out24(&RGB[Index], color_s);
//    }
//    color_s.data=0x0000FF;
//    for(; Index < BUFFERSIZE; Index++)
//    {
////        RGB[Index].data = color_s.data;
////        Xil_Out24(&RGB[Index], color_s);
//    }
    int line, column;
    for(line = 0; line < 1080 / 2; line++)
    {
        ADDR = Frame + line * STRIDE + 0;
        for(column = 0; column < 1920; column++)
        {
            Xil_Out8(ADDR, 0x00);
            ADDR += 3;
        }
        ADDR = Frame + line * STRIDE + 1;
        for(column = 0; column < 1920; column++)
        {
            Xil_Out8(ADDR, 0xff);
            ADDR += 3;
        }
        ADDR = Frame + line * STRIDE + 2;
        for(column = 0; column < 1920; column++)
        {
            Xil_Out8(ADDR, 0x00);
            ADDR += 3;
        }
    }
    for(; line < 1080; line++)
    {
        ADDR = Frame + line * STRIDE + 0;
        for(column = 0; column < 1920; column++)
        {
            Xil_Out8(ADDR, 0x00);
            ADDR += 3;
        }
        ADDR = Frame + line * STRIDE + 1;
        for(column = 0; column < 1920; column++)
        {
            Xil_Out8(ADDR, 0x00);
            ADDR += 3;
        }
        ADDR = Frame + line * STRIDE + 2;
        for(column = 0; column < 1920; column++)
        {
            Xil_Out8(ADDR, 0xff);
            ADDR += 3;
        }
    }

    asm("NOP");
    return Frame;
}

int displayport_init() {
	XDpPsu_Config *dppsu_config;
	XAVBuf avbuf;
	XDpDma_Config *dpdma_config;

	memset(&avbuf, 0, sizeof(XAVBuf)); // XAVBuf_CfgInitialize does not properly initialize

	if ( (dppsu_config = XDpPsu_LookupConfig(XPAR_PSU_DP_DEVICE_ID)) == NULL) {
		xil_printf("XDpPsu_LookupConfig() failed\r\n");
		return XST_FAILURE;
	}
	XDpPsu_CfgInitialize(&dppsu, dppsu_config, dppsu_config->BaseAddr);
	XAVBuf_CfgInitialize(&avbuf, dppsu_config->BaseAddr, XPAR_PSU_DP_DEVICE_ID);
	if ( (dpdma_config = XDpDma_LookupConfig(XPAR_PSU_DPDMA_DEVICE_ID)) == NULL) {
		xil_printf("XDpDma_LookupConfig() failed\r\n");
		return XST_FAILURE;
	}
	XDpDma_CfgInitialize(&dpdma, dpdma_config);

	if (XDpPsu_InitializeTx(&dppsu) != XST_SUCCESS) {
		xil_printf("XDpPsu_InitializeTx() failed\r\n");
		return XST_FAILURE;
	}

	XDpDma_SetQOS(&dpdma, 11);
	if (XAVBuf_SetInputLiveVideoFormat(&avbuf, INPUT_VIDEO_FORMAT) != XST_SUCCESS) {
		xil_printf("XAVBuf_SetInputLiveVideoFormat() failed\r\n");
		return XST_FAILURE;
	}
	XAVBuf_EnableVideoBuffers(&avbuf, 1);
	if (XAVBuf_SetOutputVideoFormat(&avbuf, INPUT_VIDEO_FORMAT) != XST_SUCCESS) {
		xil_printf("XAVBuf_SetOutputVideoFormat() failed\r\n");
		return XST_FAILURE;
	}
	XAVBuf_InputVideoSelect(&avbuf, XAVBUF_VIDSTREAM1_LIVE, XAVBUF_VIDSTREAM2_NONE);
	XAVBuf_ConfigureOutputVideo(&avbuf);
	XAVBuf_SetBlenderAlpha(&avbuf, 0, 0); 	// Disable the global alpha
	XDpPsu_CfgMsaEnSynchClkMode(&dppsu, 0);
	XAVBuf_SetAudioVideoClkSrc(&avbuf, XAVBUF_PL_CLK, XAVBUF_PS_CLK);
	XAVBuf_SoftReset(&avbuf);

	xil_printf("Displayport initialized\r\n");

	return XST_SUCCESS;
}

int displayport_setup_interrupts() {
	XScuGic	ic;
	XScuGic_Config *ic_config;

	u32 interrupt_mask = XDPPSU_INTR_HPD_IRQ_MASK | XDPPSU_INTR_HPD_EVENT_MASK;

	XDpPsu_WriteReg(dppsu.Config.BaseAddr, XDPPSU_INTR_DIS, 0xFFFFFFFF);
	XDpPsu_WriteReg(dppsu.Config.BaseAddr, XDPPSU_INTR_MASK, 0xFFFFFFFF);

	XDpPsu_SetHpdEventHandler(&dppsu, displayport_hpd_event_isr, &dummy_user_data);
	XDpPsu_SetHpdPulseHandler(&dppsu, displayport_hpd_pulse_isr, &dummy_user_data);

	if ( (ic_config = XScuGic_LookupConfig(XPAR_SCUGIC_0_DEVICE_ID)) == NULL) {
		xil_printf("XScuGic_LookupConfig() failed\r\n");
		return XST_FAILURE;
	}
	if (XScuGic_CfgInitialize(&ic, ic_config, ic_config->CpuBaseAddress) != XST_SUCCESS) {
		xil_printf("XScuGic_CfgInitialize() failed\r\n");
		return XST_FAILURE;
	}

	/* Register ISRs. */
	if (XScuGic_Connect(&ic, DPPSU_INTR_ID,
			(Xil_InterruptHandler) XDpPsu_HpdInterruptHandler, &dppsu) != XST_SUCCESS) {
		xil_printf("XScuGic_Connect() failed\r\n");
		return XST_FAILURE;
	}

	/* Trigger DP interrupts on rising edge. */
	XScuGic_SetPriorityTriggerType(&ic, DPPSU_INTR_ID, 0x0, 0x03);

	/* Connect DPDMA Interrupt */
	if (XScuGic_Connect(&ic, DPDMA_INTR_ID,
			(Xil_ExceptionHandler) XDpDma_InterruptHandler, &dppsu) != XST_SUCCESS) {
		xil_printf("XScuGic_Connect() failed\r\n");
		return XST_FAILURE;
	}

	/* Initialize exceptions. */
	Xil_ExceptionInit();
	Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_IRQ_INT,
			(Xil_ExceptionHandler) XScuGic_DeviceInterruptHandler,
			XPAR_SCUGIC_0_DEVICE_ID);

	/* Enable exceptions for interrupts. */
	Xil_ExceptionEnableMask(XIL_EXCEPTION_IRQ);
	Xil_ExceptionEnable();

	/* Enable DP interrupts. */
	XScuGic_Enable(&ic, DPPSU_INTR_ID);
	XDpPsu_WriteReg(dppsu.Config.BaseAddr, XDPPSU_INTR_EN, interrupt_mask);

	/* Enable DPDMA Interrupts */
	XScuGic_Enable(&ic, DPDMA_INTR_ID);
	XDpDma_InterruptEnable(&dpdma, XDPDMA_IEN_VSYNC_INT_MASK);

	return XST_SUCCESS;
}

void displayport_hpd_event_isr() {
	u8 aux_data = 0x1;
	u8 count = 0;
	u32 status;

	xil_printf("Displayport hot-plug event detected\r\n");

	XDpPsu_EnableMainLink(&dppsu, 0);

	if (!XDpPsu_IsConnected(&dppsu)) {
		xil_printf("Displayport monitor disconnected.\n\r");
		return;
	}
	else {
		xil_printf("Displayport monitor connected\n\r");
	}

	if (XDpPsu_AuxWrite(&dppsu, XDPPSU_DPCD_SET_POWER_DP_PWR_VOLTAGE, 1, &aux_data) != XST_SUCCESS) {
		xil_printf("\t! 1st power wake-up - AUX write failed.\n\r");
	}
	if (XDpPsu_AuxWrite(&dppsu, XDPPSU_DPCD_SET_POWER_DP_PWR_VOLTAGE, 1, &aux_data) != XST_SUCCESS) {
		xil_printf("\t! 2nd power wake-up - AUX write failed.\n\r");
	}

	do {
		usleep(100000);
		count++;

		status = display_port_hpd_train();
		if (status == XST_DEVICE_NOT_FOUND) {
			xil_printf("Lost connection\n\r");
			return;
		}
		else if (status != XST_SUCCESS)
			continue;

		displayport_setup_video_stream();
		XDpPsu_EnableMainLink(&dppsu, 1);

		status = XDpPsu_CheckLinkStatus(&dppsu, dppsu.LinkConfig.LaneCount);
		if (status == XST_DEVICE_NOT_FOUND)
			return;
	} while ((status != XST_SUCCESS) && (count < 2));
}

u32 display_port_hpd_train() {
	XDpPsu_LinkConfig *link_config = &dppsu.LinkConfig;

	if (XDpPsu_GetRxCapabilities(&dppsu) != XST_SUCCESS) {
		xil_printf("\t! Error getting RX caps.\n\r");
		return XST_FAILURE;
	}

	if (XDpPsu_SetEnhancedFrameMode(&dppsu,
			link_config->SupportEnhancedFramingMode ? 1 : 0) != XST_SUCCESS) {
		xil_printf("\t! EFM set failed.\n\r");
		return XST_FAILURE;
	}

	if (XDpPsu_SetLaneCount(&dppsu, link_config->MaxLaneCount) != XST_SUCCESS) {
		xil_printf("\t! Lane count set failed.\n\r");
		return XST_FAILURE;
	}

	if (XDpPsu_SetLinkRate(&dppsu, link_config->MaxLinkRate) != XST_SUCCESS) {
		xil_printf("\t! Link rate set failed.\n\r");
		return XST_FAILURE;
	}

	if (XDpPsu_SetDownspread(&dppsu, link_config->SupportDownspreadControl)
			!= XST_SUCCESS) {
		xil_printf("\t! Setting downspread failed.\n\r");
		return XST_FAILURE;
	}

	xil_printf("Lane count = %d\n\r", dppsu.LinkConfig.LaneCount);
	xil_printf("Link rate = ");
	switch (dppsu.LinkConfig.LinkRate) {
	case 0x06:
		xil_printf("162Gbps\r\n");
		break;
	case 0x0A:
		xil_printf("270Gbps\r\n");
		break;
	case 0x14:
		xil_printf("540Gbps\r\n");
		break;
	default:
		xil_printf("Unknown\r\n");
	}

	// Link training sequence is done
	xil_printf("Starting Training...\n\r");
	if (XDpPsu_EstablishLink(&dppsu) == XST_SUCCESS)
		xil_printf("Training succeeded.\n\r");
	else
		xil_printf("\t! Training failed.\n\r");

	return XST_SUCCESS;
}

void displayport_setup_video_stream() {
	XDpPsu_MainStreamAttributes *msa_config = &dppsu.MsaConfig;

	XDpPsu_SetColorEncode(&dppsu, COLOR_ENCODING);
	XDpPsu_CfgMsaSetBpc(&dppsu, BPC);
	XDpPsu_CfgMsaUseStandardVideoMode(&dppsu, VIDEO_MODE);

	XAVBuf_SetPixelClock(msa_config->PixelClockHz);

	/* Reset the transmitter. */
	XDpPsu_WriteReg(dppsu.Config.BaseAddr, XDPPSU_SOFT_RESET, 0x1);
	usleep(10);
	XDpPsu_WriteReg(dppsu.Config.BaseAddr, XDPPSU_SOFT_RESET, 0x0);

	XDpPsu_SetMsaValues(&dppsu);
	/* Issuing a soft-reset (AV_BUF_SRST_REG). */
	XDpPsu_WriteReg(dppsu.Config.BaseAddr, 0xB124, 0x3); // Assert reset.
	usleep(10);
	XDpPsu_WriteReg(dppsu.Config.BaseAddr, 0xB124, 0x0); // De-ssert reset.

	XDpPsu_EnableMainLink(&dppsu, 1);
}

void displayport_hpd_pulse_isr() {
	u32 status;
	u8 count = 0;

	xil_printf("Displayport hot-plug pulse detected\r\n");

	if (XDpPsu_CheckLinkStatus(&dppsu, dppsu.LinkConfig.LaneCount) == XST_DEVICE_NOT_FOUND) {
		xil_printf("Lost connection .......... HPD pulse\n\r");
		return;
	}

	xil_printf("Re-training required.\n\r");

	XDpPsu_EnableMainLink(&dppsu, 0);

	do {
		count++;

		status = display_port_hpd_train();
		if (status == XST_DEVICE_NOT_FOUND) {
			xil_printf("Lost connection .......... HPD pulse\n\r");
			return;
		}
		else if (status != XST_SUCCESS) {
			continue;
		}

		displayport_setup_video_stream();
		XDpPsu_EnableMainLink(&dppsu, 1);

		status = XDpPsu_CheckLinkStatus(&dppsu, dppsu.LinkConfig.LaneCount);
		if (status == XST_DEVICE_NOT_FOUND) {
			xil_printf("Lost connection .......... HPD pulse\n\r");
			return;
		}
	} while ((status != XST_SUCCESS) && (count < 2));
}

