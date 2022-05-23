#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import sys
import memory_ops

XPAR_GPIO_0_BASEADDR=0x80010000
XPAR_GPIO_0_IS_DUAL=1
XPAR_GPIO_1_BASEADDR=0x80011000
XPAR_GPIO_1_IS_DUAL=0
XPAR_GPIO_2_BASEADDR=0x80015000
XPAR_GPIO_2_IS_DUAL=0

XGPIO_DATA_OFFSET=0x0
XGPIO_TRI_OFFSET=0x4
XGPIO_DATA2_OFFSET=0x8
XGPIO_TRI2_OFFSET=0xC
XGPIO_GIE_OFFSET=0x11C
XGPIO_ISR_OFFSET=0x120
XGPIO_IER_OFFSET=0x128
XGPIO_CHAN_OFFSET=8
XGPIO_IR_MASK=0x3
XGPIO_IR_CH1_MASK=0x1
XGPIO_IR_CH2_MASK=0x2
XGPIO_GIE_GINTR_ENABLE_MASK=0x80000000

class xgpio_ops(memory_ops.memory_ops): 
    def __init__(self, comm_instance=None):
        super(xgpio_ops, self).__init__(comm_instance)
        
    def XGpio_ReadReg(self, BaseAddr, RegOffset):
        result = self.read_reg(BaseAddr+RegOffset)
        return result[1]

    def XGpio_WriteReg(self, BaseAddr, RegOffset, Data):
        self.write_reg(BaseAddr+RegOffset, Data)
        
    def XGpio_SetDataDirection(self, BaseAddress, Channel, DirectionMask):
        '''
        * @param	XGpio instance base address
        * @param	Channel contains the channel of the GPIO (1 or 2) to operate on.
        * @param	DirectionMask is a bitmask specifying which discretes are input
        *		and which are output. Bits set to 0 are output and bits set to 1
        *		are input.
        '''
        assert ((Channel==1) or (Channel==2))
        assert ((DirectionMask==0) or (DirectionMask==1))
        
        self.XGpio_WriteReg(BaseAddress, ((Channel - 1) * XGPIO_CHAN_OFFSET) + XGPIO_TRI_OFFSET, DirectionMask)
        
    def XGpio_GetDataDirection(self, BaseAddress, Channel):
        assert ((Channel==1) or (Channel==2))
        
        result = self.XGpio_ReadReg(BaseAddress, ((Channel - 1) * XGPIO_CHAN_OFFSET) + XGPIO_TRI_OFFSET)
        return result
        
    def XGpio_DiscreteRead(self, BaseAddress, Channel):
        assert ((Channel==1) or (Channel==2))
        
        result = self.XGpio_ReadReg(BaseAddress, ((Channel - 1) * XGPIO_CHAN_OFFSET) + XGPIO_DATA_OFFSET)
        return result
        
    def XGpio_DiscreteWrite(self, BaseAddress, Channel, Data):
        assert ((Channel==1) or (Channel==2))
        
        self.XGpio_WriteReg(BaseAddress, ((Channel - 1) * XGPIO_CHAN_OFFSET) + XGPIO_DATA_OFFSET, Data)
        
        
