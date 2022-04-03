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
 * main.c: simple test application
 *
 * This application configures
 *
 */

#include <stdio.h>
#include "platform.h"
#include "xil_printf.h"
#include "xcsi2txss.h"
#include "xil_types.h"
#include "xstatus.h"
#include "xvidc.h"
#include "tpg/tpg.h"
//#include "vdma/vdma.h"
//#include "dp/dp.h"
#include "vdma/vdma_api.h"
#include "clk_wiz/clk_wiz.h"
#include "xvtc.h"
#include "vtc/video_resolution.h"
#include "vtc/vtiming_gen.h"
#include "ps_i2c/PS_i2c.h"
#include "xgpiops.h"
#include "xgpio.h"
#include "config.h"
#include "xaxis_switch.h"
#include "xil_cache.h"

#define XCSI2TXSS_DEVICE_ID	XPAR_CSI2TXSS_0_DEVICE_ID


#define VDMA_ID          		XPAR_AXIVDMA_0_DEVICE_ID
#define VDMA_BASE_ADDR 			0x08000000

#define FRAME_BUFFER_BASE_ADDR	0x10000000
//#define FRAME_BUFFER_SIZE		0x400000	//0x400000 for max 1080p YCbCr422 8bpc
#define FRAME_BUFFER_SIZE		0x600000	//0x600000 for max 1080p RGB888 8bpc
#define FRAME_BUFFER_1			FRAME_BUFFER_BASE_ADDR
#define FRAME_BUFFER_2			FRAME_BUFFER_BASE_ADDR + FRAME_BUFFER_SIZE
#define FRAME_BUFFER_3			FRAME_BUFFER_BASE_ADDR + (FRAME_BUFFER_SIZE*2)


#define CAM_EMIO_1	79
#define IIC_DEVICEID_1 XPAR_XIICPS_1_DEVICE_ID

#define CAM_EMIO_0	78
#define IIC_DEVICEID_0 XPAR_XIICPS_0_DEVICE_ID


XCsi2TxSs Csi2TxSsInst;	/* The MIPI CSI2 Tx Subsystem instance.*/

XAxiVdma     vdma;

#define TPG_TEST 1

#if TPG_TEST
XV_tpg Tpg;
XV_tpg_Config *Tpg_ConfigPtr;
XTpg_PatternId      Pattern;      /**< Video pattern */
#else
XV_tpg tpg_inst;
XV_tpg_Config *tpg_config;
XVidC_ColorFormat colorFmtIn = XVIDC_CSF_RGB;
#endif

XV_tpg Tpg1;
XV_tpg_Config *Tpg_ConfigPtr1;
XTpg_PatternId      Pattern1;      /**< Video pattern */

XAxis_Switch AxisSwitch0;

XClk_Wiz ClkWizInst;
XVtc		VtcInst;		/**< Instance of the VTC core. */
XVtc_Config *VtcConfig;

XGpioPs Gpio;

XGpio XGpioOutput;
XGpio XGpioOutput1;

XIicPs ps_i2c_0;
XIicPs ps_i2c_1;
///*
// * Framebuffers for video data
// */
//u8 frameBuf[DISPLAY_NUM_FRAMES][DEMO_MAX_FRAME] __attribute__ ((aligned(256)));
//u8 *pFrames[DISPLAY_NUM_FRAMES]; //array of pointers to the frame buffers


/******************************************************************************/
/**
*
* For Microblaze we use an assembly loop that is roughly the same regardless of
* optimization level, although caches and memory access time can make the delay
* vary.  Just keep in mind that after resetting or updating the PHY modes,
* the PHY typically needs time to recover.
*
* @param	Number of seconds to sleep
*
* @return	None
*
* @note		None
*
******************************************************************************/
static void Delay(u32 Seconds)
{
#if defined (__MICROBLAZE__) || defined(__PPC__)
	static s32 WarningFlag = 0;

	/* If MB caches are disabled or do not exist, this delay loop could
	 * take minutes instead of seconds (e.g., 30x longer).  Print a warning
	 * message for the user (once).  If only MB had a built-in timer!
	 */
	if (((mfmsr() & 0x20) == 0) && (!WarningFlag)) {
		WarningFlag = 1;
	}

#define ITERS_PER_SEC   (XPAR_CPU_CORE_CLOCK_FREQ_HZ / 6)
    asm volatile ("\n"
			"1:               \n\t"
			"addik r7, r0, %0 \n\t"
			"2:               \n\t"
			"addik r7, r7, -1 \n\t"
			"bneid  r7, 2b    \n\t"
			"or  r0, r0, r0   \n\t"
			"bneid %1, 1b     \n\t"
			"addik %1, %1, -1 \n\t"
			:: "i"(ITERS_PER_SEC), "d" (Seconds));
#else
    sleep(Seconds);
#endif
}

