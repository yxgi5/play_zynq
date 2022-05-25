#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import sys
import memory_ops

XPAR_PSU_GPIO_0_BASEADDR    =   0xFF0A0000
XGPIOPS_DATA_LSW_OFFSET     =   0x00000000  # Mask and Data Register LSW, WO
XGPIOPS_DATA_MSW_OFFSET     =   0x00000004  #  Mask and Data Register MSW, WO
XGPIOPS_DATA_OFFSET	        =   0x00000040  # Data Register, RW 
XGPIOPS_DATA_RO_OFFSET	=   0x00000060  # Data Register - Input, RO 
XGPIOPS_DIRM_OFFSET	        =   0x00000204  # Direction Mode Register, RW 
XGPIOPS_OUTEN_OFFSET	=   0x00000208  # Output Enable Register, RW 
XGPIOPS_INTMASK_OFFSET	=   0x0000020C  # Interrupt Mask Register, RO 
XGPIOPS_INTEN_OFFSET	=   0x00000210  # Interrupt Enable Register, WO 
XGPIOPS_INTDIS_OFFSET	=   0x00000214  # Interrupt Disable Register, WO
XGPIOPS_INTSTS_OFFSET	=   0x00000218  # Interrupt Status Register, RO 
XGPIOPS_INTTYPE_OFFSET	=   0x0000021C  # Interrupt Type Register, RW 
XGPIOPS_INTPOL_OFFSET	=   0x00000220  # Interrupt Polarity Register, RW 
XGPIOPS_INTANY_OFFSET	=   0x00000224  # Interrupt On Any Register, RW 

XGPIOPS_DATA_MASK_OFFSET    =   0x00000008  # Data/Mask Registers offset 
XGPIOPS_DATA_BANK_OFFSET    =   0x00000004  # Data Registers offset 
XGPIOPS_REG_MASK_OFFSET     =   0x00000040  # Registers offset 

XGPIOPS_BYPM_MASK_OFFSET	=   0x40

XGPIOPS_INTTYPE_BANK0_RESET =   0x03FFFFFF  # Resets specific to Zynq Ultrascale+ MP 
XGPIOPS_INTTYPE_BANK1_RESET =   0x03FFFFFF
XGPIOPS_INTTYPE_BANK2_RESET =   0x03FFFFFF

XGPIOPS_INTTYPE_BANK3_RESET =   0xFFFFFFFF  # Reset common to both platforms 
XGPIOPS_INTTYPE_BANK4_RESET =   0xFFFFFFFF  # Resets specific to Zynq Ultrascale+ MP 
XGPIOPS_INTTYPE_BANK5_RESET =   0xFFFFFFFF

XGPIOPS_BANK_MAX_PINS       =   32
XGPIOPS_MAX_BANKS_ZYNQMP    =   0x6
XGPIOPS_BANK0               =   0x0
XGPIOPS_BANK1               =   0x1
XGPIOPS_BANK2               =   0x2
XGPIOPS_BANK3               =   0x3
XGPIOPS_BANK4               =   0x4
XGPIOPS_BANK5               =   0x5
XGPIOPS_DEVICE_MAX_PIN_NUM_ZYNQMP   =   174

