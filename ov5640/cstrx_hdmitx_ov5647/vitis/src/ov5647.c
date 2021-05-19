#include "ov5647.h"
#include "xiicps.h"
#include "xparameters.h"
#include "PS_i2c.h"
#include "sleep.h"

struct reginfo sensor_init_data[] =
{
		//[7]=0 Software reset; [6]=1 Software power down; Default=0x02
		//{0x3008, 0x42},//for ov5640

		//[1]=1 System input clock from PLL; Default read = 0x11
		//{0x3103, 0x03},//for ov5640

		//[3:0]=0000 MD2P,MD2N,MCP,MCN input; Default=0x00
		//{0x3017, 0x00},//for ov5640
		//[7:2]=000000 MD1P,MD1N, D3:0 input; Default=0x00
		//{0x3018, 0x00},//for ov5640
		//[6:4]=001 PLL charge pump, [3:0]=1000 MIPI 8-bit mode
		{0x3034, 0x18}, //for both
		//PLL1 configuration
		//[7:4]=0001 System clock divider /1, [3:0]=0001 Scale divider for MIPI /1
		{0x3035, 0x11}, //for both
		//[7:0]=56 PLL multiplier
		{0x3036, 0x38}, //for both
		//[4]=1 PLL root divider /2, [3:0]=1 PLL pre-divider /1
		{0x3037, 0x11}, //for both
		//[5:4]=00 PCLK root divider /1, [3:2]=00 SCLK2x root divider /1, [1:0]=01 SCLK root divider /2
		//{0x3108, 0x01}, //for ov5640
		//PLL2 configuration
		//[5:4]=01 PRE_DIV_SP /1.5, [2]=1 R_DIV_SP /1, [1:0]=00 DIV12_SP /1
		//{0x303D, 0x10}, //for both
		//[4:0]=11001 PLL2 multiplier DIV_CNT5B = 25
		//{0x303B, 0x19}, //for both



		//?
		{0x5a00, 0x08},
		//?
		{0x3000, 0x00},
		//?
		{0x3001, 0x00},
		//?
		{0x3002, 0x00},
		//Undocumented
		{0x301c, 0xf8},//Undocumented
		{0x301d, 0xf0},//Undocumented
		//VCM debug mode
		{0x3600, 0x37},
		{0x3601, 0x33},
		{0x3612, 0x59},//Undocumented
		{0x3618, 0x00},//Undocumented
		{0x3620, 0x64},//0x52
		{0x3621, 0xe0},
		{0x3622, 0x01},
		{0x3630, 0x2e},
		{0x3631, 0x0e},
		{0x3632, 0xe2},
		{0x3633, 0x23},
		{0x3634, 0x44},
		{0x3635, 0x13},
		{0x3636, 0x06},


		{0x3703, 0x5a},
		{0x3704, 0xa0},
		{0x370b, 0x60},
		{0x3705, 0x1a},
		{0x3708, 0x64},//Undocumented
		{0x3709, 0x52},//Undocumented
		{0x370c, 0x0f},//Undocumented
		{0x3715, 0x78},
		{0x3717, 0x01},
		{0x371b, 0x20},
		{0x3731, 0x02},



		{0x3827, 0xec},//Undocumented
		//{0x380c, 0x07},
		//{0x380d, 0x68},
		//{0x380e, 0x03},
		//{0x380f, 0xd8},

		//[3]=1 fx1_fm_en [2]=1 frex_inv, [1:0]=0b00 frex mode 0
		{0x3b07, 0x0c},


		{0x3905, 0x02},
		{0x3906, 0x10},
		{0x3901, 0x0a},



		{0x3f05, 0x02},
		{0x3f06, 0x10},
		{0x3f01, 0x0a},


		//System control register changing not recommended
		{0x302d, 0x60},

		//?? DVP
		{0x471c, 0x50},

		{0x3a13, 0x43},

		//[7]=1 band detection manual mode
//		{0x3c01, 0x80},
		{0x3c01, 0x34},
		{0x3c04, 0x28},
		{0x3c05, 0x98},
		{0x3c06, 0x00},
		{0x3c07, 0x08},
		{0x3c08, 0x00},
		{0x3c09, 0x1c},
		{0x3c0a, 0x9c},
		{0x3c0b, 0x40},

