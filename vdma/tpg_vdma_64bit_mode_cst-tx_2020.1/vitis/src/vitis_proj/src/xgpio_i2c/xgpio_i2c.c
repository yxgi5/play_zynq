/**
 *******************************************************************************
 *
 * Copyright (C) 2022 - 2027  XXX Company. All rights reserved.
 *
 * @file xgpio_i2c.c
 * @brief
 *
 * \n
 * @details
 *
 * \n
 * @version 
 * @author Andreas Zhang
 * @date 2022-01-19
 *
 * @verbatim
 * \n
 * @history
 * Ver   Who Date     Changes
 * ----- --- -------- ---------------------------------------------
 * 1.3.0 who 02/07/11 First release
 *
 * @endverbatim
 *******************************************************************************
 */
#include "xgpio_i2c.h"
#include "sleep.h"
#include "../bitmanip.h"

#define  XGPIO_ID  XPAR_XGPIO_I2C_0_AXI_GPIO_0_DEVICE_ID
XGpio XGpioInst;
//XGpio XGpioInst1;

XGpio_I2C_Cfg XGpio_I2C_CfgTable[I2C_NO_BUTT] =
{
	{I2C_NO_0, XPAR_GPIO_0_DEVICE_ID, I2C_BANK_1, XGPIO_SCL0_NUM, XGPIO_SDA0_NUM},
	{I2C_NO_1, XPAR_GPIO_0_DEVICE_ID, I2C_BANK_1, XGPIO_SCL1_NUM, XGPIO_SDA1_NUM},
	{I2C_NO_2, XPAR_GPIO_0_DEVICE_ID, I2C_BANK_1, XGPIO_SCL2_NUM, XGPIO_SDA2_NUM},
	{I2C_NO_3, XPAR_GPIO_0_DEVICE_ID, I2C_BANK_1, XGPIO_SCL3_NUM, XGPIO_SDA3_NUM},
	{I2C_NO_4, XPAR_GPIO_0_DEVICE_ID, I2C_BANK_1, XGPIO_SCL4_NUM, XGPIO_SDA4_NUM},
//	{I2C_NO_5, XPAR_GPIO_0_DEVICE_ID, I2C_BANK_1, XGPIO_SCL5_NUM, XGPIO_SDA5_NUM},
};

int xgpio_init(void)
{
	int Status ;

	u32 ret;

	Status = XGpio_Initialize(&XGpioInst, XGPIO_ID) ;
	if (Status != XST_SUCCESS)
	{
		return XST_FAILURE ;
	}

	/* set gpio as output */
//	XGpio_DiscreteWrite(&XGpioInst, 1, 0xfff);
//	XGpio_SetDataDirection(&XGpioInst, 1, 0x0);
//	XGpio_DiscreteWrite(&XGpioInst, 1, 0xfff);
	XGpio_SetDataDirection(&XGpioInst, 2, 0x0);
	XGpio_DiscreteWrite(&XGpioInst, 2, 1);

	return XST_SUCCESS ;
}

