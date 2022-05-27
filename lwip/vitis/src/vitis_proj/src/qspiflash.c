/******************************************************************************
*
* Copyright (C) 2014 Xilinx, Inc. All rights reserved.
*
* This file contains confidential and proprietary information  of Xilinx, Inc.
* and is protected under U.S. and  international copyright and other
* intellectual property  laws.
*
* DISCLAIMER
* This disclaimer is not a license and does not grant any  rights to the
* materials distributed herewith. Except as  otherwise provided in a valid
* license issued to you by  Xilinx, and to the maximum extent permitted by
* applicable law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND  WITH ALL
* FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES  AND CONDITIONS, EXPRESS,
* IMPLIED, OR STATUTORY, INCLUDING  BUT NOT LIMITED TO WARRANTIES OF
* MERCHANTABILITY, NON-  INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE;
* and
* (2) Xilinx shall not be liable (whether in contract or tort,  including
* negligence, or under any other theory of liability) for any loss or damage
* of any kind or nature  related to, arising under or in connection with these
* materials, including for any direct, or any indirect,  special, incidental,
* or consequential loss or damage  (including loss of data, profits,
* goodwill, or any type of  loss or damage suffered as a result of any
* action brought  by a third party) even if such damage or loss was
* reasonably foreseeable or Xilinx had been advised of the  possibility
* of the same.
*
* CRITICAL APPLICATIONS
* Xilinx products are not designed or intended to be fail-  safe, or for use
* in any application requiring fail-safe  performance, such as life-support
* or safety devices or  systems, Class III medical devices, nuclear
* facilities,  applications related to the deployment of airbags, or any
* other applications that could lead to death, personal  injury, or severe
* property or environmental damage  (individually and collectively,
* "Critical  Applications"). Customer assumes the sole risk and  liability
* of any use of Xilinx products in Critical  Applications, subject only to
* applicable laws and  regulations governing limitations on product liability.
*
* THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS  PART
* OF THIS FILE AT ALL TIMES.
*
******************************************************************************/
/*****************************************************************************/
/**
*
* @file xqspipsu_generic_flash_polled_example.c
*
*
* This file contains a design example using the QSPIPSU driver (XQspiPsu)
* with a serial Flash device greater than or equal to 128Mb.
* The example writes to flash and reads it back in DMA mode.
* This examples runs with GENFIFO Manual start. It runs in polled mode.
* This example illustrates single, parallel and stacked modes.
* Both the flash devices have to be of the same make and size.
* The hardware which this example runs on, must have a serial Flash (Micron
* N25Q or Spansion S25FL) for it to run. In order to test in single,
* parallel or stacked flash configurations the necessary HW must be present
* and QSPI_MODE (also reflected in ConnectionMode in the instance) has
* to be in sync with HW flash configuration being tested.
*
* This example has been tested with the Micron Serial Flash (N25Q512) in
* single and parallel modes using A53 and R5 processors.
*
* @note
*
* None.
*
* <pre>
* MODIFICATION HISTORY:
*
* Ver   Who Date     Changes
* ----- --- -------- -----------------------------------------------
* 1.0   hk  08/21/14 First release
*       sk  06/17/15 Used Tx/Rx flags for Transmitting/Receiving.
*		sk  11/23/15 Added Support for Macronix 1Gb part.
*       ms  04/05/17 Modified Comment lines in functions to
*                    recognize it as documentation block for doxygen
*                    generation.
* 1.1	tjs	06/16/17 Added support for IS25LP256D flash part (PR-4650)
* 1.5	tjs 09/15/17 Replaced #ifdef COMMENTS to #if USE_FOUR_BYTE (CR-984966)
* 1.6	tjs 10/16/17 #ifdef COMMENT replaced with the flow similar to
*                    u-boot and linux for accessing flash parts with
*                    size more then 16MB (CR-984966)
*</pre>
*
******************************************************************************/

/***************************** Include Files *********************************/

#include "xparameters.h"	/* SDK generated parameters */
#include "xqspipsu.h"		/* QSPIPSU device driver */
#include "xil_printf.h"
#include "xil_cache.h"
#include "ff.h"
#include "trace_zzg_debug.h"
//#include "fatfilesys.h"
//#include "can_udp_common.h"

/************************** Constant Definitions *****************************/

/*
 * The following constants define the commands which may be sent to the Flash
 * device.
 */
#define WRITE_STATUS_CMD	0x01
#define WRITE_CMD			0x02
#define READ_CMD			0x03
#define WRITE_DISABLE_CMD	0x04
#define READ_STATUS_CMD		0x05
#define WRITE_ENABLE_CMD	0x06
#define FAST_READ_CMD		0x0B
#define DUAL_READ_CMD		0x3B
#define QUAD_READ_CMD		0x6B
#define BULK_ERASE_CMD		0xC7
#define	SEC_ERASE_CMD		0xD8
#define READ_ID				0x9F
#define READ_CONFIG_CMD		0x35
#define WRITE_CONFIG_CMD	0x01
#define ENTER_4B_ADDR_MODE	0xB7
#define EXIT_4B_ADDR_MODE	0xE9
#define EXIT_4B_ADDR_MODE_ISSI	0x29

#define WRITE_CMD_4B		0x12
#define READ_CMD_4B		0x13
#define FAST_READ_CMD_4B	0x0C
#define DUAL_READ_CMD_4B		0x3C
#define QUAD_READ_CMD_4B	0x6C
#define	SEC_ERASE_CMD_4B	0xDC

#define BANK_REG_RD			0x16
#define BANK_REG_WR			0x17
/* Bank register is called Extended Address Register in Micron */
#define EXTADD_REG_RD		0xC8
#define EXTADD_REG_WR		0xC5
#define	DIE_ERASE_CMD		0xC4
#define READ_FLAG_STATUS_CMD	0x70

/*
 * The following constants define the offsets within a FlashBuffer data
 * type for each kind of data.  Note that the read data offset is not the
 * same as the write data because the QSPIPSU driver is designed to allow full
 * duplex transfers such that the number of bytes received is the number
 * sent and received.
 */
#define COMMAND_OFFSET		0 /* Flash instruction */
#define ADDRESS_1_OFFSET	1 /* MSB byte of address to read or write */
#define ADDRESS_2_OFFSET	2 /* Middle byte of address to read or write */
#define ADDRESS_3_OFFSET	3 /* LSB byte of address to read or write */
#define ADDRESS_4_OFFSET	4 /* LSB byte of address to read or write when 4 byte address */
#define DATA_OFFSET		5 /* Start of Data for Read/Write */
#define DUMMY_OFFSET		4 /* Dummy byte offset for fast, dual and quad
				     reads */
#define DUMMY_SIZE		1 /* Number of dummy bytes for fast, dual and
				     quad reads */
#define DUMMY_CLOCKS		8 /* Number of dummy bytes for fast, dual and
				     quad reads */
#define RD_ID_SIZE		4 /* Read ID command + 3 bytes ID response */
#define BULK_ERASE_SIZE		1 /* Bulk Erase command size */
#define SEC_ERASE_SIZE		4 /* Sector Erase command + Sector address */
#define BANK_SEL_SIZE	2 /* BRWR or EARWR command + 1 byte bank value */
#define RD_CFG_SIZE		2 /* 1 byte Configuration register + RD CFG command*/
#define WR_CFG_SIZE		3 /* WRR command + 1 byte each Status and Config Reg*/
#define DIE_ERASE_SIZE	4	/* Die Erase command + Die address */

/*
 * The following constants specify the extra bytes which are sent to the
 * Flash on the QSPIPSu interface, that are not data, but control information
 * which includes the command and address
 */
#define OVERHEAD_SIZE		4

/*
 * Base address of Flash1
 */
#define FLASH1BASE 0x0000000

/*
 * Sixteen MB
 */
#define SIXTEENMB 0x1000000


/*
 * Mask for quad enable bit in Flash configuration register
 */
#define FLASH_QUAD_EN_MASK 0x02

#define FLASH_SRWD_MASK 0x80

/*
 * Bank mask
 */
#define BANKMASK 0xF000000

/*
 * Identification of Flash
 * Micron:
 * Byte 0 is Manufacturer ID;
 * Byte 1 is first byte of Device ID - 0xBB or 0xBA
 * Byte 2 is second byte of Device ID describes flash size:
 * 128Mbit : 0x18; 256Mbit : 0x19; 512Mbit : 0x20
 * Spansion:
 * Byte 0 is Manufacturer ID;
 * Byte 1 is Device ID - Memory Interface type - 0x20 or 0x02
 * Byte 2 is second byte of Device ID describes flash size:
 * 128Mbit : 0x18; 256Mbit : 0x19; 512Mbit : 0x20
 */
#define MICRON_ID_BYTE0		0x20
#define MICRON_ID_BYTE2_128	0x18
#define MICRON_ID_BYTE2_256	0x19
#define MICRON_ID_BYTE2_512	0x20
#define MICRON_ID_BYTE2_1G	0x21

#define SPANSION_ID_BYTE0		0x01
#define SPANSION_ID_BYTE2_128	0x18
#define SPANSION_ID_BYTE2_256	0x19
#define SPANSION_ID_BYTE2_512	0x20

#define WINBOND_ID_BYTE0		0xEF
#define WINBOND_ID_BYTE2_128	0x18

#define MACRONIX_ID_BYTE0		0xC2
#define MACRONIX_ID_BYTE2_1G	0x1B

#define ISSI_ID_BYTE0			0x9D
#define ISSI_ID_BYTE2_256		0x19

/*
 * The index for Flash config table
 */
/* Spansion*/
#define SPANSION_INDEX_START			0
#define FLASH_CFG_TBL_SINGLE_128_SP		SPANSION_INDEX_START
#define FLASH_CFG_TBL_STACKED_128_SP	(SPANSION_INDEX_START + 1)
#define FLASH_CFG_TBL_PARALLEL_128_SP	(SPANSION_INDEX_START + 2)
#define FLASH_CFG_TBL_SINGLE_256_SP		(SPANSION_INDEX_START + 3)
#define FLASH_CFG_TBL_STACKED_256_SP	(SPANSION_INDEX_START + 4)
#define FLASH_CFG_TBL_PARALLEL_256_SP	(SPANSION_INDEX_START + 5)
#define FLASH_CFG_TBL_SINGLE_512_SP		(SPANSION_INDEX_START + 6)
#define FLASH_CFG_TBL_STACKED_512_SP	(SPANSION_INDEX_START + 7)
#define FLASH_CFG_TBL_PARALLEL_512_SP	(SPANSION_INDEX_START + 8)

/* Micron */
#define MICRON_INDEX_START				(FLASH_CFG_TBL_PARALLEL_512_SP + 1)
#define FLASH_CFG_TBL_SINGLE_128_MC		MICRON_INDEX_START
#define FLASH_CFG_TBL_STACKED_128_MC	(MICRON_INDEX_START + 1)
#define FLASH_CFG_TBL_PARALLEL_128_MC	(MICRON_INDEX_START + 2)
#define FLASH_CFG_TBL_SINGLE_256_MC		(MICRON_INDEX_START + 3)
#define FLASH_CFG_TBL_STACKED_256_MC	(MICRON_INDEX_START + 4)
#define FLASH_CFG_TBL_PARALLEL_256_MC	(MICRON_INDEX_START + 5)
#define FLASH_CFG_TBL_SINGLE_512_MC		(MICRON_INDEX_START + 6)
#define FLASH_CFG_TBL_STACKED_512_MC	(MICRON_INDEX_START + 7)
#define FLASH_CFG_TBL_PARALLEL_512_MC	(MICRON_INDEX_START + 8)
#define FLASH_CFG_TBL_SINGLE_1GB_MC		(MICRON_INDEX_START + 9)
#define FLASH_CFG_TBL_STACKED_1GB_MC	(MICRON_INDEX_START + 10)
#define FLASH_CFG_TBL_PARALLEL_1GB_MC	(MICRON_INDEX_START + 11)

