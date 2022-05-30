/*
 * trace_zgg_debug.h
 *
 *  Created on: Dec 21, 2018
 *      Author: Andreas Zhang
 */

#ifndef TRACE_ZZG_DEBUG_H_
#define TRACE_ZZG_DEBUG_H_

#define _DEBUG_TRACE_ZZG_ 3
#if 0 != _DEBUG_TRACE_ZZG_
//	#include "stdio.h"
	#include "xil_printf.h"
#endif

#if 1==_DEBUG_TRACE_ZZG_ //普通打印
	#define TRACE_ZZG xil_printf
#elif 2==_DEBUG_TRACE_ZZG_ //打印文件名、行号
	#define TRACE_ZZG(fmt,...) \
		xil_printf("%s(%d): "fmt, __FILE__, __LINE__, ##__VA_ARGS__)
#elif 3==_DEBUG_TRACE_ZZG_ //打印文件名、行号、函数名
	#define TRACE_ZZG(fmt,...) \
		xil_printf("%s(%d)-<%s>: "fmt, __FILE__, __LINE__, __FUNCTION__, ##__VA_ARGS__)
#else
	#define TRACE_ZZG
#endif

#endif /* TRACE_ZZG_DEBUG_H_ */
