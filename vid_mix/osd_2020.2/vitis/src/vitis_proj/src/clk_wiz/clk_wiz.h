#ifndef __CLK_WIZ_H__
#define __CLK_WIZ_H__

#include "xil_types.h"
#include "xclk_wiz.h"

#define CLK_LOCK			1

int Wait_For_Lock(XClk_Wiz_Config *CfgPtr_Dynamic);
int XClk_Wiz_dynamic_reconfig(XClk_Wiz * ClkWizInstance, u32 DeviceId);

#endif