/* Winbond */
#define WINBOND_INDEX_START				(FLASH_CFG_TBL_PARALLEL_1GB_MC + 1)
#define FLASH_CFG_TBL_SINGLE_128_WB		WINBOND_INDEX_START
#define FLASH_CFG_TBL_STACKED_128_WB	(WINBOND_INDEX_START + 1)
#define FLASH_CFG_TBL_PARALLEL_128_WB	(WINBOND_INDEX_START + 2)

/* Macronix */
#define MACRONIX_INDEX_START			(FLASH_CFG_TBL_PARALLEL_128_WB + 1)
#define FLASH_CFG_TBL_SINGLE_1G_MX		MACRONIX_INDEX_START
#define FLASH_CFG_TBL_STACKED_1G_MX		(MACRONIX_INDEX_START + 1)
#define FLASH_CFG_TBL_PARALLEL_1G_MX	(MACRONIX_INDEX_START + 2)

/* ISSI */
#define ISSI_INDEX_START				(FLASH_CFG_TBL_PARALLEL_1G_MX + 1)
#define FLASH_CFG_TBL_SINGLE_256_ISSI	ISSI_INDEX_START
#define FLASH_CFG_TBL_STACKED_256_ISSI	(ISSI_INDEX_START + 1)
#define FLASH_CFG_TBL_PARALLEL_256_ISSI	(ISSI_INDEX_START + 2)

/*
 * The following constants map to the XPAR parameters created in the
 * xparameters.h file. They are defined here such that a user can easily
 * change all the needed parameters in one place.
 */
#define QSPIPSU_DEVICE_ID		XPAR_XQSPIPSU_0_DEVICE_ID

/*
 * Number of flash pages to be written.
 */
#define PAGE_COUNT		32

/*
 * Max page size to initialize write and read buffer
 */
#define MAX_PAGE_SIZE 1024

/*
 * Flash address to which data is to be written.
 */
#define TEST_ADDRESS		0x000000

//u32  FLASH_UPGRADE_ADDRESS =0x2000000;   //  offset 32M
u32  FLASH_UPGRADE_ADDRESS = 0;
u32  pl_file_length=0;
u32  sw_file_length=0;


#define UNIQUE_VALUE		0x06

#define ENTER_4B	1  // SPI Flash 4 Byte Address Mode
#define EXIT_4B		0
enum {
	flash_step_init,
	flash_step_erase,
	flash_step_write,
	flash_step_readbk,
	flash_step_exit,
	flash_step_stop,
};

enum {
	restore_first_boot,
	restore_default_loading,
	restore_user_loading,
	restore_flash_step_init,
	restore_flash_step_erase,
	restore_flash_step_write,
	restore_flash_step_readbk,
	restore_flash_step_exit,
	restore_flash_step_stop,
	restore_exist,
};


static int flashUpdate_step=flash_step_stop;

/**************************** Type Definitions *******************************/

typedef struct{
	u32 SectSize;		/* Individual sector size or
						 * combined sector size in case of parallel config*/
	u32 NumSect;		/* Total no. of sectors in one/two flash devices */
	u32 PageSize;		/* Individual page size or
						 * combined page size in case of parallel config*/
	u32 NumPage;		/* Total no. of pages in one/two flash devices */
	u32 FlashDeviceSize;	/* This is the size of one flash device
						 * NOT the combination of both devices, if present
						 */
	u8 ManufacturerID;	/* Manufacturer ID - used to identify make */
	u8 DeviceIDMemSize;	/* Byte of device ID indicating the memory size */
	u32 SectMask;		/* Mask to get sector start address */
	u8 NumDie;			/* No. of die forming a single flash */
}FlashInfo;

u8 ReadCmd;
u8 WriteCmd;
u8 StatusCmd;
u8 SectorEraseCmd;
u8 FSRFlag;
static u32 g_write_page_cnt=0;
u8 SpiReadBuffer[(PAGE_COUNT * MAX_PAGE_SIZE) + (DATA_OFFSET + DUMMY_SIZE)*8] __attribute__ ((aligned(64)));

/***************** Macros (Inline Functions) Definitions *********************/

/************************** Function Prototypes ******************************/

int QspiPsuPolledFlashExample(XQspiPsu *QspiPsuInstancePtr, u16 QspiPsuDeviceId);

int FlashReadID(XQspiPsu *QspiPsuPtr);
int FlashErase(XQspiPsu *QspiPsuPtr, u32 Address, u32 ByteCount, u8 *WriteBfrPtr);
int FlashWrite(XQspiPsu *QspiPsuPtr, u32 Address, u32 ByteCount, u8 Command,
				u8 *WriteBfrPtr);
int FlashRead(XQspiPsu *QspiPsuPtr, u32 Address, u32 ByteCount, u8 Command,
				u8 *WriteBfrPtr, u8 *ReadBfrPtr);
u32 GetRealAddr(XQspiPsu *QspiPsuPtr, u32 Address);
int BulkErase(XQspiPsu *QspiPsuPtr, u8 *WriteBfrPtr);
int DieErase(XQspiPsu *QspiPsuPtr, u8 *WriteBfrPtr);
int FlashRegisterRead(XQspiPsu *QspiPsuPtr, u32 ByteCount, u8 Command, u8 *ReadBfrPtr);
int FlashRegisterWrite(XQspiPsu *QspiPsuPtr, u32 ByteCount, u8 Command,
					u8 *WriteBfrPtr, u8 WrEn);
int FlashEnterExit4BAddMode(XQspiPsu *QspiPsuPtr,unsigned int Enable);
int  flash_upgrade_send_message(char*message);
void close_upgrade_server_report_socket();

/************************** Variable Definitions *****************************/
u8 TxBfrPtr;
u8 ReadBfrPtr[3];
FlashInfo Flash_Config_Table[28] = {
		/* Spansion 0-8 */
		{0x10000, 0x100, 256, 0x10000, 0x1000000,
				SPANSION_ID_BYTE0, SPANSION_ID_BYTE2_128, 0xFFFF0000, 1},
		{0x10000, 0x200, 256, 0x20000, 0x1000000,
				SPANSION_ID_BYTE0, SPANSION_ID_BYTE2_128, 0xFFFF0000, 1},
		{0x20000, 0x100, 512, 0x10000, 0x1000000,
				SPANSION_ID_BYTE0, SPANSION_ID_BYTE2_128, 0xFFFE0000, 1},
		{0x10000, 0x200, 256, 0x20000, 0x2000000,
				SPANSION_ID_BYTE0, SPANSION_ID_BYTE2_256, 0xFFFF0000, 1},
		{0x10000, 0x400, 256, 0x40000, 0x2000000,
				SPANSION_ID_BYTE0, SPANSION_ID_BYTE2_256, 0xFFFF0000, 1},
		{0x20000, 0x200, 512, 0x20000, 0x2000000,
				SPANSION_ID_BYTE0, SPANSION_ID_BYTE2_256, 0xFFFE0000, 1},
		{0x40000, 0x100, 512, 0x20000, 0x4000000,
				SPANSION_ID_BYTE0, SPANSION_ID_BYTE2_512, 0xFFFC0000, 1},
		{0x40000, 0x200, 512, 0x40000, 0x4000000,
				SPANSION_ID_BYTE0, SPANSION_ID_BYTE2_512, 0xFFFC0000, 1},
		{0x80000, 0x100, 1024, 0x20000, 0x4000000,
				SPANSION_ID_BYTE0, SPANSION_ID_BYTE2_512, 0xFFF80000, 1},
		/* Spansion 1Gbit is handled as 512Mbit stacked */
		/* Micron */
		{0x10000, 0x100, 256, 0x10000, 0x1000000,
				MICRON_ID_BYTE0, MICRON_ID_BYTE2_128, 0xFFFF0000, 1},
		{0x10000, 0x200, 256, 0x20000, 0x1000000,
				MICRON_ID_BYTE0, MICRON_ID_BYTE2_128, 0xFFFF0000, 1},
		{0x20000, 0x100, 512, 0x10000, 0x1000000,
				MICRON_ID_BYTE0, MICRON_ID_BYTE2_128, 0xFFFE0000, 1},
		{0x10000, 0x200, 256, 0x20000, 0x2000000,
				MICRON_ID_BYTE0, MICRON_ID_BYTE2_256, 0xFFFF0000, 1},
		{0x10000, 0x400, 256, 0x40000, 0x2000000,
				MICRON_ID_BYTE0, MICRON_ID_BYTE2_256, 0xFFFF0000, 1},
		{0x20000, 0x200, 512, 0x20000, 0x2000000,
				MICRON_ID_BYTE0, MICRON_ID_BYTE2_256, 0xFFFE0000, 1},
		{0x10000, 0x400, 256, 0x40000, 0x4000000,
				MICRON_ID_BYTE0, MICRON_ID_BYTE2_512, 0xFFFF0000, 2},
		{0x10000, 0x800, 256, 0x80000, 0x4000000,
				MICRON_ID_BYTE0, MICRON_ID_BYTE2_512, 0xFFFF0000, 2},
		{0x20000, 0x400, 512, 0x40000, 0x4000000,
				MICRON_ID_BYTE0, MICRON_ID_BYTE2_512, 0xFFFE0000, 2},//  index-17
		{0x10000, 0x800, 256, 0x80000, 0x8000000,
				MICRON_ID_BYTE0, MICRON_ID_BYTE2_1G, 0xFFFF0000, 4},
		{0x10000, 0x1000, 256, 0x100000, 0x8000000,
				MICRON_ID_BYTE0, MICRON_ID_BYTE2_1G, 0xFFFF0000, 4},
		{0x20000, 0x800, 512, 0x80000, 0x8000000,
				MICRON_ID_BYTE0, MICRON_ID_BYTE2_1G, 0xFFFE0000, 4},
		/* Winbond */
		{0x10000, 0x100, 256, 0x10000, 0x1000000,
				WINBOND_ID_BYTE0, WINBOND_ID_BYTE2_128, 0xFFFF0000, 1},
		{0x10000, 0x200, 256, 0x20000, 0x1000000,
				WINBOND_ID_BYTE0, WINBOND_ID_BYTE2_128, 0xFFFF0000, 1},
		{0x20000, 0x100, 512, 0x10000, 0x1000000,
				WINBOND_ID_BYTE0, WINBOND_ID_BYTE2_128, 0xFFFE0000, 1},
		/* Macronix */
		{0x10000, 0x800, 256, 0x80000, 0x8000000,
				MACRONIX_ID_BYTE0, MACRONIX_ID_BYTE2_1G, 0xFFFF0000, 4},
		{0x10000, 0x1000, 256, 0x100000, 0x8000000,
				MACRONIX_ID_BYTE0, MACRONIX_ID_BYTE2_1G, 0xFFFF0000, 4},
		{0x20000, 0x800, 512, 0x80000, 0x8000000,
				MACRONIX_ID_BYTE0, MACRONIX_ID_BYTE2_1G, 0xFFFE0000, 4},
		/* ISSI */
		{0x10000, 0x200, 256, 0x20000, 0x2000000,
				ISSI_ID_BYTE0, ISSI_ID_BYTE2_256, 0xFFFF0000, 1}
};

u32 FlashMake;
u32 FCTIndex;	/* Flash configuration table index */


/*
 * The instances to support the device drivers are global such that they
 * are initialized to zero each time the program runs. They could be local
 * but should at least be static so they are zeroed.
 */
static XQspiPsu QspiPsuInstance;

static XQspiPsu_Msg FlashMsg[5];

/*
 * The following variable allows a test value to be added to the values that
 * are written to the Flash such that unique values can be generated to
 * guarantee the writes to the Flash were successful
 */

/*
 * The following variables are used to read and write to the flash and they
 * are global to avoid having large buffers on the stack
 * The buffer size accounts for maximum page size and maximum banks -
 * for each bank separate read will be performed leading to that many
 * (overhead+dummy) bytes
 */

u8 CmdBfr[8];

