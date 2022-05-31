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

#include "xaxivdma.h"

#include "xgpio.h"

#include "xiicps.h"
#include "PS_i2c.h"

#include "sleep.h"

//#include "xv_mix.h"
#include "xv_mix_l2.h"

#include "bitmanip.h"
#include "trace_zzg_debug.h"

#include "config.h"

#define IIC_SCLK_RATE		100000

#define DDR_BASEADDR XPAR_DDR_MEM_BASEADDR
#define FRAME_BUFFER_BASE_ADDR  	(DDR_BASEADDR + (0x10000000))
//#define USR_FRAME_BUF_BASEADDR     	(DDR_BASEADDR + (0x20000000))

//#define FRAME_BUFFER_SIZE0      0x2000000    //0x2000000 for max 4KW RGB888 8bpc
#define FRAME_BUFFER_SIZE0      0x600000    //0x600000 for max 1080p RGB888 8bpc

#define FRAME_BUFFER_1          FRAME_BUFFER_BASE_ADDR
#define FRAME_BUFFER_2          FRAME_BUFFER_BASE_ADDR + FRAME_BUFFER_SIZE0
#define FRAME_BUFFER_3          FRAME_BUFFER_BASE_ADDR + (FRAME_BUFFER_SIZE0*2)

#define XVMIX_REG_OFFSET                (0x100)

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
XV_Mix_l2 mix_inst;

XVidC_ColorFormat colorFmtIn = XVIDC_CSF_RGB;
u32 bckgndId = XTPG_BKGND_COLOR_BARS;
XVidC_VideoStream VidStream;

u32 volatile *gpio_hlsIpReset;

static const XVidC_VideoWindow MixLayerConfig[8] =
{// X   Y     W    H
  {12,  10,  720, 480}, //Layer 1
  {732, 10,  720, 480}, //Layer 2
  {12,  490, 720, 480}, //Layer 3
  {732, 490, 720, 480}, //Layer 4
  {800, 100, 128, 128}, //Layer 5
  {12,  100, 128, 128}, //Layer 6
  {200, 100, 128, 128}, //Layer 7
  {200, 300, 128, 128}  //Layer 8
};


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

void tpg_config_0(void)
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
    tpg_cfg(&tpg_inst0, 480, 720, colorFmtIn, bckgndId);

    //Configure the moving box of the TPG0
    tpg_box(&tpg_inst0, 25, 1);

    //Start the TPG
    XV_tpg_EnableAutoRestart(&tpg_inst0);
    XV_tpg_Start(&tpg_inst0);
    //xil_printf("TPG started!\r\n");
}

void tpg_config_1(void)
{
    u32 Status;

    // tpg
    //xil_printf("TPG Initializing\n\r");

    Status = XV_tpg_Initialize(&tpg_inst1, XPAR_V_TPG_1_DEVICE_ID);
    if(Status != XST_SUCCESS)
    {
        xil_printf("TPG0 configuration failed\r\n");
//      return(XST_FAILURE);
    }

    //Configure the TPG
    tpg_cfg(&tpg_inst1, 480, 720, colorFmtIn, bckgndId);

    //Configure the moving box of the TPG0
    tpg_box(&tpg_inst1, 25, 1);

    //Start the TPG
    XV_tpg_EnableAutoRestart(&tpg_inst1);
    XV_tpg_Start(&tpg_inst1);
    //xil_printf("TPG started!\r\n");
}

void tpg_config_2(void)
{
    u32 Status;

    // tpg
    //xil_printf("TPG Initializing\n\r");

    Status = XV_tpg_Initialize(&tpg_inst2, XPAR_V_TPG_2_DEVICE_ID);
    if(Status != XST_SUCCESS)
    {
        xil_printf("TPG0 configuration failed\r\n");
//      return(XST_FAILURE);
    }

    //Configure the TPG
    tpg_cfg(&tpg_inst2, 480, 720, colorFmtIn, XTPG_BKGND_H_RAMP);

    //Configure the moving box of the TPG0
    tpg_box(&tpg_inst2, 25, 1);

    //Start the TPG
    XV_tpg_EnableAutoRestart(&tpg_inst2);
    XV_tpg_Start(&tpg_inst2);
    //xil_printf("TPG started!\r\n");
}

