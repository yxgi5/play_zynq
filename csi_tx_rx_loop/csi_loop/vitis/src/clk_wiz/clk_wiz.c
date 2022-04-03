#include "clk_wiz.h"
#include "xparameters.h"
#include "xstatus.h"
#include "../config.h"

XClk_Wiz ClkWiz_Dynamic; /* The instance of the ClkWiz_Dynamic */

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
int XClk_Wiz_dynamic_reconfig(XClk_Wiz * ClkWizInstance)
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
	Status = XClk_Wiz_CfgInitialize(ClkWizInstance, CfgPtr_Dynamic,
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
	// VCO = freq_in * 37.125 / 4
#if P1080 == 1
#ifdef P1080FPS30
	Multiply_Int = 111;
	Multiply_Frac = 375;
	Divide = 20;
#else
	Multiply_Int = 37;
	Multiply_Frac = 125;
	Divide = 5;
#endif

#else
	Multiply_Int = 111;
	Multiply_Frac = 375;
	Divide = 20;
#endif

	/* Configuring Multiply and Divide values */
	*(u32 *)(CfgPtr_Dynamic->BaseAddr + 0x200) = (Multiply_Frac << 16) | (Multiply_Int << 8) | Divide;
	*(u32 *)(CfgPtr_Dynamic->BaseAddr + 0x204) = 0x00;

	// freq_out0 = VCO / 6.250
#if P1080 == 1
#ifdef P1080FPS30
	Divide0_Int = 15;
	Divide0_Frac = 0;
	Divide1_Int = 3;
	Divide1_Frac = 0;
	Divide2_Int = 6;
	Divide2_Frac = 0;
#else
	Divide0_Int = 10;
	Divide0_Frac = 0;
	Divide1_Int = 2;
	Divide1_Frac = 0;
	Divide2_Int = 4;
	Divide2_Frac = 0;
#endif

#else
	Divide0_Int = 15;
	Divide0_Frac = 0;
	Divide1_Int = 3;
	Divide1_Frac = 0;
	Divide2_Int = 6;
	Divide2_Frac = 0;
#endif

    /* Configuring Multiply and Divide values */
    *(u32 *)(CfgPtr_Dynamic->BaseAddr + 0x208) = (Divide0_Frac << 8) | Divide0_Int;
    *(u32 *)(CfgPtr_Dynamic->BaseAddr + 0x20C) = 0x00;

	// freq_out1 = VCO / 4
//	Divide1_Int = 2;
//	Divide1_Frac = 0;
    /* Configuring Multiply and Divide values */
    *(u32 *)(CfgPtr_Dynamic->BaseAddr + 0x214) = (Divide1_Frac << 8) | Divide1_Int;
    *(u32 *)(CfgPtr_Dynamic->BaseAddr + 0x218) = 0x00;

	// freq_out2 = VCO / 2
//	Divide2_Int = 4;
//	Divide2_Frac = 0;
    /* Configuring Multiply and Divide values */
    *(u32 *)(CfgPtr_Dynamic->BaseAddr + 0x220) = (Divide2_Frac << 8) | Divide2_Int;
    *(u32 *)(CfgPtr_Dynamic->BaseAddr + 0x224) = 0x00;

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

