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
#include "sleep.h"
#include "platform.h"
#include "xparameters.h"
#include "xil_printf.h"
#include "xgpio.h"
#include "xclk_wiz.h"
//#include "xv_tpg.h"
//#include "xvidc.h"
#include "xvtc.h"
#include "video_resolution.h"
#include "vtiming_gen.h"
//#include "PS_i2c.h"
#include "vdma_api.h"
#include "xcsiss.h"
#include "demosaic.h"
#include "PS_i2c.h"
#include "ov5640.h"

#define VDMA_ID          		XPAR_AXIVDMA_0_DEVICE_ID
#define VDMA_BASE_ADDR 			0x08000000
#if P1080 == 1
#define SCREEN_X				1920
#define SCREEN_Y				1080
int resolution_id = VIDEO_RESOLUTION_1080P;
#else
#define SCREEN_X				1280
#define SCREEN_Y				720
int resolution_id = VIDEO_RESOLUTION_720P;
#endif
#define CLK_LOCK			1
XClk_Wiz ClkWiz_Dynamic; /* The instance of the ClkWiz_Dynamic */

//XV_tpg Tpg;
//XV_tpg_Config *Tpg_ConfigPtr;
//XTpg_PatternId      Pattern;      /**< Video pattern */

XVtc		VtcInst;		/**< Instance of the VTC core. */
XVtc_Config *VtcConfig;

//XIicPs IicInstance;
XGpio GpioOutput;

XAxiVdma     vdma;

XCsiSs CsiRxSs;

XIicPs IicInstance;

/*****************************************************************************/
/**
*
* This function generates video pattern.
*
* @param  IsPassThrough specifies either pass-through or colorbar mode.
*
* @return None.
*
* @note   None.
*
******************************************************************************/
#if 0
void XV_ConfigTpg(XV_tpg *InstancePtr)
{
  XV_tpg *pTpg = InstancePtr;

//  XVidC_VideoStream *HdmiTxSsVidStreamPtr;
//  HdmiTxSsVidStreamPtr = XV_HdmiTxSs_GetVideoStream(&HdmiTxSs);

//  u32 width, height;
//  XVidC_VideoMode VideoMode;
//  VideoMode = HdmiTxSsVidStreamPtr->VmId;
//
//  if ((VideoMode == XVIDC_VM_1440x480_60_I) ||
//      (VideoMode == XVIDC_VM_1440x576_50_I) )
//  {
//	    //NTSC/PAL Support
//	    width  = HdmiTxSsVidStreamPtr->Timing.HActive/2;
//	    height = HdmiTxSsVidStreamPtr->Timing.VActive;
//  }
//  else {
//	    width  = HdmiTxSsVidStreamPtr->Timing.HActive;
//	    height = HdmiTxSsVidStreamPtr->Timing.VActive;
//  }

  //Stop TPG
  XV_tpg_DisableAutoRestart(pTpg);


  XV_tpg_Set_height(pTpg, 1080);
  xil_printf("the height is %d.\r\n",XV_tpg_Get_height(pTpg));
  XV_tpg_Set_width(pTpg, 1920);
  xil_printf("the width is %d.\r\n",XV_tpg_Get_width(pTpg));

  XV_tpg_Set_colorFormat(pTpg, XVIDC_CSF_RGB);
//  XV_tpg_Set_colorFormat(pTpg, XVIDC_CSF_YCRCB_422);
  XV_tpg_Set_bckgndId(pTpg, XTPG_BKGND_COLOR_BARS);
  //XV_tpg_Set_bckgndId(pTpg, Pattern);
  XV_tpg_Set_ovrlayId(pTpg, 0);

//  XV_tpg_Set_enableInput(pTpg, IsPassThrough);

//  if (IsPassThrough) {
//	  XV_tpg_Set_passthruStartX(pTpg,0);
//	  XV_tpg_Set_passthruStartY(pTpg,0);
//	  XV_tpg_Set_passthruEndX(pTpg,width);
//	  XV_tpg_Set_passthruEndY(pTpg,height);
//  }


  //move box
  XV_tpg_Set_ovrlayId(pTpg, 1);
  XV_tpg_Set_boxSize(pTpg,80);
  //if in YUV mode, R->Y,G->U,B->V,wrong ,it is g b r
  XV_tpg_Set_boxColorR(pTpg,255);
  XV_tpg_Set_boxColorG(pTpg,255);
  XV_tpg_Set_boxColorB(pTpg,255);
  XV_tpg_Set_motionSpeed(pTpg,1);



  //Start TPG
  XV_tpg_EnableAutoRestart(pTpg);
  XV_tpg_Start(pTpg);

  xil_printf("INFO: TPG configured\r\n");
}
#endif
/*****************************************************************************/
/**
*
* This is the Wait_For_Lock function, it will wait for lock to settle change
* frequency value
*
* @param	CfgPtr_Dynamic provides pointer to clock wizard dynamic config
*
* @return
*		- Error 0 for pass scenario
*		- Error > 0 for failure scenario
*
* @note		None
*
******************************************************************************/
int Wait_For_Lock(XClk_Wiz_Config *CfgPtr_Dynamic)
{
	u32 Count = 0;
	u32 Error = 0;

	while(!(*(u32 *)(CfgPtr_Dynamic->BaseAddr + 0x04) & CLK_LOCK)) {
		if(Count == 10000) {
			Error++;
			break;
		}
		Count++;
        }
    return Error;
}

