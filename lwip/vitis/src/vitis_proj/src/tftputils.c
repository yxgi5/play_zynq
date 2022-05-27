/*
 * Copyright (c) 2009 Xilinx, Inc.  All rights reserved.
 *
 * Xilinx, Inc.
 * XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS" AS A
 * COURTESY TO YOU.  BY PROVIDING THIS DESIGN, CODE, OR INFORMATION AS
 * ONE POSSIBLE   IMPLEMENTATION OF THIS FEATURE, APPLICATION OR
 * STANDARD, XILINX IS MAKING NO REPRESENTATION THAT THIS IMPLEMENTATION
 * IS FREE FROM ANY CLAIMS OF INFRINGEMENT, AND YOU ARE RESPONSIBLE
 * FOR OBTAINING ANY RIGHTS YOU MAY REQUIRE FOR YOUR IMPLEMENTATION.
 * XILINX EXPRESSLY DISCLAIMS ANY WARRANTY WHATSOEVER WITH RESPECT TO
 * THE ADEQUACY OF THE IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO
 * ANY WARRANTIES OR REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE
 * FROM CLAIMS OF INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY
 * AND FITNESS FOR A PARTICULAR PURPOSE.
 *
 */

#include <string.h>
#include <stdlib.h>

#include "lwip/inet.h"
#include "tftputils.h"

tftp_opcode tftp_decode_op(char *buf)
{
	return (tftp_opcode)(buf[1]);
}

void tftp_extract_filename(char *fname, char *buf)
{
	strcpy(fname, buf + 2);
}

u16_t tftp_extract_block(char *buf)
{
	u16_t *b = (u16_t*)buf;
	return ntohs(b[1]);
}

void tftp_set_opcode(char *buf, tftp_opcode op)
{
	/* we assume that op fits in a byte */
	buf[0] = 0;
	buf[1] = (u8_t)op;
}

void tftp_set_errorcode(char *buf, tftp_errorcode err)
{
	/* we assume that err fits in a byte */
	buf[2] = 0;
	buf[3] = (u8_t)err;
}

void tftp_set_errormsg(char *buf, char *errormsg)
{
	strcpy(buf + 4, errormsg);
}

void tftp_set_block(char *packet, int block)
{
	u16_t *p = (u16_t *)packet;
	p[1] = htons(block);
}

void tftp_set_data_message(char *packet, char *buf, int n)
{
	memcpy(packet + 4, buf, n);
}

int tftp_is_correct_ack(char *buf, int block)
{
	/* first make sure this is a data ACK packet */
	if (tftp_decode_op(buf) != TFTP_ACK)
		return 0;

	/* then compare block numbers */
	if (block != tftp_extract_block(buf))
		return 0;

	return 1;
}

 int is_octet(const char *str)
{
	const char *p = "octet";

	while (*p != '\0')
	{
		if (*p != *str && (*p - *str) != 32)
		{
			break;
		}
		p ++;
		str ++;
	}

	return (*str == '\0');
}

int option_val(const char *src, const char *option, char **val)
{
	while(*option != '\0')
	{
		if (*src != *option)
		{
			break;
		}
		src ++;
		option ++;
	}

	if ((*src - *option) == 0)
	{
		(*val) = (char *)src + 1;
		return 1;
	}

	return 0;
}

 int get_rqoption(const char *start, const char *end, const char *option, char **val)
{
	uint32_t i = 0;
	for (; start < end; start ++)
	{
		if (*start == '\0')
		{
			if ((i & 0x01) == 0)
			{
				if (option_val(start+1, option, val) == 1)
				{
					return 1;
				}
			}
			i ++;
		}
	}

	return 0;
}

 int32_t blksize_opt(const char *start, const char *end)
{
	char *val;
	if (get_rqoption(start, end, "blksize", &val) == 1)
	{
		return atoi(val);


	}

	return 512;
}

 int32_t tsize_opt(const char *start, const char *end)
 {
	 char *val;
	 if (get_rqoption(start, end, "tsize", &val) == 1)
	 {
		 return atoi(val);


	 }
	 return 0;
 }

 int is_validrequest(const char * const str, char **endmode)
{
	char *p = strchr(str, '\0');
	if (p != NULL)
	{
		if ((*str != '\0') && (is_octet(p+1) == 1))
		{
			(*endmode) = p + 6;
			return 1;
		}
	}

	return 0;
}