void i2c_start(i2c_no i2c)
{
	u32 sda;
	u32 scl;
	u32 ret;
	sda=XGpio_I2C_CfgTable[i2c].I2C_SDA;
	scl=XGpio_I2C_CfgTable[i2c].I2C_SCL;


	ret=XGpio_GetDataDirection(&XGpioInst, 1);
	CLB(ret,BIT32(sda));
	CLB(ret,BIT32(scl));
	XGpio_SetDataDirection(&XGpioInst, 1, ret);
	//set gpio pin as output
	//XGpio_SetDataDirection(&XGpioInst, 1, (OUTPUT<<sda|OUTPUT<<scl));

	// scl hi， sda hi
	ret = XGpio_DiscreteRead(&XGpioInst, 1);
	STB(ret, BIT32(sda));
	STB(ret, BIT32(scl));
	XGpio_DiscreteWrite(&XGpioInst, 1, ret);
	//XGpio_DiscreteWrite(&XGpioInst, 1, (1<<sda|1<<scl));

	usleep(4);

	ret = XGpio_DiscreteRead(&XGpioInst, 1);
	CLB(ret, BIT32(sda));
	STB(ret, BIT32(scl));
	XGpio_DiscreteWrite(&XGpioInst, 1, ret);
	//XGpio_DiscreteWrite(&XGpioInst, 1, (0<<sda|1<<scl));//START:when CLK is high,DATA change form high to low

 	usleep(4);

	ret = XGpio_DiscreteRead(&XGpioInst, 1);
	CLB(ret, BIT32(sda));
	CLB(ret, BIT32(scl));
	XGpio_DiscreteWrite(&XGpioInst, 1, ret);
 	//XGpio_DiscreteWrite(&XGpioInst, 1, (0<<sda|0<<scl));//clamping I2C bus，ready for recv or send
}

//void i2c_scl_pos(i2c_no i2c)
//{
//	u32 sda;
//	u32 scl;
//	u32 ret;
//	sda=XGpio_I2C_CfgTable[i2c].I2C_SDA;
//	scl=XGpio_I2C_CfgTable[i2c].I2C_SCL;
//
//	ret=XGpio_GetDataDirection(&XGpioInst, 1);
//	CLB(ret,BIT32(sda));
//	CLB(ret,BIT32(scl));
//	XGpio_SetDataDirection(&XGpioInst, 1, ret);
//	//set gpio pin as output
//	//XGpio_SetDataDirection(&XGpioInst, 1, (OUTPUT<<sda|OUTPUT<<scl));
//
//	ret = XGpio_DiscreteRead(&XGpioInst, 1);
//	CLB(ret, BIT32(sda));
//	CLB(ret, BIT32(scl));
//	XGpio_DiscreteWrite(&XGpioInst, 1, ret);
//	//XGpio_DiscreteWrite(&XGpioInst, 1, (0<<sda|0<<scl));
//
//	usleep(4);
//
//	ret = XGpio_DiscreteRead(&XGpioInst, 1);
//	STB(ret, BIT32(sda));
//	STB(ret, BIT32(scl));
//	XGpio_DiscreteWrite(&XGpioInst, 1, ret);
//	//XGpio_DiscreteWrite(&XGpioInst, 1, (1<<sda|1<<scl));
//
//	usleep(4);
//}


void i2c_stop(i2c_no i2c)
{
	u32 sda;
	u32 scl;
	u32 ret;
	sda=XGpio_I2C_CfgTable[i2c].I2C_SDA;
	scl=XGpio_I2C_CfgTable[i2c].I2C_SCL;

	//STOP:when CLK is high DATA change form low to high
	ret = XGpio_DiscreteRead(&XGpioInst, 1);
	CLB(ret, BIT32(sda));
	CLB(ret, BIT32(scl));
	XGpio_DiscreteWrite(&XGpioInst, 1, ret);
	//XGpio_DiscreteWrite(&XGpioInst, 1, (0<<sda|0<<scl));

	ret=XGpio_GetDataDirection(&XGpioInst, 1);
	CLB(ret,BIT32(sda));
	CLB(ret,BIT32(scl));
	XGpio_SetDataDirection(&XGpioInst, 1, ret);
//	XGpio_SetDataDirection(&XGpioInst, 1, (OUTPUT<<sda|OUTPUT<<scl));

	ret = XGpio_DiscreteRead(&XGpioInst, 1);
	CLB(ret, BIT32(sda));
	CLB(ret, BIT32(scl));
	XGpio_DiscreteWrite(&XGpioInst, 1, ret);
	//XGpio_DiscreteWrite(&XGpioInst, 1, (0<<sda|0<<scl));

 	usleep(4);

	ret = XGpio_DiscreteRead(&XGpioInst, 1);
	CLB(ret, BIT32(sda));
	STB(ret, BIT32(scl));
	XGpio_DiscreteWrite(&XGpioInst, 1, ret);
 	//XGpio_DiscreteWrite(&XGpioInst, 1, (0<<sda|1<<scl));

	usleep(4);

	ret = XGpio_DiscreteRead(&XGpioInst, 1);
	STB(ret, BIT32(sda));
	STB(ret, BIT32(scl));
	XGpio_DiscreteWrite(&XGpioInst, 1, ret);
	//XGpio_DiscreteWrite(&XGpioInst, 1, (1<<sda|1<<scl));

	usleep(4);
	ret=XGpio_GetDataDirection(&XGpioInst, 1);
	STB(ret,BIT32(sda));
	STB(ret,BIT32(scl));
	XGpio_SetDataDirection(&XGpioInst, 1, ret);
//	XGpio_SetDataDirection(&XGpioInst, 1, (INPUT<<sda|INPUT<<scl));
	usleep(1000);
}