void tpg_config_3(void)
{
    u32 Status;

    // tpg
    //xil_printf("TPG Initializing\n\r");

    Status = XV_tpg_Initialize(&tpg_inst3, XPAR_V_TPG_3_DEVICE_ID);
    if(Status != XST_SUCCESS)
    {
        xil_printf("TPG0 configuration failed\r\n");
//      return(XST_FAILURE);
    }

    //Configure the TPG
    tpg_cfg(&tpg_inst3, 480, 720, colorFmtIn, XTPG_BKGND_V_RAMP);

    //Configure the moving box of the TPG0
    tpg_box(&tpg_inst3, 25, 1);

    //Start the TPG
    XV_tpg_EnableAutoRestart(&tpg_inst3);
    XV_tpg_Start(&tpg_inst3);
    //xil_printf("TPG started!\r\n");
}


void tpg_config(void)
{
    tpg_config_0();
    tpg_config_1();
    tpg_config_2();
    tpg_config_3();
}

int SetupInterrupts(void)
{
#if defined(__MICROBLAZE__)
    int Status;
    XIntc *IntcPtr = &intc;

    /* Initialize the Interrupt controller */
    Status = XIntc_Initialize(IntcPtr,
            XPAR_PROCESSOR_SS_PROCESSOR_AXI_INTC_DEVICE_ID);
    if(Status != XST_SUCCESS)
    {
        xil_printf("ERROR:: Interrupt controller device not found\r\n");
        return(XST_FAILURE);
    }

    /* Hook up interrupt service routine */
    Status = XIntc_Connect(IntcPtr,
            XPAR_PROCESSOR_SS_PROCESSOR_AXI_INTC_V_MIX_0_INTERRUPT_INTR,
            (XInterruptHandler)XVMix_InterruptHandler,
            &mix);
    if (Status != XST_SUCCESS)
    {
        xil_printf("ERROR:: Mixer interrupt connect failed!\r\n");
        return XST_FAILURE;
    }

    /* Enable the interrupt vector at the interrupt controller */
    XIntc_Enable(IntcPtr,
            XPAR_PROCESSOR_SS_PROCESSOR_AXI_INTC_V_MIX_0_INTERRUPT_INTR);

    /*
     * Start the interrupt controller such that interrupts are recognized
     * and handled by the processor
     */
    Status = XIntc_Start(IntcPtr, XIN_REAL_MODE);
    if (Status != XST_SUCCESS)
    {
        xil_printf("ERROR:: Failed to start interrupt controller\r\n");
        return XST_FAILURE;
    }

#else
    int Status;
    XScuGic *IntcPtr = &intc;

    /* Initialize the Interrupt controller */
    XScuGic_Config *IntcCfgPtr;
    IntcCfgPtr = XScuGic_LookupConfig(XPAR_PS7_SCUGIC_0_DEVICE_ID);
    if(IntcCfgPtr == NULL)
    {
        print("ERR:: Interrupt Controller not found");
        return (XST_DEVICE_NOT_FOUND);
    }
    Status = XScuGic_CfgInitialize(IntcPtr, IntcCfgPtr, IntcCfgPtr->CpuBaseAddress);
    if(Status != XST_SUCCESS)
    {
        xil_printf("Intc initialization failed!\r\n");
        return XST_FAILURE;
    }

    /* Hook up interrupt service routine */
    Status |= XScuGic_Connect(IntcPtr,
    XPAR_FABRIC_V_MIX_0_INTERRUPT_INTR,
                              (XInterruptHandler) XVMix_InterruptHandler, (void *) &mix_inst);
    Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_INT, (Xil_ExceptionHandler) XScuGic_InterruptHandler, IntcPtr);
    if(Status != XST_SUCCESS)
    {
        xil_printf("ERR:: Mixer interrupt connect failed!\r\n");
        return XST_FAILURE;
    }

    /* Enable the interrupt vector at the interrupt controller */
    XScuGic_Enable(IntcPtr, XPAR_FABRIC_V_MIX_0_INTERRUPT_INTR);