/*****************************************************************************/
/**
* This function reports list of cores included.
*
* @param	InstancePtr is a pointer to the Subsystem instance to be
* 		worked on.
*
* @return	None
*
* @note		None
*
******************************************************************************/
void XCsi2TxSs_ReportCoreInfo1(XCsi2TxSs *InstancePtr)
{
	/* Verify argument. */
	Xil_AssertVoid(InstancePtr != NULL);

	xil_printf("\n\r ->MIPI CSI2 TX Subsystem Cores\n\r");

	/* Report all the included cores in the subsystem instance */
	if (InstancePtr->CsiPtr) {
		xil_printf("    : CSI2 Tx Controller \n\r");
	}

#if (XPAR_XDPHY_NUM_INSTANCES > 0)
	if (InstancePtr->DphyPtr) {
		xil_printf("    : DPhy ");
		if (InstancePtr->Config.IsDphyRegIntfcPresent) {
			xil_printf("with ");
		}
		else {
			xil_printf("without ");
		}

		xil_printf("register interface \n\r");
	}
#endif

	xil_printf("    : Lanes ");
	xil_printf("%d \n\r", InstancePtr->Config.LanesPresent);
	xil_printf("    : DT ");
	xil_printf("0x%2X \n\r", InstancePtr->Config.DataType);
}

u32 Csi2TxSs_Init(u32 DeviceId)
{
	u32 Status;
	XCsi2TxSs_Config *ConfigPtr;

	/* Obtain the device configuration for the MIPI CSI2 TX Subsystem */
	ConfigPtr = XCsi2TxSs_LookupConfig(DeviceId);
	if (!ConfigPtr) {
		return XST_FAILURE;
	}

	ConfigPtr->DataType = 0x24; // RGB888
	/* Copy the device configuration into the Csi2TxSsInst's Config
	 * structure. */
	Status = XCsi2TxSs_CfgInitialize(&Csi2TxSsInst, ConfigPtr,
					ConfigPtr->BaseAddr);
	if (Status != XST_SUCCESS) {
		xil_printf("MIPI CSI2 TX SS config initialization failed.\n\r");
		return XST_FAILURE;
	}

	return Status;
}

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
void XV_ConfigTpg(XV_tpg *InstancePtr, u32 Pattern)
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


  XV_tpg_Set_height(pTpg, VIDEO_ROWS);
  xil_printf("the height is %d.\r\n",XV_tpg_Get_height(pTpg));
  XV_tpg_Set_width(pTpg, VIDEO_COLUMNS);
  xil_printf("the width is %d.\r\n",XV_tpg_Get_width(pTpg));

  XV_tpg_Set_colorFormat(pTpg, XVIDC_CSF_RGB);
//  XV_tpg_Set_colorFormat(pTpg, XVIDC_CSF_YCRCB_422);
//  XV_tpg_Set_bckgndId(pTpg, XTPG_BKGND_COLOR_BARS);
  XV_tpg_Set_bckgndId(pTpg, Pattern);
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

//int AxisSwitch(u16 DeviceId, XAxis_Switch * pAxisSwitch, u8 MiIndex, u8 SiIndex)
//{
//	XAxis_Switch_Config *Config;
//	int Status;
//
//	u8 num;
//	if(DeviceId == XPAR_AXIS_SWITCH_0_DEVICE_ID)
//	{
//		num = 0;
//	}
//
//	/* Initialize the AXI4-Stream Switch driver so that it's ready to
//	 * use look up configuration in the config table, then
//	 * initialize it.
//	 */
//	Config = XAxisScr_LookupConfig(DeviceId);
//	if (NULL == Config) {
//		return XST_FAILURE;
//	}
//
//	Status = XAxisScr_CfgInitialize(pAxisSwitch, Config,
//						Config->BaseAddress);
//	if (Status != XST_SUCCESS) {
//		xil_printf("AXI4-Stream initialization failed.\r\n");
//		return XST_FAILURE;
//	}
//
//	/* Disable register update */
//	XAxisScr_RegUpdateDisable(pAxisSwitch);
//
//	/* Disable all MI ports */
//	XAxisScr_MiPortDisableAll(pAxisSwitch);
//
//	/* Source SI[1] to MI[0] */
//	XAxisScr_MiPortEnable(pAxisSwitch, MiIndex, SiIndex);
//
//	/* Enable register update */
//	XAxisScr_RegUpdateEnable(pAxisSwitch);
//
//	/* Check for MI port enable */
//	Status = XAxisScr_IsMiPortEnabled(pAxisSwitch, MiIndex, SiIndex);
//	if (Status) {
//		xil_printf("Switch %d: MI[%d] is sourced from SI[%d].\r\n", num, MiIndex, SiIndex);
//	}
//
//	return XST_SUCCESS;
//}