extern uint8_t *upgradeFile;
extern uint32_t upgradeFileLength;
extern uint32_t real_file_length;
extern  int upgradefile_programming;
void show_flash_info(int idx)
{
	FlashInfo*flash_ptr=&Flash_Config_Table[idx];
	xil_printf("SectSize:%d\r\n",flash_ptr->SectSize);
	xil_printf("NumSect:%d\r\n",flash_ptr->NumSect);
	xil_printf("SectMask:%d\r\n",flash_ptr->SectMask);
	xil_printf("NumPage:%d\r\n",flash_ptr->NumPage);
	xil_printf("PageSize:%d\r\n",flash_ptr->PageSize);
	xil_printf("DeviceIDMemSize:%d\r\n",flash_ptr->DeviceIDMemSize);
	xil_printf("FlashDeviceSize:%d\r\n",flash_ptr->FlashDeviceSize);
	xil_printf("ManufacturerID:%d\r\n",flash_ptr->ManufacturerID);
	xil_printf("NumDie:%d\r\n",flash_ptr->NumDie);
}
int FlashRead_not_aligned(XQspiPsu *QspiPsuPtr, u32 Address, u32 ByteCount, u8 Command,	u8 *WriteBfrPtr, u8 *ReadBfrPtr);

/*****************************************************************************/
/**
*
* The purpose of this function is to illustrate how to use the XQspiPsu
* device driver in single, parallel and stacked modes using
* flash devices greater than or equal to 128Mb.
* This function reads data in DMA mode.
*
* @param	None.
*
* @return	XST_SUCCESS if successful, else XST_FAILURE.
*
* @note		None.
*
*****************************************************************************/
int QspiPsuUpgradeFlash(XQspiPsu *QspiPsuInstancePtr, u16 QspiPsuDeviceId)
{
	int Status;
	u8 UniqueValue;
	int Count;
	int Page;
	XQspiPsu_Config *QspiPsuConfig;


	/*
	 * Initialize the QSPIPSU driver so that it's ready to use
	 */
	QspiPsuConfig = XQspiPsu_LookupConfig(QspiPsuDeviceId);
	if (NULL == QspiPsuConfig) {
		return XST_FAILURE;
	}

	/* To test, change connection mode here if not obtained from HDF */
	//QspiPsuConfig->ConnectionMode = 2;

	Status = XQspiPsu_CfgInitialize(QspiPsuInstancePtr, QspiPsuConfig,
					QspiPsuConfig->BaseAddress);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	/*
	 * Set Manual Start
	 */
	XQspiPsu_SetOptions(QspiPsuInstancePtr, XQSPIPSU_MANUAL_START_OPTION);

	/*
	 * Set the prescaler for QSPIPSU clock
	 */
	XQspiPsu_SetClkPrescaler(QspiPsuInstancePtr, XQSPIPSU_CLK_PRESCALE_4); // XQSPIPSU_CLK_PRESCALE_8

	XQspiPsu_SelectFlash(QspiPsuInstancePtr,
		XQSPIPSU_SELECT_FLASH_CS_LOWER, XQSPIPSU_SELECT_FLASH_BUS_LOWER);

	/*
	 * Read flash ID and obtain all flash related information
	 * It is important to call the read id function before
	 * performing proceeding to any operation, including
	 * preparing the WriteBuffer
	 */
	Status = FlashReadID(QspiPsuInstancePtr);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	xil_printf("Flash connection mode : %d \n\r",
			QspiPsuConfig->ConnectionMode);
	xil_printf("where 0 - Single; 1 - Stacked; 2 - Parallel \n\r");
	xil_printf("FCTIndex: %d \n\r", FCTIndex);

    show_flash_info(FCTIndex);
	/*
	 * Initialize MaxData according to page size.
	 */

	/*
	 * Address size and read command selection
	 * Micron flash on REMUS doesn't support this 4B write/erase cmd
	 */
	ReadCmd = QUAD_READ_CMD;
	WriteCmd = WRITE_CMD;
	SectorEraseCmd = SEC_ERASE_CMD;

	/* Status cmd - SR or FSR selection */
	if((Flash_Config_Table[FCTIndex].NumDie > 1) &&
			(FlashMake == MICRON_ID_BYTE0)) {
		StatusCmd = READ_FLAG_STATUS_CMD;
		FSRFlag = 1;
	} else {
		StatusCmd = READ_STATUS_CMD;
		FSRFlag = 0;
	}

	xil_printf("ReadCmd: 0x%x, WriteCmd: 0x%x, StatusCmd: 0x%x, FSRFlag: %d \n\r",
				ReadCmd, WriteCmd, StatusCmd, FSRFlag);

	if(Flash_Config_Table[FCTIndex].FlashDeviceSize > SIXTEENMB) {
		TRACE_ZZG("4BAddMode \r\n");
		Status = FlashEnterExit4BAddMode(QspiPsuInstancePtr,ENTER_4B);
		if(Status != XST_SUCCESS) {
			return XST_FAILURE;
		}
	}

    uint8_t* readback_buf=(uint8_t*)malloc(100);// upgradeFileLength
	if(readback_buf==NULL)
	{
	    xil_printf("no more buf for spi read back !!!\r\n");
		return XST_FAILURE;
	}

	Status = FlashErase(QspiPsuInstancePtr, FLASH_UPGRADE_ADDRESS, upgradeFileLength, CmdBfr);
	if (Status != XST_SUCCESS) {
		free(readback_buf);
		return XST_FAILURE;
	}
   int max_page_cnt=(upgradeFileLength/512);
   for (Page = 0; Page < max_page_cnt; Page++) {

		Status = FlashWrite(QspiPsuInstancePtr,
					(Page * Flash_Config_Table[FCTIndex].PageSize) + FLASH_UPGRADE_ADDRESS,
					Flash_Config_Table[FCTIndex].PageSize,
					WriteCmd, upgradeFile+(Page * Flash_Config_Table[FCTIndex].PageSize));
		if (Status != XST_SUCCESS) {
			free(readback_buf);
			return XST_FAILURE;
		}
	}
	/*
    Status = FlashWrite(QspiPsuInstancePtr,
					FLASH_UPGRADE_ADDRESS,
					 upgradeFileLength,
					WriteCmd, upgradeFile);

	if (Status != XST_SUCCESS) {

			free(readback_buf);
			return XST_FAILURE;
	}
	*/

    xil_printf("flash write success !!!\r\n");
    xil_printf("\r\nupgrade flash success !!!\r\n");
	if(Flash_Config_Table[FCTIndex].FlashDeviceSize > SIXTEENMB) {
		Status = FlashEnterExit4BAddMode(QspiPsuInstancePtr,EXIT_4B);
		if(Status != XST_SUCCESS) {
			return XST_FAILURE;
		}
	}

	return XST_SUCCESS;
}
int upgradeFlashBin(void)
{
	int Status;

	xil_printf("Flash upgrade start.... \r\n");

	/*
	 * Run the QspiPsu Polled example.
	 */
	Status = QspiPsuUpgradeFlash(&QspiPsuInstance, QSPIPSU_DEVICE_ID);
	if (Status != XST_SUCCESS) {
		xil_printf("Flash upgrade  Failed\r\n");
		return XST_FAILURE;
	}

	xil_printf("Successfully ran Flash upgrade !!\r\n");
	return XST_SUCCESS;
}


int QspiFlashInit(XQspiPsu *QspiPsuInstancePtr, u16 QspiPsuDeviceId)
{
	int Status;
	u8 UniqueValue;
	int Count;
	int Page;
	XQspiPsu_Config *QspiPsuConfig;


	/*
	 * Initialize the QSPIPSU driver so that it's ready to use
	 */
	QspiPsuConfig = XQspiPsu_LookupConfig(QspiPsuDeviceId);
	if (NULL == QspiPsuConfig) {
		return flash_step_exit;
	}

	/* To test, change connection mode here if not obtained from HDF */
	//QspiPsuConfig->ConnectionMode = 2;

	Status = XQspiPsu_CfgInitialize(QspiPsuInstancePtr, QspiPsuConfig,
					QspiPsuConfig->BaseAddress);
	if (Status != XST_SUCCESS) {
		return flash_step_exit;
	}

	/*
	 * Set Manual Start
	 */
	XQspiPsu_SetOptions(QspiPsuInstancePtr, XQSPIPSU_MANUAL_START_OPTION);

	/*
	 * Set the prescaler for QSPIPSU clock
	 */
	XQspiPsu_SetClkPrescaler(QspiPsuInstancePtr, XQSPIPSU_CLK_PRESCALE_8); // XQSPIPSU_CLK_PRESCALE_8

	XQspiPsu_SelectFlash(QspiPsuInstancePtr,
		XQSPIPSU_SELECT_FLASH_CS_LOWER, XQSPIPSU_SELECT_FLASH_BUS_LOWER);

	/*
	 * Read flash ID and obtain all flash related information
	 * It is important to call the read id function before
	 * performing proceeding to any operation, including
	 * preparing the WriteBuffer
	 */
	Status = FlashReadID(QspiPsuInstancePtr);
	if (Status != XST_SUCCESS) {
		return flash_step_exit;
	}

	xil_printf("Flash connection mode : %d \n\r", QspiPsuConfig->ConnectionMode);
	xil_printf("where 0 - Single; 1 - Stacked; 2 - Parallel \n\r");
	xil_printf("FCTIndex: %d \n\r", FCTIndex);

    show_flash_info(FCTIndex);
	/*
	 * Initialize MaxData according to page size.
	 */

	/*
	 * Address size and read command selection
	 * Micron flash on REMUS doesn't support this 4B write/erase cmd
	 */
	ReadCmd = QUAD_READ_CMD; //bing-
//    ReadCmd=QUAD_READ_CMD_4B;
	WriteCmd = WRITE_CMD;
	SectorEraseCmd = SEC_ERASE_CMD;

	/* Status cmd - SR or FSR selection */
	if((Flash_Config_Table[FCTIndex].NumDie > 1) &&
			(FlashMake == MICRON_ID_BYTE0)) {
		StatusCmd = READ_FLAG_STATUS_CMD;
		FSRFlag = 1;
	} else {
		StatusCmd = READ_STATUS_CMD;
		FSRFlag = 0;
	}

	xil_printf("ReadCmd: 0x%x, WriteCmd: 0x%x, StatusCmd: 0x%x, FSRFlag: %d \n\r",
				ReadCmd, WriteCmd, StatusCmd, FSRFlag);

	if(Flash_Config_Table[FCTIndex].FlashDeviceSize > SIXTEENMB) {
		TRACE_ZZG("4BAddMode \r\n");
		Status = FlashEnterExit4BAddMode(QspiPsuInstancePtr,ENTER_4B);
		if(Status != XST_SUCCESS) {
			return flash_step_exit;
		}
	}

	return flash_step_erase;
}


int QspiFlashErase(XQspiPsu *QspiPsuInstancePtr)
{
	int Status;

	flash_upgrade_send_message("flash erase..");
	xil_printf("Flash erase start..erase_addr:0x%x, file_lenth=%d. \r\n",FLASH_UPGRADE_ADDRESS, upgradeFileLength);
	Status = FlashErase(QspiPsuInstancePtr, FLASH_UPGRADE_ADDRESS, upgradeFileLength, CmdBfr);
	if (Status != XST_SUCCESS) {
		return flash_step_exit;
	}
	xil_printf("Flash write start.... \r\n");
	flash_upgrade_send_message("flash write..");
    g_write_page_cnt=0;
	return flash_step_write;
}

int QspiFlashWrite(XQspiPsu *QspiPsuInstancePtr)
{
	int Status;
    int max_page_cnt=((upgradeFileLength+(Flash_Config_Table[FCTIndex]).PageSize-1)
    		/(Flash_Config_Table[FCTIndex]).PageSize);
	int re_step=flash_step_write;
//	TRACE_ZZG("max_page_cnt=%d\r\n", max_page_cnt);
	if(g_write_page_cnt<max_page_cnt){
		    		Status = FlashWrite(QspiPsuInstancePtr,
					(g_write_page_cnt * Flash_Config_Table[FCTIndex].PageSize) + FLASH_UPGRADE_ADDRESS,
					Flash_Config_Table[FCTIndex].PageSize,
					WriteCmd, upgradeFile+(g_write_page_cnt * Flash_Config_Table[FCTIndex].PageSize));

					if (Status != XST_SUCCESS) {
						return flash_step_exit;
					}
					if(g_write_page_cnt%100==0){
						flash_upgrade_send_message(".");
						xil_printf(".");
					}
					g_write_page_cnt++;
	}
	else{
			g_write_page_cnt=0;
			re_step=flash_step_readbk;
			xil_printf("Flash write success, read check start !!\r\n");
			flash_upgrade_send_message("programme success !!! read check start ...");
//			set_flash_bootflag(pl_file_length,sw_file_length);
			sw_file_length=0;
			pl_file_length=0;
	}


	return re_step;
}