void i2c_ack(i2c_no i2c)
{
	u32 sda;
	u32 scl;
	u32 ret;
	sda=XGpio_I2C_CfgTable[i2c].I2C_SDA;
	scl=XGpio_I2C_CfgTable[i2c].I2C_SCL;

	ret=XGpio_GetDataDirection(&XGpioInst, 1);
	CLB(ret,BIT32(sda));
	CLB(ret,BIT32(scl));
	XGpio_SetDataDirection(&XGpioInst, 1, ret);
	// scl, sda 都设置为输出
	//XGpio_SetDataDirection(&XGpioInst, 1, (OUTPUT<<sda|OUTPUT<<scl));

	ret = XGpio_DiscreteRead(&XGpioInst, 1);
	CLB(ret, BIT32(sda));
	CLB(ret, BIT32(scl));
	XGpio_DiscreteWrite(&XGpioInst, 1, ret);
	//XGpio_DiscreteWrite(&XGpioInst, 1, (0<<sda|0<<scl));

	usleep(4);

	ret = XGpio_DiscreteRead(&XGpioInst, 1);
	CLB(ret, BIT32(sda));
	STB(ret, BIT32(scl));
	XGpio_DiscreteWrite(&XGpioInst, 1, ret);
	//XGpio_DiscreteWrite(&XGpioInst, 1, (0<<sda|1<<scl));

	usleep(4);

	ret = XGpio_DiscreteRead(&XGpioInst, 1);
	CLB(ret, BIT32(sda));
	CLB(ret, BIT32(scl));
	XGpio_DiscreteWrite(&XGpioInst, 1, ret);
	//XGpio_DiscreteWrite(&XGpioInst, 1, (0<<sda|0<<scl));

	usleep(4);

	ret=XGpio_GetDataDirection(&XGpioInst, 1);
	STB(ret,BIT32(sda));
	CLB(ret,BIT32(scl));
	XGpio_SetDataDirection(&XGpioInst, 1, ret);
	// set sda pin as input
	//XGpio_SetDataDirection(&XGpioInst, 1, (INPUT<<sda|OUTPUT<<scl));
}

