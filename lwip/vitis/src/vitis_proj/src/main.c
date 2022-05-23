#include <stdio.h>
#include "platform.h"
#include "xil_printf.h"
#include "xgpio.h"
#include "xgpiops.h"
#include "sleep.h"
#include "AXI_LITE_REG.h"

#define LED0 (78+0)
#define LED1 (78+1)
#define LED2 (0)
#define LED3 (1)

#define U8 unsigned char
#define U16 unsigned int
#define U32 unsigned long int
#define S8 signed char
#define S16 signed int
#define BIT(x) (1 << (x)) 	//选择某一位
#define BIT32(x) ((U32)1 << (x)) 	//选择某一位
#define STB(p,b) ((p)|=(b)) //置位
#define CLB(p,b) ((p)&=~(b)) //清位
#define FLB(p,b) ((p)^=(b)) //flip bit
#define CHB(p,b) ((p) & (b)) //测试某一位是否是1

XGpio XGpioInst;
XGpioPs  gpiops_inst;

int xgpio_init(void)
{
	int Status ;

	u32 ret;

	Status = XGpio_Initialize(&XGpioInst, XPAR_GPIO_0_DEVICE_ID) ;
	if (Status != XST_SUCCESS)
	{
		return XST_FAILURE ;
	}

	/* set as output */
	XGpio_SetDataDirection(&XGpioInst, 1, 0x0);
	XGpio_DiscreteWrite(&XGpioInst, 1, 0x3);

	return XST_SUCCESS ;
}

int emio_init(void)
{
	int Status ;
	XGpioPs_Config *gpiops_cfg_ptr;

	gpiops_cfg_ptr = XGpioPs_LookupConfig(XPAR_XGPIOPS_0_DEVICE_ID);
	Status = XGpioPs_CfgInitialize(&gpiops_inst, gpiops_cfg_ptr, gpiops_cfg_ptr->BaseAddr);
	if(Status!= XST_SUCCESS)
	{
		return(XST_FAILURE);
	}

	XGpioPs_SetDirectionPin(&gpiops_inst, LED0, 1);
	XGpioPs_SetDirectionPin(&gpiops_inst, LED1, 1);
	XGpioPs_SetOutputEnablePin(&gpiops_inst, LED0, 1);
	XGpioPs_SetOutputEnablePin(&gpiops_inst, LED1, 1);
	XGpioPs_WritePin(&gpiops_inst, LED0, 1);
	XGpioPs_WritePin(&gpiops_inst, LED1, 1);

	return XST_SUCCESS ;
}

int main()
{
	u32 ret;

#ifdef XPAR_AXI_LITE_REG_NUM_INSTANCES
	if(XPAR_AXI_LITE_REG_0_DEVICE_ID==0)
	{
		printf("hardware ver = 0x%08x\n", AXI_LITE_REG_mReadReg(XPAR_AXI_LITE_REG_0_S00_AXI_BASEADDR, \
				AXI_LITE_REG_S00_AXI_SLV_REG0_OFFSET));
	}
#endif

    init_platform();

    xgpio_init();
    emio_init();

    while(1)
    {
    	XGpioPs_WritePin(&gpiops_inst, LED0, 0);
    	XGpioPs_WritePin(&gpiops_inst, LED1, 1);
    	ret=XGpio_GetDataDirection(&XGpioInst, 1);
    	STB(ret,BIT32(LED2));
    	STB(ret,BIT32(LED3));
    	XGpio_DiscreteWrite(&XGpioInst, 1, ret);

    	sleep(1);

    	XGpioPs_WritePin(&gpiops_inst, LED0, 1);
    	XGpioPs_WritePin(&gpiops_inst, LED1, 0);
    	ret=XGpio_GetDataDirection(&XGpioInst, 1);
    	STB(ret,BIT32(LED2));
    	STB(ret,BIT32(LED3));
    	XGpio_DiscreteWrite(&XGpioInst, 1, ret);

    	sleep(1);

    	XGpioPs_WritePin(&gpiops_inst, LED0, 1);
    	XGpioPs_WritePin(&gpiops_inst, LED1, 1);
    	ret=XGpio_GetDataDirection(&XGpioInst, 1);
    	CLB(ret,BIT32(LED2));
    	STB(ret,BIT32(LED3));
    	XGpio_DiscreteWrite(&XGpioInst, 1, ret);

    	sleep(1);

    	XGpioPs_WritePin(&gpiops_inst, LED0, 1);
    	XGpioPs_WritePin(&gpiops_inst, LED1, 1);
    	ret=XGpio_GetDataDirection(&XGpioInst, 1);
    	STB(ret,BIT32(LED2));
    	CLB(ret,BIT32(LED3));
    	XGpio_DiscreteWrite(&XGpioInst, 1, ret);

    	sleep(1);
    }

    cleanup_platform();
    return 0;
}