int QspiFlashReadCheck(XQspiPsu *QspiPsuInstancePtr)
{
	int Status;
	int Count;
	int max_page_size=(PAGE_COUNT * (Flash_Config_Table[FCTIndex]).PageSize);
	int max_page_cnt=((upgradeFileLength+max_page_size-1)/max_page_size);
    if(g_write_page_cnt < max_page_cnt)
    {
//		TRACE_ZZG("FlashRead @ %d\r\n", FLASH_UPGRADE_ADDRESS+(g_write_page_cnt*max_page_size));
		Status = FlashRead(QspiPsuInstancePtr, (FLASH_UPGRADE_ADDRESS+(g_write_page_cnt*max_page_size)), max_page_size, ReadCmd,
					CmdBfr, SpiReadBuffer);
		if (Status != XST_SUCCESS) {

			xil_printf("FlashRead1 err!\r\n");
			flash_upgrade_send_message("flash read  faild !");
			return flash_step_exit;
		}

		if(g_write_page_cnt<(max_page_cnt-1))
		{
			for (Count = 0; Count <max_page_size;Count++)
			{
				if (SpiReadBuffer[Count] != upgradeFile[Count+(g_write_page_cnt*max_page_size)]) {
					xil_printf("read!= write:%d page:%d\r\n",Count,g_write_page_cnt);
					flash_upgrade_send_message("read check faild !");
					xil_printf("read check faild !\r\n");
					return flash_step_exit;
				}
			}
		}
		else
		{
			if(upgradeFileLength%max_page_size)
			{
				for (Count = 0; Count <upgradeFileLength%max_page_size;Count++)
				{
//					if (SpiReadBuffer[Count] != upgradeFile[Count+((g_write_page_cnt-1)*max_page_size)+upgradeFileLength%max_page_size]) {
					if (SpiReadBuffer[Count] != upgradeFile[Count+(g_write_page_cnt*max_page_size)]) {
						xil_printf("\r\n@read!= write:%d page:%d\r\n",Count,g_write_page_cnt);
						flash_upgrade_send_message("read check faild !");
						xil_printf("read check faild !\r\n");
						return flash_step_exit;
					}
				}
			}
			else
			{
				for (Count = 0; Count <max_page_size;Count++)
				{
					if (SpiReadBuffer[Count] != upgradeFile[Count+(g_write_page_cnt*max_page_size)]) {
						xil_printf("read!= write:%d page:%d\r\n",Count,g_write_page_cnt);
						flash_upgrade_send_message("read check faild !");
						xil_printf("read check faild !\r\n");
						return flash_step_exit;
					}
				}
			}
		}

		if(g_write_page_cnt%10==0){
			flash_upgrade_send_message("*");
			xil_printf("*");
		}

		g_write_page_cnt++;
		return flash_step_readbk;
    }
	g_write_page_cnt=0;

	flash_upgrade_send_message("read check success !");
	xil_printf("read check success !");
	return flash_step_exit;
}
#if 0
int QspiFlashReadCheck_bak(XQspiPsu *QspiPsuInstancePtr)
{
	int Status;
	int Count;

//256
	Status = FlashRead(QspiPsuInstancePtr, FLASH_UPGRADE_ADDRESS, 32*1024, ReadCmd,
				CmdBfr, SpiReadBuffer);
	if (Status != XST_SUCCESS) {

		xil_printf("FlashRead1 err!\r\n");
		return flash_step_exit;
	}

	for (Count = 0; Count < 32*1024;Count++)
	{

		if (SpiReadBuffer[Count] != upgradeFile[Count]) {
			xil_printf("read!= write:%d\r\n",Count);
			break;
		}
	}

	ReadCmd = QUAD_READ_CMD;

	Status = FlashRead(QspiPsuInstancePtr, FLASH_UPGRADE_ADDRESS+0x20000, 32*1024, ReadCmd,
				CmdBfr, SpiReadBuffer);

	if (Status != XST_SUCCESS) {

		xil_printf("FlashRead2 err!\r\n");
		return flash_step_exit;
	}

	for (Count = 0; Count < 32*1024;Count++)
	{

		if (SpiReadBuffer[Count] != upgradeFile[Count+0x20000]) {
			xil_printf("read!= write:%d\r\n",Count);
			break;
		}
	}

	return flash_step_exit;
}
#endif

int QspiFlashExit(XQspiPsu *QspiPsuInstancePtr)
{
    int Status;

	flash_upgrade_send_message("programme exit");
	close_upgrade_server_report_socket();
	upgradefile_programming=0;
    g_write_page_cnt=0;
	if(Flash_Config_Table[FCTIndex].FlashDeviceSize > SIXTEENMB) {
		Status = FlashEnterExit4BAddMode(QspiPsuInstancePtr,EXIT_4B);
		if(Status != XST_SUCCESS) {
			return flash_step_stop;
		}
	}
    xil_printf("Flash exit 4B success !!\r\n");
	return flash_step_stop;
}
void enable_ugrade_flash()
{
	flashUpdate_step=flash_step_init;
}
int upgradeFlashThread(void)
{


    while(flashUpdate_step!=flash_step_stop)
    {
        switch(flashUpdate_step)
        {
    		case flash_step_init:
    			{
    				flashUpdate_step=QspiFlashInit(&QspiPsuInstance, QSPIPSU_DEVICE_ID);
    			}
				 break;
			case flash_step_erase:
				{
					flashUpdate_step=QspiFlashErase(&QspiPsuInstance);
				}
				 break;
			case flash_step_write:
				{
					flashUpdate_step=QspiFlashWrite(&QspiPsuInstance);
				}
				 break;
			case flash_step_readbk:
				{

					flashUpdate_step=QspiFlashReadCheck(&QspiPsuInstance);
				}
				 break;
			case flash_step_exit:
				 	 flashUpdate_step=QspiFlashExit(&QspiPsuInstance);
				 break;
			default:
				 flashUpdate_step=flash_step_stop;
			    break;
        }
    }

	return XST_SUCCESS;
}
int load_sd_file(char *FileName)
{
    FIL fil;
    FRESULT rc;
    UINT br;

    rc = f_open(&fil,FileName,FA_READ);
    if(rc)
    {
        xil_printf("ERROR : f_open returned %d\r\n",rc);
        return 0;
    }
	u32 tsize= f_size(&fil);
    rc = f_lseek(&fil, 0);
    if(rc)
    {
        xil_printf("ERROR : f_lseek returned %d\r\n",rc);
        return 0;
    }

	upgradeFileLength=(tsize%512)+tsize;

	if(upgradeFile==NULL)
	{
		upgradeFile=(uint8_t*)malloc(upgradeFileLength);
		if(upgradeFile==NULL){
			return 0;
		}
		// fill the padding buf 0xff
		u32 i;
		for(i=tsize;i<upgradeFileLength;i++)
		{
			upgradeFile[i]=0xff;
		}
	}

    rc = f_read(&fil, (void*)upgradeFile,tsize,&br);
    if(rc)
    {
        xil_printf("ERROR : f_write returned %d\r\n", rc);
		free(upgradeFile);
        return 0;
    }
    rc = f_close(&fil);
    if(rc){
        xil_printf("ERROR : f_close returned %d\r\n",rc);
		free(upgradeFile);
        return 0;
    }
    return 1;
}
#if 0
int RestorefactoryThread(void)
{

	static int restoreFactoryStep=restore_first_boot;

    while(restoreFactoryStep!=restore_exist)
    {
        switch(restoreFactoryStep)
        {
           case restore_first_boot:
    			{
    				u32 bootmode=Xil_In32(CRL_APB_BOOT_MODE_USER)&CRL_APB_BOOT_MODE_USER_BOOT_MODE_MASK;
				 	xil_printf("boot(%d) from:%s\r\n",bootmode,get_boot_string(bootmode));
					if(bootmode!=SD1_LS_BOOT_MODE)
						restoreFactoryStep=restore_exist;
					else{
					   restoreFactoryStep=restore_default_loading;
					   SD_Init();
					}

    			}
				 break;


    		case restore_default_loading:
    			{
    				xil_printf("try to find factory default gold-bin file !!\r\n");
					if(load_sd_file("scivatar-gold.bin"))
					{
						 restoreFactoryStep=restore_flash_step_init;
						 FLASH_UPGRADE_ADDRESS=0;
					}
					else
					{
						 restoreFactoryStep=restore_user_loading;
					}
    			}
				 break;
		   case restore_user_loading:
    			{
    				xil_printf("try to find factory user-bin file !!\r\n");
					if(load_sd_file("scivatar-user.bin"))
					{
						 restoreFactoryStep=restore_flash_step_init;
						 FLASH_UPGRADE_ADDRESS=0x2000000;
					}
					else
					{
						 restoreFactoryStep=restore_exist;
						 FLASH_UPGRADE_ADDRESS=0x2000000;
					}
    			}
				 break;
		   case restore_flash_step_init:
    			{
    				 if( QspiFlashInit(&QspiPsuInstance, QSPIPSU_DEVICE_ID)==flash_step_exit )
					 	restoreFactoryStep=restore_flash_step_stop;
					 else
					 	restoreFactoryStep=restore_flash_step_erase;
    			}
				 break;
			case restore_flash_step_erase:
				{
					if( QspiFlashErase(&QspiPsuInstance)==flash_step_exit )
						restoreFactoryStep=restore_flash_step_stop;
					 else
					 	restoreFactoryStep=restore_flash_step_write;
				}
				 break;
			case restore_flash_step_write:
				{
					if(QspiFlashWrite(&QspiPsuInstance)==flash_step_readbk )
						restoreFactoryStep=restore_flash_step_readbk;

				}
				 break;
			case restore_flash_step_readbk:
				{

					if(QspiFlashReadCheck(&QspiPsuInstance)==flash_step_exit )
						restoreFactoryStep=restore_flash_step_exit;
				}
				 break;
			case restore_flash_step_exit:
				{
				 	 QspiFlashExit(&QspiPsuInstance);
					 if( FLASH_UPGRADE_ADDRESS==0 ){
					      restoreFactoryStep=restore_user_loading;
					 }else{
					 	 restoreFactoryStep=restore_flash_step_stop;
					 }
				}
				 break;
			case restore_flash_step_stop:

			default:
				 flashUpdate_step=restore_exist;
			    break;
        }
    }

	return XST_SUCCESS;
}
#endif

