#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import time
import struct
import udp_logic
from enum import Enum

class pravite_cmd(Enum):
      bootRegion_rd = 1
      pl_agc_test_val=2
      upgrade_region_cmd=3
      board_agent_mode=4
      upgrade_pl_size=5
      upgrade_sw_size=6
      pl_agc_parameters=7
      best_avr_pwr=8


class flash_upgrade_addr(Enum):
      all =  0x2000000
      fpga = 0X2020000   #0x2db80   + 0x200000   real addr==0X202db80
      #sw =   0x3c1db80   #0x1c1db80 +0x2000000
      sw = 0x3c20000     #0x3c2db80     real addr==0x3c2db80

class memory_ops():
    def __init__(self, comm_instance=None):
        if(comm_instance==None):
            raise Exception("No communication instance")
        else:    
            self.ut = comm_instance
        
    def read_prepare(self,  addr):
        msg = []
        
        # 消息长占位
        msg.insert(0, 0x00)
        msg.insert(1, 0x00)
        
        # 预留段
        msg.insert(2, 0x00)
        msg.insert(3, 0x00)
        
        # 消息代码
        msg.insert(4, 0x10)
        
        # 消息体
        msg.insert(5, addr&0xff)
        msg.insert(6, (addr>>8)&0xff)
        msg.insert(7, (addr>>16)&0xff)
        msg.insert(8, (addr>>24)&0xff)
        msg.append(0x00)
        msg.append(0x00)
        msg.append(0x00)
        msg.append(0x00)
        
        # 消息长
        msg_len=len(msg)+1
        msg[0] = (msg_len&0xff)
        msg[1] = ((msg_len>>8)&0xff)
        
        # 校验和
        checsum = ((~(sum(msg) & 0xff))&0xff)
        msg.append(checsum)

        return struct.pack('B'*len(msg), *msg)
        
    def wirte_prepare(self,  addr,  value):
        msg = []

        # 消息长占位
        msg.insert(0, 0x00)
        msg.insert(1, 0x00)
        
        # 预留段
        msg.insert(2, 0x00)
        msg.insert(3, 0x00)
        
        # 消息代码
        msg.insert(4, 0x11)
        
        # 消息体
        msg.insert(5, addr&0xff)
        msg.insert(6, (addr>>8)&0xff)
        msg.insert(7, (addr>>16)&0xff)
        msg.insert(8, (addr>>24)&0xff)
        
        msg.insert(9, value&0xff)
        msg.insert(10, (value>>8)&0xff)
        msg.insert(11, (value>>16)&0xff)
        msg.insert(12, (value>>24)&0xff)
        
        # 消息长
        msg_len=len(msg)+1
        msg[0] = (msg_len&0xff)
        msg[1] = ((msg_len>>8)&0xff)
        
        # 校验和
        checsum = ((~(sum(msg) & 0xff))&0xff)
        msg.append(checsum)

        return struct.pack('B'*len(msg), *msg)
       
    def recv_msg_prepare(self, msg):      
        # 0x7e 0x00 转义回 0x7e
        
       # recv_msg=msg.replace(b'\x7e\x00', b'\x7e')
        recv_msg=msg
        
        #value=struct.unpack('B'*len(recv_msg), recv_msg)
        #return value
        return recv_msg

        
    def read_reg(self, reg_addr):
        self.msg = self.read_prepare(reg_addr)
       
        try:
            self.ut.udp_send(self.msg)
        except Exception as ret:
            raise Exception(ret)
            
        status = self.ut.recieved_even.wait(0.05)
        result=[]
        if status is not True:
            raise Exception("Recv timeout")
            result.append(False)
            return result
        self.ut.recieved_even.clear() # must clear
        result.append(True)
        recv_msg= self.recv_msg_prepare(self.ut.recv_msg)
        data1=recv_msg[9:13]
        value=struct.unpack('I',data1)[0]
        result.append(value)
        return result
    
    def write_reg(self, reg_addr, reg_value):
		#print("0x%08x" % reg_addr)
        print('0x%08x' % reg_addr)
        self.msg = self.wirte_prepare(reg_addr, reg_value)
        
        try:
            self.ut.udp_send(self.msg)
        except Exception as ret:
            raise Exception(ret)
            
        status = self.ut.recieved_even.wait(0.05)
        result=[]
        if status is not True:
            raise Exception("Recv timeout")
            result.append(False)
            return result
        self.ut.recieved_even.clear() # must clear
        recv_msg= self.recv_msg_prepare(self.ut.recv_msg) 
        if(recv_msg[0:9]==self.msg[0:9]):
            result.append(True)
        else:
             result.append(False)
        
        return result
        
    def read_bulk_prepare(self, addr, cnt):
        msg = []
        
        # 消息长占位
        msg.insert(0, 0x00)
        msg.insert(1, 0x00)
        
        # 预留段
        msg.insert(2, 0x00)
        msg.insert(3, 0x00)
        
        # 消息代码
        msg.insert(4, 0x12)
        
        # 消息体
        msg.insert(5, addr&0xff)
        msg.insert(6, (addr>>8)&0xff)
        msg.insert(7, (addr>>16)&0xff)
        msg.insert(8, (addr>>24)&0xff)
        msg.append(cnt&0xff)
        msg.append((cnt>>8)&0xff)
        msg.append((cnt>>16)&0xff)
        msg.append((cnt>>24)&0xff)
        
        # 消息长
        msg_len=len(msg)+1
        msg[0] = (msg_len&0xff)
        msg[1] = ((msg_len>>8)&0xff)
        
        # 校验和
        checsum = ((~(sum(msg) & 0xff))&0xff)
        msg.append(checsum)

        return struct.pack('B'*len(msg), *msg)

    def read_bulk(self, reg_addr, cnt):
        msg = self.read_bulk_prepare(reg_addr, cnt)
        try:
            self.ut.udp_send(msg)
        except Exception as ret:
            raise Exception(ret)
            
        status = self.ut.recieved_even.wait(0.05)
        if status is not True:
            raise Exception("Recv timeout")
        self.ut.recieved_even.clear() # must clear
        
        recv_msg=self.recv_msg_prepare(self.ut.recv_msg)
        if recv_msg[2:13] != msg[2:13]:
            raise Exception("Recv ack err")
            
        result = struct.unpack('I'*cnt, recv_msg[13:13+cnt*4])
        
        return result
        
    def write_bulk_prepare(self, addr,  data):
        msg = []
        
        # 消息长占位
        msg.insert(0, 0x00)
        msg.insert(1, 0x00)
        
        # 预留段
        msg.insert(2, 0x00)
        msg.insert(3, 0x00)
        
        # 消息代码
        msg.insert(4, 0x13)
        
        # 消息体
        msg.insert(5, addr&0xff)
        msg.insert(6, (addr>>8)&0xff)
        msg.insert(7, (addr>>16)&0xff)
        msg.insert(8, (addr>>24)&0xff)
        
        cnt=int(len(data))
        msg.append(cnt&0xff)
        msg.append((cnt>>8)&0xff)
        msg.append((cnt>>16)&0xff)
        msg.append((cnt>>24)&0xff)
        
        # 数据
        for index in range(cnt):
            msg.append(data[index]&0xff)
            msg.append((data[index]>>8)&0xff)
            msg.append((data[index]>>16)&0xff)
            msg.append((data[index]>>24)&0xff)
            
        # 消息长
        msg_len=len(msg)+1
        msg[0] = (msg_len&0xff)
        msg[1] = ((msg_len>>8)&0xff)
            
        # 校验和
        checsum = ((~(sum(msg) & 0xff))&0xff)
        msg.append(checsum)

        return struct.pack('B'*len(msg), *msg)
        
    def write_bulk(self, reg_addr, send_data):
        msg = self.write_bulk_prepare(reg_addr, send_data)
        try:
            self.ut.udp_send(msg)
        except Exception as ret:
            raise Exception(ret)
            
        status = self.ut.recieved_even.wait(0.05)
        if status is not True:
            raise Exception("Recv timeout")
        self.ut.recieved_even.clear() # must clear
        
        recv_msg=self.recv_msg_prepare(self.ut.recv_msg)
        if recv_msg[2:13] == msg[2:13]:
            result=True
        else:
            result=False
        
        return result



    ''' this is add by bing for private msg '''

    def read_pmsg_prepare(self, cmd, length):
        msg = []

        # 消息长占位
        msg.insert(0, 0x00)
        msg.insert(1, 0x00)

        # 预留段
        msg.insert(2, 0x00)
        msg.insert(3, 0x00)

        # 消息代码
        msg.insert(4, 0x14) #  读私有 消息  命令code

        # 消息体
        msg.insert(5, cmd & 0xff)
        msg.insert(6, (cmd >> 8) & 0xff)
        msg.append(length & 0xff)
        msg.append((length >> 8) & 0xff)


        # 消息长
        msg_len = len(msg) + 1
        msg[0] = (msg_len & 0xff)
        msg[1] = ((msg_len >> 8) & 0xff)

        # 校验和
        checsum = ((~(sum(msg) & 0xff)) & 0xff)
        msg.append(checsum)

        return struct.pack('B' * len(msg), *msg)
    def read_pravite_msg(self, msg_cmd, msg_len):
        msg = self.read_pmsg_prepare(msg_cmd, msg_len)
        try:
            self.ut.udp_send(msg)
        except Exception as ret:
            raise Exception(ret)

        status = self.ut.recieved_even.wait(0.05)
        result = []
        if status is not True:
            raise Exception("Recv timeout")
            result.append(False)
            return result
        self.ut.recieved_even.clear()  # must clear

        recv_msg = self.recv_msg_prepare(self.ut.recv_msg)
        if recv_msg[2:10] != msg[2:10]:
            raise Exception("Recv ack err")

        result.append(True)
        data1 = struct.unpack('i' * msg_len, recv_msg[10:10 + msg_len * 4])
        for idx in range(msg_len):
             result.append(data1[idx])

        return result

    def wirte_pravite_prepare(self, cmd, value):
        msg = []

        # 消息长占位
        msg.insert(0, 0x00)
        msg.insert(1, 0x00)

        # 预留段
        msg.insert(2, 0x00)
        msg.insert(3, 0x00)

        # 消息代码
        msg.insert(4, 0x15)

        # 消息体
        msg.insert(5, cmd & 0xff)
        msg.insert(6, (cmd >> 8) & 0xff)

        msg.insert(7, value & 0xff)
        msg.insert(8, (value >> 8) & 0xff)
        msg.insert(9, (value >> 16) & 0xff)
        msg.insert(10, (value >> 24) & 0xff)

        # 消息长
        msg_len = len(msg) + 1
        msg[0] = (msg_len & 0xff)
        msg[1] = ((msg_len >> 8) & 0xff)

        # 校验和
        checsum = ((~(sum(msg) & 0xff)) & 0xff)
        msg.append(checsum)

        return struct.pack('B' * len(msg), *msg)

    def write_pravite_value(self, cmd, value):
        # print("0x%08x" % reg_addr)
        print('0x%08x' % cmd)
        self.msg = self.wirte_pravite_prepare(cmd, value)

        try:
            self.ut.udp_send(self.msg)
        except Exception as ret:
            raise Exception(ret)

        status = self.ut.recieved_even.wait(0.05)
        result = []
        if status is not True:
            raise Exception("Recv timeout")
            result.append(False)
            return result
        self.ut.recieved_even.clear()  # must clear
        recv_msg = self.recv_msg_prepare(self.ut.recv_msg)
        if (recv_msg[0:5] == self.msg[0:5]):
            result.append(True)
        else:
            result.append(False)

        return result