		//[1:0] b50 step high byte
		{0x3a08, 0x01},
		//[7:0] b50 step low byte
		{0x3a09, 0x27},
		//[1:0] b60 step high byte
		{0x3a0a, 0x00},
		//[7:0] b60 step low byte
		{0x3a0b, 0xf6},
		//[5:0] b60 max
		{0x3a0d, 0x04},
		//[5:0] b50 max
		{0x3a0e, 0x03},
		{0x3a0f, 0x58},
		{0x3a10, 0x50},
		{0x3a1b, 0x58},
		{0x3a1e, 0x50},
		{0x3a11, 0x60},
		{0x3a1f, 0x28},



		//[5:0] BLC start line
		{0x4001, 0x02},
		//blc line num
		{0x4004, 0x02},

		//[7]=0 blc median filter disabled, [3]=1 adc 11bit mode enabled, [0]=1 BLC enabled
		{0x4000, 0x09},
		//BLC max
		{0x4050, 0x6e},
		//BLC stable range
		{0x4051, 0x8f},

		//[7]=1 color bar enable, [3:2]=00 eight color bar
		{0x503d, 0x00}, //for both
		//[2]=1 ISP vflip, [1]=1 sensor vflip
		//{0x3820, 0x46},//for ov5640
		//[2]=1 ISP vflip, [1]=1 sensor vflip, [0]=r_vbinning
		//{0x3820, 0x41},//for ov5647

		//[3]=1 mipi_pad_enable
		{0x3016, 0x08},

		//[7:6]=0b11 HS common voltage, [5:4]=0b10 Low speed Driving strenth
		{0x3017, 0xe0},

		//[7:5]=010 Two lane mode , [4]=0 MIPI HS TX no power down,
		//[3]=0 MIPI LP RX no power down, [2]=1 MIPI enable, [1:0]=10 Debug mode; Default=0x58
		{0x3018, 0x44},

		//[7:5]=001 Two lane mode, [4]=0 MIPI HS TX no power down, [3]=0 MIPI LP RX no power down, [2]=1 MIPI enable, [1:0]=10 Debug mode; Default=0x58
		//{0x300e, 0x45},//for ov5640
		//[7:5]=010 Two lane mode , [4]=0 MIPI HS TX no power down,
		//[3]=0 MIPI LP RX no power down, [2]=1 MIPI enable, [1:0]=10 Debug mode; Default=0x58
		{0x3018, 0x44},


		//[1:0]=0b00 gain_ceiling[9:8]
		{0x3a18, 0x00},
		//[7:0]=0xf8 gain_ceiling[7:0]
		{0x3a19, 0xf8},


		//[5]=0 Clock free running, [4]=1 Send line short packet, [3]=0 Use lane1 as default, [2]=1 MIPI bus LP11 when no packet; Default=0x04
		//{0x4800, 0x14},//for both
		{0x4800, 0x04},//for both

		//?
		//{0x302e, 0x08},//for ov5640

		////[7:4]=0x3 YUV422, [3:0]=0x0 YUYV
		////{0x4300, 0x30},//for ov5640
		//[7:4]=0x6 RGB565, [3:0]=0x0 {b[4:0],g[5:3],g[2:0],r[4:0]}
		//{0x4300, 0x6f},//for ov5640

		//FORMAT MUXCONTROL, [2:0]
		//{0x501f, 0x01},//for ov5640
		//FORMAT MUXCONTROL, [2:0]=011 ISP Output, [2:0]=others ISP Bypass
		{0x501f, 0x03},//for ov5647

		//[2:0], JPEG mode select
		//{0x4713, 0x03},//for ov5640

		//[5:0], JPEG Quantization scale
		//{0x4407, 0x04},//for ov5640

		// ?
		//{0x440e, 0x00},//for ov5640
		//{0x460b, 0x35},//for ov5640

		//[1]=0 DVP PCLK divider manual control by 0x3824[4:0]
		//{0x460c, 0x20},//for ov5640

		//[4:0]=1 SCALE_DIV=INT(3824[4:0]/2)
		//{0x3824, 0x01},//for ov5640

		//[7]=1 LENC correction enabled, [5]=1 RAW gamma enabled, [2]=1 Black pixel cancellation enabled, [1]=1 White pixel cancellation enabled, [0]=1 Color interpolation enabled
		{0x5000, 0x07},//for both