int AxisSwitch(u16 DeviceId, XAxis_Switch * pAxisSwitch, u8 MiIndex, u8 SiIndex)
{
	XAxis_Switch_Config *Config;
	int Status;

	u8 num;
	if(DeviceId == XPAR_AXIS_SWITCH_0_DEVICE_ID)
	{
		num = 0;
	}

	/* Initialize the AXI4-Stream Switch driver so that it's ready to
	 * use look up configuration in the config table, then
	 * initialize it.
	 */
	Config = XAxisScr_LookupConfig(DeviceId);
	if (NULL == Config) {
		return XST_FAILURE;
	}

	Status = XAxisScr_CfgInitialize(pAxisSwitch, Config,
						Config->BaseAddress);
	if (Status != XST_SUCCESS) {
		xil_printf("AXI4-Stream initialization failed.\r\n");
		return XST_FAILURE;
	}

	/* Disable register update */
	XAxisScr_RegUpdateDisable(pAxisSwitch);

	/* Disable all MI ports */
	XAxisScr_MiPortDisableAll(pAxisSwitch);

	/* Source SI[1] to MI[0] */
	XAxisScr_MiPortEnable(pAxisSwitch, MiIndex, SiIndex);

	/* Enable register update */
	XAxisScr_RegUpdateEnable(pAxisSwitch);

	/* Check for MI port enable */
	Status = XAxisScr_IsMiPortEnabled(pAxisSwitch, MiIndex, SiIndex);
	if (Status) {
		xil_printf("Switch %d: MI[%d] is sourced from SI[%d].\r\n", num, MiIndex, SiIndex);
	}

	return XST_SUCCESS;
}

int PsGpioSetup(XGpioPs *InstancePtr, u16 DeviceId)
{
	XGpioPs_Config *GPIO_CONFIG ;
	int Status ;

	GPIO_CONFIG = XGpioPs_LookupConfig(DeviceId) ;

	Status = XGpioPs_CfgInitialize(InstancePtr, GPIO_CONFIG, GPIO_CONFIG->BaseAddr) ;
	if (Status != XST_SUCCESS)
	{
		return XST_FAILURE ;
	}
	/* set as output */
	XGpioPs_SetDirectionPin(InstancePtr, CAM_EMIO_0, 1) ;
	XGpioPs_SetOutputEnablePin(InstancePtr, CAM_EMIO_0, 1);
	XGpioPs_SetDirectionPin(InstancePtr, CAM_EMIO_1, 1) ;
	XGpioPs_SetOutputEnablePin(InstancePtr, CAM_EMIO_1, 1);

	return XST_SUCCESS ;
}

int XGpioSetup(XGpio *InstancePtr, u16 DeviceId)
{
	int Status ;

	Status = XGpio_Initialize(InstancePtr, DeviceId) ;
	if (Status != XST_SUCCESS)
	{
		return XST_FAILURE ;
	}
	/* set as output */
    XGpio_SetDataDirection(InstancePtr, 1, 0x0);
    XGpio_SetDataDirection(InstancePtr, 2, 0x0);

	return XST_SUCCESS ;
}

int XGpioInSetup(XGpio *InstancePtr, u16 DeviceId)
{
	int Status ;

	Status = XGpio_Initialize(InstancePtr, DeviceId) ;
	if (Status != XST_SUCCESS)
	{
		return XST_FAILURE ;
	}

	/* set as output */
	XGpio_SetDataDirection(InstancePtr, 1, 0x1);

	return XST_SUCCESS ;
}