#endif

    return (XST_SUCCESS);
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
}

void vmix_init(void)
{
    int Status;
//    XV_mix_Config *MixConfigPtr;
//
//    MixConfigPtr = XV_mix_LookupConfig(&mix_inst, XPAR_V_MIX_0_DEVICE_ID);
//    if (MixConfigPtr == NULL)
//    {
//        xil_printf("VMIX device not found\r\n");
//        mix_inst.IsReady = 0;
////        return (XST_DEVICE_NOT_FOUND);
//    }

    Status = XVMix_Initialize(&mix_inst, XPAR_V_MIX_0_DEVICE_ID);
    if(Status != XST_SUCCESS)
    {
        xil_printf("ERROR:: Mixer device not found\r\n");
        return (XST_FAILURE);
    }

}

void resetIp(void)
{
    xil_printf("\r\nReset HLS IP \r\n");
    *gpio_hlsIpReset = 0; //reset IPs
    usleep(1000);         //hold reset line
    *gpio_hlsIpReset = 1; //release reset
    usleep(1000);         //wait
}

void vmix_config(void)
{
    XVidC_VideoStream VidStream;
    XVidC_VideoTiming const *TimingPtr;
    u32 MemAddr;
    int index;
    int NumLayers;
//    XVidC_ColorFormat Cfmt;
    XVidC_VideoWindow Win;

    VidStream.PixPerClk = XVIDC_PPC_1;
    VidStream.ColorFormatId = XVIDC_CSF_RGB;
    VidStream.ColorDepth = XVIDC_BPC_8;
//    VidStream.VmId = XVIDC_VM_720x480_60_P;
    VidStream.VmId =  XVIDC_VM_1920x1080_60_P;
    TimingPtr = XVidC_GetTimingInfo(VidStream.VmId);
    VidStream.Timing = *TimingPtr;
    VidStream.FrameRate = XVidC_GetFrameRate(VidStream.VmId);

    XVMix_LayerDisable(&mix_inst, XVMIX_LAYER_MASTER);
    XVMix_SetVidStream(&mix_inst, &VidStream);
//    XVMix_SetBackgndColor(&mix_inst, XVMIX_BKGND_BLUE, VidStream.ColorDepth);
//    XVMix_LayerEnable(&mix_inst, XVMIX_LAYER_MASTER);

    NumLayers = XVMix_GetNumLayers(&mix_inst);
    for(index = XVMIX_LAYER_1; index < NumLayers; ++index)
    {
//        XVMix_GetLayerColorFormat(&mix_inst, index, &Cfmt);

        u32 BaseStartXReg, BaseStartYReg;
        u32 BaseWidthReg, BaseHeightReg;
        u32 BaseStrideReg;
        u32 Offset;
        Win = MixLayerConfig[index-1];
        XVMix_SetLayerScaleFactor(&mix_inst, index, XVMIX_SCALE_FACTOR_1X);

        BaseStartXReg = XV_MIX_CTRL_ADDR_HWREG_LAYERSTARTX_0_DATA;
        BaseStartYReg = XV_MIX_CTRL_ADDR_HWREG_LAYERSTARTY_0_DATA;
        BaseWidthReg  = XV_MIX_CTRL_ADDR_HWREG_LAYERWIDTH_0_DATA;
        BaseHeightReg = XV_MIX_CTRL_ADDR_HWREG_LAYERHEIGHT_0_DATA;
        BaseStrideReg = XV_MIX_CTRL_ADDR_HWREG_LAYERSTRIDE_0_DATA;
        Offset = index*XVMIX_REG_OFFSET;

        XV_mix_WriteReg(mix_inst.Mix.Config.BaseAddress,
                        (BaseStartXReg+Offset), Win.StartX);
        XV_mix_WriteReg(mix_inst.Mix.Config.BaseAddress,
                        (BaseStartYReg+Offset), Win.StartY);
        XV_mix_WriteReg(mix_inst.Mix.Config.BaseAddress,
                        (BaseWidthReg+Offset),  Win.Width);
        XV_mix_WriteReg(mix_inst.Mix.Config.BaseAddress,
                        (BaseHeightReg+Offset), Win.Height);

        mix_inst.Layer[index].Win = Win;
//        if(XVMix_IsAlphaEnabled(&mix_inst, index))
//        {
//            XVMix_SetLayerAlpha(&mix_inst, index, XVMIX_ALPHA_MAX);
//        }
//        if(XVMix_IsScalingEnabled(&mix_inst, index))
//        {
//            XVMix_SetLayerScaleFactor(&mix_inst, index, XVMIX_SCALE_FACTOR_1X);
//        }
        XVMix_LayerEnable(&mix_inst, index);
    }
#if defined(MASTER_LAYER_EN)
    XVMix_SetBackgndColor(&mix_inst, XVMIX_BKGND_BLUE, VidStream.ColorDepth);
    XVMix_LayerEnable(&mix_inst, XVMIX_LAYER_MASTER);
#else
    XVMix_SetBackgndColor(&mix_inst, XVMIX_BKGND_BLACK, VidStream.ColorDepth);
//    XVMix_LayerEnable(&mix_inst, XVMIX_LAYER_MASTER);
#endif
    XVMix_InterruptDisable(&mix_inst);
    XVMix_Start(&mix_inst);
}