		//[7]=0 Special digital effects disabled, [5]=0 scaling disabled, [2]=0 UV average disabled,
		//[1]=0 Color matrix disabled, [0]=1 Auto white balance enabled
		{0x5001, 0x01},
		//{0x5001, 0x03},
		//[0]=0 Auto white balance disabled
		//{0x5001, 0x00},
		//[7]=0 LENC correction disabled, [5]=1 RAW gamma enabled, [2]=1 Black pixel cancellation enabled,
		//[1]=1 White pixel cancellation enabled, [0]=1 Color interpolation enabled
		{0x5000, 0x06},


		//[6]=1 win_en(Draw window for AFC) enabled, [1]=0 otp_en disabled, [0]=1 awb gain enabled
		{0x5002, 0x41},

		//[3]=1 buf_en enabled, [2]=0 bin_man_set disabled, [1]=0 bin_auto_en disabled
		{0x5003, 0x08},

		{SEQUENCE_END, 0x00}
};


struct reginfo cfg_720p_60fps[] =
{
		//              +----------------+        +------------------+         +---------------------+        +---------------------+
		//XVCLK         | PRE_DIV0       |        | Mult (4+252)     |         | Sys divider (0=16)  |        | MIPI divider (0=16) |
		//+-------+-----> 3037[3:0]=0011 +--------> 3036[7:0]=0x46   +---------> 3035[7:4]=0010      +--------> 3035[3:0]=0001      |
		//24MHz   |     | / 3            | 8MHz   | * 70             | 560MHz  | / 2                 | 280MHz | / 1                 |
		//        |     +----------------+        +------------------+         +----------+----------+        +----------+----------+
		//        |                                                                       |                              |
		//        |                                                                 280MHz|                      MIPISCLK|280MHz
		//        |                                                                       |                              |
		//        |     +----------------+        +------------------+         +----------v----------+        +----------v----------+
		//        |     | PRE_DIVSP      |        | R_DIV_SP         |         | PLL R divider       |        | MIPI PHY            | MIPI_CLK
		//        +-----> 303d[5:4]=11   +--------> 303d[2]=0 (+1)   |         | 3037[4]=0 (+1)      |        |                     +------->
		//              | / 3            | 8MHz   | / 1              |         | / 1                 |        | / 2                 | 140MHz
		//              +----------------+        +---------+--------+         +----------+----------+        +---------------------+
		//                                                  |                             |
		//                                                  |                       280MHz|
		//                                                  |                             |
		//              +----------------+        +---------v--------+         +----------v----------+
		//              | SP divider     |        | Mult             |         | BIT div (MIPI 8/10) |
		//              | 303c[3:0]=0x1  +<-------+ 303b[4:0]=0x19   |         | 3034[3:0]=0xA)      +
		//              | / 1            | 200MHz | * 25             |         | / 2.5               |
		//              +--------+-------+        +------------------+         +----------+----------+
		//                       |                                                        |
		//                       |                                                  112MHz|
		//                       |                                                        |
		//              +--------v-------+                                     +----------v----------+
		//              | R_SELD5 div    | ADCCLK                              | PCLK div            |       SCLK
		//              | 303d[1:0]=00   +------->                             | 4843[0]=1           +------------->
		//              | / 1            | 200MHz                              | / 1   (PCLK/SCLK=1) |       112MHz
		//              +----------------+                                     +----------+----------+
		//                                                                                |
		//                                                                          112MHz|
		//                                                                                |
		//                                                                     +----------v----------+
		//                                                                     | P divider (* #lanes)|       PCLK
		//                                                                     | 3035[3:0]=0001      +------------->
		//                                                                     | / 1                 |       112MHz
		//                                                                     +---------------------+

		//{0x3034, 0x08},//[3:0]=0b1000 8-bit mode [3:0]=0b1010 10-bit mode
		//H: 210MHz / 2[BIT_DIV] = 105MHz

		//[6:4]=001 PLL charge pump, [3:0]=1010 MIPI 10-bit mode
		{0x3034, 0x1A},

//		{0x3035, 0x41},//[7:4]=0100 System clock divider /4, [3:0]=0001 Scale divider for MIPI /1
		{0x3035, 0x21},//[7:4]=0010 System clock divider /2, [3:0]=0001 Scale divider for MIPI /1

//		{0x3036, 0x69},//[7:0]=0d105 PLL multiplier
		{0x3036, 0x46},//[7:0]=0d70 PLL multiplier