//产生NACK应答
void i2c_nack(i2c_no i2c)
{
	u32 sda;
	u32 scl;
	u32 ret;
	sda=XGpio_I2C_CfgTable[i2c].I2C_SDA;
	scl=XGpio_I2C_CfgTable[i2c].I2C_SCL;

	ret=XGpio_GetDataDirection(&XGpioInst, 1);
	CLB(ret,BIT32(sda));
	CLB(ret,BIT32(scl));
	XGpio_SetDataDirection(&XGpioInst, 1, ret);
	// set scl, sda as output
	//XGpio_SetDataDirection(&XGpioInst, 1, (OUTPUT<<sda|OUTPUT<<scl));

	ret = XGpio_DiscreteRead(&XGpioInst, 1);
	STB(ret, BIT32(sda));
	CLB(ret, BIT32(scl));
	XGpio_DiscreteWrite(&XGpioInst, 1, ret);
	//XGpio_DiscreteWrite(&XGpioInst, 1, (1<<sda|0<<scl));

	usleep(4);

	ret = XGpio_DiscreteRead(&XGpioInst, 1);
	STB(ret, BIT32(sda));
	STB(ret, BIT32(scl));
	XGpio_DiscreteWrite(&XGpioInst, 1, ret);
	//XGpio_DiscreteWrite(&XGpioInst, 1, (1<<sda|1<<scl));

	usleep(4);

	ret = XGpio_DiscreteRead(&XGpioInst, 1);
	STB(ret, BIT32(sda));
	CLB(ret, BIT32(scl));
	XGpio_DiscreteWrite(&XGpioInst, 1, ret);
	//XGpio_DiscreteWrite(&XGpioInst, 1, (1<<sda|0<<scl));

	usleep(4);

	ret=XGpio_GetDataDirection(&XGpioInst, 1);
	STB(ret,BIT32(sda));
	CLB(ret,BIT32(scl));
	XGpio_SetDataDirection(&XGpioInst, 1, ret);
	// set sda as input
	//XGpio_SetDataDirection(&XGpioInst, 1, (INPUT<<sda|OUTPUT<<scl));
}

void i2c_send_byte(i2c_no i2c, u8 txd)
{
    u8 t;
	u32 sda;
	u32 scl;
	u32 ret;
	sda=XGpio_I2C_CfgTable[i2c].I2C_SDA;
	scl=XGpio_I2C_CfgTable[i2c].I2C_SCL;

	// set scl, sda as output
	ret=XGpio_GetDataDirection(&XGpioInst, 1);
	CLB(ret,BIT32(sda));
	CLB(ret,BIT32(scl));
	XGpio_SetDataDirection(&XGpioInst, 1, ret);
	//XGpio_SetDataDirection(&XGpioInst, 1, (OUTPUT<<sda|OUTPUT<<scl));
	ret = XGpio_DiscreteRead(&XGpioInst, 1);
	XGpio_DiscreteWrite(&XGpioInst, 1, (CLB(ret,BIT32(scl))));//pull lo to start transmission

    for(t=0; t<8; t++)
    {
    	ret = XGpio_DiscreteRead(&XGpioInst, 1);
    	if(((txd&0x80)>>7) == 0)
    	{
    		CLB(ret, BIT32(sda));
    	}
    	else
    	{
    		STB(ret, BIT32(sda));
    	}
    	CLB(ret, BIT32(scl));
    	XGpio_DiscreteWrite(&XGpioInst, 1, ret);
    	//XGpio_DiscreteWrite(&XGpioInst, 1, (((txd&0x80)>>7)<<sda|0<<scl));

        txd<<=1;

        usleep(2);

        ret = XGpio_DiscreteRead(&XGpioInst, 1);
        XGpio_DiscreteWrite(&XGpioInst, 1, (STB(ret,BIT32(scl))));

        usleep(4);

        ret = XGpio_DiscreteRead(&XGpioInst, 1);
        XGpio_DiscreteWrite(&XGpioInst, 1, (CLB(ret,BIT32(scl))));

        usleep(2);
    }

	ret=XGpio_GetDataDirection(&XGpioInst, 1);
	STB(ret,BIT32(sda));
	CLB(ret,BIT32(scl));
	XGpio_SetDataDirection(&XGpioInst, 1, ret);
    //XGpio_SetDataDirection(&XGpioInst, 1, (INPUT<<sda|OUTPUT<<scl)); //set SDA pin as input
}

