
#ifndef _VTIMING_GEN_H_
#define _VTIMING_GEN_H_

// *****************************************************
// Notes
// *****************************************************
//   - The purpose of this driver is to provide a layer
//     of abstraction over the Video Timing Controller
//     drivers when it is used in generate-only mode. It
//     assumes the caller has allocated and initialized
//     the XVtc instance to be used.

// *****************************************************
// Dependencies
// *****************************************************
#include "xvtc.h"

// *****************************************************
// Function status return values
// *****************************************************
#define VTIMING_GEN_SUCCESS        0
#define VTIMING_GEN_ERROR_UNKNOWN -1

// *****************************************************
// Public functions
// *****************************************************

// vtiming_gen_run() - Set up and start VTC generator registers and enable.
//   - p_vtg_inst    - Pointer to object to work on
//   - resolution_id - Which video resolution id to use from video_resolution.h
//   - verbose       - Whether or not to print debug info
//   - return        - None
void vtiming_gen_run
(
	XVtc* p_vtg_inst,
	int   resolution_id,
	int   verbose
);

#endif // _VTIMING_GEN_H_