int main()
{
	u32 Status;
	int usr_input;
//	u8 i;
//	u8 ActiveLanes;
//	u32 IntrRequest = XCSI2TXSS_ISR_ALLINTR_MASK;

    init_platform();
    
	PsGpioSetup(&Gpio, XPAR_XGPIOPS_0_DEVICE_ID) ;

	XGpioSetup(&XGpioOutput, XPAR_GPIO_0_DEVICE_ID) ;

	XGpioInSetup(&XGpioOutput1, XPAR_AXI_GPIO_1_DEVICE_ID);


	/*
	 * Reset sensor
	 */
	XGpioPs_WritePin(&Gpio, CAM_EMIO_0, 0) ;
	usleep(1000000);
	XGpioPs_WritePin(&Gpio, CAM_EMIO_0, 1) ;
	usleep(1000000);
	
	XGpioPs_WritePin(&Gpio, CAM_EMIO_1, 0) ;
	usleep(1000000);
	XGpioPs_WritePin(&Gpio, CAM_EMIO_1, 1) ;
	usleep(1000000);

	i2c_init(&ps_i2c_0, IIC_DEVICEID_0,100000);
	i2c_init(&ps_i2c_1, IIC_DEVICEID_1,100000);
    

	XGpio_DiscreteWrite(&XGpioOutput, 1, 0x24); // RGB888
	XGpio_DiscreteWrite(&XGpioOutput, 2, VIDEO_COLUMNS*3<<16); // WC


//	Xil_DCacheDisable();
////	Xil_ICacheDisable();
//
//	/*
//	 * Initialize an array of pointers to the 3 frame buffers
//	 */
//	for (i = 0; i < DISPLAY_NUM_FRAMES; i++)
//	{
//		pFrames[i] = frameBuf[i];
//		memset(pFrames[i], 0, DEMO_MAX_FRAME);
//	}
//
//	// dp
//	xil_printf("DPDMA Generic Video Example Test \r\n");
//	Status = DpdmaVideoInit(&RunCfg, pFrames[0]);
//	if (Status != XST_SUCCESS) {
//		xil_printf("DPDMA Video Example Test Failed\r\n");
//		return XST_FAILURE;
//	}
//	sleep(2);
//	//Re-enable the data cache
//    Xil_DCacheEnable();
//
//	// vdma
//	xil_printf("VDMA Initializing\n\r");
//	vdma_write_init(VDMA_ID,HORSIZE,VERSIZE,DEMO_STRIDE,(unsigned int)pFrames[0]);
//	xil_printf("VDMA started!\r\n");


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


    int   resolution_id;
#if P1080 == 1
    resolution_id = VIDEO_RESOLUTION_1080P;
#else
    resolution_id = VIDEO_RESOLUTION_720P;
#endif
    vtiming_gen_run(&VtcInst, resolution_id, 2);

#if TPG_TEST
	// tpg
	xil_printf("TPG Initializing\n\r");
	Tpg_ConfigPtr = XV_tpg_LookupConfig(XPAR_V_TPG_0_DEVICE_ID);
	if(Tpg_ConfigPtr == NULL)
	{
		Tpg.IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}
	Status = XV_tpg_CfgInitialize(&Tpg,
				Tpg_ConfigPtr, Tpg_ConfigPtr->BaseAddress);
	if(Status != XST_SUCCESS)
	{
		xil_printf("ERR:: TPG Initialization failed %d\r\n", Status);
		return(XST_FAILURE);
	}
	else
	{
		xil_printf("TPG Initialization ok\r\n");
	}

	XV_ConfigTpg(&Tpg, XTPG_BKGND_COLOR_BARS);
	xil_printf("TPG started!\r\n");
#else
	// tpg
	xil_printf("TPG Initializing\n\r");
    Status = XV_tpg_Initialize(&tpg_inst, XPAR_V_TPG_0_DEVICE_ID);
    if(Status!= XST_SUCCESS)
    {
    	xil_printf("TPG configuration failed\r\n");
    	return(XST_FAILURE);
    }

    //Configure the TPG
    tpg_cfg(&tpg_inst, VIDEO_ROWS, VIDEO_COLUMNS, colorFmtIn, XTPG_BKGND_COLOR_BARS);

    //Configure the moving box of the TPG
    tpg_box(&tpg_inst, 50, 1);

    //Start the TPG
    XV_tpg_EnableAutoRestart(&tpg_inst);
    XV_tpg_Start(&tpg_inst);
    xil_printf("TPG started!\r\n");
#endif

////	Status=AxisSwitch(XPAR_AXIS_SWITCH_0_DEVICE_ID, &AxisSwitch0, 0, 1);
//	Status=AxisSwitch(XPAR_AXIS_SWITCH_0_DEVICE_ID, &AxisSwitch0, 0, 0);
//	if (Status) {
//		xil_printf("AXI4-Stream sw 3 initialization failed.\r\n");
//		xil_printf("%s(%d)-<%s>: \r\n"__FILE__, __LINE__, __FUNCTION__);
//		return XST_FAILURE;
//	}

	// tpg1
	xil_printf("TPG1 Initializing\n\r");
	Tpg_ConfigPtr1 = XV_tpg_LookupConfig(XPAR_V_TPG_1_DEVICE_ID);
	if(Tpg_ConfigPtr1 == NULL)
	{
		Tpg.IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}
	Status = XV_tpg_CfgInitialize(&Tpg1,
				Tpg_ConfigPtr1, Tpg_ConfigPtr1->BaseAddress);
	if(Status != XST_SUCCESS)
	{
		xil_printf("ERR:: TPG1 Initialization failed %d\r\n", Status);
		return(XST_FAILURE);
	}
	else
	{
		xil_printf("TPG Initialization ok\r\n");
	}

	XV_ConfigTpg(&Tpg1, XTPG_BKGND_HV_RAMP);
	xil_printf("TPG started!\r\n");


	// axis-switch
//	Status=AxisSwitch(XPAR_AXIS_SWITCH_0_DEVICE_ID, &AxisSwitch0, 0, 1);
	Status=AxisSwitch(XPAR_AXIS_SWITCH_0_DEVICE_ID, &AxisSwitch0, 0, 0);
	if (Status) {
		xil_printf("AXI4-Stream sw 3 initialization failed.\r\n");
		xil_printf("%s(%d)-<%s>: \r\n"__FILE__, __LINE__, __FUNCTION__);
		return XST_FAILURE;
	}

//	// vdma
//	xil_printf("VDMA Initializing\n\r");
//	vdma_write_init(VDMA_ID,HORSIZE,VERSIZE,DEMO_STRIDE,(unsigned int)pFrames[0]);
//	xil_printf("VDMA started!\r\n");

//	Xil_DCacheDisable();
//	while(1)
//	{
//		xil_printf("*pFrames[00]=0x%8x\r\n", Xil_In32(pFrames[0]+160*0*4));
//		xil_printf("*pFrames[01]=0x%8x\r\n", Xil_In32(pFrames[0]+160*1*4));
//		xil_printf("*pFrames[02]=0x%8x\r\n", Xil_In32(pFrames[0]+160*2*4));
//		xil_printf("*pFrames[03]=0x%8x\r\n", Xil_In32(pFrames[0]+160*3*4));
//		xil_printf("*pFrames[04]=0x%8x\r\n", Xil_In32(pFrames[0]+160*4*4));
//		xil_printf("*pFrames[05]=0x%8x\r\n", Xil_In32(pFrames[0]+160*5*4));
//		xil_printf("*pFrames[06]=0x%8x\r\n", Xil_In32(pFrames[0]+160*6*4));
//		xil_printf("*pFrames[07]=0x%8x\r\n", Xil_In32(pFrames[0]+160*7*4));
////		xil_printf("*pFrames[1]=0x%8x\r\n", Xil_In32((unsigned int)pFrames[1]));
////		xil_printf("*pFrames[2]=0x%8x\r\n", Xil_In32((unsigned int)pFrames[2]));
//	}


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
    u32 stride0 = VIDEO_STRIDE;
    u32 width0 = VIDEO_COLUMNS;
    u32 height0 = VIDEO_ROWS;

    int offset1 = 0; // (y*w+x)*Bpp
    u32 stride1 = VIDEO_STRIDE;  // crop keeps write Stride
    u32 width1 = VIDEO_COLUMNS;
    u32 height1 = VIDEO_ROWS;

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

//    run_vdma_frame_buffer(&vdma, VDMA_ID, VIDEO_COLUMNS, VIDEO_ROWS,
//    				VDMA_BASE_ADDR,0,0,BOTH);

	xil_printf("VDMA started!\r\n");
	/* End of VDMA Configuration */

    // csi-tx
    xil_printf("MIPI CSI2 TX Subsystem Initializing\n\r");
	Status = Csi2TxSs_Init(XCSI2TXSS_DEVICE_ID);
	if (Status != XST_SUCCESS) {
		xil_printf("MIPI CSI2 TX Subsystem Initial failed\n\r");
		return XST_FAILURE;
	}
	/* Dump the configuration */
	XCsi2TxSs_ReportCoreInfo1(&Csi2TxSsInst);

	/* Reset the subsystem */
	//XCsi2TxSs_Reset(&Csi2TxSsInst);

	XCsi2TxSs_SetClkMode(&Csi2TxSsInst, 0);

	xil_printf("pixel mode = %d\r\n", XCsi2TxSs_GetPixelMode(&Csi2TxSsInst));

	XCsi2TxSs_Activate(&Csi2TxSsInst, XCSI2TX_ENABLE);
	xil_printf("MIPI CSI2 TX Subsystem started!\r\n");


	while(1)
	{
		if(XGpio_DiscreteRead(&XGpioOutput1, 1)==1)
		{
			UINTPTR Addr1=FRAME_BUFFER_1,Addr2=FRAME_BUFFER_2,Addr3=FRAME_BUFFER_3;
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
		}
		Xil_DCacheFlush();
	}

//	while(1)
//	{
//		// TODO: add a menu to choose axis-switchs
//
//		xil_printf("\r\nPlease press the key to print csirx regs\r\n");
//		usr_input = getchar();
//
////		if (0x24) looks like 0x80020000, the camera should work well
////		(0x00)Core Configuration Register     = 0x00000001
////		(0x04)Protocol Configuration Register = 0x00000009
////		(0x10)Core Status Register            = 0x5C8C0000
////		(0x20)Global Interrupt Enable Register= 0x00000000
////		(0x24)Interrupt Status Register       = 0x80020000
////		(0x28)Interrupt Enable Register       = 0x00000000
////		(0x30)Generic Short Packet Register   = 0x00000000
////		(0x34)VCX Frame Error Register        = 0x00000000
////		(0x3C)Clock Lane Information Register = 0x00000000
////		(0x40)Lane0 Information               = 0x00000020
////		(0x44)Lane1 Information               = 0x00000000
////		(0x48)Lane2 Information               = 0x00000000
////		(0x4C)Lane3 Information               = 0x00000000
////		(0x60)Image Information 1 for VC0     = 0x5F830640
////		(0x64)Image Information 2 for VC0     = 0x0000002B
////		(0x68)Image Information 1 for VC1     = 0x00000000
////		(0x6C)Image Information 2 for VC1     = 0x00000000
////		(0x70)Image Information 1 for VC2     = 0x00000000
////		(0x74)Image Information 2 for VC2     = 0x00000000
////		(0x78)Image Information 1 for VC3     = 0x00000000
////		(0x7C)Image Information 2 for VC3     = 0x00000000
////		(0x80)Image Information 1 for VC4     = 0x00000000
////		(0x84)Image Information 2 for VC4     = 0x00000000
////		(0x88)Image Information 1 for VC5     = 0x00000000
////		(0x8C)Image Information 2 for VC5     = 0x00000000
////		(0x90)Image Information 1 for VC6     = 0x00000000
////		(0x94)Image Information 2 for VC6     = 0x00000000
////		(0x98)Image Information 1 for VC7     = 0x00000000
////		(0x9C)Image Information 2 for VC7     = 0x00000000
////		(0xA0)Image Information 1 for VC8     = 0x00000000
////		(0xA4)Image Information 2 for VC8     = 0x00000000
////		(0xA8)Image Information 1 for VC9     = 0x00000000
////		(0xAC)Image Information 2 for VC9     = 0x00000000
////		(0xB0)Image Information 1 for VC10    = 0x00000000
////		(0xB4)Image Information 2 for VC10    = 0x00000000
////		(0xB8)Image Information 1 for VC11    = 0x00000000
////		(0xBC)Image Information 2 for VC11    = 0x00000000
////		(0xC0)Image Information 1 for VC12    = 0x00000000
////		(0xC4)Image Information 2 for VC12    = 0x00000000
////		(0xC8)Image Information 1 for VC13    = 0x00000000
////		(0xCC)Image Information 2 for VC13    = 0x00000000
////		(0xD0)Image Information 1 for VC14    = 0x00000000
////		(0xD4)Image Information 2 for VC14    = 0x00000000
////		(0xD8)Image Information 1 for VC15    = 0x00000000
////		(0xDC)Image Information 2 for VC15    = 0x00000000
////		(0x00)D-PHY CONTROL                   = 0x00000002
////		(0x04)D-PHY IDELAY_TAP_VALUE          = 0x00000000
////		(0x08)D-PHY INIT                      = 0x000186A0
////		(0x10)D-PHY HS_TIMEOUT                = 0x00000000
////		(0x14)D-PHY ESC_TIMEOUT               = 0x00000000
////		(0x18)D-PHY CL_STATUS                 = 0x00000009
////		(0x1C)D-PHY DL0_STATUS                = 0x69E60009
////		(0x20)D-PHY DL1_STATUS                = 0x6A4F0009
////		(0x24)D-PHY DL2_STATUS                = 0x00000008
////		(0x28)D-PHY DL3_STATUS                = 0x00000008
////		(0x30)D-PHY HS_SETTLE L0              = 0x00000091
////		(0x48)D-PHY HS_SETTLE L1              = 0x00000091
//
//		xil_printf("(0x00)Core Configuration Register     = 0x%08x\r\n", Xil_In32(XPAR_CSISS_0_BASEADDR+0x0));
//		xil_printf("(0x04)Protocol Configuration Register = 0x%08x\r\n", Xil_In32(XPAR_CSISS_0_BASEADDR+0x04));
//		xil_printf("(0x10)Core Status Register            = 0x%08x\r\n", Xil_In32(XPAR_CSISS_0_BASEADDR+0x10));
//		xil_printf("(0x20)Global Interrupt Enable Register= 0x%08x\r\n", Xil_In32(XPAR_CSISS_0_BASEADDR+0x20));
//		xil_printf("(0x24)Interrupt Status Register       = 0x%08x\r\n", Xil_In32(XPAR_CSISS_0_BASEADDR+0x24));
//		xil_printf("(0x28)Interrupt Enable Register       = 0x%08x\r\n", Xil_In32(XPAR_CSISS_0_BASEADDR+0x28));
//		xil_printf("(0x30)Generic Short Packet Register   = 0x%08x\r\n", Xil_In32(XPAR_CSISS_0_BASEADDR+0x30));
//		xil_printf("(0x34)VCX Frame Error Register        = 0x%08x\r\n", Xil_In32(XPAR_CSISS_0_BASEADDR+0x34));
//		xil_printf("(0x3C)Clock Lane Information Register = 0x%08x\r\n", Xil_In32(XPAR_CSISS_0_BASEADDR+0x3C));
//		xil_printf("(0x40)Lane0 Information               = 0x%08x\r\n", Xil_In32(XPAR_CSISS_0_BASEADDR+0x40));
//		xil_printf("(0x44)Lane1 Information               = 0x%08x\r\n", Xil_In32(XPAR_CSISS_0_BASEADDR+0x44));
//		xil_printf("(0x48)Lane2 Information               = 0x%08x\r\n", Xil_In32(XPAR_CSISS_0_BASEADDR+0x48));
//		xil_printf("(0x4C)Lane3 Information               = 0x%08x\r\n", Xil_In32(XPAR_CSISS_0_BASEADDR+0x4C));
//		xil_printf("(0x60)Image Information 1 for VC0     = 0x%08x\r\n", Xil_In32(XPAR_CSISS_0_BASEADDR+0x60));
//		xil_printf("(0x64)Image Information 2 for VC0     = 0x%08x\r\n", Xil_In32(XPAR_CSISS_0_BASEADDR+0x64));
//		xil_printf("(0x68)Image Information 1 for VC1     = 0x%08x\r\n", Xil_In32(XPAR_CSISS_0_BASEADDR+0x68));
//		xil_printf("(0x6C)Image Information 2 for VC1     = 0x%08x\r\n", Xil_In32(XPAR_CSISS_0_BASEADDR+0x6C));
//		xil_printf("(0x70)Image Information 1 for VC2     = 0x%08x\r\n", Xil_In32(XPAR_CSISS_0_BASEADDR+0x70));
//		xil_printf("(0x74)Image Information 2 for VC2     = 0x%08x\r\n", Xil_In32(XPAR_CSISS_0_BASEADDR+0x74));
//		xil_printf("(0x78)Image Information 1 for VC3     = 0x%08x\r\n", Xil_In32(XPAR_CSISS_0_BASEADDR+0x78));
//		xil_printf("(0x7C)Image Information 2 for VC3     = 0x%08x\r\n", Xil_In32(XPAR_CSISS_0_BASEADDR+0x7C));
//		xil_printf("(0x80)Image Information 1 for VC4     = 0x%08x\r\n", Xil_In32(XPAR_CSISS_0_BASEADDR+0x80));
//		xil_printf("(0x84)Image Information 2 for VC4     = 0x%08x\r\n", Xil_In32(XPAR_CSISS_0_BASEADDR+0x84));
//		xil_printf("(0x88)Image Information 1 for VC5     = 0x%08x\r\n", Xil_In32(XPAR_CSISS_0_BASEADDR+0x88));
//		xil_printf("(0x8C)Image Information 2 for VC5     = 0x%08x\r\n", Xil_In32(XPAR_CSISS_0_BASEADDR+0x8C));
//		xil_printf("(0x90)Image Information 1 for VC6     = 0x%08x\r\n", Xil_In32(XPAR_CSISS_0_BASEADDR+0x90));
//		xil_printf("(0x94)Image Information 2 for VC6     = 0x%08x\r\n", Xil_In32(XPAR_CSISS_0_BASEADDR+0x94));
//		xil_printf("(0x98)Image Information 1 for VC7     = 0x%08x\r\n", Xil_In32(XPAR_CSISS_0_BASEADDR+0x98));
//		xil_printf("(0x9C)Image Information 2 for VC7     = 0x%08x\r\n", Xil_In32(XPAR_CSISS_0_BASEADDR+0x9C));
//		xil_printf("(0xA0)Image Information 1 for VC8     = 0x%08x\r\n", Xil_In32(XPAR_CSISS_0_BASEADDR+0xA0));
//		xil_printf("(0xA4)Image Information 2 for VC8     = 0x%08x\r\n", Xil_In32(XPAR_CSISS_0_BASEADDR+0xA4));
//		xil_printf("(0xA8)Image Information 1 for VC9     = 0x%08x\r\n", Xil_In32(XPAR_CSISS_0_BASEADDR+0xA8));
//		xil_printf("(0xAC)Image Information 2 for VC9     = 0x%08x\r\n", Xil_In32(XPAR_CSISS_0_BASEADDR+0xAC));
//		xil_printf("(0xB0)Image Information 1 for VC10    = 0x%08x\r\n", Xil_In32(XPAR_CSISS_0_BASEADDR+0xB0));
//		xil_printf("(0xB4)Image Information 2 for VC10    = 0x%08x\r\n", Xil_In32(XPAR_CSISS_0_BASEADDR+0xB4));
//		xil_printf("(0xB8)Image Information 1 for VC11    = 0x%08x\r\n", Xil_In32(XPAR_CSISS_0_BASEADDR+0xB8));
//		xil_printf("(0xBC)Image Information 2 for VC11    = 0x%08x\r\n", Xil_In32(XPAR_CSISS_0_BASEADDR+0xBC));
//		xil_printf("(0xC0)Image Information 1 for VC12    = 0x%08x\r\n", Xil_In32(XPAR_CSISS_0_BASEADDR+0xC0));
//		xil_printf("(0xC4)Image Information 2 for VC12    = 0x%08x\r\n", Xil_In32(XPAR_CSISS_0_BASEADDR+0xC4));
//		xil_printf("(0xC8)Image Information 1 for VC13    = 0x%08x\r\n", Xil_In32(XPAR_CSISS_0_BASEADDR+0xC8));
//		xil_printf("(0xCC)Image Information 2 for VC13    = 0x%08x\r\n", Xil_In32(XPAR_CSISS_0_BASEADDR+0xCC));
//		xil_printf("(0xD0)Image Information 1 for VC14    = 0x%08x\r\n", Xil_In32(XPAR_CSISS_0_BASEADDR+0xD0));
//		xil_printf("(0xD4)Image Information 2 for VC14    = 0x%08x\r\n", Xil_In32(XPAR_CSISS_0_BASEADDR+0xD4));
//		xil_printf("(0xD8)Image Information 1 for VC15    = 0x%08x\r\n", Xil_In32(XPAR_CSISS_0_BASEADDR+0xD8));
//		xil_printf("(0xDC)Image Information 2 for VC15    = 0x%08x\r\n", Xil_In32(XPAR_CSISS_0_BASEADDR+0xDC));
//
//		xil_printf("(0x00)D-PHY CONTROL                   = 0x%08x\r\n", Xil_In32(XPAR_CSISS_0_BASEADDR+0x1000+0x00));
//		xil_printf("(0x04)D-PHY IDELAY_TAP_VALUE          = 0x%08x\r\n", Xil_In32(XPAR_CSISS_0_BASEADDR+0x1000+0x04));
//		xil_printf("(0x08)D-PHY INIT                      = 0x%08x\r\n", Xil_In32(XPAR_CSISS_0_BASEADDR+0x1000+0x08));
//		xil_printf("(0x10)D-PHY HS_TIMEOUT                = 0x%08x\r\n", Xil_In32(XPAR_CSISS_0_BASEADDR+0x1000+0x10));
//		xil_printf("(0x14)D-PHY ESC_TIMEOUT               = 0x%08x\r\n", Xil_In32(XPAR_CSISS_0_BASEADDR+0x1000+0x14));
//		xil_printf("(0x18)D-PHY CL_STATUS                 = 0x%08x\r\n", Xil_In32(XPAR_CSISS_0_BASEADDR+0x1000+0x18));
//		xil_printf("(0x1C)D-PHY DL0_STATUS                = 0x%08x\r\n", Xil_In32(XPAR_CSISS_0_BASEADDR+0x1000+0x1C));
//		xil_printf("(0x20)D-PHY DL1_STATUS                = 0x%08x\r\n", Xil_In32(XPAR_CSISS_0_BASEADDR+0x1000+0x20));
//		xil_printf("(0x24)D-PHY DL2_STATUS                = 0x%08x\r\n", Xil_In32(XPAR_CSISS_0_BASEADDR+0x1000+0x24));
//		xil_printf("(0x28)D-PHY DL3_STATUS                = 0x%08x\r\n", Xil_In32(XPAR_CSISS_0_BASEADDR+0x1000+0x28));
//		xil_printf("(0x30)D-PHY HS_SETTLE L0              = 0x%08x\r\n", Xil_In32(XPAR_CSISS_0_BASEADDR+0x1000+0x30));
//		xil_printf("(0x48)D-PHY HS_SETTLE L1              = 0x%08x\r\n", Xil_In32(XPAR_CSISS_0_BASEADDR+0x1000+0x48));
//
//		Xil_Out32(XPAR_CSISS_0_BASEADDR+0x24, 0x0);
//	}

    cleanup_platform();
    return 0;
}