		{0x3037, 0x03},//[4]=0 bypass (or =1 /2), [3:0] PLL_prediv /3
		//{0x3037, 0x13},//[4]=1, /2; [3:0] PLL_prediv, /3

		{0x4843, 0x01},//4843[0]=1, PCLK/SCLK=1

		{0x303c, 0x11},//[6:4]=0b01 PLLS charge pump control, [3:0]=0d1 PLLS system divider
		{0x3106, 0xf5},//[3:2]=0b01 PLL sclk divider /2, [1]=0 no reset arbiter, [0]=1 enable sclk to arbiter
		{0x3821, 0x07},//[2]=1 ISP mirror, [1]=1 sensor mirror, [0]=1 horizontal binning
		//[2]=0 ISP mirror, [1]=0 sensor mirror, [0]=1 horizontal binning
//		{0x3821, 0x01},
		{0x3820, 0x41},//[2]=1 ISP vflip, [1]=1 sensor vflip, [0]=1 r_vbinning

//		//HTS line exposure time in # of pixels Tline=HTS/sclk
//		{0x380c, (2500 >> 8) & 0x1F},
//		{0x380d, 2500 & 0xFF},
//		//VTS frame exposure time in # lines
//		{0x380e, (1120 >> 8) & 0xFF},
//		{0x380f, 1120 & 0xFF},
		//HTS line exposure time in # of pixels
		{0x380c, (1896 >> 8) & 0x1F},
		{0x380d, 1896 & 0xFF},
		//VTS frame exposure time in # lines
		{0x380e, (984 >> 8) & 0xFF},
		{0x380f, 984 & 0xFF},

		//[7:4]=0x3 horizontal odd subsample increment, [3:0]=0x1 horizontal even subsample increment
		{0x3814, 0x31},

		//[7:4]=0x3 vertical odd subsample increment, [3:0]=0x1 vertical even subsample increment
		{0x3815, 0x31},


//		// eg 1280
//		//[3:0] Output horizontal width high byte
//		{0x3808, 0x05},
//		//[7:0] Output horizontal width low byte
//		{0x3809, 0x00},
//		// eg 720
//		//[2:0] Output vertical height high byte
//		{0x380a, 0x02},
//		//[7:0] Output vertical height low byte
//		{0x380b, 0xD0},
		//[3:0] Output horizontal width high byte
		{0x3808, (1280 >> 8) & 0x0F},
		//[7:0] Output horizontal width low byte
		{0x3809, 1280 & 0xFF},
		//[2:0] Output vertical height high byte
		{0x380a, (720 >> 8) & 0x7F},
		//[7:0] Output vertical height low byte
		{0x380b, 720 & 0xFF},

		//{0x3808, 0x07},
		//{0x3809, 0x80},
		//{0x380a, 0x04},
		//{0x380b, 0x38},
		//{0x3808, 0x02},
		//{0x3809, 0x80},
		//{0x380a, 0x01},
		//{0x380b, 0xe0},

//		//[3:0]=0 X address start high byte
//		{0x3800, 0x00},
//		//[7:0]=0 X address start low byte
//		{0x3801, 0x00},
//		//[2:0]=0 Y address start high byte
//		{0x3802, 0x00},
//		//[7:0]=0 Y address start low byte
//		{0x3803, 0x00},

		//[3:0]=0 X address start high byte
		{0x3800, (0 >> 8) & 0x0F},
		//[7:0]=0 X address start low byte
		{0x3801, 0 & 0xFF},
		//[2:0]=0 Y address start high byte
		{0x3802, (8 >> 8) & 0x07},
		//[7:0]=0 Y address start low byte
		{0x3803, 8 & 0xFF},

//		//[3:0] X address end high byte
//		{0x3804, 0x0a},
//		//[7:0] X address end low byte
//		{0x3805, 0x3f},
//		//[2:0] Y address end high byte
//		{0x3806, 0x07},
//		//[7:0] Y address end low byte
//		{0x3807, 0xa1},