/*****************************************************************************/
/**
*
* Reads the flash ID and identifies the flash in FCT table.
*
* @param	None.
*
* @return	XST_SUCCESS if successful, else XST_FAILURE.
*
* @note		None.
*
*****************************************************************************/
int FlashReadID(XQspiPsu *QspiPsuPtr)
{
	int Status;
	int StartIndex;

	/*
	 * Read ID
	 */
	TxBfrPtr = READ_ID;
	FlashMsg[0].TxBfrPtr = &TxBfrPtr;
	FlashMsg[0].RxBfrPtr = NULL;
	FlashMsg[0].ByteCount = 1;
	FlashMsg[0].BusWidth = XQSPIPSU_SELECT_MODE_SPI;
	FlashMsg[0].Flags = XQSPIPSU_MSG_FLAG_TX;

	FlashMsg[1].TxBfrPtr = NULL;
	FlashMsg[1].RxBfrPtr = ReadBfrPtr;
	FlashMsg[1].ByteCount = 3;
	FlashMsg[1].BusWidth = XQSPIPSU_SELECT_MODE_SPI;
	FlashMsg[1].Flags = XQSPIPSU_MSG_FLAG_RX;

	Status = XQspiPsu_PolledTransfer(QspiPsuPtr, FlashMsg, 2);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	xil_printf("FlashID=0x%x 0x%x 0x%x\n\r", ReadBfrPtr[0], ReadBfrPtr[1],
		   ReadBfrPtr[2]);

	/* In case of dual, read both and ensure they are same make/size */

	/*
	 * Deduce flash make
	 */
	if(ReadBfrPtr[0] == MICRON_ID_BYTE0) {
		FlashMake = MICRON_ID_BYTE0;
		StartIndex = MICRON_INDEX_START;
	}else if(ReadBfrPtr[0] == SPANSION_ID_BYTE0) {
		FlashMake = SPANSION_ID_BYTE0;
		StartIndex = SPANSION_INDEX_START;
	}else if(ReadBfrPtr[0] == WINBOND_ID_BYTE0) {
		FlashMake = WINBOND_ID_BYTE0;
		StartIndex = WINBOND_INDEX_START;
	} else if(ReadBfrPtr[0] == MACRONIX_ID_BYTE0) {
		FlashMake = MACRONIX_ID_BYTE0;
		StartIndex = MACRONIX_INDEX_START;
	} else if(ReadBfrPtr[0] == ISSI_ID_BYTE0) {
		FlashMake = ISSI_ID_BYTE0;
		StartIndex = ISSI_INDEX_START;
	}



	/*
	 * If valid flash ID, then check connection mode & size and
	 * assign corresponding index in the Flash configuration table
	 */
	if(((FlashMake == MICRON_ID_BYTE0) || (FlashMake == SPANSION_ID_BYTE0)||
			(FlashMake == WINBOND_ID_BYTE0)) &&
			(ReadBfrPtr[2] == MICRON_ID_BYTE2_128)) {

		switch(QspiPsuPtr->Config.ConnectionMode)
		{
			case XQSPIPSU_CONNECTION_MODE_SINGLE:
				FCTIndex = FLASH_CFG_TBL_SINGLE_128_SP + StartIndex;
				break;
			case XQSPIPSU_CONNECTION_MODE_PARALLEL:
				FCTIndex = FLASH_CFG_TBL_PARALLEL_128_SP + StartIndex;
				break;
			case XQSPIPSU_CONNECTION_MODE_STACKED:
				FCTIndex = FLASH_CFG_TBL_STACKED_128_SP + StartIndex;
				break;
			default:
				FCTIndex = 0;
				break;
		}
	}
	/* 256 and 512Mbit supported only for Micron and Spansion, not Winbond */
	if(((FlashMake == MICRON_ID_BYTE0) || (FlashMake == SPANSION_ID_BYTE0)) &&
			(ReadBfrPtr[2] == MICRON_ID_BYTE2_256)) {

		switch(QspiPsuPtr->Config.ConnectionMode)
		{
			case XQSPIPSU_CONNECTION_MODE_SINGLE:
				FCTIndex = FLASH_CFG_TBL_SINGLE_256_SP + StartIndex;
				break;
			case XQSPIPSU_CONNECTION_MODE_PARALLEL:
				FCTIndex = FLASH_CFG_TBL_PARALLEL_256_SP + StartIndex;
				break;
			case XQSPIPSU_CONNECTION_MODE_STACKED:
				FCTIndex = FLASH_CFG_TBL_STACKED_256_SP + StartIndex;
				break;
			default:
				FCTIndex = 0;
				break;
		}
	}
	if((FlashMake == ISSI_ID_BYTE0) &&
			(ReadBfrPtr[2] == MICRON_ID_BYTE2_256)) {
		switch(QspiPsuPtr->Config.ConnectionMode)
		{
			case XQSPIPSU_CONNECTION_MODE_SINGLE:
				FCTIndex = FLASH_CFG_TBL_SINGLE_256_ISSI;
				break;
			case XQSPIPSU_CONNECTION_MODE_PARALLEL:
				FCTIndex = FLASH_CFG_TBL_PARALLEL_256_ISSI;
				break;
			case XQSPIPSU_CONNECTION_MODE_STACKED:
				FCTIndex = FLASH_CFG_TBL_STACKED_256_ISSI;
				break;
			default:
				FCTIndex = 0;
				break;
		}
	}
	if(((FlashMake == MICRON_ID_BYTE0) || (FlashMake == SPANSION_ID_BYTE0)) &&
			(ReadBfrPtr[2] == MICRON_ID_BYTE2_512)) {

		switch(QspiPsuPtr->Config.ConnectionMode)
		{
			case XQSPIPSU_CONNECTION_MODE_SINGLE:
				FCTIndex = FLASH_CFG_TBL_SINGLE_512_SP + StartIndex;
				break;
			case XQSPIPSU_CONNECTION_MODE_PARALLEL:
				FCTIndex = FLASH_CFG_TBL_PARALLEL_512_SP + StartIndex;
				break;
			case XQSPIPSU_CONNECTION_MODE_STACKED:
				FCTIndex = FLASH_CFG_TBL_STACKED_512_SP + StartIndex;
				break;
			default:
				FCTIndex = 0;
				break;
		}
	}
	/*
	 * 1Gbit Single connection supported for Spansion.
	 * The ConnectionMode will indicate stacked as this part has 2 SS
	 * The device ID will indicate 512Mbit.
	 * This configuration is handled as the above 512Mbit stacked configuration
	 */
	/* 1Gbit single, parallel and stacked supported for Micron */
	if((FlashMake == MICRON_ID_BYTE0) &&
			(ReadBfrPtr[2] == MICRON_ID_BYTE2_1G)) {

		switch(QspiPsuPtr->Config.ConnectionMode)
		{
			case XQSPIPSU_CONNECTION_MODE_SINGLE:
				FCTIndex = FLASH_CFG_TBL_SINGLE_1GB_MC;
				break;
			case XQSPIPSU_CONNECTION_MODE_PARALLEL:
				FCTIndex = FLASH_CFG_TBL_PARALLEL_1GB_MC;
				break;
			case XQSPIPSU_CONNECTION_MODE_STACKED:
				FCTIndex = FLASH_CFG_TBL_STACKED_1GB_MC;
				break;
			default:
				FCTIndex = 0;
				break;
		}
	}

	/* 1Gbit single, parallel and stacked supported for Macronix */
	if(((FlashMake == MACRONIX_ID_BYTE0) &&
			(ReadBfrPtr[2] == MACRONIX_ID_BYTE2_1G))) {

		switch(QspiPsuPtr->Config.ConnectionMode) {
			case XQSPIPSU_CONNECTION_MODE_SINGLE:
				FCTIndex = FLASH_CFG_TBL_SINGLE_1G_MX;
				break;
			case XQSPIPSU_CONNECTION_MODE_PARALLEL:
				FCTIndex = FLASH_CFG_TBL_PARALLEL_1G_MX;
				break;
			case XQSPIPSU_CONNECTION_MODE_STACKED:
				FCTIndex = FLASH_CFG_TBL_STACKED_1G_MX;
				break;
			default:
				FCTIndex = 0;
				break;
		}
	}

	return XST_SUCCESS;
}

/*****************************************************************************/
/**
*
* This function writes to the  serial Flash connected to the QSPIPSU interface.
* All the data put into the buffer must be in the same page of the device with
* page boundaries being on 256 byte boundaries.
*
* @param	QspiPsuPtr is a pointer to the QSPIPSU driver component to use.
* @param	Address contains the address to write data to in the Flash.
* @param	ByteCount contains the number of bytes to write.
* @param	Command is the command used to write data to the flash. QSPIPSU
*		device supports only Page Program command to write data to the
*		flash.
* @param	Pointer to the write buffer (which is to be transmitted)
*
* @return	XST_SUCCESS if successful, else XST_FAILURE.
*
* @note		None.
*
******************************************************************************/
int FlashWrite(XQspiPsu *QspiPsuPtr, u32 Address, u32 ByteCount, u8 Command,
				u8 *WriteBfrPtr)
{
	u8 WriteEnableCmd;
	u8 ReadStatusCmd;
	u8 FlashStatus[2];
	u8 WriteCmd[5];
	u32 RealAddr;
	u32 CmdByteCount;
	int Status;

	WriteEnableCmd = WRITE_ENABLE_CMD;
	/*
	 * Translate address based on type of connection
	 * If stacked assert the slave select based on address
	 */
	RealAddr = GetRealAddr(QspiPsuPtr, Address);

	/*
	 * Send the write enable command to the Flash so that it can be
	 * written to, this needs to be sent as a separate transfer before
	 * the write
	 */
	FlashMsg[0].TxBfrPtr = &WriteEnableCmd;
	FlashMsg[0].RxBfrPtr = NULL;
	FlashMsg[0].ByteCount = 1;
	FlashMsg[0].BusWidth = XQSPIPSU_SELECT_MODE_SPI;
	FlashMsg[0].Flags = XQSPIPSU_MSG_FLAG_TX;

	Status = XQspiPsu_PolledTransfer(QspiPsuPtr, FlashMsg, 1);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	WriteCmd[COMMAND_OFFSET]   = Command;

	/* To be used only if 4B address program cmd is supported by flash */
	if(Flash_Config_Table[FCTIndex].FlashDeviceSize > SIXTEENMB) {
		WriteCmd[ADDRESS_1_OFFSET] = (u8)((RealAddr & 0xFF000000) >> 24);
		WriteCmd[ADDRESS_2_OFFSET] = (u8)((RealAddr & 0xFF0000) >> 16);
		WriteCmd[ADDRESS_3_OFFSET] = (u8)((RealAddr & 0xFF00) >> 8);
		WriteCmd[ADDRESS_4_OFFSET] = (u8)(RealAddr & 0xFF);
		CmdByteCount = 5;
	} else {
		WriteCmd[ADDRESS_1_OFFSET] = (u8)((RealAddr & 0xFF0000) >> 16);
		WriteCmd[ADDRESS_2_OFFSET] = (u8)((RealAddr & 0xFF00) >> 8);
		WriteCmd[ADDRESS_3_OFFSET] = (u8)(RealAddr & 0xFF);
		CmdByteCount = 4;
	}

	FlashMsg[0].TxBfrPtr = WriteCmd;
	FlashMsg[0].RxBfrPtr = NULL;
	FlashMsg[0].ByteCount = CmdByteCount;
	FlashMsg[0].BusWidth = XQSPIPSU_SELECT_MODE_SPI;
	FlashMsg[0].Flags = XQSPIPSU_MSG_FLAG_TX;

	FlashMsg[1].TxBfrPtr = WriteBfrPtr;
	FlashMsg[1].RxBfrPtr = NULL;
	FlashMsg[1].ByteCount = ByteCount;
	FlashMsg[1].BusWidth = XQSPIPSU_SELECT_MODE_SPI;
	FlashMsg[1].Flags = XQSPIPSU_MSG_FLAG_TX;
	if(QspiPsuPtr->Config.ConnectionMode == XQSPIPSU_CONNECTION_MODE_PARALLEL){
		FlashMsg[1].Flags |= XQSPIPSU_MSG_FLAG_STRIPE;
	}

	Status = XQspiPsu_PolledTransfer(QspiPsuPtr, FlashMsg, 2);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	/*
	 * Wait for the write command to the Flash to be completed, it takes
	 * some time for the data to be written
	 */
	while (1) {
		ReadStatusCmd = StatusCmd;
		FlashMsg[0].TxBfrPtr = &ReadStatusCmd;
		FlashMsg[0].RxBfrPtr = NULL;
		FlashMsg[0].ByteCount = 1;
		FlashMsg[0].BusWidth = XQSPIPSU_SELECT_MODE_SPI;
		FlashMsg[0].Flags = XQSPIPSU_MSG_FLAG_TX;

		FlashMsg[1].TxBfrPtr = NULL;
		FlashMsg[1].RxBfrPtr = FlashStatus;
		FlashMsg[1].ByteCount = 2;
		FlashMsg[1].BusWidth = XQSPIPSU_SELECT_MODE_SPI;
		FlashMsg[1].Flags = XQSPIPSU_MSG_FLAG_RX;
		if(QspiPsuPtr->Config.ConnectionMode == XQSPIPSU_CONNECTION_MODE_PARALLEL){
			FlashMsg[1].Flags |= XQSPIPSU_MSG_FLAG_STRIPE;
		}

		Status = XQspiPsu_PolledTransfer(QspiPsuPtr, FlashMsg, 2);
		if (Status != XST_SUCCESS) {
			return XST_FAILURE;
		}

		if(QspiPsuPtr->Config.ConnectionMode == XQSPIPSU_CONNECTION_MODE_PARALLEL){
			if(FSRFlag) {
				FlashStatus[1] &= FlashStatus[0];
			} else {
				FlashStatus[1] |= FlashStatus[0];
			}
		}

		if(FSRFlag) {
			if ((FlashStatus[1] & 0x80) != 0) {
				break;
			}
		} else {
			if ((FlashStatus[1] & 0x01) == 0) {
				break;
			}
		}
	}

	return 0;
}