u8  i2c_recv_byte(i2c_no i2c)
{
	unsigned char i=0 , rxd=0;
	u32 sda;
	u32 scl;
	u32 ret;
	sda=XGpio_I2C_CfgTable[i2c].I2C_SDA;
	scl=XGpio_I2C_CfgTable[i2c].I2C_SCL;

	ret=XGpio_GetDataDirection(&XGpioInst, 1);
	STB(ret,BIT32(sda));
	CLB(ret,BIT32(scl));
	XGpio_SetDataDirection(&XGpioInst, 1, ret);
	//XGpio_SetDataDirection(&XGpioInst, 1, (INPUT<<sda|OUTPUT<<scl)); //set SDA pin as input

	ret = XGpio_DiscreteRead(&XGpioInst, 1);
	XGpio_DiscreteWrite(&XGpioInst, 1, (CLB(ret,BIT32(scl))));
	//XGpio_DiscreteWrite(&XGpioInst, 1, (0<<scl));

	usleep(4);

	for(i=0;i<8;i++ )
	{
		ret = XGpio_DiscreteRead(&XGpioInst, 1);
		XGpio_DiscreteWrite(&XGpioInst, 1, (STB(ret,BIT32(scl))));
		//XGpio_DiscreteWrite(&XGpioInst, 1, (1<<scl));

        usleep(2);

        rxd <<= 1;

        ret = XGpio_DiscreteRead(&XGpioInst, 1);
        if(CHB(ret, BIT32(sda))){
        	rxd = rxd | 0x01;
        }
		usleep(2);

		ret = XGpio_DiscreteRead(&XGpioInst, 1);
		XGpio_DiscreteWrite(&XGpioInst, 1, (CLB(ret,BIT32(scl))));
		//XGpio_DiscreteWrite(&XGpioInst, 1, (0<<scl));
		usleep(4);
    }

	ret=XGpio_GetDataDirection(&XGpioInst, 1);
	CLB(ret,BIT32(sda));
	CLB(ret,BIT32(scl));
	XGpio_SetDataDirection(&XGpioInst, 1, ret);
	//XGpio_SetDataDirection(&XGpioInst, 1, (OUTPUT<<sda|OUTPUT<<scl));

    return rxd;
}

