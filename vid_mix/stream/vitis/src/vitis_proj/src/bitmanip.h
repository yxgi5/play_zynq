#ifndef BITMANIP_H
#define BITMANIP_H

#define U8 unsigned char
#define U16 unsigned int
#define U32 unsigned long int
#define S8 signed char
#define S16 signed int
/*------宏定义------*/
#define uchar	unsigned char
#define uint	unsigned int
//#define BIT(x)	(1<<(x))
#define NOP()	asm("nop")
#define WDR() 	asm("wdr")

#define BIT(x) (1 << (x)) 	//选择某一位
#define BIT32(x) ((U32)1 << (x)) 	//选择某一位
#define STB(p,b) ((p)|=(b)) //置位
#define CLB(p,b) ((p)&=~(b)) //清位
#define FLB(p,b) ((p)^=(b)) //flip bit
#define CHB(p,b) ((p) & (b)) //测试某一位是否是1

#define KEY_LIGHT_VALUE 			0x01		//光源按键
#define KEY_CCD_VALUE				0x02		//CCD按键
#define KEY_WHITE_BALANCE_VALUE  	0x03		//白平衡按键
#define KEY_AVE_PEAK_VALUE 			0x04		//均值峰值测光模式按键
#define KEY_EDIT_YRB_VALUE 			0x05		//编辑或YRB选择按键
#define KEY_SHARP_SUB_VALUE			0x06		//图像增强或减按键
#define KEY_PLAYBACK_ADD_VALUE		0x07		//回放或增按键
#define KEY_FREE_SAVE_ALL_VALUE 	0x08		//冻结或保存按键
#define KEY_CCD_CHECK_VALUE 		0x09		//冻结或保存按键

#define	BIT0		0x01
#define	BIT1		0x02
#define	BIT2		0x04
#define	BIT3		0x08
#define	BIT4		0x10
#define	BIT5		0x20
#define	BIT6		0x40
#define	BIT7		0x80

//#define	NULL		0
#define	ON			1
#define	OFF			0

#define	LOW			0
#define	MIDDLE		1
#define	HIGH		2

#endif //BITMANIP_H