/*****************************************************************************/
/**
*
* This function erases the sectors in the  serial Flash connected to the
* QSPIPSU interface.
*
* @param	QspiPtr is a pointer to the QSPIPSU driver component to use.
* @param	Address contains the address of the first sector which needs to
*		be erased.
* @param	ByteCount contains the total size to be erased.
* @param	Pointer to the write buffer (which is to be transmitted)
*
* @return	XST_SUCCESS if successful, else XST_FAILURE.
*
* @note		None.
*
******************************************************************************/
int FlashErase(XQspiPsu *QspiPsuPtr, u32 Address, u32 ByteCount,
		u8 *WriteBfrPtr)
{
	u8 WriteEnableCmd;
	u8 ReadStatusCmd;
	u8 FlashStatus[2];
	int Sector;
	u32 RealAddr;
	u32 NumSect;
	int Status;

	WriteEnableCmd = WRITE_ENABLE_CMD;
	/*
	 * If erase size is same as the total size of the flash, use bulk erase
	 * command or die erase command multiple times as required
	 */
	if (ByteCount == ((Flash_Config_Table[FCTIndex]).NumSect *
			(Flash_Config_Table[FCTIndex]).SectSize) ) {

		if(QspiPsuPtr->Config.ConnectionMode == XQSPIPSU_CONNECTION_MODE_STACKED){
			XQspiPsu_SelectFlash(QspiPsuPtr,
				XQSPIPSU_SELECT_FLASH_CS_LOWER, XQSPIPSU_SELECT_FLASH_BUS_LOWER);
		}

		if(Flash_Config_Table[FCTIndex].NumDie == 1) {
			/*
			 * Call Bulk erase
			 */
			BulkErase(QspiPsuPtr, WriteBfrPtr);
		}

		if(Flash_Config_Table[FCTIndex].NumDie > 1) {
			/*
			 * Call Die erase
			 */
			DieErase(QspiPsuPtr, WriteBfrPtr);
		}
		/*
		 * If stacked mode, bulk erase second flash
		 */
		if(QspiPsuPtr->Config.ConnectionMode == XQSPIPSU_CONNECTION_MODE_STACKED){

			XQspiPsu_SelectFlash(QspiPsuPtr,
				XQSPIPSU_SELECT_FLASH_CS_UPPER, XQSPIPSU_SELECT_FLASH_BUS_LOWER);

			if(Flash_Config_Table[FCTIndex].NumDie == 1) {
				/*
				 * Call Bulk erase
				 */
				BulkErase(QspiPsuPtr, WriteBfrPtr);
			}

			if(Flash_Config_Table[FCTIndex].NumDie > 1) {
				/*
				 * Call Die erase
				 */
				DieErase(QspiPsuPtr, WriteBfrPtr);
			}
		}

		return 0;
	}

	/*
	 * If the erase size is less than the total size of the flash, use
	 * sector erase command
	 */

	/*
	 * Calculate no. of sectors to erase based on byte count
	 */
	NumSect = ByteCount/(Flash_Config_Table[FCTIndex].SectSize) + 1;

	/*
	 * If ByteCount to k sectors,
	 * but the address range spans from N to N+k+1 sectors, then
	 * increment no. of sectors to be erased
	 */

	if( ((Address + ByteCount) & Flash_Config_Table[FCTIndex].SectMask) ==
		((Address + (NumSect * Flash_Config_Table[FCTIndex].SectSize)) &
		Flash_Config_Table[FCTIndex].SectMask) ) {
		NumSect++;
	}

	for (Sector = 0; Sector < NumSect; Sector++) {

		/*
		 * Translate address based on type of connection
		 * If stacked assert the slave select based on address
		 */
		RealAddr = GetRealAddr(QspiPsuPtr, Address);

		/*
		 * Send the write enable command to the Flash so that it can be
		 * written to, this needs to be sent as a separate transfer before
		 * the write
		 */
		FlashMsg[0].TxBfrPtr = &WriteEnableCmd;
		FlashMsg[0].RxBfrPtr = NULL;
		FlashMsg[0].ByteCount = 1;
		FlashMsg[0].BusWidth = XQSPIPSU_SELECT_MODE_SPI;
		FlashMsg[0].Flags = XQSPIPSU_MSG_FLAG_TX;

		Status = XQspiPsu_PolledTransfer(QspiPsuPtr, FlashMsg, 1);
		if (Status != XST_SUCCESS) {
			return XST_FAILURE;
		}

		WriteBfrPtr[COMMAND_OFFSET]   = SectorEraseCmd;

		/*
		 * To be used only if 4B address sector erase cmd is
		 * supported by flash
		 */
		if(Flash_Config_Table[FCTIndex].FlashDeviceSize > SIXTEENMB) {
			WriteBfrPtr[ADDRESS_1_OFFSET] = (u8)((RealAddr & 0xFF000000) >> 24);
			WriteBfrPtr[ADDRESS_2_OFFSET] = (u8)((RealAddr & 0xFF0000) >> 16);
			WriteBfrPtr[ADDRESS_3_OFFSET] = (u8)((RealAddr & 0xFF00) >> 8);
			WriteBfrPtr[ADDRESS_4_OFFSET] = (u8)(RealAddr & 0xFF);
			FlashMsg[0].ByteCount = 5;
		} else {
			WriteBfrPtr[ADDRESS_1_OFFSET] = (u8)((RealAddr & 0xFF0000) >> 16);
			WriteBfrPtr[ADDRESS_2_OFFSET] = (u8)((RealAddr & 0xFF00) >> 8);
			WriteBfrPtr[ADDRESS_3_OFFSET] = (u8)(RealAddr & 0xFF);
			FlashMsg[0].ByteCount = 4;
		}

		FlashMsg[0].TxBfrPtr = WriteBfrPtr;
		FlashMsg[0].RxBfrPtr = NULL;
		FlashMsg[0].BusWidth = XQSPIPSU_SELECT_MODE_SPI;
		FlashMsg[0].Flags = XQSPIPSU_MSG_FLAG_TX;

		Status = XQspiPsu_PolledTransfer(QspiPsuPtr, FlashMsg, 1);
		if (Status != XST_SUCCESS) {
			return XST_FAILURE;
		}

		/*
		 * Wait for the erase command to be completed
		 */
		while (1) {
			ReadStatusCmd = StatusCmd;
			FlashMsg[0].TxBfrPtr = &ReadStatusCmd;
			FlashMsg[0].RxBfrPtr = NULL;
			FlashMsg[0].ByteCount = 1;
			FlashMsg[0].BusWidth = XQSPIPSU_SELECT_MODE_SPI;
			FlashMsg[0].Flags = XQSPIPSU_MSG_FLAG_TX;

			FlashMsg[1].TxBfrPtr = NULL;
			FlashMsg[1].RxBfrPtr = FlashStatus;
			FlashMsg[1].ByteCount = 2;
			FlashMsg[1].BusWidth = XQSPIPSU_SELECT_MODE_SPI;
			FlashMsg[1].Flags = XQSPIPSU_MSG_FLAG_RX;
			if(QspiPsuPtr->Config.ConnectionMode == XQSPIPSU_CONNECTION_MODE_PARALLEL){
				FlashMsg[1].Flags |= XQSPIPSU_MSG_FLAG_STRIPE;
			}

			Status = XQspiPsu_PolledTransfer(QspiPsuPtr, FlashMsg, 2);
			if (Status != XST_SUCCESS) {
				return XST_FAILURE;
			}

			if(QspiPsuPtr->Config.ConnectionMode == XQSPIPSU_CONNECTION_MODE_PARALLEL){
				if(FSRFlag) {
					FlashStatus[1] &= FlashStatus[0];
				} else {
					FlashStatus[1] |= FlashStatus[0];
				}
			}

			if(FSRFlag) {
				if ((FlashStatus[1] & 0x80) != 0) {
					break;
				}
			} else {
				if ((FlashStatus[1] & 0x01) == 0) {
					break;
				}
			}
		}
		Address += Flash_Config_Table[FCTIndex].SectSize;
	}

	return 0;
}


/*****************************************************************************/
/**
*
* This function performs read. DMA is the default setting.
*
* @param	QspiPtr is a pointer to the QSPIPSU driver component to use.
* @param	Address contains the address of the first sector which needs to
*			be erased.
* @param	ByteCount contains the total size to be erased.
* @param	Command is the command used to read data from the flash. Supports
* 			normal, fast, dual and quad read commands.
* @param	Pointer to the write buffer which contains data to be transmitted
* @param	Pointer to the read buffer to which valid received data should be
* 			written
*
* @return	XST_SUCCESS if successful, else XST_FAILURE.
*
* @note		None.
*
******************************************************************************/
int FlashRead(XQspiPsu *QspiPsuPtr, u32 Address, u32 ByteCount, u8 Command,
				u8 *WriteBfrPtr, u8 *ReadBfrPtr)
{
	u32 RealAddr;
	u32 DiscardByteCnt;
	u32 FlashMsgCnt;
	int Status;

	/* Check die boundary conditions if required for any flash */

	/* For Dual Stacked, split and read for boundary crossing */
	/*
	 * Translate address based on type of connection
	 * If stacked assert the slave select based on address
	 */
	RealAddr = GetRealAddr(QspiPsuPtr, Address);

	WriteBfrPtr[COMMAND_OFFSET]   = Command;
	if(Flash_Config_Table[FCTIndex].FlashDeviceSize > SIXTEENMB) {
		WriteBfrPtr[ADDRESS_1_OFFSET] = (u8)((RealAddr & 0xFF000000) >> 24);
		WriteBfrPtr[ADDRESS_2_OFFSET] = (u8)((RealAddr & 0xFF0000) >> 16);
		WriteBfrPtr[ADDRESS_3_OFFSET] = (u8)((RealAddr & 0xFF00) >> 8);
		WriteBfrPtr[ADDRESS_4_OFFSET] = (u8)(RealAddr & 0xFF);
		DiscardByteCnt = 5;
	} else {
		WriteBfrPtr[ADDRESS_1_OFFSET] = (u8)((RealAddr & 0xFF0000) >> 16);
		WriteBfrPtr[ADDRESS_2_OFFSET] = (u8)((RealAddr & 0xFF00) >> 8);
		WriteBfrPtr[ADDRESS_3_OFFSET] = (u8)(RealAddr & 0xFF);
		DiscardByteCnt = 4;
	}

	FlashMsg[0].TxBfrPtr = WriteBfrPtr;
	FlashMsg[0].RxBfrPtr = NULL;
	FlashMsg[0].ByteCount = DiscardByteCnt;
	FlashMsg[0].BusWidth = XQSPIPSU_SELECT_MODE_SPI;
	FlashMsg[0].Flags = XQSPIPSU_MSG_FLAG_TX;

	FlashMsgCnt = 1;

	/* It is recommended to have a separate entry for dummy */
	if ((Command == FAST_READ_CMD) || (Command == DUAL_READ_CMD) ||
	    (Command == QUAD_READ_CMD) || (Command == FAST_READ_CMD_4B) ||
	    (Command == DUAL_READ_CMD_4B) || (Command == QUAD_READ_CMD_4B)) {
		/* Update Dummy cycles as per flash specs for QUAD IO */

		/*
		 * It is recommended that Bus width value during dummy
		 * phase should be same as data phase
		 */
		if ((Command == FAST_READ_CMD) || (Command == FAST_READ_CMD_4B)) {
			FlashMsg[1].BusWidth = XQSPIPSU_SELECT_MODE_SPI;
		}

		if ((Command == DUAL_READ_CMD) || (Command == DUAL_READ_CMD_4B)) {
			FlashMsg[1].BusWidth = XQSPIPSU_SELECT_MODE_DUALSPI;
		}

		if ((Command == QUAD_READ_CMD) || (Command == QUAD_READ_CMD_4B)) {
			FlashMsg[1].BusWidth = XQSPIPSU_SELECT_MODE_QUADSPI;
		}

		FlashMsg[1].TxBfrPtr = NULL;
		FlashMsg[1].RxBfrPtr = NULL;
		FlashMsg[1].ByteCount = DUMMY_CLOCKS;
		FlashMsg[1].Flags = 0;

		FlashMsgCnt++;
	}

	if ((Command == FAST_READ_CMD) || (Command == FAST_READ_CMD_4B)) {
		FlashMsg[FlashMsgCnt].BusWidth = XQSPIPSU_SELECT_MODE_SPI;
	}

	if ((Command == DUAL_READ_CMD) || (Command == DUAL_READ_CMD_4B)) {
		FlashMsg[FlashMsgCnt].BusWidth = XQSPIPSU_SELECT_MODE_DUALSPI;
	}

	if ((Command == QUAD_READ_CMD) || (Command == QUAD_READ_CMD_4B)) {
		FlashMsg[FlashMsgCnt].BusWidth = XQSPIPSU_SELECT_MODE_QUADSPI;
	}

	FlashMsg[FlashMsgCnt].TxBfrPtr = NULL;
	FlashMsg[FlashMsgCnt].RxBfrPtr = ReadBfrPtr;
	FlashMsg[FlashMsgCnt].ByteCount = ByteCount;
	FlashMsg[FlashMsgCnt].Flags = XQSPIPSU_MSG_FLAG_RX;

	if(QspiPsuPtr->Config.ConnectionMode == XQSPIPSU_CONNECTION_MODE_PARALLEL){
		FlashMsg[FlashMsgCnt].Flags |= XQSPIPSU_MSG_FLAG_STRIPE;
	}

	Status = XQspiPsu_PolledTransfer(QspiPsuPtr, FlashMsg, FlashMsgCnt+1);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	return 0;
}