void XV_tpg_Stop(XV_tpg *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XV_tpg_ReadReg(InstancePtr->Config.BaseAddress, XV_TPG_CTRL_ADDR_AP_CTRL) & 0x80;
    XV_tpg_WriteReg(InstancePtr->Config.BaseAddress, XV_TPG_CTRL_ADDR_AP_CTRL, Data &~ 0x01);
}

int main(void)
{
    int Status;

    XVidC_ColorFormat Cfmt;

    init_platform();

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

    gpio_hlsIpReset = (u32*) XPAR_HLS_IP_RESET_BASEADDR;
    //Release reset line
    *gpio_hlsIpReset = 1;

    clkwiz_vtc_cfg();
    tpg_config();
    vdma_config();
#if defined(MASTER_LAYER_EN)
    Status = SetupInterrupts();
    if(Status == XST_FAILURE)
    {
        xil_printf("ERROR:: Interrupt Setup Failed\r\n");
        while(1)
            ;
    }
#endif

    vmix_init();

#if defined(MASTER_LAYER_EN)
    /* Enable exceptions. */
    Xil_ExceptionEnable();
#endif

    resetIp();

    tpg_config();

    vmix_config();
//    XV_tpg_Stop(&tpg_inst0);

//    XVMix_GetLayerColorFormat(&mix_inst, XVMIX_LAYER_MASTER, &Cfmt);
//
//    VidStream.PixPerClk = tpg_inst0.Config.PixPerClk;
//    VidStream.ColorFormatId = Cfmt;
//    VidStream.ColorDepth = tpg_inst0.Config.MaxDataWidth;
//
//    Status = XVMix_LayerDisable(&mix_inst, XVMIX_LAYER_MASTER);
//    if(Status == XST_FAILURE)
//    {
//        xil_printf("ERROR:: XVMix_LayerDisable Failed\r\n");
//    }

    while(1)
    {
        asm("NOP");
    }

    cleanup_platform();

    return 0;
}
