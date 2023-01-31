#include <stdio.h>
#include "platform.h"
#include "xparameters.h"
#include "xil_printf.h"
#include "xil_types.h"
#include "xstatus.h"
#include "xcsi2txss.h"
//#include "xaxis_switch.h"
#include "clk_wiz/clk_wiz.h"
#include "xvidc.h"
#include "tpg/tpg.h"
#include "xvtc.h"
//#include "xvprocss.h"
#include "vtc/video_resolution.h"
#include "vtc/vtiming_gen.h"
#include "xaxivdma.h"
#include "AXI_LITE_REG.h"
#include "xil_exception.h"
#include "xgpio_i2c/xgpio_i2c.h"
#include "version.h"
#include "bitmanip.h"
#include "trace_zzg_debug.h"
#include "config.h"

#define CLK_LOCK            1

//#define FRAME_BUFFER_BASE_ADDR  0x10000000 // for zynq
////#define FRAME_BUFFER_BASE_ADDR  0x81000000 // for microblaze
#define DDR_BASEADDR XPAR_DDR_MEM_BASEADDR
#define FRAME_BUFFER_BASE_ADDR  	(DDR_BASEADDR + (0x10000000))

//#define FRAME_BUFFER_SIZE0      0x4000000
#define FRAME_BUFFER_SIZE0      0x2000000    //0x2000000 for max 4KW RGB888 8bpc
//#define FRAME_BUFFER_SIZE1      0x600000    //0x600000 for max 1080p RGB888 8bpc

#define FRAME_BUFFER_1          FRAME_BUFFER_BASE_ADDR
#define FRAME_BUFFER_2          FRAME_BUFFER_BASE_ADDR + FRAME_BUFFER_SIZE0
#define FRAME_BUFFER_3          FRAME_BUFFER_BASE_ADDR + (FRAME_BUFFER_SIZE0*2)

//XAxis_Switch AxisSwitch0;
//XAxis_Switch AxisSwitch1;
//XAxis_Switch AxisSwitch2;

XClk_Wiz ClkWizInst0;

XVtc        VtcInst0;       /**< Instance of the VTC core. */
XVtc_Config *VtcConfig0;
//XVtc        VtcInst1;       /**< Instance of the VTC core. */
//XVtc_Config *VtcConfig1;
//XVtc        VtcInst2;       /**< Instance of the VTC core. */
//XVtc_Config *VtcConfig2;

XV_tpg tpg_inst0;
XV_tpg_Config *tpg_config0;
//XV_tpg tpg_inst1;
//XV_tpg_Config *tpg_config1;
//XV_tpg tpg_inst2;
//XV_tpg_Config *tpg_config2;

XVidC_ColorFormat colorFmtIn0 = XVIDC_CSF_RGB;
//XVidC_ColorFormat colorFmtIn0 = XVIDC_CSF_YCRCB_422;
XVidC_ColorFormat colorFmtOut0 = XVIDC_CSF_RGB;
//XVidC_ColorFormat colorFmtOut0 = XVIDC_CSF_YCRCB_422;

//XVprocSs VprocInst0;
//XVprocSs_Config *VprocCfgPtr;
XVidC_VideoMode resId;
XVidC_VideoStream StreamIn, StreamOut;
XVidC_VideoTiming const *TimingPtr;
XVidC_FrameRate fpsIn = XVIDC_FR_30HZ;
XVidC_FrameRate fpsOut = XVIDC_FR_30HZ;

u32 bckgndId0=XTPG_BKGND_COLOR_BARS;
u32 bckgndId1=XTPG_BKGND_COLOR_BARS;
u32 bckgndId2=XTPG_BKGND_COLOR_BARS;

XGpio XGpioOutput;

XCsi2TxSs Csi2TxSsInst;	/* The MIPI CSI2 Tx Subsystem instance.*/

/* Assign Mode ID Enumeration. First entry Must be > XVIDC_VM_CUSTOM */
typedef enum {
	XVIDC_VM_1280x3840_30_P = (XVIDC_VM_CUSTOM + 1),
    XVIDC_CM_NUM_SUPPORTED
} XVIDC_CUSTOM_MODES;

/* Create entry for each mode in the custom table */
const XVidC_VideoTimingMode XVidC_MyVideoTimingMode[(XVIDC_CM_NUM_SUPPORTED - (XVIDC_VM_CUSTOM + 1))] =
{
    { XVIDC_VM_1280x3840_30_P, "1280x3840@30Hz", XVIDC_FR_30HZ,
        {1280, 110, 40, 220, 1650, 1,
        		3840, 5, 5, 20, 3870, 0, 0, 0, 0, 1} }
};