u8  i2c_recv_ack(i2c_no i2c, stretch_mode st_mode)
{
	u8 check;
	u32 ucErrTime=0;
	u32 sda;
	u32 scl;
	u32 ret;
	sda=XGpio_I2C_CfgTable[i2c].I2C_SDA;
	scl=XGpio_I2C_CfgTable[i2c].I2C_SCL;

	ret=XGpio_GetDataDirection(&XGpioInst, 1);
	STB(ret,BIT32(sda));
	CLB(ret,BIT32(scl));
	XGpio_SetDataDirection(&XGpioInst, 1, ret);
	//XGpio_SetDataDirection(&XGpioInst, 1, (INPUT<<sda|OUTPUT<<scl)); //set SDA pin as input

	ret = XGpio_DiscreteRead(&XGpioInst, 1);
	XGpio_DiscreteWrite(&XGpioInst, 1, (CLB(ret,BIT32(scl))));
	//XGpio_DiscreteWrite(&XGpioInst, 1, (0<<scl));

	if(st_mode)
	{
		usleep(10);
	}
	else
	{
		usleep(4);
	}

	if(st_mode)
	{
		ret=XGpio_GetDataDirection(&XGpioInst, 1);
		STB(ret,BIT32(sda));
		STB(ret,BIT32(scl));
		XGpio_SetDataDirection(&XGpioInst, 1, ret);
		//XGpio_SetDataDirection(&XGpioInst, 1, (INPUT<<sda|INPUT<<scl)); //set SCL pin as input

		while(CHB(XGpio_DiscreteRead(&XGpioInst, 1), BIT32(scl)) == 0)
		{
		  ucErrTime++;
		  usleep(1);
		  if(ucErrTime>100000)
		  {
			ucErrTime = 0;
			break;
		  }
		}
		usleep(10);
	}
	else
	{
		ret = XGpio_DiscreteRead(&XGpioInst, 1);
		XGpio_DiscreteWrite(&XGpioInst, 1, (STB(ret,BIT32(scl))));
		usleep(2);
	}

	check = 0;
	ret = XGpio_DiscreteRead(&XGpioInst, 1);
	if(CHB(ret, BIT32(sda)))
	{
		check = 1;
	}

	if(st_mode)
	{
		ret=XGpio_GetDataDirection(&XGpioInst, 1);
		STB(ret,BIT32(sda));
		CLB(ret,BIT32(scl));
		XGpio_SetDataDirection(&XGpioInst, 1, ret);
		//XGpio_SetDataDirection(&XGpioInst, 1, (INPUT<<sda|OUTPUT<<scl)); //set SCL pin as output
	}
	else
	{
		usleep(4);
	}
	ret = XGpio_DiscreteRead(&XGpioInst, 1);
	XGpio_DiscreteWrite(&XGpioInst, 1, (CLB(ret,BIT32(scl))));
	//XGpio_DiscreteWrite(&XGpioInst, 1, (0<<scl));//pull lo SCL
	usleep(2);

	if(st_mode)
	{
		ret = XGpio_DiscreteRead(&XGpioInst, 1);
		STB(ret, BIT32(sda));
		CLB(ret, BIT32(scl));
		XGpio_DiscreteWrite(&XGpioInst, 1, ret);
		//XGpio_DiscreteWrite(&XGpioInst, 1, (0<<scl)|(1<<sda));
	}

	ret=XGpio_GetDataDirection(&XGpioInst, 1);
	CLB(ret,BIT32(sda));
	CLB(ret,BIT32(scl));
	XGpio_SetDataDirection(&XGpioInst, 1, ret);
	//XGpio_SetDataDirection(&XGpioInst, 1, (OUTPUT<<sda|OUTPUT<<scl)); //set SDA pin as output

	ret = XGpio_DiscreteRead(&XGpioInst, 1);
	STB(ret, BIT32(sda));
	CLB(ret, BIT32(scl));
	XGpio_DiscreteWrite(&XGpioInst, 1, ret);
	//XGpio_DiscreteWrite(&XGpioInst, 1, (0<<scl)|(1<<sda));

	return check;
}


int xgpio_i2c_reg8_write(i2c_no i2c, char IIC_ADDR, char Addr, char Data, stretch_mode st_mode)
{
	u8 ack=0;

	i2c_start(i2c);

	i2c_send_byte(i2c, IIC_ADDR<<1);
	ack=i2c_recv_ack(i2c, st_mode);
	if(ack)
	{
		i2c_stop(i2c);
		return XST_FAILURE;
	}

	i2c_send_byte(i2c, Addr);
	ack=i2c_recv_ack(i2c, st_mode);
	if(ack)
	{
		i2c_stop(i2c);
		return XST_FAILURE;
	}

	i2c_send_byte(i2c, Data);
	ack=i2c_recv_ack(i2c, st_mode);
	if(ack)
	{
		i2c_stop(i2c);
		return XST_FAILURE;
	}

	i2c_stop(i2c);

	return XST_SUCCESS;
}

// 7-bit addr
int xgpio_i2c_reg8_read(i2c_no i2c, char IIC_ADDR, char Addr, u8 * ret, stretch_mode st_mode)
{
	u8 rxd;
	u8 ack=0;

	i2c_start(i2c);

	i2c_send_byte(i2c, IIC_ADDR<<1);
	ack=i2c_recv_ack(i2c, st_mode);
	if(ack)
	{
		i2c_stop(i2c);
		return XST_FAILURE;
	}

	i2c_send_byte(i2c, Addr);
	ack=i2c_recv_ack(i2c, st_mode);
	if(ack)
	{
		i2c_stop(i2c);
		return XST_FAILURE;
	}

	//i2c_stop(i2c);

  	i2c_start(i2c);

  	i2c_send_byte(i2c, IIC_ADDR<<1 | 0x01);
  	ack=i2c_recv_ack(i2c, st_mode);
	if(ack)
	{
		i2c_stop(i2c);
		return XST_FAILURE;
	}

	rxd = i2c_recv_byte(i2c);
	i2c_nack(i2c);

  	i2c_stop(i2c);

  	*ret = rxd;

  	return XST_SUCCESS;
}

