#include "xparameters.h"
#include "xil_exception.h"
#include "xtime_l.h"
#include "stdio.h"
#include "xstatus.h"
#include "xiic.h"

// IIC DEVICES
#define MST_IIC_BASE_ADDR    XPAR_IIC_0_BASEADDR
#define SLV_IIC_BASE_ADDR    XPAR_IIC_1_BASEADDR

#define PL_SLV_IIC_ITS_ADDR 0x48 // 8-bit address
//#define PS_SLV_IIC_ITS_ADDR 0x8a
#define TEST_BUFFER_SIZE    5

typedef unsigned int U32;
u32 SendBuffer[TEST_BUFFER_SIZE] = { 0xA5, 0xA5, 0x5A, 0xAA, 0x5A };
u32 read = 0;

int main(void)
{
    u32 Index, i;
    u32 pl_slv_read;
    xil_printf("\r\n--------IIC clock strectching------\r\n");

    //Need to  write axi iic sequence
    //Slave
    *(u32 *) (SLV_IIC_BASE_ADDR + 0x110) = PL_SLV_IIC_ITS_ADDR;
    *(u32 *) (SLV_IIC_BASE_ADDR + 0x100) = 0x1;
    *(u32 *) (SLV_IIC_BASE_ADDR + 0x120) = 0xF;
    for(Index = 0x00; Index < 5; Index++) // max 16 in fifo(0~15), overlaps when > 16, eg. 21, then fifo actual stores 5 bytes
    {
        *(u32 *) (SLV_IIC_BASE_ADDR + 0x108) = SendBuffer[Index];
        usleep(5000);
//        for(int x = 0; x < 0x1000000; x++);
    }

    //Master
    *(u32 *) (MST_IIC_BASE_ADDR + 0x100) = 0x1;
    *(u32 *) (MST_IIC_BASE_ADDR + 0x120) = 0xF;

    *(u32 *) (MST_IIC_BASE_ADDR + 0x108) = 0x100 | PL_SLV_IIC_ITS_ADDR;
    *(u32 *) (MST_IIC_BASE_ADDR + 0x108) = 0x005;

    while(((*(u32 *) (MST_IIC_BASE_ADDR + 0x104)) & (0x80)));

//    usleep(500); // delay 500us @ 100kHz, then read SLV_IIC_BASE_ADDR + 0x10C
//    pl_slv_read = *(u32 *) (SLV_IIC_BASE_ADDR + 0x10C);
//    xil_printf("Slave IIC read value 0x%08x\n\r", pl_slv_read);
//
//    while(!(pl_slv_read == 0x5))
//    {
//        pl_slv_read = *(u32 *) (SLV_IIC_BASE_ADDR + 0x10C);
//        xil_printf("Slave IIC read value 0x%08x\n\r", pl_slv_read);
//    }

    *(u32 *) (MST_IIC_BASE_ADDR + 0x108) = 0x101 | PL_SLV_IIC_ITS_ADDR;
    *(u32 *) (MST_IIC_BASE_ADDR + 0x108) = 0x205;

    usleep(1000);// at least 500us @ 100kHz, then read (MST_IIC_BASE_ADDR + 0x104)

    pl_slv_read = *(u32 *) (SLV_IIC_BASE_ADDR + 0x10C);
    xil_printf("Slave IIC read value 0x%08x\n\r", pl_slv_read);

    for(i = 0; i < TEST_BUFFER_SIZE; i++)
    {
        while(!((*(u32 *) (MST_IIC_BASE_ADDR + 0x104)) & (0x40))) // // Check for RX_FIFO not empty to read data from RX_FIFO
        {
            xil_printf("PL IIC read value 0x%08x\n\r", *(u32 *) (MST_IIC_BASE_ADDR + 0x10C));
        }
    }

    /////////////////////////////////
    sleep(1);

    *(u32 *) (SLV_IIC_BASE_ADDR + 0x110) = PL_SLV_IIC_ITS_ADDR;
    *(u32 *) (SLV_IIC_BASE_ADDR + 0x100) = 0x1;
    *(u32 *) (SLV_IIC_BASE_ADDR + 0x120) = 0xF;
    for(Index = 0x00; Index < 5; Index++)
    {
        *(u32 *) (SLV_IIC_BASE_ADDR + 0x108) = SendBuffer[Index]+1;
        usleep(5000);
//        for(int x = 0; x < 0x1000000; x++);
    }

    *(u32 *) (MST_IIC_BASE_ADDR + 0x100) = 0x1;
    *(u32 *) (MST_IIC_BASE_ADDR + 0x120) = 0xF;

    *(u32 *) (MST_IIC_BASE_ADDR + 0x108) = 0x100 | PL_SLV_IIC_ITS_ADDR;
    *(u32 *) (MST_IIC_BASE_ADDR + 0x108) = 0x005;

    while(((*(u32 *) (MST_IIC_BASE_ADDR + 0x104)) & (0x80)));
    *(u32 *) (MST_IIC_BASE_ADDR + 0x108) = 0x101 | PL_SLV_IIC_ITS_ADDR;
    *(u32 *) (MST_IIC_BASE_ADDR + 0x108) = 0x205;

    usleep(1000);// at least 500us @ 100kHz, then read (MST_IIC_BASE_ADDR + 0x104)

    pl_slv_read = *(u32 *) (SLV_IIC_BASE_ADDR + 0x10C);
    xil_printf("Slave IIC read value 0x%08x\n\r", pl_slv_read);

    for(i = 0; i < TEST_BUFFER_SIZE; i++)
    {
        while(!((*(u32 *) (MST_IIC_BASE_ADDR + 0x104)) & (0x40))) // // Check for RX_FIFO not empty to read data from RX_FIFO
        {
            xil_printf("PL IIC read value 0x%08x\n\r", *(u32 *) (MST_IIC_BASE_ADDR + 0x10C));
        }
    }

    /////////////////////////////////
    sleep(1);

    *(u32 *) (SLV_IIC_BASE_ADDR + 0x110) = PL_SLV_IIC_ITS_ADDR;
    *(u32 *) (SLV_IIC_BASE_ADDR + 0x100) = 0x1;
    *(u32 *) (SLV_IIC_BASE_ADDR + 0x120) = 0xF;
    for(Index = 0x00; Index < 5; Index++)
    {
        *(u32 *) (SLV_IIC_BASE_ADDR + 0x108) = SendBuffer[Index]+2;
        usleep(5000);
//        for(int x = 0; x < 0x1000000; x++);
    }

    *(u32 *) (MST_IIC_BASE_ADDR + 0x100) = 0x1;
    *(u32 *) (MST_IIC_BASE_ADDR + 0x120) = 0xF;

    *(u32 *) (MST_IIC_BASE_ADDR + 0x108) = 0x100 | PL_SLV_IIC_ITS_ADDR;
    *(u32 *) (MST_IIC_BASE_ADDR + 0x108) = 0x005;

    while(((*(u32 *) (MST_IIC_BASE_ADDR + 0x104)) & (0x80)));
    *(u32 *) (MST_IIC_BASE_ADDR + 0x108) = 0x101 | PL_SLV_IIC_ITS_ADDR;
    *(u32 *) (MST_IIC_BASE_ADDR + 0x108) = 0x205;

    usleep(1000);// at least 500us @ 100kHz, then read (MST_IIC_BASE_ADDR + 0x104)

    pl_slv_read = *(u32 *) (SLV_IIC_BASE_ADDR + 0x10C);
    xil_printf("Slave IIC read value 0x%08x\n\r", pl_slv_read);

    for(i = 0; i < TEST_BUFFER_SIZE; i++)
    {
        while(!((*(u32 *) (MST_IIC_BASE_ADDR + 0x104)) & (0x40))) // // Check for RX_FIFO not empty to read data from RX_FIFO
        {
//            pl_mst_read[i] = *(u32 *)(MST_IIC_BASE_ADDR + 0x10C);  // Read data from RX FIFO
            xil_printf("PL IIC read value 0x%08x\n\r", *(u32 *) (MST_IIC_BASE_ADDR + 0x10C));
        }
    }

    return (0);
}