/*****************************************************************************/
/**
*
* This API can be used to write to a flash register.
*
* @param	QspiPsuPtr is a pointer to the QSPIPSU driver component to use.
* @param	ByteCount is the number of bytes to write.
* @param	Command is specific register write command.
* @param	WriteBfrPtr is the pointer to value to be written.
* @param	WrEn is a flag to mention if WREN has to be sent before write.
*
* @return	XST_SUCCESS if successful, else XST_FAILURE.
*
* @note		This API can only be used for one flash at a time.
*
******************************************************************************/
int FlashRegisterWrite(XQspiPsu *QspiPsuPtr, u32 ByteCount, u8 Command,
					u8 *WriteBfrPtr, u8 WrEn)
{
	u8 WriteEnableCmd;
	u8 ReadStatusCmd;
	u8 FlashStatus[2];
	int Status;

	if(WrEn) {
		WriteEnableCmd = WRITE_ENABLE_CMD;

		/*
		 * Send the write enable command to the Flash so that it can be
		 * written to, this needs to be sent as a separate transfer before
		 * the write
		 */
		FlashMsg[0].TxBfrPtr = &WriteEnableCmd;
		FlashMsg[0].RxBfrPtr = NULL;
		FlashMsg[0].ByteCount = 1;
		FlashMsg[0].BusWidth = XQSPIPSU_SELECT_MODE_SPI;
		FlashMsg[0].Flags = XQSPIPSU_MSG_FLAG_TX;

		Status = XQspiPsu_PolledTransfer(QspiPsuPtr, FlashMsg, 1);
		if (Status != XST_SUCCESS) {
			return XST_FAILURE;
		}
	}

	WriteBfrPtr[COMMAND_OFFSET]   = Command;
	/*
	 * Value(s) is(are) expected to be written to the write buffer by calling API
	 * ByteCount is the count of the value(s) excluding the command.
	 */

	FlashMsg[0].TxBfrPtr = WriteBfrPtr;
	FlashMsg[0].RxBfrPtr = NULL;
	FlashMsg[0].ByteCount = ByteCount + 1;
	FlashMsg[0].BusWidth = XQSPIPSU_SELECT_MODE_SPI;
	FlashMsg[0].Flags = XQSPIPSU_MSG_FLAG_TX;

	Status = XQspiPsu_PolledTransfer(QspiPsuPtr, FlashMsg, 1);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	/*
	 * Wait for the register write command to the Flash to be completed.
	 */
	while (1) {
		ReadStatusCmd = StatusCmd;
		FlashMsg[0].TxBfrPtr = &ReadStatusCmd;
		FlashMsg[0].RxBfrPtr = NULL;
		FlashMsg[0].ByteCount = 1;
		FlashMsg[0].BusWidth = XQSPIPSU_SELECT_MODE_SPI;
		FlashMsg[0].Flags = XQSPIPSU_MSG_FLAG_TX;

		FlashMsg[1].TxBfrPtr = NULL;
		FlashMsg[1].RxBfrPtr = FlashStatus;
		FlashMsg[1].ByteCount = 2;
		FlashMsg[1].BusWidth = XQSPIPSU_SELECT_MODE_SPI;
		FlashMsg[1].Flags = XQSPIPSU_MSG_FLAG_RX;

		Status = XQspiPsu_PolledTransfer(QspiPsuPtr, FlashMsg, 2);
		if (Status != XST_SUCCESS) {
			return XST_FAILURE;
		}

		if(FSRFlag) {
			if ((FlashStatus[1] & 0x80) != 0) {
				break;
			}
		} else {
			if ((FlashStatus[1] & 0x01) == 0) {
				break;
			}
		}
	}

	return 0;
}

/*****************************************************************************/
/**
*
* This API can be used to write to a flash register.
*
* @param	QspiPsuPtr is a pointer to the QSPIPSU driver component to use.
* @param	ByteCount is the number of bytes to write.
* @param	Command is specific register write command.
* @param	WriteBfrPtr is the pointer to value to be written.
* @param	WrEn is a flag to mention if WREN has to be sent before write.
*
* @return	XST_SUCCESS if successful, else XST_FAILURE.
*
* @note		This API can only be used for one flash at a time.
*
******************************************************************************/
int FlashRegisterRead(XQspiPsu *QspiPsuPtr, u32 ByteCount, u8 Command, u8 *ReadBfrPtr)
{
	u8 WriteCmd;
	int Status;

	WriteCmd = Command;
	FlashMsg[0].TxBfrPtr = &WriteCmd;
	FlashMsg[0].RxBfrPtr = NULL;
	FlashMsg[0].ByteCount = 1;
	FlashMsg[0].BusWidth = XQSPIPSU_SELECT_MODE_SPI;
	FlashMsg[0].Flags = XQSPIPSU_MSG_FLAG_TX;

	FlashMsg[1].TxBfrPtr = NULL;
	FlashMsg[1].RxBfrPtr = ReadBfrPtr;
	//FlashMsg[1].ByteCount = ByteCount;
	/* This is for DMA reasons; to be changed shortly */
	FlashMsg[1].ByteCount = 4;
	FlashMsg[1].BusWidth = XQSPIPSU_SELECT_MODE_SPI;
	FlashMsg[1].Flags = XQSPIPSU_MSG_FLAG_RX;

	Status = XQspiPsu_PolledTransfer(QspiPsuPtr, FlashMsg, 2);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	return 0;
}

/*****************************************************************************/
/**
*
* This functions performs a bulk erase operation when the
* flash device has a single die. Works for both Spansion and Micron
*
* @param	QspiPsuPtr is a pointer to the QSPIPSU driver component to use.
* @param	WritBfrPtr is the pointer to command+address to be sent
*
* @return	XST_SUCCESS if successful, else XST_FAILURE.
*
* @note		None.
*
******************************************************************************/
int BulkErase(XQspiPsu *QspiPsuPtr, u8 *WriteBfrPtr)
{
	u8 WriteEnableCmd;
	u8 ReadStatusCmd;
	u8 FlashStatus[2];
	int Status;

	WriteEnableCmd = WRITE_ENABLE_CMD;
	/*
	 * Send the write enable command to the Flash so that it can be
	 * written to, this needs to be sent as a separate transfer before
	 * the write
	 */
	FlashMsg[0].TxBfrPtr = &WriteEnableCmd;
	FlashMsg[0].RxBfrPtr = NULL;
	FlashMsg[0].ByteCount = 1;
	FlashMsg[0].BusWidth = XQSPIPSU_SELECT_MODE_SPI;
	FlashMsg[0].Flags = XQSPIPSU_MSG_FLAG_TX;

	Status = XQspiPsu_PolledTransfer(QspiPsuPtr, FlashMsg, 1);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	WriteBfrPtr[COMMAND_OFFSET]   = BULK_ERASE_CMD;
	FlashMsg[0].TxBfrPtr = WriteBfrPtr;
	FlashMsg[0].RxBfrPtr = NULL;
	FlashMsg[0].ByteCount = 1;
	FlashMsg[0].BusWidth = XQSPIPSU_SELECT_MODE_SPI;
	FlashMsg[0].Flags = XQSPIPSU_MSG_FLAG_TX;

	Status = XQspiPsu_PolledTransfer(QspiPsuPtr, FlashMsg, 1);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	/*
	 * Wait for the write command to the Flash to be completed, it takes
	 * some time for the data to be written
	 */
	while (1) {
		ReadStatusCmd = StatusCmd;
		FlashMsg[0].TxBfrPtr = &ReadStatusCmd;
		FlashMsg[0].RxBfrPtr = NULL;
		FlashMsg[0].ByteCount = 1;
		FlashMsg[0].BusWidth = XQSPIPSU_SELECT_MODE_SPI;
		FlashMsg[0].Flags = XQSPIPSU_MSG_FLAG_TX;

		FlashMsg[1].TxBfrPtr = NULL;
		FlashMsg[1].RxBfrPtr = FlashStatus;
		FlashMsg[1].ByteCount = 2;
		FlashMsg[1].BusWidth = XQSPIPSU_SELECT_MODE_SPI;
		FlashMsg[1].Flags = XQSPIPSU_MSG_FLAG_RX;
		if(QspiPsuPtr->Config.ConnectionMode == XQSPIPSU_CONNECTION_MODE_PARALLEL){
			FlashMsg[1].Flags |= XQSPIPSU_MSG_FLAG_STRIPE;
		}


		Status = XQspiPsu_PolledTransfer(QspiPsuPtr, FlashMsg, 2);
		if (Status != XST_SUCCESS) {
			return XST_FAILURE;
		}
		if(QspiPsuPtr->Config.ConnectionMode == XQSPIPSU_CONNECTION_MODE_PARALLEL){
			if(FSRFlag) {
				FlashStatus[1] &= FlashStatus[0];
			} else {
				FlashStatus[1] |= FlashStatus[0];
			}
		}

		if(FSRFlag) {
			if ((FlashStatus[1] & 0x80) != 0) {
				break;
			}
		} else {
			if ((FlashStatus[1] & 0x01) == 0) {
				break;
			}
		}
	}

	return 0;
}