struct reginfo
{
	u8	addr;
    u16 reg;
    u8 	val;
};
#define SEQUENCE_PROPERTY    0xFFFD
#define SEQUENCE_WAIT_MS     0xFFFE
#define SEQUENCE_END	     0xFFFF

struct reginfo cfg_gmsl[] =
{
	{0x80, SEQUENCE_WAIT_MS, 0x80},

	// [4]=1, Remote control channel disabled
	// [3:2]=0b01, 3Gbps tx rate
	// [3:2]=0b10, 6Gbps tx rate
	// [3:2]=0b11, 12Gbps tx rate
	{0x80, 0x0001, 0x0c},

    // mipi_rx
    // [7]=0, Extended VC disabled
    // [6]=0, Deskew calibration disabled
    // [5:4]=0b11, use four data lanes
	{0x80, 0x0331, 0x33},

	// [7]=0, Select Pixel mode
	// [6]=0, Select DPHY
	// [1:0]=0, DPHY mode
	{0x80, 0x0383, 0x00},

	//[6]=1, Datatype enabled for datatype selected to route to video pipeline
	//[5:0]=0x1E, Datatype YUV422_8bit
//	{0x80, 0x0318, 0x5E},
	{0x80, 0x0318, 0x64},//rgb888

	//[4]=1, GPIO pin local MFP input level, This GPIO pin output is driven to 1
	{0x80, 0x02BE, 0x10},
	//[4]=1, GPIO pin local MFP input level, This GPIO pin output is driven to 1
	{0x80, 0x02D3, 0x10},

	// [5:4]=0b00, Slew rate setting for MFP4 pin. 00 value is the fastest rise and fall time
	// [3:2]=0b00, Slew rate setting for MFP3 pin. 00 value is the fastest rise and fall time
	{0x80, 0x0570, 0x00},

	// [7]=0, Select REFGEN_PLL output for PCLK output on MFP
	// [5:1]=0x4, PCLK_GPIO, MFP pin selected for PCLK output
	// [0]=1, Enable PCLK output on MFP selected by PCLK_GPIO
	{0x80, 0x03F1, 0x09},

	// [6]=1,  Enable pre-defined clock settings for reference generation PLL
	// [5:4]=0b01, 27.0 MHz / 24MHz (ALT), Pre-defined reference generation PLL frequency
	// [3]=0, Original table (27MHz)
	// [1]=0, Do not reset reference generation PLL
	// [0]=1, Enable reference generation PLL
	{0x80, 0x03F0, 0x51},

	// Value of I2C SRC_A
	{0x80, 0x0042, 0x22},

	// Value of I2C DST_A
	{0x80, 0x0043, 0x20},

	// [6]=0, enable MIPI continuous clock
	// [5]=0, Disable virtual channel mapping
	// [3]=0, Do not reset MIPI RX
	// [2]=?
//	{0x80, 0x0330, 0x04},

	{0x80, SEQUENCE_END, 0x00},
};

struct reginfo cfg_gmsl_717F[] =
{
//	{0x80, 0x0001, 0x08},// default 0x08, 6Gbps mode
	{0x80, 0x0001, 0x04},// 3Gbps mode, 717F operates at a fixed rate of 3Gbps
//	{0x80, 0x0010, 0xA0},// reset link and registers
	{0x80, 0x0010, 0xA1},// reset link and registers

	{0x80, SEQUENCE_WAIT_MS, 0x80},//delay for a while
	{0x80, 0x0331, 0x30},//default 0x30, 4lane
//	{0x80, 0x0332, 0xE0},
//	{0x80, 0x0383, 0x00},
	{0x80, 0x0318, 0x6C},//mem_dt1_selz, raw12
//	{0x80, 0x0319, 0x00},//mem_dt2_selz

//	{0x80, 0x0002, 0x43},//pipeline z

	{0x80, SEQUENCE_END, 0x00}
};

#if 0
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

void axis_switch_cfg(void)
{
    u32 Status;

//    AxisSwitch(XPAR_AXIS_SWITCH_0_DEVICE_ID, &AxisSwitch0, 0, 1); // tpg
    AxisSwitch(XPAR_AXIS_SWITCH_0_DEVICE_ID, &AxisSwitch0, 0, 0); // csi-rx

//    AxisSwitch(XPAR_AXIS_SWITCH_1_DEVICE_ID, &AxisSwitch1, 0, 1); // tpg
	AxisSwitch(XPAR_AXIS_SWITCH_1_DEVICE_ID, &AxisSwitch1, 0, 0); // csi-rx

//    AxisSwitch(XPAR_AXIS_SWITCH_2_DEVICE_ID, &AxisSwitch2, 0, 1); // tpg
	AxisSwitch(XPAR_AXIS_SWITCH_2_DEVICE_ID, &AxisSwitch2, 0, 0); // csi-rx
}
#endif

