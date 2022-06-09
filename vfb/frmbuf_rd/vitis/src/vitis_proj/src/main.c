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

//#include "xaxivdma.h"
#include "xv_frmbufrd_l2.h"
#include "xv_frmbufwr_l2.h"

#include "xgpio.h"

#include "xiicps.h"
#include "PS_i2c.h"

#include "sleep.h"

#include "bitmanip.h"
#include "trace_zzg_debug.h"

#include "config.h"

#define IIC_SCLK_RATE		100000

#if defined(__MICROBLAZE__)
#define DDR_BASEADDR XPAR_MIG7SERIES_0_BASEADDR
#else
#define DDR_BASEADDR XPAR_DDR_MEM_BASEADDR
#endif

#define XVFRMBUFRD_BUFFER_BASEADDR (DDR_BASEADDR + (0x10000000))
#define XVFRMBUFWR_BUFFER_BASEADDR (DDR_BASEADDR + (0x10000000))
#define CHROMA_ADDR_OFFSET   (0x01000000U)
#define FRMBUF_IDLE_TIMEOUT (1000000)
#define NUM_FORMATS 26

#if defined (USE_REG_ACCESS)
#define WIDTH_IN 960
#define HEIGHT_IN 540
#endif

//#define USR_FRAME_BUF_BASEADDR     	(DDR_BASEADDR + (0x20000000))

//mapping between memory and streaming video formats
typedef struct {
  XVidC_ColorFormat MemFormat;
  XVidC_ColorFormat StreamFormat;
  u16 FormatBits;
} VideoFormats;

VideoFormats ColorFormats[NUM_FORMATS] =
{
  //memory format            stream format        bits per component
  {XVIDC_CSF_MEM_RGBX8,      XVIDC_CSF_RGB,       8},
  {XVIDC_CSF_MEM_YUVX8,      XVIDC_CSF_YCRCB_444, 8},
  {XVIDC_CSF_MEM_YUYV8,      XVIDC_CSF_YCRCB_422, 8},
  {XVIDC_CSF_MEM_RGBX10,     XVIDC_CSF_RGB,       10},
  {XVIDC_CSF_MEM_YUVX10,     XVIDC_CSF_YCRCB_444, 10},
  {XVIDC_CSF_MEM_Y_UV8,      XVIDC_CSF_YCRCB_422, 8},
  {XVIDC_CSF_MEM_Y_UV8_420,  XVIDC_CSF_YCRCB_420, 8},
  {XVIDC_CSF_MEM_RGB8,       XVIDC_CSF_RGB,       8},
  {XVIDC_CSF_MEM_YUV8,       XVIDC_CSF_YCRCB_444, 8},
  {XVIDC_CSF_MEM_Y_UV10,     XVIDC_CSF_YCRCB_422, 10},
  {XVIDC_CSF_MEM_Y_UV10_420, XVIDC_CSF_YCRCB_420, 10},
  {XVIDC_CSF_MEM_Y8,         XVIDC_CSF_YONLY, 8},
  {XVIDC_CSF_MEM_Y10,        XVIDC_CSF_YONLY, 10},
  {XVIDC_CSF_MEM_BGRX8,      XVIDC_CSF_RGB,       8},
  {XVIDC_CSF_MEM_UYVY8,      XVIDC_CSF_YCRCB_422, 8},
  {XVIDC_CSF_MEM_BGR8,       XVIDC_CSF_RGB,       8},
  {XVIDC_CSF_MEM_RGBX12,     XVIDC_CSF_RGB,       12},
  {XVIDC_CSF_MEM_RGB16,      XVIDC_CSF_RGB,       16},
  {XVIDC_CSF_MEM_YUVX12,     XVIDC_CSF_YCRCB_444, 12},
  {XVIDC_CSF_MEM_YUV16,      XVIDC_CSF_YCRCB_444, 16},
  {XVIDC_CSF_MEM_Y_UV12,     XVIDC_CSF_YCRCB_422, 12},
  {XVIDC_CSF_MEM_Y_UV16,     XVIDC_CSF_YCRCB_422, 16},
  {XVIDC_CSF_MEM_Y_UV12_420, XVIDC_CSF_YCRCB_420, 12},
  {XVIDC_CSF_MEM_Y_UV16_420, XVIDC_CSF_YCRCB_420, 16},
  {XVIDC_CSF_MEM_Y12,        XVIDC_CSF_YONLY, 12},
  {XVIDC_CSF_MEM_Y16,        XVIDC_CSF_YONLY, 16}
};