/*****************************************************************************/
/**
*
* XClk_Wiz wizard dynamic reconfig.
*
* @param	None.
*
* @return
*		- XST_SUCCESS if XClk_Wiz dynamic reconfig ran successfully.
*		- XST_FAILURE if XClk_Wiz dynamic reconfig failed.
*
* @note		None.
*
****************************************************************************/
int XClk_Wiz_dynamic_reconfig()
{
	XClk_Wiz_Config *CfgPtr_Dynamic;
    u32 Count = 0;
    u32 Divide = 0;
    u32 Multiply_Int =0;
    u32 Multiply_Frac =0;
    u32 Divide0_Int = 0;
    u32 Divide0_Frac = 0;
    u32 Divide1_Int = 0;
	u32 Divide1_Frac = 0;
	u32 Divide2_Int = 0;
	u32 Divide2_Frac = 0;
    int Status;

	/*
	 * Get the CLK_WIZ Dynamic reconfiguration driver instance
	 */
	CfgPtr_Dynamic = XClk_Wiz_LookupConfig(XPAR_CLK_WIZ_0_DEVICE_ID);
	if (!CfgPtr_Dynamic) {
		return XST_FAILURE;
	}

	/*
	 * Initialize the CLK_WIZ Dynamic reconfiguration driver
	 */
	Status = XClk_Wiz_CfgInitialize(&ClkWiz_Dynamic, CfgPtr_Dynamic,
		 CfgPtr_Dynamic->BaseAddr);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}


	Status = Wait_For_Lock(CfgPtr_Dynamic);
	if(Status) {
		xil_printf("\n ERROR: Clock is not locked for default frequency" \
	" : 0x%x\n\r", *(u32 *)(CfgPtr_Dynamic->BaseAddr + 0x04) & CLK_LOCK);
	 }

	/* SW reset applied */
	*(u32 *)(CfgPtr_Dynamic->BaseAddr + 0x00) = 0xA;

	if(*(u32 *)(CfgPtr_Dynamic->BaseAddr + 0x04) & CLK_LOCK) {
		xil_printf("\n ERROR: Clock is locked : 0x%x \t expected "\
	  "0x00\n\r", *(u32 *)(CfgPtr_Dynamic->BaseAddr + 0x04) & CLK_LOCK);
	}

	/* Wait cycles after SW reset */
	for(Count = 0; Count < 2000; Count++);

	Status = Wait_For_Lock(CfgPtr_Dynamic);
	if(Status) {
		  xil_printf("\n ERROR: Clock is not locked after SW reset :"
		  "0x%x \t Expected  : 0x1\n\r",
		  *(u32 *)(CfgPtr_Dynamic->BaseAddr + 0x04) & CLK_LOCK);
	}
	// VCO = freq_in * 37.125 / 5
#if P1080 == 1
	Multiply_Int = 37;
	Multiply_Frac = 125;
	Divide = 5;
	Divide0_Int = 5;
	Divide0_Frac = 0;
	Divide1_Int = 1;
	Divide1_Frac = 0;