class gpio_ops(memory_ops.memory_ops): 
    def __init__(self, comm_instance=None):
        super(gpio_ops, self).__init__(comm_instance)
        self.XGpioPsPinTable=(25, 51, 77, 109, 141, 173)
        self.BankNumber=0
        self.PinNumberInBank=0
        pass

    def XGpioPs_GetBankPin(self, PinNumber):
        '''
        查找pinnumber在第几bank的第几pin
        输入  pinnumber
        返回[0]   bank
        返回[1]   pin in bank
        '''
        for BankNumber in range(XGPIOPS_MAX_BANKS_ZYNQMP):
            if PinNumber <= self.XGpioPsPinTable[BankNumber]:
                break
        
        if BankNumber == 0:
            PinNumberInBank = PinNumber
        else:
            PinNumberInBank = PinNumber % (self.XGpioPsPinTable[BankNumber-1]+1)
            
        result=[]
        result.append(BankNumber)
        result.append(PinNumberInBank)
        return result
        
    def XGpioPs_ReadReg(self, BaseAddr, RegOffset):
        result = self.read_reg(BaseAddr+RegOffset)
        return result[1]

    def XGpioPs_WriteReg(self, BaseAddr, RegOffset, Data):
        self.write_reg(BaseAddr+RegOffset, Data)
        
    def XGpioPs_SetDirectionPin(self, PinNumber,  Direction):
        '''
        Set the Direction of the specified pin.
        
        @param	Pin is the pin number to which the Data is to be written.
        Valid values are  0-173 in Zynq Ultrascale+ MP.
        
        @param	Direction is the direction to be set for the specified pin.
        Valid values are 0 for Input Direction, 1 for Output Direction.
        
        @return	None.
        '''
        if PinNumber > XGPIOPS_DEVICE_MAX_PIN_NUM_ZYNQMP:
            print("Pin Number Error")
            raise Exception("Pin Number Error")
            return
            
        if Direction>1:
            print("Pin Direction Error")
            raise Exception("Pin Direction Error")
            return
        
        # Get the Bank number and Pin number within the bank. 
        BankNumber, PinNumberInBank=self.XGpioPs_GetBankPin(PinNumber)
        
        # 读出整个bank的方向寄存器
        DirModeReg = self.XGpioPs_ReadReg(XPAR_PSU_GPIO_0_BASEADDR, BankNumber*XGPIOPS_REG_MASK_OFFSET+XGPIOPS_DIRM_OFFSET)
        
        # 操作某一位
        if (Direction!=0): # Output Direction
            DirModeReg = DirModeReg | (1 << PinNumberInBank)
        else: #Input Direction
            DirModeReg = DirModeReg&(~ (1 << PinNumberInBank))
        
        # 回写整个bank的方向寄存器
        self.XGpioPs_WriteReg(XPAR_PSU_GPIO_0_BASEADDR, BankNumber*XGPIOPS_REG_MASK_OFFSET+XGPIOPS_DIRM_OFFSET, DirModeReg)
        
    def XGpioPs_SetOutputEnablePin(self, PinNumber,  OpEnable):
        if PinNumber > XGPIOPS_DEVICE_MAX_PIN_NUM_ZYNQMP:
            print("Pin Number Error")
            raise Exception("Pin Number Error")
            return
             
        if OpEnable>1:
            print("Pin OpEnable Error")
            return  
        
        # Get the Bank number and Pin number within the bank. 
        BankNumber, PinNumberInBank=self.XGpioPs_GetBankPin(PinNumber)
        
        # 回写整个bank的输出使能寄存器
        OpEnableReg = self.XGpioPs_ReadReg(XPAR_PSU_GPIO_0_BASEADDR, BankNumber*XGPIOPS_REG_MASK_OFFSET+XGPIOPS_OUTEN_OFFSET)
        
        # 操作某一位
        if(OpEnable!=0): # Enable Output Enable bit
            OpEnableReg = OpEnableReg | (1 << PinNumberInBank)
        else: # Disable Output Enable bit
            OpEnableReg = OpEnableReg&(~ (1 << PinNumberInBank))
            
        # 读出整个bank的输出使能寄存器
        self.XGpioPs_WriteReg(XPAR_PSU_GPIO_0_BASEADDR, BankNumber*XGPIOPS_REG_MASK_OFFSET+XGPIOPS_OUTEN_OFFSET, OpEnableReg)

        
    def XGpioPs_WritePin(self, PinNumber,  Data):
        DataVar = Data
        
        if PinNumber > XGPIOPS_DEVICE_MAX_PIN_NUM_ZYNQMP:
            print("Pin Number Error")
            raise Exception("Pin Number Error")
            return
            
        # Get the Bank number and Pin number within the bank. 
        BankNumber, PinNumberInBank=self.XGpioPs_GetBankPin(PinNumber)
        
        if(PinNumberInBank>15):
            PinNumberInBank = PinNumberInBank - 16
            RegOffset = XGPIOPS_DATA_MSW_OFFSET
        else:
            RegOffset = XGPIOPS_DATA_LSW_OFFSET
            
        DataVar &= 1
        Value = ~(1 << (PinNumberInBank + 16)) & ((DataVar << PinNumberInBank) | 0xFFFF0000)
        
        self.XGpioPs_WriteReg(XPAR_PSU_GPIO_0_BASEADDR, BankNumber*XGPIOPS_DATA_MASK_OFFSET+RegOffset, Value)
        
    def XGpioPs_ReadPin(self, PinNumber):
        if PinNumber > XGPIOPS_DEVICE_MAX_PIN_NUM_ZYNQMP:
            print("Pin Number Error")
            raise Exception("Pin Number Error")
            return
            
        # Get the Bank number and Pin number within the bank. 
        BankNumber, PinNumberInBank=self.XGpioPs_GetBankPin(PinNumber)
        
        value = self.XGpioPs_ReadReg(XPAR_PSU_GPIO_0_BASEADDR, BankNumber*XGPIOPS_DATA_BANK_OFFSET+XGPIOPS_DATA_RO_OFFSET)
        return (value>>PinNumberInBank) &0x01
    
    def gpio_direction_output(self, PinNumber,  Value):
        self.XGpioPs_SetDirectionPin(PinNumber, 1)
        self.XGpioPs_SetOutputEnablePin(PinNumber, 1)
        self.XGpioPs_WritePin(PinNumber, Value)
            
    def gpio_set_value(self, PinNumber,  Value):
        self.XGpioPs_WritePin(PinNumber, Value)
        
    def gpio_direction_input(self, PinNumber):
        self.XGpioPs_SetDirectionPin(PinNumber, 0)
        self.XGpioPs_WritePin(PinNumber, 1)
        
    def gpio_get_output_status(self, PinNumber):
        if PinNumber > XGPIOPS_DEVICE_MAX_PIN_NUM_ZYNQMP:
            print("Pin Number Error")
            raise Exception("Pin Number Error")
            return
        # Get the Bank number and Pin number within the bank. 
        BankNumber, PinNumberInBank=self.XGpioPs_GetBankPin(PinNumber)
        value = self.XGpioPs_ReadReg(XPAR_PSU_GPIO_0_BASEADDR, BankNumber*XGPIOPS_DATA_BANK_OFFSET+XGPIOPS_DATA_OFFSET)
        return (value>>PinNumberInBank) &0x01
        
    def gpio_read_input(self, PinNumber):
        result = self.XGpioPs_ReadPin(PinNumber)
        return result
        
