#!/usr/bin/env python3
# -*- coding: utf-8 -*-
import sys
import memory_ops

XPAR_AXIS_SWITCH_0_DEVICE_ID=0
XPAR_AXIS_SWITCH_1_DEVICE_ID=1
XPAR_AXIS_SWITCH_0_BASEADDR=0x80012000
XPAR_AXIS_SWITCH_0_NUM_SI=2
XPAR_AXIS_SWITCH_0_NUM_MI=1
XPAR_AXIS_SWITCH_1_BASEADDR=0x80013000
XPAR_AXIS_SWITCH_1_NUM_SI=1
XPAR_AXIS_SWITCH_1_NUM_MI=3

XPAR_XAXIS_SWITCH_NUM_INSTANCES=2

#MI MUX register offsets
XAXIS_SCR_CTRL_OFFSET=0x000	# Control Register offset
XAXIS_SCR_MI_MUX_START_OFFSET=0x040 # Start of MI MUX Register offset
XAXIS_SCR_MI_MUX_END_OFFSET=0x07C	# End of MI MUX Register  offset

# MI MUX Control register mask
XAXIS_SCR_CTRL_REG_UPDATE_MASK=0x02	# Register Update mask

# MI MUX register mask
XAXIS_SCR_MI_X_MUX_MASK=0x0F		# MI MUX mask
XAXIS_SCR_MI_X_DISABLE_MASK=0x80000000	# MI Disable mask
XAXIS_SCR_MI_X_DISABLE_SHIFT=31	# MI Disable shift