/* Assign Mode ID Enumeration. First entry Must be > XVIDC_VM_CUSTOM */
typedef enum {
	XVIDC_VM_1280x3840_30_P = (XVIDC_VM_CUSTOM + 1),
	XVIDC_VM_320x960_30_P,
	XVIDC_VM_1920x2160_30_P,
	XVIDC_VM_960x1080_30_P,
	XVIDC_VM_960x540_60_P,
    XVIDC_CM_NUM_SUPPORTED
} XVIDC_CUSTOM_MODES;

/* Create entry for each mode in the custom table */
const XVidC_VideoTimingMode XVidC_MyVideoTimingMode[(XVIDC_CM_NUM_SUPPORTED - (XVIDC_VM_CUSTOM + 1))] =
{
    { XVIDC_VM_1280x3840_30_P, "1280x3840@30Hz", XVIDC_FR_30HZ,
        {1280, 110, 40, 220, 1650, 1,
        		3840, 5, 5, 20, 3870, 0, 0, 0, 0, 1} },
    { XVIDC_VM_320x960_30_P, "320x960@30Hz", XVIDC_FR_30HZ,
        {320, 10, 10, 10, 350, 1,
        		960, 5, 5, 10, 980, 0, 0, 0, 0, 1} },
    { XVIDC_VM_1920x2160_30_P, "1920x2160@30Hz", XVIDC_FR_30HZ,
		{1920, 10, 10, 10, 1950, 1,
				2160, 5, 5, 10, 2180, 0, 0, 0, 0, 1} },
	{ XVIDC_VM_960x1080_30_P, "960x1080@30Hz", XVIDC_FR_30HZ,
		{960, 10, 10, 10, 990, 1,
				1080, 5, 5, 10, 1100, 0, 0, 0, 0, 1} },
    { XVIDC_VM_960x540_60_P, "960x540@60Hz", XVIDC_FR_60HZ,
		{960, 10, 10, 10, 990, 1,
				540, 5, 5, 10, 560, 0, 0, 0, 0, 1} }
};

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

XV_FrmbufRd_l2     frmbufrd;
XV_frmbufrd_Config frmbufrd_cfg;
XV_FrmbufWr_l2     frmbufwr;
XV_frmbufwr_Config frmbufwr_cfg;
XVidC_VideoStream  VidStreamIn;
XVidC_VideoStream  VidStreamOut;

XVidC_ColorFormat colorFmtIn = XVIDC_CSF_RGB;
u32 bckgndId = XTPG_BKGND_COLOR_BARS;

u32 volatile *gpio_hlsIpReset;

/*****************************************************************************/
/**
 * This function toggles HW reset line for all IP's
 *
 * @return None
 *
 *****************************************************************************/
void resetIp(void)
{
#if !defined (USE_REG_ACCESS)
  /* Stop Frame Buffer and wait for IDLE */
  XVFrmbufWr_Stop(&frmbufwr);
  XVFrmbufRd_Stop(&frmbufwr);
#else
  u32 cnt = 0;
  u32 Register;
  Xil_Out32(XPAR_V_FRMBUF_WR_0_S_AXI_CTRL_BASEADDR + 0x00, 0);
  Xil_Out32(XPAR_V_FRMBUF_RD_0_S_AXI_CTRL_BASEADDR + 0x00, 0);
  Xil_Out32(XPAR_V_FRMBUF_WR_0_S_AXI_CTRL_BASEADDR + 0x00, 0x20);
  Xil_Out32(XPAR_V_FRMBUF_RD_0_S_AXI_CTRL_BASEADDR + 0x00, 0x20);
  do
  {
  	Register=Xil_In32(XPAR_V_FRMBUF_WR_0_S_AXI_CTRL_BASEADDR + 0);
  	cnt++;
  } while((CHB(Register,BIT32(6))==0) && (cnt < 1000000));
  cnt = 0;
  do
  {
  	Register=Xil_In32(XPAR_V_FRMBUF_RD_0_S_AXI_CTRL_BASEADDR + 0);
  	cnt++;
  } while((CHB(Register,BIT32(6))==1) && (cnt < 1000000));
#endif

  xil_printf("\r\nReset HLS IP \r\n");
  *gpio_hlsIpReset = 0;  //reset IPs
  usleep(1000);          //hold reset line
  *gpio_hlsIpReset = 1;  //release reset
  usleep(1000);          //wait
}

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
    vtiming_gen_run(&vtc_inst, VIDEO_RESOLUTION_1080P, 0);
}