/*****************************************************************************/
/**
*
* This functions performs a die erase operation on all the die in
* the flash device. This function uses the die erase command for
* Micron 512Mbit and 1Gbit
*
* @param	QspiPsuPtr is a pointer to the QSPIPSU driver component to use.
* @param	WritBfrPtr is the pointer to command+address to be sent
*
* @return	XST_SUCCESS if successful, else XST_FAILURE.
*
* @note		None.
*
******************************************************************************/
int DieErase(XQspiPsu *QspiPsuPtr, u8 *WriteBfrPtr)
{
	u8 WriteEnableCmd;
	u8 DieCnt;
	u8 ReadStatusCmd;
	u8 FlashStatus[2];
	int Status;

	WriteEnableCmd = WRITE_ENABLE_CMD;
	for(DieCnt = 0; DieCnt < Flash_Config_Table[FCTIndex].NumDie; DieCnt++) {
		/*
		 * Send the write enable command to the Flash so that it can be
		 * written to, this needs to be sent as a separate transfer before
		 * the write
		 */
		FlashMsg[0].TxBfrPtr = &WriteEnableCmd;
		FlashMsg[0].RxBfrPtr = NULL;
		FlashMsg[0].ByteCount = 1;
		FlashMsg[0].BusWidth = XQSPIPSU_SELECT_MODE_SPI;
		FlashMsg[0].Flags = XQSPIPSU_MSG_FLAG_TX;

		Status = XQspiPsu_PolledTransfer(QspiPsuPtr, FlashMsg, 1);
		if (Status != XST_SUCCESS) {
			return XST_FAILURE;
		}

		WriteBfrPtr[COMMAND_OFFSET]   = DIE_ERASE_CMD;
		/* Check these number of address bytes as per flash device */
		WriteBfrPtr[ADDRESS_1_OFFSET] = 0;
		WriteBfrPtr[ADDRESS_2_OFFSET] = 0;
		WriteBfrPtr[ADDRESS_3_OFFSET] = 0;

		FlashMsg[0].TxBfrPtr = WriteBfrPtr;
		FlashMsg[0].RxBfrPtr = NULL;
		FlashMsg[0].ByteCount = 4;
		FlashMsg[0].BusWidth = XQSPIPSU_SELECT_MODE_SPI;
		FlashMsg[0].Flags = XQSPIPSU_MSG_FLAG_TX;

		Status = XQspiPsu_PolledTransfer(QspiPsuPtr, FlashMsg, 1);
		if (Status != XST_SUCCESS) {
			return XST_FAILURE;
		}

		/*
		 * Wait for the write command to the Flash to be completed, it takes
		 * some time for the data to be written
		 */
		while (1) {
			ReadStatusCmd = StatusCmd;
			FlashMsg[0].TxBfrPtr = &ReadStatusCmd;
			FlashMsg[0].RxBfrPtr = NULL;
			FlashMsg[0].ByteCount = 1;
			FlashMsg[0].BusWidth = XQSPIPSU_SELECT_MODE_SPI;
			FlashMsg[0].Flags = XQSPIPSU_MSG_FLAG_TX;

			FlashMsg[1].TxBfrPtr = NULL;
			FlashMsg[1].RxBfrPtr = FlashStatus;
			FlashMsg[1].ByteCount = 2;
			FlashMsg[1].BusWidth = XQSPIPSU_SELECT_MODE_SPI;
			FlashMsg[1].Flags = XQSPIPSU_MSG_FLAG_RX;
			if(QspiPsuPtr->Config.ConnectionMode == XQSPIPSU_CONNECTION_MODE_PARALLEL){
				FlashMsg[1].Flags |= XQSPIPSU_MSG_FLAG_STRIPE;
			}

			Status = XQspiPsu_PolledTransfer(QspiPsuPtr, FlashMsg, 2);
			if (Status != XST_SUCCESS) {
				return XST_FAILURE;
			}
			if(QspiPsuPtr->Config.ConnectionMode == XQSPIPSU_CONNECTION_MODE_PARALLEL){
				if(FSRFlag) {
					FlashStatus[1] &= FlashStatus[0];
				} else {
				FlashStatus[1] |= FlashStatus[0];
				}
			}

			if(FSRFlag) {
				if ((FlashStatus[1] & 0x80) != 0) {
					break;
				}
			} else {
				if ((FlashStatus[1] & 0x01) == 0) {
					break;
				}
			}
		}
	}

	return 0;
}

/*****************************************************************************/
/**
*
* This functions translates the address based on the type of interconnection.
* In case of stacked, this function asserts the corresponding slave select.
*
* @param	QspiPsuPtr is a pointer to the QSPIPSU driver component to use.
* @param	Address which is to be accessed (for erase, write or read)
*
* @return	RealAddr is the translated address - for single it is unchanged;
* 			for stacked, the lower flash size is subtracted;
* 			for parallel the address is divided by 2.
*
* @note		None.
*
******************************************************************************/
u32 GetRealAddr(XQspiPsu *QspiPsuPtr, u32 Address)
{
	u32 RealAddr;

	switch(QspiPsuPtr->Config.ConnectionMode) {
	case XQSPIPSU_CONNECTION_MODE_SINGLE:
		XQspiPsu_SelectFlash(QspiPsuPtr, XQSPIPSU_SELECT_FLASH_CS_LOWER,
					XQSPIPSU_SELECT_FLASH_BUS_LOWER);
		RealAddr = Address;
		break;
	case XQSPIPSU_CONNECTION_MODE_STACKED:
		/* Select lower or upper Flash based on sector address */
		if(Address & Flash_Config_Table[FCTIndex].FlashDeviceSize) {

			XQspiPsu_SelectFlash(QspiPsuPtr,
				XQSPIPSU_SELECT_FLASH_CS_UPPER, XQSPIPSU_SELECT_FLASH_BUS_LOWER);
			/*
			 * Subtract first flash size when accessing second flash
			 */
			RealAddr = Address &
					(~Flash_Config_Table[FCTIndex].FlashDeviceSize);
		}else{
			/*
			 * Set selection to L_PAGE
			 */
			XQspiPsu_SelectFlash(QspiPsuPtr,
				XQSPIPSU_SELECT_FLASH_CS_LOWER, XQSPIPSU_SELECT_FLASH_BUS_LOWER);

			RealAddr = Address;

		}
		break;
	case XQSPIPSU_CONNECTION_MODE_PARALLEL:
		/*
		 * The effective address in each flash is the actual
		 * address / 2
		 */
		XQspiPsu_SelectFlash(QspiPsuPtr,
			XQSPIPSU_SELECT_FLASH_CS_BOTH, XQSPIPSU_SELECT_FLASH_BUS_BOTH);
		RealAddr = Address / 2;
		break;
	default:
		/* RealAddr wont be assigned in this case; */
	break;

	}

	return(RealAddr);
}

/*****************************************************************************/
/**
* @brief
* This API enters the flash device into 4 bytes addressing mode.
* As per the Micron and ISSI spec, before issuing the command to enter into 4 byte addr
* mode, a write enable command is issued. For Macronix and Winbond flash parts write
* enable is not required.
*
* @param	QspiPtr is a pointer to the QSPIPSU driver component to use.
* @param	Enable is a either 1 or 0 if 1 then enters 4 byte if 0 exits.
*
* @return
*		- XST_SUCCESS if successful.
*		- XST_FAILURE if it fails.
*
*
******************************************************************************/
int FlashEnterExit4BAddMode(XQspiPsu *QspiPsuPtr,unsigned int Enable)
{
	int Status;
	u8 WriteEnableCmd;
	u8 Cmd;
	u8 WriteDisableCmd;
	u8 ReadStatusCmd;
	u8 WriteBuffer[2] = {0};
	u8 FlashStatus[2] = {0};

	if(Enable) {
		Cmd = ENTER_4B_ADDR_MODE;
	} else {
		if(FlashMake == ISSI_ID_BYTE0)
			Cmd = EXIT_4B_ADDR_MODE_ISSI;
		else
			Cmd = EXIT_4B_ADDR_MODE;
	}

	switch (FlashMake) {
		case ISSI_ID_BYTE0:
		case MICRON_ID_BYTE0:
			WriteEnableCmd = WRITE_ENABLE_CMD;
			/*
			 * Send the write enable command to the Flash so that it can be
			 * written to, this needs to be sent as a separate transfer before
			 * the write
			 */
			FlashMsg[0].TxBfrPtr = &WriteEnableCmd;
			FlashMsg[0].RxBfrPtr = NULL;
			FlashMsg[0].ByteCount = 1;
			FlashMsg[0].BusWidth = XQSPIPSU_SELECT_MODE_SPI;
			FlashMsg[0].Flags = XQSPIPSU_MSG_FLAG_TX;

			Status = XQspiPsu_PolledTransfer(QspiPsuPtr, FlashMsg, 1);
			if (Status != XST_SUCCESS) {
				return XST_FAILURE;
			}
			break;

		case SPANSION_ID_BYTE0:

			if(Enable) {
				WriteBuffer[0] = BANK_REG_WR;
				WriteBuffer[1] = 1 << 7;
			} else {
				WriteBuffer[0] = BANK_REG_WR;
				WriteBuffer[1] = 0 << 7;
			}

			FlashMsg[0].TxBfrPtr = WriteBuffer;
			FlashMsg[0].RxBfrPtr = NULL;
			FlashMsg[0].BusWidth = XQSPIPSU_SELECT_MODE_SPI;
			FlashMsg[0].Flags = XQSPIPSU_MSG_FLAG_TX;
			FlashMsg[0].ByteCount = 2;

			Status = XQspiPsu_PolledTransfer(QspiPsuPtr, FlashMsg, 1);
			if (Status != XST_SUCCESS) {
				return XST_FAILURE;
			}

			return Status;

		default:
			/*
			 * For Macronix and Winbond flash parts
			 * Write enable command is not required.
			 */
			break;
	}

	GetRealAddr(QspiPsuPtr,TEST_ADDRESS);

	FlashMsg[0].TxBfrPtr = &Cmd;
	FlashMsg[0].RxBfrPtr = NULL;
	FlashMsg[0].ByteCount = 1;
	FlashMsg[0].BusWidth = XQSPIPSU_SELECT_MODE_SPI;
	FlashMsg[0].Flags = XQSPIPSU_MSG_FLAG_TX;

	Status = XQspiPsu_PolledTransfer(QspiPsuPtr, FlashMsg, 1);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	while (1) {
		ReadStatusCmd = StatusCmd;

		FlashMsg[0].TxBfrPtr = &ReadStatusCmd;
		FlashMsg[0].RxBfrPtr = NULL;
		FlashMsg[0].ByteCount = 1;
		FlashMsg[0].BusWidth = XQSPIPSU_SELECT_MODE_SPI;
		FlashMsg[0].Flags = XQSPIPSU_MSG_FLAG_TX;

		FlashMsg[1].TxBfrPtr = NULL;
		FlashMsg[1].RxBfrPtr = FlashStatus;
		FlashMsg[1].ByteCount = 2;
		FlashMsg[1].BusWidth = XQSPIPSU_SELECT_MODE_SPI;
		FlashMsg[1].Flags = XQSPIPSU_MSG_FLAG_RX;

		if(QspiPsuPtr->Config.ConnectionMode == XQSPIPSU_CONNECTION_MODE_PARALLEL){
			FlashMsg[1].Flags |= XQSPIPSU_MSG_FLAG_STRIPE;
		}

		Status = XQspiPsu_PolledTransfer(QspiPsuPtr, FlashMsg, 2);
		if (Status != XST_SUCCESS) {
			return XST_FAILURE;
		}

		if(QspiPsuPtr->Config.ConnectionMode == XQSPIPSU_CONNECTION_MODE_PARALLEL){
			if(FSRFlag) {
				FlashStatus[1] &= FlashStatus[0];
			} else {
				FlashStatus[1] |= FlashStatus[0];
			}
		}

		if(FSRFlag) {
			if ((FlashStatus[1] & 0x80) != 0) {
				break;
			}
		} else {
			if ((FlashStatus[1] & 0x01) == 0) {
				break;
			}
		}
	}

	switch (FlashMake) {
		case ISSI_ID_BYTE0:
		case MICRON_ID_BYTE0:
			WriteDisableCmd = WRITE_DISABLE_CMD;
			/*
			 * Send the write enable command to the Flash so that it can be
			 * written to, this needs to be sent as a separate transfer before
			 * the write
			 */
			FlashMsg[0].TxBfrPtr = &WriteDisableCmd;
			FlashMsg[0].RxBfrPtr = NULL;
			FlashMsg[0].ByteCount = 1;
			FlashMsg[0].BusWidth = XQSPIPSU_SELECT_MODE_SPI;
			FlashMsg[0].Flags = XQSPIPSU_MSG_FLAG_TX;

			Status = XQspiPsu_PolledTransfer(QspiPsuPtr, FlashMsg, 1);
			if (Status != XST_SUCCESS) {
				return XST_FAILURE;
			}
			break;

		default:
			/*
			 * For Macronix and Winbond flash parts
			 * Write disable command is not required.
			 */
			break;
	}

	return Status;
}