		//[3:0] X address end high byte
		{0x3804, (2619 >> 8) & 0x0F},
		//[7:0] X address end low byte
		{0x3805, 2619 & 0xFF},
		//[2:0] Y address end high byte
		{0x3806, (1947 >> 8) & 0x07},
		//[7:0] Y address end low byte
		{0x3807, 1947 & 0xFF},

//		//[3:0] timing hoffset high byte
//		{0x3810, 0x00},
//		//[7:0] timing hoffset low byte
//		{0x3811, 0x08},
//		//[2:0] timing voffset high byte
//		{0x3812, 0x00},
//		//[7:0] timing voffset low byte
//		{0x3813, 0x02},
		//[3:0]=0 timing hoffset high byte
		{0x3810, (8 >> 8) & 0x0F},
		//[7:0]=0 timing hoffset low byte
		{0x3811, 8 & 0xFF},
		//[2:0]=0 timing voffset high byte
		{0x3812, (2 >> 8) & 0x07},
		//[7:0]=0 timing voffset low byte
		{0x3813, 2 & 0xFF},

		{0x3618, 0x00}, // Removes vertical lines appearing under bright light
		{0x3612, 0x59},
		{0x3708, 0x64},
		{0x3709, 0x52},
		{0x370c, 0x03},

		//little MIPI shit: global timing unit, period of PCLK in ns * 2(depends on # of lanes)
//		{0x4837, 24}, // 1/84M*2
		{0x4837, 36}, // 1/56M*2

		{SEQUENCE_END, 0x00}
};



struct reginfo cfg_1080p_30fps[] =
{//1920 x 1080 @ 30fps, RAW10, MIPISCLK=420, SCLK=84MHz, PCLK=84M
		//              +----------------+        +------------------+         +---------------------+        +---------------------+
		//XVCLK         | PRE_DIV0       |        | Mult (4+252)     |         | Sys divider (0=16)  |        | MIPI divider (0=16) |
		//+-------+-----> 3037[3:0]=0011 +--------> 3036[7:0]=0x69   +---------> 3035[7:4]=0010      +--------> 3035[3:0]=0001      |
		//24MHz   |     | / 3            | 8MHz   | * 105            | 840MHz  | / 2                 | 420MHz | / 1                 |
		//        |     +----------------+        +------------------+         +----------+----------+        +----------+----------+
		//        |                                                                       |                              |
		//        |                                                                 420MHz|                      MIPISCLK|420MHz
		//        |                                                                       |                              |
		//        |     +----------------+        +------------------+         +----------v----------+        +----------v----------+
		//        |     | PRE_DIVSP      |        | R_DIV_SP         |         | PLL R divider       |        | MIPI PHY            | MIPI_CLK
		//        +-----> 303d[5:4]=11   +--------> 303d[2]=0 (+1)   |         | 3037[4]=1 (+1)      |        |                     +------->
		//              | / 3            | 8MHz   | / 1              |         | / 2                 |        | / 2                 | 210MHz
		//              +----------------+        +---------+--------+         +----------+----------+        +---------------------+
		//                                                  |                             |
		//                                                  |                       210MHz|
		//                                                  |                             |
		//              +----------------+        +---------v--------+         +----------v----------+
		//              | SP divider     |        | Mult             |         | BIT div (MIPI 8/10) |
		//              | 303c[3:0]=0x1  +<-------+ 303b[4:0]=0x19   |         | 3034[3:0]=0xA)      +
		//              | / 1            | 200MHz | * 25             |         | / 2.5               |
		//              +--------+-------+        +------------------+         +----------+----------+
		//                       |                                                        |
		//                       |                                                   84MHz|
		//                       |                                                        |
		//              +--------v-------+                                     +----------v----------+
		//              | R_SELD5 div    | ADCCLK                              | PCLK div            |       SCLK
		//              | 303d[1:0]=00   +------->                             | 4843[0]=1           +------------->
		//              | / 1            | 200MHz                              | / 1   (PCLK/SCLK=1) |       84MHz
		//              +----------------+                                     +----------+----------+
		//                                                                                |
		//                                                                           84MHz|
		//                                                                                |
		//                                                                     +----------v----------+
		//                                                                     | P divider (* #lanes)|       PCLK
		//                                                                     | 3035[3:0]=0001      +------------->
		//                                                                     | / 1                 |       84MHz
		//                                                                     +---------------------+

