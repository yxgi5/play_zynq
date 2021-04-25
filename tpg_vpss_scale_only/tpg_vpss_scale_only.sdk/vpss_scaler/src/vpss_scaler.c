// SPDX-License-Identifier: GPL-2.0
/*
 * vpss_scaler.c
 *
 *  Created on: 28 Feb 2019
 *      Author: florentw
 */


#include <stdio.h>
#include "platform.h"
#include "xil_printf.h"

//#include "iic_utils.h"
#include "app_hdmi.h"
#include "menu.h"

app_periphs_t app_periphs;

int main()
{
    init_platform();

    print("*********************************************\n\r");
    print("VPSS Scaler Only application on AX7021 using \n\ron-board HDMI\n\r");
    print("*********************************************\n\n\r");

    init_periphs(&app_periphs);

    //Start the application
    init_application(&app_periphs);

    display_main_menu();

	while(1)
	{
		menu(&app_periphs);
	}


    cleanup_platform();
    return 0;
}