class xaxis_switch_ops(memory_ops.memory_ops): 
    def __init__(self, comm_instance=None):
        super(xaxis_switch_ops, self).__init__(comm_instance)
        
    def XAxisScr_ReadReg(self, BaseAddr, RegOffset):
        result = self.read_reg(BaseAddr+RegOffset)
        return result[1]

    def XAxisScr_WriteReg(self, BaseAddr, RegOffset, Data):
        self.write_reg(BaseAddr+RegOffset, Data) 
        
    def XAxisScr_MiPortEnable(self, device_id, MiIndex, SiIndex):
        if(device_id == XPAR_AXIS_SWITCH_0_DEVICE_ID):
            assert (MiIndex<XPAR_AXIS_SWITCH_0_NUM_MI)
            assert (SiIndex<XPAR_AXIS_SWITCH_0_NUM_SI)
            BaseAddress = XPAR_AXIS_SWITCH_0_BASEADDR
        elif(device_id == XPAR_AXIS_SWITCH_1_DEVICE_ID):
            assert (MiIndex<XPAR_AXIS_SWITCH_1_NUM_MI)
            assert (SiIndex<XPAR_AXIS_SWITCH_1_NUM_SI)
            BaseAddress = XPAR_AXIS_SWITCH_1_BASEADDR
        else:
            raise Exception("No such device!")
        
        #Calculate MI port address to be enabled
        MiPortAddr = XAXIS_SCR_MI_MUX_START_OFFSET + 4 * MiIndex
        self.XAxisScr_WriteReg(BaseAddress, MiPortAddr, SiIndex)
        
    def XAxisScr_MiPortDisable(self, device_id, MiIndex):
        if(device_id == XPAR_AXIS_SWITCH_0_DEVICE_ID):
            assert (MiIndex<XPAR_AXIS_SWITCH_0_NUM_MI)
            BaseAddress = XPAR_AXIS_SWITCH_0_BASEADDR
        elif(device_id == XPAR_AXIS_SWITCH_1_DEVICE_ID):
            assert (MiIndex<XPAR_AXIS_SWITCH_1_NUM_MI)
            BaseAddress = XPAR_AXIS_SWITCH_1_BASEADDR
        else:
            raise Exception("No such device!")
            
        MiPortAddr = XAXIS_SCR_MI_MUX_START_OFFSET + 4 * MiIndex
        self.XAxisScr_WriteReg(BaseAddress, MiPortAddr, XAXIS_SCR_MI_X_DISABLE_MASK)
        
    def XAxisScr_IsMiPortEnabled(self, device_id, MiIndex, SiIndex):
        if(device_id == XPAR_AXIS_SWITCH_0_DEVICE_ID):
            assert (MiIndex<XPAR_AXIS_SWITCH_0_NUM_MI)
            assert (SiIndex<XPAR_AXIS_SWITCH_0_NUM_SI)
            BaseAddress = XPAR_AXIS_SWITCH_0_BASEADDR
        elif(device_id == XPAR_AXIS_SWITCH_1_DEVICE_ID):
            assert (MiIndex<XPAR_AXIS_SWITCH_1_NUM_MI)
            assert (SiIndex<XPAR_AXIS_SWITCH_1_NUM_SI)
            BaseAddress = XPAR_AXIS_SWITCH_1_BASEADDR
        else:
            raise Exception("No such device!")
            
        MiPortAddr = XAXIS_SCR_MI_MUX_START_OFFSET + 4 * MiIndex
        RegValue = self.XAxisScr_ReadReg(BaseAddress, MiPortAddr)
        Enable=(RegValue >> XAXIS_SCR_MI_X_DISABLE_SHIFT)
        RegValue &= XAXIS_SCR_MI_X_MUX_MASK
        if((RegValue==SiIndex) and (Enable==0)):
            return True
        elif((RegValue & SiIndex) and (Enable==0)):
            return True
        else:
            return False
    
    def XAxisScr_IsMiPortDisabled(self, device_id, MiIndex):
        if(device_id == XPAR_AXIS_SWITCH_0_DEVICE_ID):
            assert (MiIndex<XPAR_AXIS_SWITCH_0_NUM_MI)
            BaseAddress = XPAR_AXIS_SWITCH_0_BASEADDR
        elif(device_id == XPAR_AXIS_SWITCH_1_DEVICE_ID):
            assert (MiIndex<XPAR_AXIS_SWITCH_1_NUM_MI)
            BaseAddress = XPAR_AXIS_SWITCH_1_BASEADDR
        else:
            raise Exception("No such device!")
        
        MiPortAddr = XAXIS_SCR_MI_MUX_START_OFFSET + 4 * MiIndex
        
        Disable = (self.XAxisScr_ReadReg(BaseAddress, MiPortAddr))>>XAXIS_SCR_MI_X_DISABLE_SHIFT
        if Disable!= False:
            return True
        else:
            return False
            
    def XAxisScr_MiPortDisableAll(self, device_id):
        if(device_id == XPAR_AXIS_SWITCH_0_DEVICE_ID):
            MaxNumMI=XPAR_AXIS_SWITCH_0_NUM_MI
            BaseAddress = XPAR_AXIS_SWITCH_0_BASEADDR
        elif(device_id == XPAR_AXIS_SWITCH_1_DEVICE_ID):
            MaxNumMI=XPAR_AXIS_SWITCH_1_NUM_MI
            BaseAddress = XPAR_AXIS_SWITCH_1_BASEADDR
        else:
            raise Exception("No such device!")
            
        for Index in range(MaxNumMI):
            MiPortAddr = XAXIS_SCR_MI_MUX_START_OFFSET + 4 * Index
            self.XAxisScr_WriteReg(BaseAddress, MiPortAddr, XAXIS_SCR_MI_X_DISABLE_MASK)
    
    def XAxisScr_RegUpdateDisable(self, device_id):
        if(device_id == XPAR_AXIS_SWITCH_0_DEVICE_ID):
            BaseAddress = XPAR_AXIS_SWITCH_0_BASEADDR
        elif(device_id == XPAR_AXIS_SWITCH_1_DEVICE_ID):
            BaseAddress = XPAR_AXIS_SWITCH_1_BASEADDR
        else:
            raise Exception("No such device!")
        regval=self.XAxisScr_ReadReg(BaseAddress, XAXIS_SCR_CTRL_OFFSET)        
        self.XAxisScr_WriteReg(BaseAddress, XAXIS_SCR_CTRL_OFFSET, (regval & (~XAXIS_SCR_CTRL_REG_UPDATE_MASK)))
        
    def XAxisScr_RegUpdateEnable(self, device_id):
        if(device_id == XPAR_AXIS_SWITCH_0_DEVICE_ID):
            BaseAddress = XPAR_AXIS_SWITCH_0_BASEADDR
        elif(device_id == XPAR_AXIS_SWITCH_1_DEVICE_ID):
            BaseAddress = XPAR_AXIS_SWITCH_1_BASEADDR
        else:
            raise Exception("No such device!")
        regval=self.XAxisScr_ReadReg(BaseAddress, XAXIS_SCR_CTRL_OFFSET)        
        self.XAxisScr_WriteReg(BaseAddress, XAXIS_SCR_CTRL_OFFSET, (regval | XAXIS_SCR_CTRL_REG_UPDATE_MASK))

    def AxisSwitch(self, device_id, MiIndex, SiIndex):
        self.XAxisScr_RegUpdateDisable(device_id)
        self.XAxisScr_MiPortDisableAll(device_id)
        self.XAxisScr_MiPortEnable(device_id, MiIndex, SiIndex)
        self.XAxisScr_RegUpdateEnable(device_id)
        Status = self.XAxisScr_IsMiPortEnabled(device_id, MiIndex, SiIndex)
        return Status
        
    def AxisSwitch_default(self):
        self.AxisSwitch(XPAR_AXIS_SWITCH_1_DEVICE_ID, 2, 0)
        self.AxisSwitch(XPAR_AXIS_SWITCH_0_DEVICE_ID, 0, 1)
        self.AxisSwitch(XPAR_AXIS_SWITCH_1_DEVICE_ID, 1, 0)
        
    def AxisSwitch_native_part1(self):
        self.AxisSwitch(XPAR_AXIS_SWITCH_1_DEVICE_ID, 2, 0)
        self.AxisSwitch(XPAR_AXIS_SWITCH_0_DEVICE_ID, 0, 0)

    def AxisSwitch_native_part2(self):
        self.AxisSwitch(XPAR_AXIS_SWITCH_1_DEVICE_ID, 0, 0)
        
    def IsStreaming(self):
        result = self.read_reg(XPAR_AXIS_SWITCH_0_BASEADDR+0x40)
        if(result[1] == 0x1):
            return True
        else:
            return False
