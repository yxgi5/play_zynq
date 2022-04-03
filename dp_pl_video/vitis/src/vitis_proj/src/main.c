#include <stdio.h>
#include "sleep.h"
#include "platform.h"
#include "xparameters.h"
#include "xil_printf.h"
#include "xil_types.h"
#include "xclk_wiz.h"
#include "xv_tpg.h"
#include "xvidc.h"
#include "xvtc.h"
#include "video_resolution.h"
#include "vtiming_gen.h"
#include "tpg.h"
#include "xaxivdma.h"
#include "xil_exception.h"
#include "dp.h"

#define CLK_LOCK			1

#define VDMA_ID          		XPAR_AXIVDMA_0_DEVICE_ID
#define VDMA_BASE_ADDR 			0x08000000
//#define VDMA1_ID          		XPAR_AXIVDMA_1_DEVICE_ID
//#define VDMA1_BASE_ADDR			0x10000000

#define DISPLAY_NUM_FRAMES 3

#define FRAME_BUFFER_BASE_ADDR	0x10000000
//#define FRAME_BUFFER_SIZE		0x400000	//0x400000 for max 1080p YCbCr422 8bpc
//#define FRAME_BUFFER_SIZE		0x600000	//0x600000 for max 1080p RGB888 8bpc
#define FRAME_BUFFER_SIZE		0x800000
#define FRAME_BUFFER_1			FRAME_BUFFER_BASE_ADDR
#define FRAME_BUFFER_2			FRAME_BUFFER_BASE_ADDR + FRAME_BUFFER_SIZE
#define FRAME_BUFFER_3			FRAME_BUFFER_BASE_ADDR + (FRAME_BUFFER_SIZE*2)

#define FRAME_BUFFER_BASE_ADDR1	FRAME_BUFFER_BASE_ADDR + (FRAME_BUFFER_SIZE*3)
#define FRAME_BUFFER_4			FRAME_BUFFER_BASE_ADDR1
#define FRAME_BUFFER_5			FRAME_BUFFER_BASE_ADDR1 + FRAME_BUFFER_SIZE
#define FRAME_BUFFER_6			FRAME_BUFFER_BASE_ADDR1 + (FRAME_BUFFER_SIZE*2)

#define MAX_FRAME 				(1920*1080*4)
#define VEDIO_FRAME 			(1920*1080*3)
#define DPDMA_STRIDE			(1920 * 4)
#define LINESIZE            	(1920 * 3)

//u8 frameBuf[DISPLAY_NUM_FRAMES][MAX_FRAME] __attribute__ ((aligned(256)));
//u8 *pFrames[DISPLAY_NUM_FRAMES]; //array of pointers to the frame buffers

XClk_Wiz ClkWizInst0;
XVtc VtcInst0; /**< Instance of the VTC core. */
XVtc_Config *VtcConfig0;