		//PLL1 configuration
		//[7:4]=0010 System clock divider /2, [3:0]=0001 Scale divider for MIPI /1
		{0x3035, 0x21}, // 30fps setting
		//[7:0]=105 PLL multiplier
		{0x3036, 0x6e},
		//[4]=1 PLL root divider /2, [3:0]=3 PLL pre-divider /3
		{0x3037, 0x03},
		//[6:4]=001 PLL charge pump, [3:0]=1010 MIPI 10-bit mode
		{0x3034, 0x1A},

		{0x4843, 0x01},//4843[0]=1, PCLK/SCLK=1

		{0x303c, 0x11},//[6:4]=0b01 PLLS charge pump control, [3:0]=0d1 PLLS system divider
		{0x3106, 0xf5},//[3:2]=0b01 PLL sclk divider /2, [1]=0 no reset arbiter, [0]=1 enable sclk to arbiter

//		//[3:0] Output horizontal width high byte
//		{0x3808, (1920 >> 8) & 0x0F},
//		//[7:0] Output horizontal width low byte
//		{0x3809, 1920 & 0xFF},
//		//[2:0] Output vertical height high byte
//		{0x380a, (1080 >> 8) & 0x7F},
//		//[7:0] Output vertical height low byte
//		{0x380b, 1080 & 0xFF},
		{0x3808, 0x07},
		{0x3809, 0x80},
		{0x380A, 0x04},
		{0x380B, 0x38},

//		//[3:0]=0 X address start high byte
//		{0x3800, 0x00},
//		//[7:0]=0 X address start low byte
//		{0x3801, 0x00},
//		//[2:0]=0 Y address start high byte
//		{0x3802, 0x00},
//		//[7:0]=0 Y address start low byte
//		{0x3803, 0x00},

//		//[3:0]=0 X address start high byte
//		{0x3800, (336 >> 8) & 0x0F},
//		//[7:0]=0 X address start low byte
//		{0x3801, 336 & 0xFF},
//		//[2:0]=0 Y address start high byte
//		{0x3802, (434 >> 8) & 0x0F},
//		//[7:0]=0 Y address start low byte
//		{0x3803, 434 & 0xFF},
		{0x3800, 0x01},
		{0x3801, 0x50},
		{0x3802, 0x01},
		{0x3803, 0xB2},

//		//[3:0] X address end high byte
//		{0x3804, 0x0a},
//		//[7:0] X address end low byte
//		{0x3805, 0x3f},
//		//[2:0] Y address end high byte
//		{0x3806, 0x07},
//		//[7:0] Y address end low byte
//		{0x3807, 0xa1},

		//[3:0] X address end high byte
//		{0x3804, (2275 >> 8) & 0x0F},
//		//[7:0] X address end low byte
//		{0x3805, 2275 & 0xFF},
//		//[2:0] Y address end high byte
//		{0x3806, (1521 >> 8) & 0x07},
//		//[7:0] Y address end low byte
//		{0x3807, 1521 & 0xFF},
		{0x3804, 0x08},
		{0x3805, 0xE3},
		{0x3806, 0x05},
		{0x3807, 0xF1},


//		//[3:0]=0 timing hoffset high byte
//		{0x3810, (8 >> 8) & 0x0F},
//		//[7:0]=0 timing hoffset low byte
//		{0x3811, 8 & 0xFF},
//		//[2:0]=0 timing voffset high byte
//		{0x3812, (2 >> 8) & 0x07},
//		//[7:0]=0 timing voffset low byte
//		{0x3813, 2 & 0xFF},
		//[3:0] timing hoffset high byte
		{0x3810, 0x00},
		//[7:0] timing hoffset low byte
		{0x3811, 0x08},
		//[2:0] timing voffset high byte
		{0x3812, 0x00},
		//[7:0] timing voffset low byte
		{0x3813, 0x02},



		//HTS line exposure time in # of pixels Tline=HTS/sclk
//		{0x380c, (2416 >> 8) & 0x1F},
//		{0x380d, 2416 & 0xFF},
		{0x380C, 0x09},
		{0x380D, 0x70},
		//VTS frame exposure time in # lines
//		{0x380e, (1126 >> 8) & 0xFF},
//		{0x380f, 1126 & 0xFF},
		{0x380E, 0x04},
		{0x380F, 0x66},