#else
	Multiply_Int = 37;
	Multiply_Frac = 125;
	Divide = 5;
	Divide0_Int = 10;
	Divide0_Frac = 0;
	Divide1_Int = 2;
	Divide1_Frac = 0;
#endif
	/* Configuring Multiply and Divide values */
	*(u32 *)(CfgPtr_Dynamic->BaseAddr + 0x200) = (Multiply_Frac << 16) | (Multiply_Int << 8) | Divide;
	*(u32 *)(CfgPtr_Dynamic->BaseAddr + 0x204) = 0x00;

	// freq_out0 = VCO / 5


    /* Configuring Multiply and Divide values */
    *(u32 *)(CfgPtr_Dynamic->BaseAddr + 0x208) = (Divide0_Frac << 8) | Divide0_Int;
    *(u32 *)(CfgPtr_Dynamic->BaseAddr + 0x20C) = 0x00;

	// freq_out1 = VCO / 2

    /* Configuring Multiply and Divide values */
    *(u32 *)(CfgPtr_Dynamic->BaseAddr + 0x214) = (Divide1_Frac << 8) | Divide1_Int;
    *(u32 *)(CfgPtr_Dynamic->BaseAddr + 0x218) = 0x00;

    /* Load Clock Configuration Register values */
    *(u32 *)(CfgPtr_Dynamic->BaseAddr + 0x25C) = 0x07;

    if(*(u32 *)(CfgPtr_Dynamic->BaseAddr + 0x04) & CLK_LOCK) {
        xil_printf("\n ERROR: Clock is locked : 0x%x \t expected "
	    "0x00\n\r", *(u32 *)(CfgPtr_Dynamic->BaseAddr + 0x04) & CLK_LOCK);
     }

	/* Clock Configuration Registers are used for dynamic reconfiguration */
	*(u32 *)(CfgPtr_Dynamic->BaseAddr + 0x25C) = 0x02;

	Status = Wait_For_Lock(CfgPtr_Dynamic);
    if(Status)
    {
        xil_printf("\n ERROR: Clock is not locked : 0x%x \t Expected "\
        		": 0x1\n\r", *(u32 *)(CfgPtr_Dynamic->BaseAddr + 0x04) & CLK_LOCK);
    }

	return XST_SUCCESS;
}


u32 InitializeCsiRxSs(void)
{
	u32 Status = 0;
	XCsiSs_Config *CsiRxSsCfgPtr = NULL;

	CsiRxSsCfgPtr = XCsiSs_LookupConfig(XPAR_CSISS_0_DEVICE_ID);
	if (!CsiRxSsCfgPtr) {
		xil_printf("CSI2RxSs LookupCfg failed\r\n");
		return XST_FAILURE;
	}

	CsiRxSsCfgPtr->DphyLineRate=900;
	Status = XCsiSs_CfgInitialize(&CsiRxSs, CsiRxSsCfgPtr,
			CsiRxSsCfgPtr->BaseAddr);

	if (Status != XST_SUCCESS) {
		xil_printf("CsiRxSs Cfg init failed - %x\r\n", Status);
		return Status;
	}

	return XST_SUCCESS;
}

