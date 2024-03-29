// SPDX-License-Identifier: GPL-2.0
/*
 * app_hdmi.h
 *
 *  Created on: 07 Jan 2019
 *      Author: florentw
 */

#ifndef APP_HDMI_H_
#define APP_HDMI_H_

	#include "xv_tpg.h"
	#include "sleep.h"
	#include "iic_utils.h"
	#include "xvprocss.h"
	#include "xvtc.h"
	#include "clk_wiz.h"

	#define CLK_LOCK			1

	//Output clocks
	#define CLKWIZ_CLKOUT0_148_5_MHz		0
	#define CLKWIZ_CLKOUT0_108_MHz			1
	#define CLKWIZ_CLKOUT0_74_25_MHz		2
	#define CLKWIZ_CLKOUT0_74_MHz			3
	#define CLKWIZ_CLKOUT0_65_MHz			4
	#define CLKWIZ_CLKOUT0_40_MHz			5
	#define CLKWIZ_CLKOUT0_27_MHz			6
	#define	CLKWIZ_CLKOUT0_25_175MHz		7

//	#define APP_COLOR_FORMAT	XVIDC_CSF_YCRCB_422
	#define APP_COLOR_FORMAT	XVIDC_CSF_RGB

	#define FRAME_BUFFER_BASE_ADDR	0x10000000
//	#define FRAME_BUFFER_SIZE		0x400000	//0x400000 for max 1080p YCbCr422 8bpc
	#define FRAME_BUFFER_SIZE		0x600000	//0x600000 for max 1080p RGB888 8bpc
	#define FRAME_BUFFER_1			FRAME_BUFFER_BASE_ADDR
	#define FRAME_BUFFER_2			FRAME_BUFFER_BASE_ADDR + FRAME_BUFFER_SIZE
	#define FRAME_BUFFER_3			FRAME_BUFFER_BASE_ADDR + (FRAME_BUFFER_SIZE*2)

	#define SUPPORTED_VIDEO_FORMATS	7


	typedef struct {
		 u32 	colorFormat;
		 u32 	bckgndId;
		 u8 	overlay_en;
		 u32 	boxSize;
		 u32	motionSpeed;
		 u32	width;
		 u32	height;
	} tpg_config_t;

	typedef struct {
		XVidC_VideoStream Stream_in;
		XVidC_VideoStream Stream_out;
	} video_pipe_config_t;

	typedef struct {
		XIicPs 					*IicPs_ptr;
		XVtc  					*Vtc_ptr;
		XVprocSs 				*Vproc_ptr;
		XV_tpg 					*tpg_ptr;
		XGpio 					*Gpio_ptr;
//		XClk_Wiz				*ClkWiz_ptr;
		tpg_config_t 			tpg_config;
		video_pipe_config_t		video_pipe_config;
	} app_periphs_t;
	

	typedef struct {
		XVidC_VideoMode		VmId;
		u8					clkFreq;
	} VideoTimingClk_t;


	void configure_tpg(XV_tpg *tpg_ptr, tpg_config_t *tpg_config);
	int ClkWiz_Set_Output_Clock(UINTPTR ClkWiz_BaseAddr, u8 outClockFreq);
	int init_periphs(app_periphs_t *periphs_ptr);
	int init_application(app_periphs_t *periphs_ptr);
	void display_vpss_log(XVprocSs *InstancePtr);
	void print_resolution_name(int resID);
	void set_input_resolution(app_periphs_t *periphs_ptr, int resID);
	void set_output_resolution(app_periphs_t *periphs_ptr, int resID);
	void display_axi4vidout_sts(UINTPTR Addr);

#endif /* APP_HDMI_H_ */