void tpg_config(void)
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
#if !defined (USE_REG_ACCESS)
    tpg_cfg(&tpg_inst0, VidStreamIn.Timing.VActive, VidStreamIn.Timing.HActive, VidStreamIn.ColorFormatId, bckgndId);
#else
	tpg_cfg(&tpg_inst0, HEIGHT_IN, WIDTH_IN, colorFmtIn, bckgndId);
#endif
    //Configure the moving box of the TPG0
    tpg_box(&tpg_inst0, 25, 1);

    //Start the TPG
    XV_tpg_EnableAutoRestart(&tpg_inst0);
    XV_tpg_Start(&tpg_inst0);
    //xil_printf("TPG started!\r\n");
}

void XV_tpg_Stop(XV_tpg *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XV_tpg_ReadReg(InstancePtr->Config.BaseAddress, XV_TPG_CTRL_ADDR_AP_CTRL) & 0x80;
    XV_tpg_WriteReg(InstancePtr->Config.BaseAddress, XV_TPG_CTRL_ADDR_AP_CTRL, Data &~ 0x01);
}

void *XVFrameBufferRdCallback(void *data)
{
    //xil_printf("\nFrame Buffer Read interrupt received.\r\n");
      XVFrmbufRd_Start(&frmbufrd);
}

void *XVFrameBufferWrCallback(void *data)
{
    //xil_printf("\nFrame Buffer Read interrupt received.\r\n");
      XVFrmbufWr_Start(&frmbufwr);
}

/*****************************************************************************/
/**
 * This function initializes and configures the system interrupt controller
 *
 * @return XST_SUCCESS if init is OK else XST_FAILURE
 *
 *****************************************************************************/
static int SetupInterrupts(void)
{
#if defined(__MICROBLAZE__)
  int Status;
  XIntc *IntcPtr = &intc;

  /* Initialize the Interrupt controller */
  Status = XIntc_Initialize(IntcPtr,
                            XPAR_PROCESSOR_SS_PROCESSOR_AXI_INTC_DEVICE_ID);
  if(Status != XST_SUCCESS) {
    xil_printf("ERROR:: Interrupt controller device not found\r\n");
    return(XST_FAILURE);
  }

  /* Hook up interrupt service routine */
  Status = XIntc_Connect(IntcPtr,
                         XPAR_PROCESSOR_SS_PROCESSOR_AXI_INTC_V_FRMBUF_RD_0_INTERRUPT_INTR,
                         (XInterruptHandler)XVFrmbufRd_InterruptHandler,
                         &frmbufrd);
  if (Status != XST_SUCCESS) {
    xil_printf("ERROR:: FRMBUF RD interrupt connect failed!\r\n");
    return XST_FAILURE;
  }

  Status = XIntc_Connect(IntcPtr,
                         XPAR_PROCESSOR_SS_PROCESSOR_AXI_INTC_V_FRMBUF_WR_0_INTERRUPT_INTR,
                         (XInterruptHandler)XVFrmbufWr_InterruptHandler,
                         &frmbufwr);
  if (Status != XST_SUCCESS) {
    xil_printf("ERROR:: FRMBUF WR interrupt connect failed!\r\n");
    return XST_FAILURE;
  }

  /* Enable the interrupt vector at the interrupt controller */
  XIntc_Enable(IntcPtr,
               XPAR_PROCESSOR_SS_PROCESSOR_AXI_INTC_V_FRMBUF_RD_0_INTERRUPT_INTR);
  XIntc_Enable(IntcPtr,
               XPAR_PROCESSOR_SS_PROCESSOR_AXI_INTC_V_FRMBUF_WR_0_INTERRUPT_INTR);

  /*
   * Start the interrupt controller such that interrupts are recognized
   * and handled by the processor
   */
  Status = XIntc_Start(IntcPtr, XIN_REAL_MODE);
  if (Status != XST_SUCCESS) {
    xil_printf("ERROR:: Failed to start interrupt controller\r\n");
    return XST_FAILURE;
  }

#else
  int Status;
  XScuGic *IntcPtr = &intc;

  /* Initialize the Interrupt controller */
  XScuGic_Config *IntcCfgPtr;
  IntcCfgPtr = XScuGic_LookupConfig(XPAR_SCUGIC_0_DEVICE_ID);
  if(IntcCfgPtr == NULL)
  {
    print("ERR:: Interrupt Controller not found");
    return (XST_DEVICE_NOT_FOUND);
  }
  Status = XScuGic_CfgInitialize(IntcPtr,
                                 IntcCfgPtr,
                                 IntcCfgPtr->CpuBaseAddress);
  if (Status != XST_SUCCESS) {
    xil_printf("Intc initialization failed!\r\n");
    return XST_FAILURE;
  }

  /* Hook up interrupt service routine */
  Status |= XScuGic_Connect(IntcPtr,
                            XPAR_FABRIC_V_FRMBUF_RD_0_INTERRUPT_INTR,
                            (XInterruptHandler)XVFrmbufRd_InterruptHandler,
                            (void *)&frmbufrd);
  Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_INT,
                               (Xil_ExceptionHandler) XScuGic_InterruptHandler,
                               IntcPtr);
  if (Status != XST_SUCCESS) {
    xil_printf("ERR:: Frame Buffer Read interrupt connect failed!\r\n");
    return XST_FAILURE;
  }

  /* Enable the interrupt vector at the interrupt controller */
  XScuGic_Enable(IntcPtr, XPAR_FABRIC_V_FRMBUF_RD_0_INTERRUPT_INTR);

  /* Hook up interrupt service routine */
  Status |= XScuGic_Connect(IntcPtr,
                            XPAR_FABRIC_V_FRMBUF_WR_0_INTERRUPT_INTR,
                            (XInterruptHandler)XVFrmbufWr_InterruptHandler,
                            (void *)&frmbufwr);
  if (Status != XST_SUCCESS) {
    xil_printf("ERR:: Frame Buffer Read interrupt connect failed!\r\n");
    return XST_FAILURE;
  }

  /* Enable the interrupt vector at the interrupt controller */
  XScuGic_Enable(IntcPtr, XPAR_FABRIC_V_FRMBUF_WR_0_INTERRUPT_INTR);