int main()
{
	uint32_t			status;
	int usr_input;

    init_platform();

//    printf("Please wait...\n");
    xil_printf("Please wait...\n\r");

    status = XClk_Wiz_dynamic_reconfig();
	if (status != XST_SUCCESS)
	{
		xil_printf("XClk_Wiz dynamic reconfig failed.\r\n");
		return XST_FAILURE;
	}
	xil_printf("XClk_Wiz dynamic reconfig ok\n\r");

#if 0
	xil_printf("TPG Initializing \r\n");
	Tpg_ConfigPtr = XV_tpg_LookupConfig(XPAR_V_TPG_0_DEVICE_ID);
    if(Tpg_ConfigPtr == NULL)
    {
    	Tpg.IsReady = 0;
        return (XST_DEVICE_NOT_FOUND);
    }

    status = XV_tpg_CfgInitialize(&Tpg,
				Tpg_ConfigPtr, Tpg_ConfigPtr->BaseAddress);
    if(status != XST_SUCCESS)
    {
        xil_printf("ERR:: TPG Initialization failed %d\r\n", status);
        return(XST_FAILURE);
    }
    xil_printf("TPG Initialization ok\r\n");

    XV_ConfigTpg(&Tpg);
#endif




    VtcConfig = XVtc_LookupConfig(XPAR_VTC_0_DEVICE_ID);
    status = XVtc_CfgInitialize(&VtcInst, VtcConfig, VtcConfig->BaseAddress);
    if(status != XST_SUCCESS)
	{
		xil_printf("VTC Initialization failed %d\r\n", status);
		return(XST_FAILURE);
	}

    vtiming_gen_run(&VtcInst, resolution_id, 2);


//    i2c_init(&IicInstance, XPAR_XIICPS_0_DEVICE_ID,100000);

//    XGpio_Initialize(&GpioOutput, XPAR_AXI_GPIO_0_DEVICE_ID);   //initialize GPIO IP
//    XGpio_SetDataDirection(&GpioOutput, 1, 0x0);            //set GPIO as output
//	XGpio_DiscreteWrite(&GpioOutput, 1, 0x0);               //set GPIO output value to 0
//	usleep(50000);
//	XGpio_DiscreteWrite(&GpioOutput, 1, 0x1);

//	i2c_reg8_write(&IicInstance,0x72>>1,0x08,0x35);
//	i2c_reg8_write(&IicInstance,0x7a>>1,0x2f,0x00);

	run_vdma_frame_buffer(&vdma, VDMA_ID, SCREEN_X, SCREEN_Y,
				VDMA_BASE_ADDR,0,0,BOTH);


	demosaic_init(XPAR_XV_DEMOSAIC_0_DEVICE_ID);

	i2c_init(&IicInstance, XPAR_XIICPS_0_DEVICE_ID,100000);

	sensor_init(&IicInstance);

//	/* Initialize CSIRXSS  */
//	status = InitializeCsiRxSs();
//	if (status != XST_SUCCESS) {
//		xil_printf("CSI Rx Ss Init failed status = %x.\r\n", status);
//		return XST_FAILURE;
//	}

//	status = XCsiSs_Activate(&CsiRxSs, XCSI_ENABLE);
//	if (status != XST_SUCCESS) {
//		xil_printf("CSI Rx Ss start failed status = %x.\r\n", status);
//		return XST_FAILURE;
//	}

	while(1)
	{
		xil_printf("\r\nPlease press the key to print csirx regs\r\n");
		usr_input = getchar();
//		switch(usr_input)
//		{
//
//
//		}
//		Xil_Out32(XPAR_CSISS_0_BASEADDR+0x24, 0x0);

//		if (0x24) looks like 0x80020000, the camera should work well
//		(0x00)Core Configuration Register     = 0x00000001
//		(0x04)Protocol Configuration Register = 0x00000009
//		(0x10)Core Status Register            = 0x5C8C0000
//		(0x20)Global Interrupt Enable Register= 0x00000000
//		(0x24)Interrupt Status Register       = 0x80020000
//		(0x28)Interrupt Enable Register       = 0x00000000
//		(0x30)Generic Short Packet Register   = 0x00000000
//		(0x34)VCX Frame Error Register        = 0x00000000
//		(0x3C)Clock Lane Information Register = 0x00000000
//		(0x40)Lane0 Information               = 0x00000020
//		(0x44)Lane1 Information               = 0x00000000
//		(0x48)Lane2 Information               = 0x00000000
//		(0x4C)Lane3 Information               = 0x00000000
//		(0x60)Image Information 1 for VC0    //{0x5180,0x08}, //
		  //{0x5186,0x04}, //
		  //{0x5187,0x00}, //
		  //{0x5188,0x04}, //
		  //{0x5189,0x00}, //
		  //{0x518a,0x04}, //
		  //{0x518b,0x00}, //   = 0x5F830640
//		(0x64)Image Information 2 for VC0     = 0x0000002B
//		(0x68)Image Information 1 for VC1     = 0x00000000
//		(0x6C)Image Information 2 for VC1     = 0x00000000
//		(0x70)Image Information 1 for VC2     = 0x00000000
//		(0x74)Image Information 2 for VC2     = 0x00000000
//		(0x78)Image Information 1 for VC3     = 0x00000000
//		(0x7C)Image Information 2 for VC3     = 0x00000000
//		(0x80)Image Information 1 for VC4     = 0x00000000
//		(0x84)Image Information 2 for VC4     = 0x00000000
//		(0x88)Image Information 1 for VC5     = 0x00000000
//		(0x8C)Image Information 2 for VC5     = 0x00000000
//		(0x90)Image Information 1 for VC6     = 0x00000000
//		(0x94)Image Information 2 for VC6     = 0x00000000
//		(0x98)Image Information 1 for VC7     = 0x00000000
//		(0x9C)Image Information 2 for VC7     = 0x00000000
//		(0xA0)Image Information 1 for VC8     = 0x00000000
//		(0xA4)Image Information 2 for VC8     = 0x00000000
//		(0xA8)Image Information 1 for VC9     = 0x00000000
//		(0xAC)Image Information 2 for VC9     = 0x00000000
//		(0xB0)Image Information 1 for VC10    = 0x00000000
//		(0xB4)Image Information 2 for VC10    = 0x00000000
//		(0xB8)Image Information 1 for VC11    = 0x00000000
//		(0xBC)Image Information 2 for VC11    = 0x00000000
//		(0xC0)Image Information 1 for VC12    = 0x00000000
//		(0xC4)Image Information 2 for VC12    = 0x00000000
//		(0xC8)Image Information 1 for VC13    = 0x00000000
//		(0xCC)Image Information 2 for VC13    = 0x00000000
//		(0xD0)Image Information 1 for VC14    = 0x00000000
//		(0xD4)Image Information 2 for VC14    = 0x00000000
//		(0xD8)Image Information 1 for VC15    = 0x00000000
//		(0xDC)Image Information 2 for VC15    = 0x00000000
//		(0x00)D-PHY CONTROL                   = 0x00000002
//		(0x04)D-PHY IDELAY_TAP_VALUE          = 0x00000000
//		(0x08)D-PHY INIT                      = 0x000186A0
//		(0x10)D-PHY HS_TIMEOUT                = 0x00000000
//		(0x14)D-PHY ESC_TIMEOUT               = 0x00000000
//		(0x18)D-PHY CL_STATUS                 = 0x00000009
//		(0x1C)D-PHY DL0_STATUS                = 0x69E60009
//		(0x20)D-PHY DL1_STATUS                = 0x6A4F0009
//		(0x24)D-PHY DL2_STATUS                = 0x00000008
//		(0x28)D-PHY DL3_STATUS                = 0x00000008
//		(0x30)D-PHY HS_SETTLE L0              = 0x00000091
//		(0x48)D-PHY HS_SETTLE L1              = 0x00000091

		xil_printf("(0x00)Core Configuration Register     = 0x%08x\r\n", Xil_In32(XPAR_CSISS_0_BASEADDR+0x0));
		xil_printf("(0x04)Protocol Configuration Register = 0x%08x\r\n", Xil_In32(XPAR_CSISS_0_BASEADDR+0x04));
		xil_printf("(0x10)Core Status Register            = 0x%08x\r\n", Xil_In32(XPAR_CSISS_0_BASEADDR+0x10));
		xil_printf("(0x20)Global Interrupt Enable Register= 0x%08x\r\n", Xil_In32(XPAR_CSISS_0_BASEADDR+0x20));
		xil_printf("(0x24)Interrupt Status Register       = 0x%08x\r\n", Xil_In32(XPAR_CSISS_0_BASEADDR+0x24));
		xil_printf("(0x28)Interrupt Enable Register       = 0x%08x\r\n", Xil_In32(XPAR_CSISS_0_BASEADDR+0x28));
		xil_printf("(0x30)Generic Short Packet Register   = 0x%08x\r\n", Xil_In32(XPAR_CSISS_0_BASEADDR+0x30));
		xil_printf("(0x34)VCX Frame Error Register        = 0x%08x\r\n", Xil_In32(XPAR_CSISS_0_BASEADDR+0x34));
		xil_printf("(0x3C)Clock Lane Information Register = 0x%08x\r\n", Xil_In32(XPAR_CSISS_0_BASEADDR+0x3C));
		xil_printf("(0x40)Lane0 Information               = 0x%08x\r\n", Xil_In32(XPAR_CSISS_0_BASEADDR+0x40));
		xil_printf("(0x44)Lane1 Information               = 0x%08x\r\n", Xil_In32(XPAR_CSISS_0_BASEADDR+0x44));
		xil_printf("(0x48)Lane2 Information               = 0x%08x\r\n", Xil_In32(XPAR_CSISS_0_BASEADDR+0x48));
		xil_printf("(0x4C)Lane3 Information               = 0x%08x\r\n", Xil_In32(XPAR_CSISS_0_BASEADDR+0x4C));
		xil_printf("(0x60)Image Information 1 for VC0     = 0x%08x\r\n", Xil_In32(XPAR_CSISS_0_BASEADDR+0x60));
		xil_printf("(0x64)Image Information 2 for VC0     = 0x%08x\r\n", Xil_In32(XPAR_CSISS_0_BASEADDR+0x64));
		xil_printf("(0x68)Image Information 1 for VC1     = 0x%08x\r\n", Xil_In32(XPAR_CSISS_0_BASEADDR+0x68));
		xil_printf("(0x6C)Image Information 2 for VC1     = 0x%08x\r\n", Xil_In32(XPAR_CSISS_0_BASEADDR+0x6C));
		xil_printf("(0x70)Image Information 1 for VC2     = 0x%08x\r\n", Xil_In32(XPAR_CSISS_0_BASEADDR+0x70));
		xil_printf("(0x74)Image Information 2 for VC2     = 0x%08x\r\n", Xil_In32(XPAR_CSISS_0_BASEADDR+0x74));
		xil_printf("(0x78)Image Information 1 for VC3     = 0x%08x\r\n", Xil_In32(XPAR_CSISS_0_BASEADDR+0x78));
		xil_printf("(0x7C)Image Information 2 for VC3     = 0x%08x\r\n", Xil_In32(XPAR_CSISS_0_BASEADDR+0x7C));
		xil_printf("(0x80)Image Information 1 for VC4     = 0x%08x\r\n", Xil_In32(XPAR_CSISS_0_BASEADDR+0x80));
		xil_printf("(0x84)Image Information 2 for VC4     = 0x%08x\r\n", Xil_In32(XPAR_CSISS_0_BASEADDR+0x84));
		xil_printf("(0x88)Image Information 1 for VC5     = 0x%08x\r\n", Xil_In32(XPAR_CSISS_0_BASEADDR+0x88));
		xil_printf("(0x8C)Image Information 2 for VC5     = 0x%08x\r\n", Xil_In32(XPAR_CSISS_0_BASEADDR+0x8C));
		xil_printf("(0x90)Image Information 1 for VC6     = 0x%08x\r\n", Xil_In32(XPAR_CSISS_0_BASEADDR+0x90));
		xil_printf("(0x94)Image Information 2 for VC6     = 0x%08x\r\n", Xil_In32(XPAR_CSISS_0_BASEADDR+0x94));
		xil_printf("(0x98)Image Information 1 for VC7     = 0x%08x\r\n", Xil_In32(XPAR_CSISS_0_BASEADDR+0x98));
		xil_printf("(0x9C)Image Information 2 for VC7     = 0x%08x\r\n", Xil_In32(XPAR_CSISS_0_BASEADDR+0x9C));
		xil_printf("(0xA0)Image Information 1 for VC8     = 0x%08x\r\n", Xil_In32(XPAR_CSISS_0_BASEADDR+0xA0));
		xil_printf("(0xA4)Image Information 2 for VC8     = 0x%08x\r\n", Xil_In32(XPAR_CSISS_0_BASEADDR+0xA4));
		xil_printf("(0xA8)Image Information 1 for VC9     = 0x%08x\r\n", Xil_In32(XPAR_CSISS_0_BASEADDR+0xA8));
		xil_printf("(0xAC)Image Information 2 for VC9     = 0x%08x\r\n", Xil_In32(XPAR_CSISS_0_BASEADDR+0xAC));
		xil_printf("(0xB0)Image Information 1 for VC10    = 0x%08x\r\n", Xil_In32(XPAR_CSISS_0_BASEADDR+0xB0));
		xil_printf("(0xB4)Image Information 2 for VC10    = 0x%08x\r\n", Xil_In32(XPAR_CSISS_0_BASEADDR+0xB4));
		xil_printf("(0xB8)Image Information 1 for VC11    = 0x%08x\r\n", Xil_In32(XPAR_CSISS_0_BASEADDR+0xB8));
		xil_printf("(0xBC)Image Information 2 for VC11    = 0x%08x\r\n", Xil_In32(XPAR_CSISS_0_BASEADDR+0xBC));
		xil_printf("(0xC0)Image Information 1 for VC12    = 0x%08x\r\n", Xil_In32(XPAR_CSISS_0_BASEADDR+0xC0));
		xil_printf("(0xC4)Image Information 2 for VC12    = 0x%08x\r\n", Xil_In32(XPAR_CSISS_0_BASEADDR+0xC4));
		xil_printf("(0xC8)Image Information 1 for VC13    = 0x%08x\r\n", Xil_In32(XPAR_CSISS_0_BASEADDR+0xC8));
		xil_printf("(0xCC)Image Information 2 for VC13    = 0x%08x\r\n", Xil_In32(XPAR_CSISS_0_BASEADDR+0xCC));
		xil_printf("(0xD0)Image Information 1 for VC14    = 0x%08x\r\n", Xil_In32(XPAR_CSISS_0_BASEADDR+0xD0));
		xil_printf("(0xD4)Image Information 2 for VC14    = 0x%08x\r\n", Xil_In32(XPAR_CSISS_0_BASEADDR+0xD4));
		xil_printf("(0xD8)Image Information 1 for VC15    = 0x%08x\r\n", Xil_In32(XPAR_CSISS_0_BASEADDR+0xD8));
		xil_printf("(0xDC)Image Information 2 for VC15    = 0x%08x\r\n", Xil_In32(XPAR_CSISS_0_BASEADDR+0xDC));

		xil_printf("(0x00)D-PHY CONTROL                   = 0x%08x\r\n", Xil_In32(XPAR_CSISS_0_BASEADDR+0x1000+0x00));
		xil_printf("(0x04)D-PHY IDELAY_TAP_VALUE          = 0x%08x\r\n", Xil_In32(XPAR_CSISS_0_BASEADDR+0x1000+0x04));
		xil_printf("(0x08)D-PHY INIT                      = 0x%08x\r\n", Xil_In32(XPAR_CSISS_0_BASEADDR+0x1000+0x08));
		xil_printf("(0x10)D-PHY HS_TIMEOUT                = 0x%08x\r\n", Xil_In32(XPAR_CSISS_0_BASEADDR+0x1000+0x10));
		xil_printf("(0x14)D-PHY ESC_TIMEOUT               = 0x%08x\r\n", Xil_In32(XPAR_CSISS_0_BASEADDR+0x1000+0x14));
		xil_printf("(0x18)D-PHY CL_STATUS                 = 0x%08x\r\n", Xil_In32(XPAR_CSISS_0_BASEADDR+0x1000+0x18));
		xil_printf("(0x1C)D-PHY DL0_STATUS                = 0x%08x\r\n", Xil_In32(XPAR_CSISS_0_BASEADDR+0x1000+0x1C));
		xil_printf("(0x20)D-PHY DL1_STATUS                = 0x%08x\r\n", Xil_In32(XPAR_CSISS_0_BASEADDR+0x1000+0x20));
		xil_printf("(0x24)D-PHY DL2_STATUS                = 0x%08x\r\n", Xil_In32(XPAR_CSISS_0_BASEADDR+0x1000+0x24));
		xil_printf("(0x28)D-PHY DL3_STATUS                = 0x%08x\r\n", Xil_In32(XPAR_CSISS_0_BASEADDR+0x1000+0x28));
		xil_printf("(0x30)D-PHY HS_SETTLE L0              = 0x%08x\r\n", Xil_In32(XPAR_CSISS_0_BASEADDR+0x1000+0x30));
		xil_printf("(0x48)D-PHY HS_SETTLE L1              = 0x%08x\r\n", Xil_In32(XPAR_CSISS_0_BASEADDR+0x1000+0x48));

		Xil_Out32(XPAR_CSISS_0_BASEADDR+0x24, 0x0);
	}
//    cleanup_platform();
    return 0;
}