void clkwiz_vtc_cfg(void)
{
    u32 Status;

#if 1
    // dynamic config clkwiz
    Status = XClk_Wiz_dynamic_reconfig(&ClkWizInst0, XPAR_CLK_WIZ_0_DEVICE_ID);
    if (Status != XST_SUCCESS)
    {
      xil_printf("XClk_Wiz0 dynamic reconfig failed.\r\n");
//      return XST_FAILURE;
    }
    xil_printf("XClk_Wiz0 dynamic reconfig ok\n\r");
#endif

    // vtc configuration
    VtcConfig0 = XVtc_LookupConfig(XPAR_VTC_0_DEVICE_ID);
    Status = XVtc_CfgInitialize(&VtcInst0, VtcConfig0, VtcConfig0->BaseAddress);
    if(Status != XST_SUCCESS)
    {
        xil_printf("VTC0 Initialization failed %d\r\n", Status);
//      return(XST_FAILURE);
    }

    vtiming_gen_run(&VtcInst0, VIDEO_RESOLUTION_FHDPLUS, 2);
}

void tpg_config()
{
    u32 Status;

    // tpg0
    xil_printf("TPG0 Initializing\n\r");

    Status = XV_tpg_Initialize(&tpg_inst0, XPAR_V_TPG_0_DEVICE_ID);
    if(Status!= XST_SUCCESS)
    {
        xil_printf("TPG0 configuration failed\r\n");
//      return(XST_FAILURE);
    }

    tpg_cfg(&tpg_inst0, 1280, 1920, colorFmtIn0, bckgndId0);

    //Configure the moving box of the TPG0
    tpg_box(&tpg_inst0, 50, 1);

    //Start the TPG0
    XV_tpg_EnableAutoRestart(&tpg_inst0);
    XV_tpg_Start(&tpg_inst0);
    xil_printf("TPG0 started!\r\n");
}

void vdma_config_64(void)
{
    /* Start of VDMA Configuration */
    u32 bytePerPixels = 2;

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
    int offset1 = 0; // (y*w+x)*Bpp

    u32 stride0 = 1920;
    u32 width0 = 1920;
    u32 height0 = 1280;
    u32 stride1 = 1920;  // crop keeps write Stride
    u32 width1 = 1920;
    u32 height1 = 1280;

    /* Configure the Write interface (S2MM)*/
    // S2MM Control Register
    Xil_Out32(XPAR_AXI_VDMA_0_BASEADDR + 0x30, 0x8B);
    //S2MM Start Address 1
    Xil_Out32(XPAR_AXI_VDMA_0_BASEADDR + 0xAC, FRAME_BUFFER_1 + offset0);
    Xil_Out32(XPAR_AXI_VDMA_0_BASEADDR + 0xB0, 0);
    //S2MM Start Address 2
    Xil_Out32(XPAR_AXI_VDMA_0_BASEADDR + 0xB4, FRAME_BUFFER_2 + offset0);
    Xil_Out32(XPAR_AXI_VDMA_0_BASEADDR + 0xB8, 0);
    //S2MM Start Address 3
    Xil_Out32(XPAR_AXI_VDMA_0_BASEADDR + 0xBC, FRAME_BUFFER_3 + offset0);
    Xil_Out32(XPAR_AXI_VDMA_0_BASEADDR + 0xC0, 0);
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
    Xil_Out32(XPAR_AXI_VDMA_0_BASEADDR + 0x60, 0);
    // MM2S Start Address 2
    Xil_Out32(XPAR_AXI_VDMA_0_BASEADDR + 0x64, FRAME_BUFFER_2 + offset1);
    Xil_Out32(XPAR_AXI_VDMA_0_BASEADDR + 0x68, 0);
    // MM2S Start Address 3
    Xil_Out32(XPAR_AXI_VDMA_0_BASEADDR + 0x6C, FRAME_BUFFER_3 + offset1);
    Xil_Out32(XPAR_AXI_VDMA_0_BASEADDR + 0x70, 0);
    // MM2S Frame delay / Stride register
    Xil_Out32(XPAR_AXI_VDMA_0_BASEADDR + 0x58, stride1*bytePerPixels);
    // MM2S HSIZE register
    Xil_Out32(XPAR_AXI_VDMA_0_BASEADDR + 0x54, width1*bytePerPixels);
    // MM2S VSIZE register
    Xil_Out32(XPAR_AXI_VDMA_0_BASEADDR + 0x50, height1);

    xil_printf("VDMA started!\r\n");
    /* End of VDMA Configuration */
}