#endif

  return(XST_SUCCESS);
}

/*****************************************************************************/
/**
 * This function checks if video mode and format are supported by HW
 *
 * @return TRUE if testcase is valid else FALSE
 *
 *****************************************************************************/
static int ValidateTestCase(u16 PixPerClk,
                            XVidC_VideoMode Mode,
                            u16 DataWidth,
                            VideoFormats Format)
{
  int Status = TRUE;
  int valid_mode = TRUE;
  int valid_format = TRUE;


  if ((PixPerClk == 1) && (Mode == XVIDC_VM_UHD_60_P)) {
    xil_printf("Video Mode %s not supported for 1 pixel/clock\r\n", XVidC_GetVideoModeStr(Mode));
    valid_mode = 0;
  } else {
    valid_mode = 1;
  }

  if (DataWidth == 16 && Format.FormatBits <= 16) {
      //all Memory Video Formats supported
      valid_format = TRUE;
  } else if (DataWidth == 12 && Format.FormatBits <= 12) {
      //only 12-bit 10-bit and 8-bit Memory Video Formats supported
      valid_format = TRUE;
  } else if (DataWidth == 10 && Format.FormatBits <= 10) {
      //only 10-bit and 8-bit Memory Video Formats supported
      valid_format = TRUE;
  } else if (DataWidth == 8 && Format.FormatBits == 8) {
      //only 8-bit Memory Video Formats supported
      valid_format = TRUE;
  } else {
      valid_format = FALSE;
      xil_printf("Video Format %s is not supported in hardware\r\n",
                 XVidC_GetColorFormatStr(Format.MemFormat));
  }

  Status = (valid_mode && valid_format);
  return(Status);
}

/*****************************************************************************/
/**
 * This function calculates the stride
 *
 * @returns stride in bytes
 *
 *****************************************************************************/
