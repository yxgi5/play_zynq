/*
 * trace_zzg_debug.h
 *
 *  Created on: Dec 21, 2018
 *      Author: Alex Mason
 *       Email: denglitsch@gmail.com
 */

#ifndef TRACE_ZZG_DEBUG_H_
#define TRACE_ZZG_DEBUG_H_

#define _DEBUG_TRACE_ZZG_ 3
#if (_DEBUG_TRACE_ZZG_ != 0)
//	#include "stdio.h"
	#include "xil_printf.h"
#endif

#if (_DEBUG_TRACE_ZZG_ == 1) // normal print
	#define TRACE_ZZG xil_printf
#elif (_DEBUG_TRACE_ZZG_ == 2) // print file name, line number
	#define TRACE_ZZG(fmt,...) \
		xil_printf("%s(%d): "fmt, __FILE__, __LINE__, ##__VA_ARGS__)
#elif (_DEBUG_TRACE_ZZG_ == 3) //print file name, line number, function name
	#define TRACE_ZZG(fmt,...) \
		xil_printf("%s(%d)-<%s>: "fmt, __FILE__, __LINE__, __FUNCTION__, ##__VA_ARGS__)
#else
	#define TRACE_ZZG
#endif

#endif /* TRACE_ZZG_DEBUG_H_ */
