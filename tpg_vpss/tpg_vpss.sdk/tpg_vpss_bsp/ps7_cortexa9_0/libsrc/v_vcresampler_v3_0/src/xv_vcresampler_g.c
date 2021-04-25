
/*******************************************************************
*
* CAUTION: This file is automatically generated by HSI.
* Version: 2018.3
* DO NOT EDIT.
*
* Copyright (C) 2010-2021 Xilinx, Inc. All Rights Reserved.*
*Permission is hereby granted, free of charge, to any person obtaining a copy
*of this software and associated documentation files (the Software), to deal
*in the Software without restriction, including without limitation the rights
*to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
*copies of the Software, and to permit persons to whom the Software is
*furnished to do so, subject to the following conditions:
*
*The above copyright notice and this permission notice shall be included in
*all copies or substantial portions of the Software.
* 
*THE SOFTWARE IS PROVIDED AS IS, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
*IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
*FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL 
*XILINX BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
*WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT
*OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
*
*Except as contained in this notice, the name of the Xilinx shall not be used
*in advertising or otherwise to promote the sale, use or other dealings in
*this Software without prior written authorization from Xilinx.
*

* 
* Description: Driver configuration
*
*******************************************************************/

#include "xparameters.h"
#include "xv_vcresampler.h"

/*
* The configuration table for devices
*/

XV_vcresampler_Config XV_vcresampler_ConfigTable[XPAR_XV_VCRESAMPLER_NUM_INSTANCES] =
{
	{
		XPAR_V_PROC_SS_0_VCR_I_DEVICE_ID,
		XPAR_V_PROC_SS_0_VCR_I_S_AXI_CTRL_BASEADDR,
		XPAR_V_PROC_SS_0_VCR_I_SAMPLES_PER_CLOCK,
		XPAR_V_PROC_SS_0_VCR_I_NUM_VIDEO_COMPONENTS,
		XPAR_V_PROC_SS_0_VCR_I_MAX_COLS,
		XPAR_V_PROC_SS_0_VCR_I_MAX_ROWS,
		XPAR_V_PROC_SS_0_VCR_I_MAX_DATA_WIDTH,
		XPAR_V_PROC_SS_0_VCR_I_CONVERT_TYPE,
		XPAR_V_PROC_SS_0_VCR_I_NUM_V_TAPS
	},
	{
		XPAR_V_PROC_SS_0_VCR_O_DEVICE_ID,
		XPAR_V_PROC_SS_0_VCR_O_S_AXI_CTRL_BASEADDR,
		XPAR_V_PROC_SS_0_VCR_O_SAMPLES_PER_CLOCK,
		XPAR_V_PROC_SS_0_VCR_O_NUM_VIDEO_COMPONENTS,
		XPAR_V_PROC_SS_0_VCR_O_MAX_COLS,
		XPAR_V_PROC_SS_0_VCR_O_MAX_ROWS,
		XPAR_V_PROC_SS_0_VCR_O_MAX_DATA_WIDTH,
		XPAR_V_PROC_SS_0_VCR_O_CONVERT_TYPE,
		XPAR_V_PROC_SS_0_VCR_O_NUM_V_TAPS
	}
};