static u32 CalcStride(XVidC_ColorFormat Cfmt,
                      u16 AXIMMDataWidth,
                      XVidC_VideoStream *StreamPtr)
{
  u32 stride;
  int width = StreamPtr->Timing.HActive;
  u16 MMWidthBytes = AXIMMDataWidth/8;
  u8 bpp_numerator;
  u8 bpp_denominator = 1;

  switch (Cfmt) {
    case XVIDC_CSF_MEM_Y_UV10:
    case XVIDC_CSF_MEM_Y_UV10_420:
    case XVIDC_CSF_MEM_Y10:
      /* 4 bytes per 3 pixels (Y_UV10, Y_UV10_420, Y10) */
      bpp_numerator = 4;
      bpp_denominator = 3;
      break;
    case XVIDC_CSF_MEM_Y_UV8:
    case XVIDC_CSF_MEM_Y_UV8_420:
    case  XVIDC_CSF_MEM_Y8:
      /* 1 byte per pixel (Y_UV8, Y_UV8_420, Y8) */
      bpp_numerator = 1;
      break;
    case XVIDC_CSF_MEM_RGB8:
    case  XVIDC_CSF_MEM_YUV8:
    case XVIDC_CSF_MEM_BGR8:
      /* 3 bytes per pixel (RGB8, YUV8, BGR8) */
      bpp_numerator = 3;
      break;
    case XVIDC_CSF_MEM_RGBX12:
    case  XVIDC_CSF_MEM_YUVX12:
      /* 5 bytes per pixel (RGBX12, YUVX12) */
      bpp_numerator = 5;
      break;
    case XVIDC_CSF_MEM_Y_UV12:
    case  XVIDC_CSF_MEM_Y_UV12_420:
    case XVIDC_CSF_MEM_Y12:
      /* 3 bytes per 2 pixels (Y_UV12, Y_UV12_420, Y12) */
      bpp_numerator = 3;
      bpp_denominator = 2;
      break;
    case XVIDC_CSF_MEM_RGB16:
    case XVIDC_CSF_MEM_YUV16:
      /* 6 bytes per pixel (RGB16, YUV16) */
      bpp_numerator = 6;
      break;
    case XVIDC_CSF_MEM_YUYV8:
    case XVIDC_CSF_MEM_UYVY8:
    case XVIDC_CSF_MEM_Y_UV16:
    case XVIDC_CSF_MEM_Y_UV16_420:
    case XVIDC_CSF_MEM_Y16:
      /* 2 bytes per pixel (YUYV8, UYVY8, Y_UV16, Y_UV16_420, Y16) */
      bpp_numerator = 2;
      break;
    default:
      /* 4 bytes per pixel */
      bpp_numerator = 4;
  }
  stride = ((((width * bpp_numerator) / bpp_denominator) +
    MMWidthBytes - 1) / MMWidthBytes) * MMWidthBytes;

  return(stride);
}

/*****************************************************************************/
/**
 * This function configures Frame Buffer for defined mode
 *
 * @return XST_SUCCESS if init is OK else XST_FAILURE
 *
 *****************************************************************************/