		//[7:4]=0x1 horizontal odd subsample increment, [3:0]=0x1 horizontal even subsample increment
		{0x3814, 0x11},
		//[7:4]=0x1 vertical odd subsample increment, [3:0]=0x1 vertical even subsample increment
		{0x3815, 0x11},

		//[2]=1 ISP vflip, [1]=1 sensor vflip, [0]=r_vbinning
//		{0x3820, 0x06},//for ov5647
		{0x3820, 0x00},//for ov5647
		//[2]=0 ISP mirror, [1]=0 sensor mirror, [0]=0 no horizontal binning
		{0x3821, 0x40},//for both

		//little MIPI shit: global timing unit, period of PCLK in ns * 2(depends on # of lanes)
		{0x4837, 24}, // 1/84M*2

//		//Undocumented anti-green settings
		{0x3612,0x4b}, //
		{0x3618,0x04}, //
		{0x3708,0x24}, //
		{0x3709,0x12}, //
		{0x370c,0x00}, //


		{SEQUENCE_END, 0x00}
};


struct reginfo cfg_advanced_awb[] =
{
		// Enable Advanced AWB
		{0x3406,0x00},
		{0x5001,0x03},
		{0x5002,0x41}, //
		{0x5003,0x08}, //
		{0x5005,0x31}, //
		{0x5025,0x00}, //awb src sel
		{0x5046,0x09}, //

		{0x5180,0x08}, //
		{0x5186,0x04}, //
		{0x5187,0x00}, //
		{0x5188,0x04}, //
		{0x5189,0x00}, //
		{0x518a,0x04}, //
		{0x518b,0x00}, //
		{0x5001,0x03},

		{SEQUENCE_END, 0x00}
};

int ov5647_read(XIicPs *IicInstance,u16 addr,u8 *read_buf)
{
	*read_buf=i2c_reg16_read(IicInstance,0x36,addr);
	return XST_SUCCESS;
}

int ov5647_write(XIicPs *IicInstance,u16 addr,u8 data)
{

	return i2c_reg16_write(IicInstance,0x36,addr,data);
}

/* write a array of registers  */
void sensor_write_array(XIicPs *IicInstance, struct reginfo *regarray)
{
	int i = 0;
	while (regarray[i].reg != SEQUENCE_END) {
		ov5647_write(IicInstance,regarray[i].reg,regarray[i].val);
		i++;
	}

}

int sensor_init(XIicPs *IicInstance)
{
	u8 sensor_id[2] ;
	ov5647_read(IicInstance, 0x300A, &sensor_id[0]);
	ov5647_read(IicInstance, 0x300B, &sensor_id[1]);

	if (sensor_id[0] != 0x56 || sensor_id[1] != 0x47)
	{
		xil_printf("Not ov5647 id, %x %x\r\n", sensor_id[0], sensor_id[1]);
		return 0 ;
	}
	else
	{
		xil_printf("Got ov5647 id, %x %x\r\n", sensor_id[0], sensor_id[1]);
	}

	//[1]=0 System input clock from pad; Default read = 0x11
	//ov5640_write(IicInstance,0x3103,0x11);//for ov5640
	//[7]=1 Software reset; [6]=0 Software power down; Default=0x02
	//ov5640_write(IicInstance,0x3008, 0x82);
	// [0]=0 Software sleep;
	ov5647_write(IicInstance, 0x0100, 0x00);
	// [0]=1 Software reset
	ov5647_write(IicInstance, 0x0103, 0x01);

	usleep(1000000);
//
	sensor_write_array(IicInstance,sensor_init_data);
	usleep(1000000);
	//[7]=0 Software reset; [6]=1 Software power down; Default=0x02
	//ov5640_write(IicInstance,0x3008, 0x42);
#if P1080 == 1
	//1080p 30fps
	sensor_write_array(IicInstance,cfg_1080p_30fps);
#else
	//720p 60fps
	sensor_write_array(IicInstance,cfg_720p_60fps);
#endif
//	sensor_write_array(IicInstance,cfg_advanced_awb);

	//[7]=0 Software reset; [6]=0 Software power down; Default=0x02
	//ov5640_write(IicInstance,0x3008, 0x02);
	// normal
	ov5647_write(IicInstance, 0x0100, 0x01);


	return 0;
}

