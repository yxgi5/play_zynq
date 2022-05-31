#include <stdio.h>
#include "xparameters.h"
#include "platform.h"
#include "platform_config.h"
#if defined (__arm__) || defined(__aarch64__)
#include "xil_printf.h"
#endif
#include "xil_types.h"
#include "xstatus.h"
#include "xil_exception.h"
#include "xil_cache.h"
#include "sleep.h"
#include "clk_wiz/clk_wiz.h"
#include "tpg/tpg.h"
#include "xvidc.h"
#include "xvtc.h"
#include "vtc/video_resolution.h"
#include "vtc/vtiming_gen.h"
#include "xaxivdma.h"
#include "xgpio.h"
#include "PS_i2c.h"
#include "bitmanip.h"
#include "trace_zgg_debug.h"
#include "config.h"

#define DDR_BASEADDR XPAR_DDR_MEM_BASEADDR
#define FRAME_BUFFER_BASE_ADDR  	(DDR_BASEADDR + (0x10000000))
//#define USR_FRAME_BUF_BASEADDR     	(DDR_BASEADDR + (0x20000000))

//#define FRAME_BUFFER_SIZE0      0x2000000    //0x2000000 for max 4KW RGB888 8bpc
#define FRAME_BUFFER_SIZE0      0x600000    //0x600000 for max 1080p RGB888 8bpc

#define FRAME_BUFFER_1          FRAME_BUFFER_BASE_ADDR
#define FRAME_BUFFER_2          FRAME_BUFFER_BASE_ADDR + FRAME_BUFFER_SIZE0
#define FRAME_BUFFER_3          FRAME_BUFFER_BASE_ADDR + (FRAME_BUFFER_SIZE0*2)

XClk_Wiz 	ClkWizInst;
XVtc        VtcInst;       /**< Instance of the VTC core. */
XIicPs 		IicInstance;
XGpio 		GpioOutput;
XV_tpg 		tpg_inst;
XVidC_ColorFormat colorFmtIn = XVIDC_CSF_RGB;
u32 bckgndId=XTPG_BKGND_COLOR_BARS;

void clkwiz_vtc_cfg(void)
{
    u32 Status;
    XVtc_Config *VtcConfig;

    // dynamic config clkwiz
    Status = XClk_Wiz_dynamic_reconfig(&ClkWizInst, XPAR_CLK_WIZ_0_DEVICE_ID);
    if (Status != XST_SUCCESS)
    {
      xil_printf("XClk_Wiz0 dynamic reconfig failed.\r\n");
//      return XST_FAILURE;
    }
    //xil_printf("XClk_Wiz0 dynamic reconfig ok\n\r");

    // vtc configuration
    VtcConfig = XVtc_LookupConfig(XPAR_VTC_0_DEVICE_ID);
    Status = XVtc_CfgInitialize(&VtcInst, VtcConfig, VtcConfig->BaseAddress);
    if(Status != XST_SUCCESS)
    {
        xil_printf("VTC0 Initialization failed %d\r\n", Status);
//      return(XST_FAILURE);
    }
    vtiming_gen_run(&VtcInst, VIDEO_RESOLUTION_1080P, 0);
}

void tpg_config()
{
    u32 Status;

    // tpg
    //xil_printf("TPG Initializing\n\r");

    Status = XV_tpg_Initialize(&tpg_inst, XPAR_V_TPG_0_DEVICE_ID);
    if(Status!= XST_SUCCESS)
    {
        xil_printf("TPG0 configuration failed\r\n");
//      return(XST_FAILURE);
    }

    //Configure the TPG
    tpg_cfg(&tpg_inst, 1080, 1920, colorFmtIn, bckgndId);


    //Configure the moving box of the TPG0
    tpg_box(&tpg_inst, 50, 1);

    //Start the TPG
    XV_tpg_EnableAutoRestart(&tpg_inst);
    XV_tpg_Start(&tpg_inst);
    //xil_printf("TPG started!\r\n");
}