static int ConfigFrmbuf(u32 StrideInInBytes,
                        XVidC_ColorFormat CfmtIn,
                        XVidC_VideoStream *StreamInPtr,
						u32 StrideOutInBytes,
						XVidC_ColorFormat CfmtOut,
						XVidC_VideoStream *StreamOutPtr)
{
  int Status;

  /* Stop Frame Buffers */
#if defined (RESET_IP_EN)
  XVFrmbufRd_Stop(&frmbufrd);
  XVFrmbufWr_Stop(&frmbufwr);
  resetIp();
  XVFrmbufWr_WaitForIdle(&frmbufwr);
  XVFrmbufRd_WaitForIdle(&frmbufrd);
#endif

  /* Configure Frame Buffers */
  Status = XVFrmbufRd_SetMemFormat(&frmbufrd, StrideOutInBytes, CfmtOut, StreamOutPtr);
  if(Status != XST_SUCCESS) {
    xil_printf("ERROR:: Unable to configure Frame Buffer Read\r\n");
    return(XST_FAILURE);
  }

  Status = XVFrmbufRd_SetBufferAddr(&frmbufrd, XVFRMBUFRD_BUFFER_BASEADDR);
  if(Status != XST_SUCCESS) {
    xil_printf("ERROR:: Unable to configure Frame Buffer Read buffer address\r\n");
    return(XST_FAILURE);
  }

  /* Set Chroma Buffer Address for semi-planar color formats */
  if ((CfmtIn == XVIDC_CSF_MEM_Y_UV8) || (CfmtIn == XVIDC_CSF_MEM_Y_UV8_420) ||
      (CfmtIn == XVIDC_CSF_MEM_Y_UV10) || (CfmtIn == XVIDC_CSF_MEM_Y_UV10_420) ||
      (CfmtIn == XVIDC_CSF_MEM_Y_UV12) || (CfmtIn == XVIDC_CSF_MEM_Y_UV12_420) ||
      (CfmtIn == XVIDC_CSF_MEM_Y_UV16) || (CfmtIn == XVIDC_CSF_MEM_Y_UV16_420)) {
    Status = XVFrmbufWr_SetChromaBufferAddr(&frmbufwr, XVFRMBUFWR_BUFFER_BASEADDR+CHROMA_ADDR_OFFSET);
    if(Status != XST_SUCCESS) {
      xil_printf("ERROR:: Unable to configure Frame Buffer Write chroma buffer address\r\n");
      return(XST_FAILURE);
    }
  }
  /* Set Chroma Buffer Address for semi-planar color formats */
  if ((CfmtOut == XVIDC_CSF_MEM_Y_UV8) || (CfmtOut == XVIDC_CSF_MEM_Y_UV8_420) ||
      (CfmtOut == XVIDC_CSF_MEM_Y_UV10) || (CfmtOut == XVIDC_CSF_MEM_Y_UV10_420) ||
      (CfmtOut == XVIDC_CSF_MEM_Y_UV12) || (CfmtOut == XVIDC_CSF_MEM_Y_UV12_420) ||
      (CfmtOut == XVIDC_CSF_MEM_Y_UV16) || (CfmtOut == XVIDC_CSF_MEM_Y_UV16_420)) {
    Status = XVFrmbufRd_SetChromaBufferAddr(&frmbufrd, XVFRMBUFRD_BUFFER_BASEADDR+CHROMA_ADDR_OFFSET);
    if(Status != XST_SUCCESS) {
      xil_printf("ERROR:: Unable to configure Frame Buffer Read chroma buffer address\r\n");
      return(XST_FAILURE);
    }
  }

  Status = XVFrmbufWr_SetMemFormat(&frmbufwr, StrideInInBytes, CfmtIn, StreamInPtr);
  if(Status != XST_SUCCESS) {
    xil_printf("ERROR:: Unable to configure Frame Buffer Write\r\n");
    return(XST_FAILURE);
  }

  Status = XVFrmbufWr_SetBufferAddr(&frmbufwr, XVFRMBUFWR_BUFFER_BASEADDR);
  if(Status != XST_SUCCESS) {
    xil_printf("ERROR:: Unable to configure Frame Buffer Write buffer address\r\n");
    return(XST_FAILURE);
  }

  /* Enable Interrupt */
//  XVFrmbufRd_InterruptEnable(&frmbufrd, XVFRMBUFRD_IRQ_DONE_MASK);
//  XVFrmbufWr_InterruptEnable(&frmbufwr, XVFRMBUFWR_IRQ_DONE_MASK);


  /* Enable Auto Restart */
  XVFrmbufRd_InterruptDisable(&frmbufrd, XVFRMBUFRD_IRQ_DONE_MASK);
  XVFrmbufWr_InterruptDisable(&frmbufwr, XVFRMBUFWR_IRQ_DONE_MASK);

  /* Start Frame Buffers */
  XVFrmbufWr_Start(&frmbufwr);
  XVFrmbufRd_Start(&frmbufrd);

  xil_printf("INFO: FRMBUF configured\r\n");
  return(Status);
}