int max929x_write(i2c_no i2c, u8 addr, u16 reg, u8 data)
{
    int ret;
    ret = xgpio_i2c_reg16_write(i2c, addr >> 1, reg, data, STRETCH_ON);
    return ret;
}

void max929x_write_array(i2c_no i2c, struct reginfo *regarray)
{
    int i = 0;

    while(regarray[i].reg != SEQUENCE_END)
    {
        if(regarray[i].reg == SEQUENCE_WAIT_MS)
        {
            usleep((regarray[i].val) * 1000);
        }
        else
        {
            max929x_write(i2c, regarray[i].addr, regarray[i].reg, regarray[i].val);
        }
        i++;
    }
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

#if 1
u32 Csi2TxSs_Init(u32 DeviceId)
{
	u32 Status;
	XCsi2TxSs_Config *ConfigPtr;

	/* Obtain the device configuration for the MIPI CSI2 TX Subsystem */
	ConfigPtr = XCsi2TxSs_LookupConfig(DeviceId);
	if (!ConfigPtr) {
		return XST_FAILURE;
	}

//	ConfigPtr->DataType = 0x24; // RGB888
//	ConfigPtr->DataType = 0x2A; // RAW8
//	ConfigPtr->DataType = 0x2B; // RAW10
	ConfigPtr->DataType = 0x2C;
//	ConfigPtr->DataType = 0x1E;
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
#endif

int main()
{
    u32 ret32;

    init_platform();

    XGpioSetup(&XGpioOutput, XPAR_GPIO_0_DEVICE_ID) ;

    xgpio_init();

    xil_printf("***************************\n\r");
    print("1920x1280@30_RAW12_out_9295\r\n");
    xil_printf("\r\n%s,%s\r\n",__DATE__,__TIME__);

#ifdef XPAR_AXI_LITE_REG_NUM_INSTANCES
    if(XPAR_AXI_LITE_REG_0_DEVICE_ID == 0)
    {
        printf("hardware ver = 0x%08x\n", AXI_LITE_REG_mReadReg(XPAR_AXI_LITE_REG_0_S00_AXI_BASEADDR, AXI_LITE_REG_S00_AXI_SLV_REG0_OFFSET));
    }
#endif
    printf("software ver = 0x%08x\n", __SW_VER__);
    xil_printf("***************************\n\r");

//	XGpio_DiscreteWrite(&XGpioOutput, 1, 0x24); // RGB888
//	XGpio_DiscreteWrite(&XGpioOutput, 1, 0x2A); // RAW8
//	XGpio_DiscreteWrite(&XGpioOutput, 1, 0x2B); // RAW10
	XGpio_DiscreteWrite(&XGpioOutput, 1, 0x2C); // RAW12
//	XGpio_DiscreteWrite(&XGpioOutput, 1, 0x1E); // YUV422_8bit
//	XGpio_DiscreteWrite(&XGpioOutput, 2, VIDEO_COLUMNS*24/8<<16); // WC RGB888
//	XGpio_DiscreteWrite(&XGpioOutput, 2, 3840*24/8<<16); // WC RGB888
	XGpio_DiscreteWrite(&XGpioOutput, 2, (1920*12/8)<<16); // WC RAW12
//	XGpio_DiscreteWrite(&XGpioOutput, 2, (VIDEO_COLUMNS*10/8)<<16); // WC RAW10
//	XGpio_DiscreteWrite(&XGpioOutput, 2, (1920*16/8)<<16); // WC YUV422_8bit

#if 1
    // MAX96717F config
    u8 ret8=0;
    ret32 = xgpio_i2c_reg16_read(I2C_NO_1, 0x80>>1, 0x0000, &ret8, STRETCH_ON);
    ret32 = xgpio_i2c_reg16_read(I2C_NO_1, 0x80>>1, 0x0001, &ret8, STRETCH_ON);

    max929x_write_array(I2C_NO_1, cfg_gmsl_717F);
#endif

//    axis_switch_cfg();
    clkwiz_vtc_cfg();
    tpg_config();
//    clear_display();
    vdma_config_64();

#if 1
    ret32 = Csi2TxSs_Init(XPAR_CSI2TXSS_0_DEVICE_ID);
    XCsi2TxSs_SetClkMode(&Csi2TxSsInst, 0);
    XCsi2TxSs_Activate(&Csi2TxSsInst, XCSI2TX_ENABLE);
#endif

    while(1)
    {
//    	ret32 = xgpio_i2c_reg16_read(I2C_NO_0, 0x80>>1, 0x0000, &ret8, STRETCH_ON);
    }
    /* never reached */
    cleanup_platform();
    return 0;
}