XV_tpg tpg_inst0;
XV_tpg_Config *tpg_config0;

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

    while(!(*(u32 *) (CfgPtr_Dynamic->BaseAddr + 0x04) & CLK_LOCK))
    {
        if(Count == 10000)
        {
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
int XClk_Wiz_dynamic_reconfig(XClk_Wiz * ClkWizInstance, u32 DeviceId)
{
    XClk_Wiz_Config *CfgPtr_Dynamic;
    u32 Count = 0;
    u32 Divide = 0;
    u32 Multiply_Int = 0;
    u32 Multiply_Frac = 0;
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
    CfgPtr_Dynamic = XClk_Wiz_LookupConfig(DeviceId);
    if(!CfgPtr_Dynamic)
    {
        return XST_FAILURE;
    }

    /*
     * Initialize the CLK_WIZ Dynamic reconfiguration driver
     */
    Status = XClk_Wiz_CfgInitialize(ClkWizInstance, CfgPtr_Dynamic, CfgPtr_Dynamic->BaseAddr);
    if(Status != XST_SUCCESS)
    {
        return XST_FAILURE;
    }

    Status = Wait_For_Lock(CfgPtr_Dynamic);
    if(Status)
    {
        xil_printf("\n ERROR: Clock is not locked for default frequency"
                   " : 0x%x\n\r",
                   *(u32 *) (CfgPtr_Dynamic->BaseAddr + 0x04) & CLK_LOCK);
    }

    /* SW reset applied */
    *(u32 *) (CfgPtr_Dynamic->BaseAddr + 0x00) = 0xA;

    if(*(u32 *) (CfgPtr_Dynamic->BaseAddr + 0x04) & CLK_LOCK)
    {
        xil_printf("\n ERROR: Clock is locked : 0x%x \t expected "
                   "0x00\n\r",
                   *(u32 *) (CfgPtr_Dynamic->BaseAddr + 0x04) & CLK_LOCK);
    }

    /* Wait cycles after SW reset */
    for(Count = 0; Count < 2000; Count++)
        ;

    Status = Wait_For_Lock(CfgPtr_Dynamic);
    if(Status)
    {
        xil_printf("\n ERROR: Clock is not locked after SW reset :"
                   "0x%x \t Expected  : 0x1\n\r",
                   *(u32 *) (CfgPtr_Dynamic->BaseAddr + 0x04) & CLK_LOCK);
    }

    Multiply_Int = 37;
    Multiply_Frac = 125;
    Divide = 5;
    Divide0_Int = 10;
    Divide0_Frac = 0;
    Divide1_Int = 2;
    Divide1_Frac = 0;
    Divide2_Int = 4;
    Divide2_Frac = 0;

    /* Configuring Multiply and Divide values */
    *(u32 *) (CfgPtr_Dynamic->BaseAddr + 0x200) = (Multiply_Frac << 16) | (Multiply_Int << 8) | Divide;
    *(u32 *) (CfgPtr_Dynamic->BaseAddr + 0x204) = 0x00;

    /* Configuring Multiply and Divide values */
    *(u32 *) (CfgPtr_Dynamic->BaseAddr + 0x208) = (Divide0_Frac << 8) | Divide0_Int;
    *(u32 *) (CfgPtr_Dynamic->BaseAddr + 0x20C) = 0x00;

    // freq_out1 = VCO / 4
//	Divide1_Int = 2;
//	Divide1_Frac = 0;
    /* Configuring Multiply and Divide values */
    *(u32 *) (CfgPtr_Dynamic->BaseAddr + 0x214) = (Divide1_Frac << 8) | Divide1_Int;
    *(u32 *) (CfgPtr_Dynamic->BaseAddr + 0x218) = 0x00;

    // freq_out2 = VCO / 2
//	Divide2_Int = 4;
//	Divide2_Frac = 0;
    /* Configuring Multiply and Divide values */
    *(u32 *) (CfgPtr_Dynamic->BaseAddr + 0x220) = (Divide2_Frac << 8) | Divide2_Int;
    *(u32 *) (CfgPtr_Dynamic->BaseAddr + 0x224) = 0x00;

    /* Load Clock Configuration Register values */
    *(u32 *) (CfgPtr_Dynamic->BaseAddr + 0x25C) = 0x07;

    if(*(u32 *) (CfgPtr_Dynamic->BaseAddr + 0x04) & CLK_LOCK)
    {
        xil_printf("\n ERROR: Clock is locked : 0x%x \t expected "
                   "0x00\n\r",
                   *(u32 *) (CfgPtr_Dynamic->BaseAddr + 0x04) & CLK_LOCK);
    }

    /* Clock Configuration Registers are used for dynamic reconfiguration */
    *(u32 *) (CfgPtr_Dynamic->BaseAddr + 0x25C) = 0x02;

    Status = Wait_For_Lock(CfgPtr_Dynamic);
    if(Status)
    {
        xil_printf("\n ERROR: Clock is not locked : 0x%x \t Expected "
                   ": 0x1\n\r",
                   *(u32 *) (CfgPtr_Dynamic->BaseAddr + 0x04) & CLK_LOCK);
    }

    return XST_SUCCESS;
}

void clkwiz_vtc_cfg(void)
{
    u32 Status;
    // dynamic config clkwiz
    Status = XClk_Wiz_dynamic_reconfig(&ClkWizInst0, XPAR_CLK_WIZ_0_DEVICE_ID);
    if(Status != XST_SUCCESS)
    {
        xil_printf("XClk_Wiz0 dynamic reconfig failed.\r\n");
//      return XST_FAILURE;
    }
    xil_printf("XClk_Wiz0 dynamic reconfig ok\n\r");

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

void tpg_config(void)
{
    u32 Status;

    // tpg0
    xil_printf("TPG0 Initializing\n\r");

    Status = XV_tpg_Initialize(&tpg_inst0, XPAR_V_TPG_0_DEVICE_ID);
    if(Status != XST_SUCCESS)
    {
        xil_printf("TPG0 configuration failed\r\n");
//    	return(XST_FAILURE);
    }

    //Configure the TPG0
    tpg_cfg(&tpg_inst0, 1080, 1920, XVIDC_CSF_RGB, XTPG_BKGND_COLOR_BARS);

    //Configure the moving box of the TPG0
    tpg_box(&tpg_inst0, 50, 1);

//Start the TPG0
    XV_tpg_EnableAutoRestart(&tpg_inst0);
    XV_tpg_Start(&tpg_inst0);
    xil_printf("TPG0 started!\r\n");
}

void vdma_config(void)
{
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

    u32 stride0 = 2560;
    u32 width0 = 1920;
    u32 height0 = 1080;

    int offset1 = 0; // (y*w+x)*Bpp
    u32 stride1 = 2560;  // crop keeps write Stride
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
    Xil_Out32(XPAR_AXI_VDMA_0_BASEADDR + 0xA8, stride0 * bytePerPixels);
    // S2MM HSIZE register
    Xil_Out32(XPAR_AXI_VDMA_0_BASEADDR + 0xA4, width0 * bytePerPixels);
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
    Xil_Out32(XPAR_AXI_VDMA_0_BASEADDR + 0x58, stride1 * bytePerPixels);
    // MM2S HSIZE register
    Xil_Out32(XPAR_AXI_VDMA_0_BASEADDR + 0x54, width1 * bytePerPixels);
    // MM2S VSIZE register
    Xil_Out32(XPAR_AXI_VDMA_0_BASEADDR + 0x50, height1);

    xil_printf("VDMA started!\r\n");
    /* End of VDMA Configuration */
}

int main(void)
{
    int Status;
    int i;

    Xil_DCacheDisable();
    Xil_ICacheDisable();

    // Initialize an array of pointers to the 3 frame buffers
//	for (i = 0; i < DISPLAY_NUM_FRAMES; i++)
//	{
//		pFrames[i] = frameBuf[i];
//		memset(pFrames[i], 0, DEMO_MAX_FRAME);
//	}

//	Status = DpdmaVideo(&RunCfg, pFrames[0]);
//	if (Status != XST_SUCCESS) {
//		xil_printf("DPDMA Video Test Failed\r\n");
//		return XST_FAILURE;
//	}
//	DpdmaVideo(&RunCfg, pFrames[0]);
    //DpdmaVideo(&RunCfg, FRAME_BUFFER_BASE_ADDR);

//    Xil_DCacheEnable();
//    Xil_ICacheEnable();
//
//    init_platform();

    clkwiz_vtc_cfg();
    tpg_config();
    vdma_config();
    displayport_init();
	displayport_setup_interrupts();

    while(1)
    {

    }
}
