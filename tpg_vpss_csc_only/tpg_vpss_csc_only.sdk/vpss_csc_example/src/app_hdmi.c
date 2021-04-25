// SPDX-License-Identifier: GPL-2.0
/*
 * app_hdmi.c
 *
 *  Created on: 07 Jan 2018
 *      Author: Florent Werbrouck
 */

#include "app_hdmi.h"
/************************** Function Definitions *****************************/

/*****************************************************************************/
/**
*
* This function configures the TPG core.
* @param	InstancePtr is a pointer to the TPG core instance to be
*		worked on.
* @param	height is the output video height
* @param	width is the output video width
* @param	colorFormat is the output colorFormat
* @param	bckgndId is the ID for the background
*
*
******************************************************************************/
void app_hdmi_conf_tpg(XV_tpg *InstancePtr, u32 height, u32 width, u32 colorFormat, u32 bckgndId)
{
	// Set Resolution
    XV_tpg_Set_height(InstancePtr, height);
    XV_tpg_Set_width(InstancePtr, width);

    // Set Color Space
    XV_tpg_Set_colorFormat(InstancePtr, colorFormat);

    // Change the pattern to color bar
    XV_tpg_Set_bckgndId(InstancePtr, bckgndId);
}

/*****************************************************************************/
/**
*
* This function sets up the moving box of the TPG core.
* @param	InstancePtr is a pointer to the TPG core instance to be
*		worked on.
* @param	boxSize is the size of the moving box
* @param	motionSpeed is the speed of the moving box
*
*
******************************************************************************/
void app_hdmi_conf_tpg_box(XV_tpg *InstancePtr, u32 boxSize, u32 motionSpeed)
{
    // Set Overlay to moving box
    // Set the size of the box
    XV_tpg_Set_boxSize(InstancePtr, boxSize);
    // Set the speed of the box
    XV_tpg_Set_motionSpeed(InstancePtr, motionSpeed);
    // Enable the moving box
    XV_tpg_Set_ovrlayId(InstancePtr, 1);

}