int xgpio_i2c_reg16_write(i2c_no i2c, char IIC_ADDR, unsigned short Addr, char Data, stretch_mode st_mode)
{
	u8 ack=0;

	i2c_start(i2c);

	i2c_send_byte(i2c, IIC_ADDR<<1);
	ack=i2c_recv_ack(i2c, st_mode);
	if(ack)
	{
		i2c_stop(i2c);
		return XST_FAILURE;
	}

	i2c_send_byte(i2c, Addr >> 8);
	ack=i2c_recv_ack(i2c, st_mode);
	if(ack)
	{
		i2c_stop(i2c);
		return XST_FAILURE;
	}

	i2c_send_byte(i2c, Addr & 0x00FF);
	ack=i2c_recv_ack(i2c, st_mode);
	if(ack)
	{
		i2c_stop(i2c);
		return XST_FAILURE;
	}

	i2c_send_byte(i2c, Data);
	ack=i2c_recv_ack(i2c, st_mode);
	if(ack)
	{
		i2c_stop(i2c);
		return XST_FAILURE;
	}

	i2c_stop(i2c);

	return XST_SUCCESS;
}

int xgpio_i2c_reg16_read(i2c_no i2c, char IIC_ADDR, unsigned short Addr, u8 * ret, stretch_mode st_mode)
{
	u8 rxd;
	u8 ack=0;

	i2c_start(i2c);

	i2c_send_byte(i2c, IIC_ADDR<<1);
//	i2c_ack(i2c);
	ack=i2c_recv_ack(i2c, st_mode);
	if(ack)
	{
		i2c_stop(i2c);
		return XST_FAILURE;
	}

	i2c_send_byte(i2c, Addr >> 8);
//	i2c_ack(i2c);
	ack=i2c_recv_ack(i2c, st_mode);
	if(ack)
	{
		i2c_stop(i2c);
		return XST_FAILURE;
	}

	i2c_send_byte(i2c, Addr & 0x00FF);
//	i2c_ack(i2c);
	ack=i2c_recv_ack(i2c, st_mode);
	if(ack)
	{
		i2c_stop(i2c);
		return XST_FAILURE;
	}

	//i2c_stop(i2c);

  	i2c_start(i2c);

  	i2c_send_byte(i2c, IIC_ADDR<<1 | 0x01);
//  	i2c_ack(i2c);
  	ack=i2c_recv_ack(i2c, st_mode);
	if(ack)
	{
		i2c_stop(i2c);
		return XST_FAILURE;
	}

	rxd = i2c_recv_byte(i2c);
	i2c_nack(i2c);
//	i2c_ack(i2c);

  	i2c_stop(i2c);

  	*ret = rxd;

  	return  XST_SUCCESS ;
}

