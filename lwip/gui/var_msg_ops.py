#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import time
import struct
import udp_logic

class var_msg_ops():
    def __init__(self, comm_instance=None):
        if(comm_instance==None):
            raise Exception("No communication instance")
        else:    
            self.ut = comm_instance
            
    def read_var_prepare(self,  index):
        msg = []
        
        # 消息长占位
        msg.insert(0, 0x00)
        msg.insert(1, 0x00)
        
        # 预留段
        msg.insert(2, 0x00)
        msg.insert(3, 0x00)
        
        # 消息代码
        msg.insert(4, 0x40)
        
        # 消息体
        msg.insert(5, index&0xff)
        msg.insert(6, (index>>8)&0xff)
        
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
    
    def read_var(self, index):
        self.index=index
        self.msg = self.read_var_prepare(index)
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
        result.append(True)#0
        recv_msg= self.recv_msg_prepare(self.ut.recv_msg)
        if(self.index==1) :
            data1=recv_msg[7:11]
            value=struct.unpack('I',data1)[0]
            result.append(value)
        elif(index==2) or (self.index==12) :
            if(len(recv_msg)<72):
                result[0] = False
                return result
                
            data1=recv_msg[7:9] #EMIO_bits
            value=struct.unpack('H',data1)[0]
            # EMIO75  #1
            if((value&(1<<0))!=0):
                result.append(1)
            else:
                result.append(0)
            # EMIO68 #2
            if((value&(1<<1))!=0):
                result.append(1)
            else:
                result.append(0)
            # EMIO63 #3
            if((value&(1<<2))!=0):
                result.append(1)
            else:
                result.append(0)
            # EMIO73 #4
            if((value&(1<<3))!=0):
                result.append(1)
            else:
                result.append(0)    
            # EMIO76 #5
            if((value&(1<<4))!=0):
                result.append(1)
            else:
                result.append(0)  
            # EMIO74 #6
            if((value&(1<<5))!=0):
                result.append(1)
            else:
                result.append(0) 
            # EMIO77 #7
            if((value&(1<<6))!=0):
                result.append(1)
            else:
                result.append(0) 
            # EMIO72 #8
            if((value&(1<<7))!=0):
                result.append(1)
            else:
                result.append(0) 
            # EMIO65 #9
            if((value&(1<<8))!=0):
                result.append(1)
            else:
                result.append(0) 
            # EMIO64 #10
            if((value&(1<<9))!=0):
                result.append(1)
            else:
                result.append(0) 
            # EMIO71 #11
            if((value&(1<<10))!=0):
                result.append(1)
            else:
                result.append(0) 
            # EMIO67 #12
            if((value&(1<<11))!=0):
                result.append(1)
            else:
                result.append(0) 
            # EMIO66 #13
            if((value&(1<<12))!=0):
                result.append(1)
            else:
                result.append(0) 
                
            # unusedbit2 #14
            if((value&(1<<13))!=0):
                result.append(1)
            else:
                result.append(0) 
                
            # unusedbit1 #15
            if((value&(1<<14))!=0):
                result.append(1)
            else:
                result.append(0) 
                
            # unusedbit0 #16
            if((value&(1<<15))!=0):
                result.append(1)
            else:
                result.append(0) 
                
            ###################
            data1=recv_msg[9:11] #modem var bits
            value=struct.unpack('H',data1)[0]
            #dc_removal #17
            if((value&(1<<0))!=0):
                result.append(1)
            else:
                result.append(0)
            #ch_est_fd #18
            if((value&(1<<1))!=0):
                result.append(1)
            else:
                result.append(0)
            #ch_freeze #19
            if((value&(1<<2))!=0):
                result.append(1)
            else:
                result.append(0)
            #eq_bypass #20
            if((value&(1<<3))!=0):
                result.append(1)
            else:
                result.append(0)
            #eq_force_std #21
            if((value&(1<<4))!=0):
                result.append(1)
            else:
                result.append(0)
            #eq_burst_rst #22
            if((value&(1<<5))!=0):
                result.append(1)
            else:
                result.append(0)
            #v_tx2rx_loopback #23
            if((value&(1<<6))!=0):
                result.append(1)
            else:
                result.append(0)
            #gainbin_on #24
            if((value&(1<<7))!=0):
                result.append(1)
            else:
                result.append(0)
            #vbin_on #25
            if((value&(1<<8))!=0):
                result.append(1)
            else:
                result.append(0)
            #delay_one_on #26
            if((value&(1<<9))!=0):
                result.append(1)
            else:
                result.append(0)
            #gain_bin_idx #27
            result.append((value>>10)&0x7)
            #agc_mode #28
            result.append((value>>13)&0x7)
            ##################
            data1=recv_msg[11:12] #modem var bits
            value=struct.unpack('B',data1)[0]
            #pwm_auto #29
            if((value&(1<<0))!=0):
                result.append(1)
            else:
                result.append(0)
            #tx1step #30
            result.append((value>>1)&0x3)
            #tx2step #31
            result.append((value>>3)&0x3)
            #pwm_print_switch   #32
            if((value&(1<<5))!=0):
                result.append(1)
            else:
                result.append(0)

            # unusedbit1 #33
            if((value&(1<<6))!=0):
                result.append(1)
            else:
                result.append(0) 
                
            # unusedbit0 #34
            if((value&(1<<7))!=0):
                result.append(1)
            else:
                result.append(0) 
                
            #########################
            data1=recv_msg[12:13] #modem var bits
            value=struct.unpack('B',data1)[0]
            #rx1_index #35
            result.append(value)

            data1=recv_msg[13:14] #modem var bits
            value=struct.unpack('B',data1)[0]
            #rx2_index #36
            result.append(value)
            
            data1=recv_msg[14:15] #modem var bits
            value=struct.unpack('B',data1)[0]
            #dagc_on #37
            result.append(value)
            
            data1=recv_msg[15:16] #modem var bits
            value=struct.unpack('B',data1)[0]
            #deadzone #38
            result.append(value)
            
            data1=recv_msg[16:17] #modem var bits
            value=struct.unpack('B',data1)[0]
            #sync_corr #39
            result.append(value)
            
            data1=recv_msg[17:18] #modem var bits
            value=struct.unpack('B',data1)[0]
            #eq_ch_min #40
            result.append(value)
            
            data1=recv_msg[18:19] #modem var bits
            value=struct.unpack('B',data1)[0]
            #rx_conj_symm #41
            result.append(value)
            
            data1=recv_msg[19:20] #modem var bits
            value=struct.unpack('B',data1)[0]
            #rx_ofdm_win #42
            result.append(value)
            
            data1=recv_msg[20:21] #modem var bits
            value=struct.unpack('B',data1)[0]
            #dummy #43
            result.append(value)
            
            data1=recv_msg[21:22] #modem var bits
            value=struct.unpack('B',data1)[0]
            #dummy #44
            result.append(value)
            
            data1=recv_msg[22:23] #modem var bits
            value=struct.unpack('B',data1)[0]
            #dummy #45
            result.append(value)
            
            data1=recv_msg[23:25] #modem var bits
            value=struct.unpack('H',data1)[0]
            #OCVCXO_PWM #46
            result.append(value)
            
            data1=recv_msg[25:27] #modem var bits
            value=struct.unpack('H',data1)[0]
            #Kp #47
            result.append(value)
            
            data1=recv_msg[27:29] #modem var bits
            value=struct.unpack('H',data1)[0]
            #Ki #48
            result.append(value)
            
            data1=recv_msg[29:31] #modem var bits
            value=struct.unpack('H',data1)[0]
            #freqerr_num #49
            result.append(value)
            
            data1=recv_msg[31:35] #modem var bits
            value=struct.unpack('I',data1)[0]
            #dssfreq #50
            result.append(value)
            
            data1=recv_msg[35:39] #modem var bits
            value=struct.unpack('I',data1)[0]
            #tx1attenx1000 #51
            result.append(value)
            
            data1=recv_msg[39:43] #modem var bits
            value=struct.unpack('I',data1)[0]
            #tx2attenx1000 #52
            result.append(value)
            
            data1=recv_msg[43:47] # ipaddr
            #value=struct.unpack('I',data1)[0]
            result.append(data1)  #53
            data1=recv_msg[47:51]  # mask
            #value=struct.unpack('I',data1)[0]
            result.append(data1)  #54
            data1=recv_msg[51:55]  # gw
            #value=struct.unpack('I',data1)[0]
            result.append(data1)  #55
            data1=recv_msg[55:61]  # mac
            value=struct.unpack('BBBBBB', data1)
            result.append(value)  #56
            #print(value)
            data1=recv_msg[61:69]  #rxfrequency_Hz
            value=struct.unpack('Q',data1)[0]
            result.append(value)  #57
            print("rxfrequency_Hz:0x%lx" % value)
            data1 = recv_msg[69:77]
            value = struct.unpack('Q', data1)[0]
            result.append(value)  # 58
            print("txfrequency_Hz:0x%lx" % value)
            data1 = recv_msg[77:85]
            value = struct.unpack('Q', data1)[0]
            result.append(value)  # 59

            print("obsRxfrequency_Hz:0x%lx"%value)
            data1 = recv_msg[85:86]
            value = struct.unpack('B', data1)[0]
            result.append(value)  # 60
            print("agent-setting-read:0x%d" % value)
        return result
        
    def write_config_prepare(self, buf):
        msg = []
        
        index = 3
        
        # 消息长占位
        msg.insert(0, 0x00)
        msg.insert(1, 0x00)
        
        # 预留段
        msg.insert(2, 0x00)
        msg.insert(3, 0x00)
        
        # 消息代码
        msg.insert(4, 0x40)
        
        # 消息体
        msg.insert(5, index&0xff)
        msg.insert(6, (index>>8)&0xff)
        
        value = (buf[0]&0x01) +((buf[1]&0x01)<<1)+((buf[2]&0x01)<<2)+((buf[3]&0x01)<<3)+((buf[4]&0x01)<<4)+((buf[5]&0x01)<<5)+((buf[6]&0x01)<<6)+((buf[7]&0x01)<<7)
        msg.insert(7, value&0xff)
        
        value = (buf[8]&0x01) +((buf[9]&0x01)<<1)+((buf[10]&0x01)<<2)+((buf[11]&0x01)<<3)+((buf[12]&0x01)<<4)+((buf[13]&0x01)<<5)+((buf[14]&0x01)<<6)+((buf[15]&0x01)<<7)
        msg.insert(8, value&0xff)
        
        value = (buf[16]&0x01)+((buf[17]&0x01)<<1)+((buf[18]&0x01)<<2)+((buf[19]&0x01)<<3)+((buf[20]&0x01)<<4)+((buf[21]&0x01)<<5)+((buf[22]&0x01)<<6)+((buf[23]&0x01)<<7)
        msg.insert(9, value&0xff)
        
        value = (buf[24]&0x01)+((buf[25]&0x01)<<1)+((buf[26]&0x07)<<2)+((buf[27]&0x07)<<5)
        msg.insert(10, value&0xff)
        
        value = (buf[28]&0x01)+((buf[29]&0x03)<<1)+((buf[30]&0x03)<<3)+((buf[31]&0x01)<<5)+((buf[32]&0x01)<<6)+((buf[33]&0x01)<<7)
        msg.insert(11, value&0xff)
        
        msg.insert(12, (buf[34]&0xff))
        msg.insert(13, (buf[35]&0xff))
        msg.insert(14, (buf[36]&0xff))
        msg.insert(15, (buf[37]&0xff))
        msg.insert(16, (buf[38]&0xff))
        msg.insert(17, (buf[39]&0xff))
        msg.insert(18, (buf[40]&0xff))
        msg.insert(19, (buf[41]&0xff))
        msg.insert(20, (buf[42]&0xff))
        msg.insert(21, (buf[43]&0xff))
        msg.insert(22, (buf[44]&0xff))
        
        msg.insert(23, buf[45]&0xff)
        msg.insert(24, (buf[45]>>8)&0xff)
        
        msg.insert(25, buf[46]&0xff)
        msg.insert(26, (buf[46]>>8)&0xff)
        
        msg.insert(27, buf[47]&0xff)
        msg.insert(28, (buf[47]>>8)&0xff)
        
        msg.insert(29, buf[48]&0xff)
        msg.insert(30, (buf[48]>>8)&0xff)
        
        msg.insert(31, buf[49]&0xff)
        msg.insert(32, (buf[49]>>8)&0xff)
        msg.insert(33, (buf[49]>>16)&0xff)
        msg.insert(34, (buf[49]>>24)&0xff)
        
        msg.insert(35, buf[50]&0xff)
        msg.insert(36, (buf[50]>>8)&0xff)
        msg.insert(37, (buf[50]>>16)&0xff)
        msg.insert(38, (buf[50]>>24)&0xff)
        
        msg.insert(39, buf[51]&0xff)
        msg.insert(40, (buf[51]>>8)&0xff)
        msg.insert(41, (buf[51]>>16)&0xff)
        msg.insert(42, (buf[51]>>24)&0xff)
              
        msg.insert(43, buf[52]&0xff)
        msg.insert(44, (buf[52]>>8)&0xff)
        msg.insert(45, (buf[52]>>16)&0xff)
        msg.insert(46, (buf[52]>>24)&0xff)
        
        msg.insert(47, buf[53]&0xff)
        msg.insert(48, (buf[53]>>8)&0xff)
        msg.insert(49, (buf[53]>>16)&0xff)
        msg.insert(50, (buf[53]>>24)&0xff)
        
        msg.insert(51, buf[54]&0xff)
        msg.insert(52, (buf[54]>>8)&0xff)
        msg.insert(53, (buf[54]>>16)&0xff)
        msg.insert(54, (buf[54]>>24)&0xff)
        
        msg.insert(55, (buf[55]>>40)&0xff)
        msg.insert(56, (buf[55]>>32)&0xff)
        msg.insert(57, (buf[55]>>24)&0xff)
        msg.insert(58, (buf[55]>>16)&0xff)
        msg.insert(59, (buf[55]>>8)&0xff)
        msg.insert(60, (buf[55]&0xff))
        msg.insert(61, 0)
        msg.insert(62, 0)

        
        msg.insert(63, buf[56]&0xff)
        msg.insert(64, (buf[56]>>8)&0xff)
        msg.insert(65, (buf[56]>>16)&0xff)
        msg.insert(66, (buf[56]>>24)&0xff)
        msg.insert(67, (buf[56]>>32)&0xff)
        msg.insert(68, (buf[56]>>40)&0xff)
        msg.insert(69, (buf[56]>>48)&0xff)
        msg.insert(70, (buf[56]>>56)&0xff)
        
        msg.insert(71, buf[57]&0xff)
        msg.insert(72, (buf[57]>>8)&0xff)
        msg.insert(73, (buf[57]>>16)&0xff)
        msg.insert(74, (buf[57]>>24)&0xff)
        msg.insert(75, (buf[57]>>32)&0xff)
        msg.insert(76, (buf[57]>>40)&0xff)
        msg.insert(77, (buf[57]>>48)&0xff)
        msg.insert(78, (buf[57]>>56)&0xff)
        
        msg.insert(79, buf[58]&0xff)
        msg.insert(80, (buf[58]>>8)&0xff)
        msg.insert(81, (buf[58]>>16)&0xff)
        msg.insert(82, (buf[58]>>24)&0xff)
        msg.insert(83, (buf[58]>>32)&0xff)
        msg.insert(84, (buf[58]>>40)&0xff)
        msg.insert(85, (buf[58]>>48)&0xff)
        msg.insert(86, (buf[58]>>56)&0xff)

        msg.insert(87,(buf[59])&0xff)
        
        '''
        msg.insert(7, buf[0]&0xff)
        msg.insert(8, (buf[0]>>8)&0xff)
        msg.insert(9, (buf[0]>>16)&0xff)
        msg.insert(10, (buf[0]>>24)&0xff)
        
        msg.insert(11, buf[1]&0xff)
        msg.insert(12, (buf[1]>>8)&0xff)
        msg.insert(13, (buf[1]>>16)&0xff)
        msg.insert(14, (buf[1]>>24)&0xff)
        
        msg.insert(15, buf[2]&0xff)
        msg.insert(16, (buf[2]>>8)&0xff)
        msg.insert(17, (buf[2]>>16)&0xff)
        msg.insert(18, (buf[2]>>24)&0xff)

        msg.insert(19, buf[3]&0xff)
        msg.insert(20, (buf[3]>>8)&0xff)
        msg.insert(21, (buf[3]>>16)&0xff)
        msg.insert(22, (buf[3]>>24)&0xff)
        
        msg.insert(23, (buf[4]>>40)&0xff)
        msg.insert(24, (buf[4]>>32)&0xff)
        msg.insert(25, (buf[4]>>24)&0xff)
        msg.insert(26, (buf[4]>>16)&0xff)
        msg.insert(27, (buf[4]>>8)&0xff)
        msg.insert(28, buf[4]&0xff)
        
        msg.insert(29, 0)
        msg.insert(30, 0)
        
        msg.insert(31, buf[5]&0xff)
        msg.insert(32, (buf[5]>>8)&0xff)
        msg.insert(33, (buf[5]>>16)&0xff)
        msg.insert(34, (buf[5]>>24)&0xff)
        msg.insert(35, (buf[5]>>32)&0xff)
        msg.insert(36, (buf[5]>>40)&0xff)
        msg.insert(37, (buf[5]>>48)&0xff)
        msg.insert(38, (buf[5]>>56)&0xff)
        
        msg.insert(39, buf[6]&0xff)
        '''
        # 消息长
        msg_len=len(msg)+1
        msg[0] = (msg_len&0xff)
        msg[1] = ((msg_len>>8)&0xff)
        
        # 校验和
        checsum = ((~(sum(msg) & 0xff))&0xff)
        msg.append(checsum)

        return struct.pack('B'*len(msg), *msg)    
    
    def write_config(self, buf):
        self.msg = self.write_config_prepare(buf)
        try:
            self.ut.udp_send(self.msg)
        except Exception as ret:
            raise Exception(ret)
        
        status = self.ut.recieved_even.wait(10)
        result=[]
        if status is not True:
            raise Exception("Recv timeout")
            result.append(False)
            return result
        self.ut.recieved_even.clear() # must clear
        result.append(True)
        recv_msg= self.recv_msg_prepare(self.ut.recv_msg)
        data1=recv_msg[7:8]
        value=struct.unpack('B',data1)[0]
        result.append(value)
        return result
        
    def pwm_auto_prepare(self,  pwm_auto_type):
        index = 7
        msg = []
        
        # 消息长占位
        msg.insert(0, 0x00)
        msg.insert(1, 0x00)
        
        # 预留段
        msg.insert(2, 0x00)
        msg.insert(3, 0x00)
        
        # 消息代码
        msg.insert(4, 0x40)
        
        # 消息体
        msg.insert(5, index&0xff)
        msg.insert(6, (index>>8)&0xff)
        
        msg.insert(7, pwm_auto_type&0xff)
        msg.insert(8, (pwm_auto_type>>8)&0xff)
        msg.insert(9, 0)
        msg.insert(10, 0)
        
        # 消息长
        msg_len=len(msg)+1
        msg[0] = (msg_len&0xff)
        msg[1] = ((msg_len>>8)&0xff)
        
        # 校验和
        checsum = ((~(sum(msg) & 0xff))&0xff)
        msg.append(checsum)

        return struct.pack('B'*len(msg), *msg)    
        
    def pwm_auto_set(self,  pwm_auto_type):
        self.msg = self.pwm_auto_prepare(pwm_auto_type)
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
        
        data1=recv_msg[7:8]
        value=struct.unpack('B',data1)[0]
        result.append(value)
        return result
        
        
    def pwm_auto_get(self):
        index = 6
        self.msg = self.read_var_prepare(index)
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
        data1=recv_msg[7:11]
        value=struct.unpack('I',data1)[0]
        result.append(value)
        return result
        
        
    def kp_kp_set_prepare(self, Kp, Ki):
        index = 5
        msg = []
        
        # 消息长占位
        msg.insert(0, 0x00)
        msg.insert(1, 0x00)
        
        # 预留段
        msg.insert(2, 0x00)
        msg.insert(3, 0x00)
        
        # 消息代码
        msg.insert(4, 0x40)
        
        # 消息体
        msg.insert(5, index&0xff)
        msg.insert(6, (index>>8)&0xff)
        
        msg.insert(7, Kp&0xff)
        msg.insert(8, (Kp>>8)&0xff)
        msg.insert(9,  Ki&0xff)
        msg.insert(10, (Ki>>8)&0xff)
        
        # 消息长
        msg_len=len(msg)+1
        msg[0] = (msg_len&0xff)
        msg[1] = ((msg_len>>8)&0xff)
        
        # 校验和
        checsum = ((~(sum(msg) & 0xff))&0xff)
        msg.append(checsum)

        return struct.pack('B'*len(msg), *msg)    
        
    def kp_kp_set(self, Kp, Ki):
        self.msg = self.kp_kp_set_prepare(Kp, Ki)
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
        
        data1=recv_msg[7:8]
        value=struct.unpack('B',data1)[0]
        result.append(value)
        return result
        
        
    def kp_kp_get_prepare(self):
        index = 4
        msg = []
        
        # 消息长占位
        msg.insert(0, 0x00)
        msg.insert(1, 0x00)
        
        # 预留段
        msg.insert(2, 0x00)
        msg.insert(3, 0x00)
        
        # 消息代码
        msg.insert(4, 0x40)
        
        # 消息体
        msg.insert(5, index&0xff)
        msg.insert(6, (index>>8)&0xff)
        
        # 消息长
        msg_len=len(msg)+1
        msg[0] = (msg_len&0xff)
        msg[1] = ((msg_len>>8)&0xff)
        
        # 校验和
        checsum = ((~(sum(msg) & 0xff))&0xff)
        msg.append(checsum)

        return struct.pack('B'*len(msg), *msg)    
        
        
    def kp_kp_get(self):
        self.msg = self.kp_kp_get_prepare()
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
        
        data1=recv_msg[7:9]
        value=struct.unpack('H',data1)[0]
        result.append(value)
        
        data1=recv_msg[9:11]
        value=struct.unpack('H',data1)[0]
        result.append(value)
        
        return result
        
        
    def pwm_print_switch_prepare(self,  pwm_print_switch):
        index = 9
        msg = []
        
        # 消息长占位
        msg.insert(0, 0x00)
        msg.insert(1, 0x00)
        
        # 预留段
        msg.insert(2, 0x00)
        msg.insert(3, 0x00)
        
        # 消息代码
        msg.insert(4, 0x40)
        
        # 消息体
        msg.insert(5, index&0xff)
        msg.insert(6, (index>>8)&0xff)
        
        msg.insert(7, pwm_print_switch&0xff)
        msg.insert(8, (pwm_print_switch>>8)&0xff)
        msg.insert(9, 0)
        msg.insert(10, 0)
        
        # 消息长
        msg_len=len(msg)+1
        msg[0] = (msg_len&0xff)
        msg[1] = ((msg_len>>8)&0xff)
        
        # 校验和
        checsum = ((~(sum(msg) & 0xff))&0xff)
        msg.append(checsum)

        return struct.pack('B'*len(msg), *msg)    
        
    def pwm_print_switch_set(self,  pwm_print_switch):
        self.msg = self.pwm_print_switch_prepare(pwm_print_switch)
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
        
        data1=recv_msg[7:8]
        value=struct.unpack('B',data1)[0]
        result.append(value)
        return result
        
        
    def pwm_print_switchs_get(self):
        index = 8
        self.msg = self.read_var_prepare(index)
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
        data1=recv_msg[7:11]
        value=struct.unpack('I',data1)[0]
        result.append(value)
        return result        
        
    def avg_points_prepare(self,  avg_points):
        index = 11
        msg = []
        
        # 消息长占位
        msg.insert(0, 0x00)
        msg.insert(1, 0x00)
        
        # 预留段
        msg.insert(2, 0x00)
        msg.insert(3, 0x00)
        
        # 消息代码
        msg.insert(4, 0x40)
        
        # 消息体
        msg.insert(5, index&0xff)
        msg.insert(6, (index>>8)&0xff)
        
        msg.insert(7, avg_points&0xff)
        msg.insert(8, (avg_points>>8)&0xff)
        msg.insert(9, (avg_points>>16)&0xff)
        msg.insert(10, (avg_points>>24)&0xff)
        
        # 消息长
        msg_len=len(msg)+1
        msg[0] = (msg_len&0xff)
        msg[1] = ((msg_len>>8)&0xff)
        
        # 校验和
        checsum = ((~(sum(msg) & 0xff))&0xff)
        msg.append(checsum)

        return struct.pack('B'*len(msg), *msg)    
        
    def avg_points_set(self,  pwm_print_switch):
        self.msg = self.avg_points_prepare(pwm_print_switch)
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
        
        data1=recv_msg[7:8]
        value=struct.unpack('B',data1)[0]
        result.append(value)
        return result
        
        
    def avg_points_get(self):
        index = 10
        self.msg = self.read_var_prepare(index)
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
        data1=recv_msg[7:11]
        value=struct.unpack('I',data1)[0]
        result.append(value)
        return result        
        
    def win_start_bbclk_cnt_get(self):
        index = 13
        self.msg = self.read_var_prepare(index)
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
        data1=recv_msg[7:11]
        value=struct.unpack('I',data1)[0]
        result.append(value)
        return result    
        
        
    def rx_data_array_get(self):
        index = 14
        self.msg = self.read_var_prepare(index)
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
        data1=recv_msg[7:11]
        value=struct.unpack('I',data1)[0]
        result.append(value)
        
        data1=recv_msg[11:15]
        value=struct.unpack('I',data1)[0]
        result.append(value)
        
        data1=recv_msg[15:19]
        value=struct.unpack('I',data1)[0]
        result.append(value)
        
        data1=recv_msg[19:23]
        value=struct.unpack('I',data1)[0]
        result.append(value)
        
        data1=recv_msg[23:27]
        value=struct.unpack('I',data1)[0]
        result.append(value)
        
        data1=recv_msg[27:31]
        value=struct.unpack('I',data1)[0]
        result.append(value)
        
        data1=recv_msg[31:35]
        value=struct.unpack('I',data1)[0]
        result.append(value)
        
        data1=recv_msg[35:39]
        value=struct.unpack('I',data1)[0]
        result.append(value)
        
        data1=recv_msg[39:43]
        value=struct.unpack('I',data1)[0]
        result.append(value)
        
        data1=recv_msg[43:47]
        value=struct.unpack('I',data1)[0]
        result.append(value)
        
        return result