int main(void)
{
    int Status;
    int valid;
    int strideIn;
    int strideOut;

    XVidC_ColorFormat CfmtIn;
    XVidC_VideoTiming const *TimingInPtr;
    XVidC_ColorFormat CfmtOut;
    XVidC_VideoTiming const *TimingOutPtr;

    init_platform();
    /* Setup Reset line and video lock monitor */
    gpio_hlsIpReset = (u32*)XPAR_HLS_IP_RESET_BASEADDR;
    /* Release reset line */
    *gpio_hlsIpReset = 1;


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

#if !defined (USE_REG_ACCESS)
//    Status = SetupInterrupts();
//	if (Status == XST_FAILURE)
//	{
//		xil_printf("ERROR:: Interrupt Setup Failed\r\n");
//		xil_printf("ERROR:: Test could not be completed\r\n");
//		return(1);
//	}

    Status = XVidC_RegisterCustomTimingModes(XVidC_MyVideoTimingMode, (XVIDC_CM_NUM_SUPPORTED - (XVIDC_VM_CUSTOM + 1)));
    if(Status != XST_SUCCESS)
	{
		xil_printf("ERROR:: Register Custom Timing Modes failed\r\n");
		return (1);
	}

	Status = XVFrmbufRd_Initialize(&frmbufrd, XPAR_V_FRMBUF_RD_0_DEVICE_ID);
    if(Status != XST_SUCCESS)
    {
        xil_printf("ERROR:: Frame Buffer Read initialization failed\r\n");
        return (1);
    }

    Status = XVFrmbufWr_Initialize(&frmbufwr, XPAR_V_FRMBUF_WR_0_DEVICE_ID);
    if(Status != XST_SUCCESS)
    {
        xil_printf("ERROR:: Frame Buffer Write initialization failed\r\n");
        return (1);
    }

//    /* Enable exceptions. */
//    Xil_ExceptionEnable();

//    XVFrmbufRd_SetCallback(&frmbufrd, XVFRMBUFRD_HANDLER_DONE, XVFrameBufferRdCallback,
//          (void *)&frmbufrd);
//
//    XVFrmbufWr_SetCallback(&frmbufwr, XVFRMBUFWR_HANDLER_DONE, XVFrameBufferWrCallback,
//          (void *)&frmbufwr);

    /* Setup default streams */
    VidStreamIn.PixPerClk  = frmbufwr.FrmbufWr.Config.PixPerClk;
    VidStreamIn.ColorDepth = frmbufwr.FrmbufWr.Config.MaxDataWidth;
    VidStreamOut.PixPerClk  = frmbufrd.FrmbufRd.Config.PixPerClk;
    VidStreamOut.ColorDepth = frmbufrd.FrmbufRd.Config.MaxDataWidth;

#if defined (RESET_IP_EN)
    resetIp();
#endif

    CfmtIn = XVIDC_CSF_MEM_RGB8;
    CfmtOut = XVIDC_CSF_MEM_RGB8;
    VidStreamIn.ColorFormatId = XVIDC_CSF_RGB;
    VidStreamOut.ColorFormatId = XVIDC_CSF_RGB;
//    VidStreamIn.VmId = XVIDC_VM_720x480_60_P;
//    VidStreamIn.VmId = XVIDC_VM_320x960_30_P;
    VidStreamIn.VmId = XVIDC_VM_960x540_60_P;
    VidStreamOut.VmId = XVIDC_VM_1080_60_P;

    VideoFormats ColorFormat={XVIDC_CSF_MEM_RGB8, XVIDC_CSF_RGB, 8};
//    /* Validate testcase format and mode */
//    valid = ValidateTestCase(frmbufwr.FrmbufWr.Config.PixPerClk,
//                             XVIDC_VM_1080_60_P,
//                             frmbufwr.FrmbufWr.Config.MaxDataWidth,
//                             ColorFormat);
    /* Get mode timing parameters */
    TimingInPtr = XVidC_GetTimingInfo(VidStreamIn.VmId);
    TimingOutPtr = XVidC_GetTimingInfo(VidStreamOut.VmId);
    VidStreamIn.Timing = *TimingInPtr;
    VidStreamOut.Timing = *TimingOutPtr;
    VidStreamIn.FrameRate = XVidC_GetFrameRate(VidStreamIn.VmId);
    VidStreamOut.FrameRate = XVidC_GetFrameRate(VidStreamOut.VmId);

    xil_printf("\r\n********************************************\r\n");
    xil_printf("Test Input Stream: %s (%s)\r\n",
               XVidC_GetVideoModeStr(VidStreamIn.VmId),
               XVidC_GetColorFormatStr(CfmtIn));
    xil_printf("********************************************\r\n");

    /* Configure Frame Buffer */
    strideIn = CalcStride(CfmtIn,
                        frmbufwr.FrmbufWr.Config.AXIMMDataWidth,
                        &VidStreamIn);
    strideOut = CalcStride(CfmtOut,
                            frmbufrd.FrmbufRd.Config.AXIMMDataWidth,
                            &VidStreamOut);

    ConfigFrmbuf(strideOut, CfmtIn, &VidStreamIn, strideOut, CfmtOut, &VidStreamOut);
#else


    u32 Register;
    u32 cnt = 0;
#if defined (RESET_IP_EN)
    Xil_Out32(XPAR_V_FRMBUF_WR_0_S_AXI_CTRL_BASEADDR + 0x00, 0);
    Xil_Out32(XPAR_V_FRMBUF_RD_0_S_AXI_CTRL_BASEADDR + 0x00, 0);

    resetIp();

    do
    {
    	Register=Xil_In32(XPAR_V_FRMBUF_WR_0_S_AXI_CTRL_BASEADDR + 0);
    	cnt++;
    } while((CHB(Register,BIT32(2))!=1) && (cnt < 1000000));
    cnt = 0;
    do
    {
    	Register=Xil_In32(XPAR_V_FRMBUF_RD_0_S_AXI_CTRL_BASEADDR + 0);
    	cnt++;
    } while((CHB(Register,BIT32(2))!=1) && (cnt < 1000000));
#endif

    Xil_Out32(XPAR_V_FRMBUF_WR_0_S_AXI_CTRL_BASEADDR + 0x10, WIDTH_IN);
    Xil_Out32(XPAR_V_FRMBUF_WR_0_S_AXI_CTRL_BASEADDR + 0x18, HEIGHT_IN);
    Xil_Out32(XPAR_V_FRMBUF_WR_0_S_AXI_CTRL_BASEADDR + 0x20, 1920*3);
    Xil_Out32(XPAR_V_FRMBUF_WR_0_S_AXI_CTRL_BASEADDR + 0x28, XVIDC_CSF_MEM_RGB8);
    Xil_Out32(XPAR_V_FRMBUF_WR_0_S_AXI_CTRL_BASEADDR + 0x30, XVFRMBUFWR_BUFFER_BASEADDR); // Addr%(2*PPC*4Bytes)==0
    Register=Xil_In32(XPAR_V_FRMBUF_WR_0_S_AXI_CTRL_BASEADDR + 0x08);
    Xil_Out32(XPAR_V_FRMBUF_WR_0_S_AXI_CTRL_BASEADDR + 0x08, Register & (~0x01));
    Xil_Out32(XPAR_V_FRMBUF_WR_0_S_AXI_CTRL_BASEADDR + 0x04, 0);
    Xil_Out32(XPAR_V_FRMBUF_WR_0_S_AXI_CTRL_BASEADDR + 0x00, 0x80);
    Register=Xil_In32(XPAR_V_FRMBUF_WR_0_S_AXI_CTRL_BASEADDR + 0x00);


    Xil_Out32(XPAR_V_FRMBUF_RD_0_S_AXI_CTRL_BASEADDR + 0x10, 1920);
    Xil_Out32(XPAR_V_FRMBUF_RD_0_S_AXI_CTRL_BASEADDR + 0x18, 1080);
    Xil_Out32(XPAR_V_FRMBUF_RD_0_S_AXI_CTRL_BASEADDR + 0x20, 1920*3);
    Xil_Out32(XPAR_V_FRMBUF_RD_0_S_AXI_CTRL_BASEADDR + 0x28, XVIDC_CSF_MEM_RGB8);
    Xil_Out32(XPAR_V_FRMBUF_RD_0_S_AXI_CTRL_BASEADDR + 0x30, XVFRMBUFRD_BUFFER_BASEADDR); // Addr%(2*PPC*4Bytes)==0
    Register=Xil_In32(XPAR_V_FRMBUF_RD_0_S_AXI_CTRL_BASEADDR + 0x08);
    Xil_Out32(XPAR_V_FRMBUF_RD_0_S_AXI_CTRL_BASEADDR + 0x08, Register & (~0x01));
    Xil_Out32(XPAR_V_FRMBUF_RD_0_S_AXI_CTRL_BASEADDR + 0x04, 0);
    Xil_Out32(XPAR_V_FRMBUF_RD_0_S_AXI_CTRL_BASEADDR + 0x00, 0x80);
    Register=Xil_In32(XPAR_V_FRMBUF_RD_0_S_AXI_CTRL_BASEADDR + 0x00);

    Xil_Out32(XPAR_V_FRMBUF_WR_0_S_AXI_CTRL_BASEADDR + 0x00, (Register & 0x80) | 0x01);
    Xil_Out32(XPAR_V_FRMBUF_RD_0_S_AXI_CTRL_BASEADDR + 0x00, (Register & 0x80) | 0x01);
#endif

    tpg_config();

    while(1)
    {
        asm("NOP");
    }

    cleanup_platform();

    return 0;
}