void vdma_config(void)
{
    /* Start of VDMA Configuration */
    u32 bytePerPixels = 3;
    int offset0 = 0; // (y*w+x)*Bpp
    int offset1 = 0; // (y*w+x)*Bpp

    u32 stride0 = 1920;
    u32 width0 = 1920;
    u32 height0 = 1080;
    u32 stride1 = 1920;  // crop keeps write Stride
    u32 width1 = 1920;
    u32 height1 = 1080;

    /* Configure the Write interface (S2MM)*/
    // S2MM Control Register
//    Xil_Out32(XPAR_AXI_VDMA_0_BASEADDR + 0x30, 0x8B);
    Xil_Out32(XPAR_AXI_VDMA_0_BASEADDR + 0x30, 0x04); // reset
    Xil_Out32(XPAR_AXI_VDMA_0_BASEADDR + 0x30, 0x08); // genlock
    //S2MM Start Address 1
    Xil_Out32(XPAR_AXI_VDMA_0_BASEADDR + 0xAC, FRAME_BUFFER_1 + offset0);
    //S2MM Start Address 2
//    Xil_Out32(XPAR_AXI_VDMA_0_BASEADDR + 0xB0, FRAME_BUFFER_2 + offset0);
    Xil_Out32(XPAR_AXI_VDMA_0_BASEADDR + 0xAC + 4, FRAME_BUFFER_2 + offset0);
    //S2MM Start Address 3
    Xil_Out32(XPAR_AXI_VDMA_0_BASEADDR + 0xAC + 8, FRAME_BUFFER_3 + offset0);
//    //S2MM Start Address 4
//    Xil_Out32(XPAR_AXI_VDMA_0_BASEADDR + 0xB8, FRAME_BUFFER_4 + offset0);
//     //S2MM Start Address 5
//    Xil_Out32(XPAR_AXI_VDMA_0_BASEADDR + 0xBC, FRAME_BUFFER_5 + offset0);
//    //S2MM Start Address 6
//    Xil_Out32(XPAR_AXI_VDMA_0_BASEADDR + 0xC0, FRAME_BUFFER_6 + offset0);
//    //S2MM Start Address 7
//    Xil_Out32(XPAR_AXI_VDMA_0_BASEADDR + 0xC4, FRAME_BUFFER_7 + offset0);
//    //S2MM Start Address 8
//    Xil_Out32(XPAR_AXI_VDMA_0_BASEADDR + 0xC8, FRAME_BUFFER_8 + offset0);
//    //S2MM Start Address 9
//    Xil_Out32(XPAR_AXI_VDMA_0_BASEADDR + 0xCC, FRAME_BUFFER_9 + offset0);
//    //S2MM Start Address 10
//    Xil_Out32(XPAR_AXI_VDMA_0_BASEADDR + 0xD0, FRAME_BUFFER_10 + offset0);
    // ...
    // S2MM HSIZE register
    Xil_Out32(XPAR_AXI_VDMA_0_BASEADDR + 0xA4, width0*bytePerPixels);
    //S2MM Frame delay / Stride register
    Xil_Out32(XPAR_AXI_VDMA_0_BASEADDR + 0xA8, stride0*bytePerPixels);
    //S2MM Control Register
    Xil_Out32(XPAR_AXI_VDMA_0_BASEADDR + 0x30, 0x03);
    // S2MM VSIZE register
    Xil_Out32(XPAR_AXI_VDMA_0_BASEADDR + 0xA0, height0);

    /* Configure the Read interface (MM2S)*/
    // MM2S Control Register
//    Xil_Out32(XPAR_AXI_VDMA_0_BASEADDR + 0x00, 0x8B);
    Xil_Out32(XPAR_AXI_VDMA_0_BASEADDR + 0x00, 0x04); // reset
    Xil_Out32(XPAR_AXI_VDMA_0_BASEADDR + 0x00, 0x08); // genlock
    // MM2S Start Address 1
    Xil_Out32(XPAR_AXI_VDMA_0_BASEADDR + 0x5C, FRAME_BUFFER_1 + offset1);
    // MM2S Start Address 2
    Xil_Out32(XPAR_AXI_VDMA_0_BASEADDR + 0x5C + 4, FRAME_BUFFER_2 + offset1);
    // MM2S Start Address 3
    Xil_Out32(XPAR_AXI_VDMA_0_BASEADDR + 0x5C + 8, FRAME_BUFFER_3 + offset1);
    // ...
    // MM2S HSIZE register
    Xil_Out32(XPAR_AXI_VDMA_0_BASEADDR + 0x54, width1*bytePerPixels);
    // MM2S Frame delay / Stride register
    Xil_Out32(XPAR_AXI_VDMA_0_BASEADDR + 0x58, stride1*bytePerPixels);
    //S2MM Control Register
    Xil_Out32(XPAR_AXI_VDMA_0_BASEADDR + 0x00, 0x03);
    // MM2S VSIZE register
    Xil_Out32(XPAR_AXI_VDMA_0_BASEADDR + 0x50, height1);
}

int main()
{
	int Status;


    init_platform();

    i2c_init(&IicInstance, XPAR_XIICPS_0_DEVICE_ID,100000);
    XGpio_Initialize(&GpioOutput, XPAR_AXI_GPIO_0_DEVICE_ID);   //initialize GPIO IP
    XGpio_SetDataDirection(&GpioOutput, 1, 0x0);            //set GPIO as output
	XGpio_DiscreteWrite(&GpioOutput, 1, 0x0);               //set GPIO output value to 0
	usleep(50000);
	XGpio_DiscreteWrite(&GpioOutput, 1, 0x1);
	i2c_reg8_write(&IicInstance,0x72>>1,0x08,0x35);
	i2c_reg8_write(&IicInstance,0x7a>>1,0x2f,0x00);
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