#if 0
int xgpio_i2c_32b32_write(i2c_no i2c, char IIC_ADDR, unsigned int Addr, unsigned int Data, stretch_mode st_mode)
{
	u8 ack=0;

	i2c_start(i2c);

	i2c_send_byte(i2c, IIC_ADDR<<1);
	ack=i2c_recv_ack(i2c, st_mode);
	if(ack)
	{
		i2c_stop(i2c);
		return XST_FAILURE;
	}

	i2c_send_byte(i2c, Addr >> 24);
	ack=i2c_recv_ack(i2c, st_mode);
	if(ack)
	{
		i2c_stop(i2c);
		return XST_FAILURE;
	}
	i2c_send_byte(i2c, Addr >> 16);
	ack=i2c_recv_ack(i2c, st_mode);
	if(ack)
	{
		i2c_stop(i2c);
		return XST_FAILURE;
	}
	i2c_send_byte(i2c, Addr >> 8);
	ack=i2c_recv_ack(i2c, st_mode);
	if(ack)
	{
		i2c_stop(i2c);
		return XST_FAILURE;
	}

	i2c_send_byte(i2c, Addr & 0x00FF);
	ack=i2c_recv_ack(i2c, st_mode);
	if(ack)
	{
		i2c_stop(i2c);
		return XST_FAILURE;
	}

	i2c_send_byte(i2c, Data>>24);
	ack=i2c_recv_ack(i2c, st_mode);
	if(ack)
	{
		i2c_stop(i2c);
		return XST_FAILURE;
	}

	i2c_send_byte(i2c, Data>>16);
	ack=i2c_recv_ack(i2c, st_mode);
	if(ack)
	{
		i2c_stop(i2c);
		return XST_FAILURE;
	}

	i2c_send_byte(i2c, Data>>8);
	ack=i2c_recv_ack(i2c, st_mode);
	if(ack)
	{
		i2c_stop(i2c);
		return XST_FAILURE;
	}

	i2c_send_byte(i2c, Data);
	ack=i2c_recv_ack(i2c, st_mode);
	if(ack)
	{
		i2c_stop(i2c);
		return XST_FAILURE;
	}

	i2c_stop(i2c);

	return XST_SUCCESS;
}

int xgpio_i2c_32b32_read(i2c_no i2c, char IIC_ADDR, unsigned int Addr, unsigned int * ret, stretch_mode st_mode)
{
	u32 rxd;
	u8 ack=0;

	i2c_start(i2c);

	i2c_send_byte(i2c, IIC_ADDR<<1);
	ack=i2c_recv_ack(i2c, st_mode);
	if(ack)
	{
		i2c_stop(i2c);
		return XST_FAILURE;
	}

	i2c_send_byte(i2c, Addr >> 24);
	ack=i2c_recv_ack(i2c, st_mode);
	if(ack)
	{
		i2c_stop(i2c);
		return XST_FAILURE;
	}
	i2c_send_byte(i2c, Addr >> 16);
	ack=i2c_recv_ack(i2c, st_mode);
	if(ack)
	{
		i2c_stop(i2c);
		return XST_FAILURE;
	}
	i2c_send_byte(i2c, Addr >> 8);
	ack=i2c_recv_ack(i2c, st_mode);
	if(ack)
	{
		i2c_stop(i2c);
		return XST_FAILURE;
	}

	i2c_send_byte(i2c, Addr & 0x00FF);
	ack=i2c_recv_ack(i2c, st_mode);
	if(ack)
	{
		i2c_stop(i2c);
		return XST_FAILURE;
	}

	//i2c_stop(i2c);

  	i2c_start(i2c);

  	i2c_send_byte(i2c, IIC_ADDR<<1 | 0x01);
//  	i2c_ack(i2c);
  	ack=i2c_recv_ack(i2c, st_mode);
	if(ack)
	{
		i2c_stop(i2c);
		return XST_FAILURE;
	}

	rxd = i2c_recv_byte(i2c);
//	i2c_nack(i2c);
	i2c_ack(i2c);
	usleep(110);

	rxd += i2c_recv_byte(i2c)<<8;
//	i2c_nack(i2c);
	i2c_ack(i2c);
	usleep(110);

	rxd += i2c_recv_byte(i2c)<<16;
//	i2c_nack(i2c);
	i2c_ack(i2c);
	usleep(110);

	rxd += i2c_recv_byte(i2c)<<24;
	i2c_nack(i2c);
//	i2c_ack(i2c);

  	i2c_stop(i2c);

  	*ret = rxd;

  	return  XST_SUCCESS ;
}
#endif
