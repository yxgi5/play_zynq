#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import sys
import time
import struct
import udp_logic
import memory_ops

def main():
    ip='192.168.1.10'
    ut = udp_logic.udp_logic(server_host=ip)
    
    m1=memory_ops.memory_ops(ut)
    status=m1.read_reg(0x7200000)
    if status[0]:
        print("ok, 0x%x"%status[1])
    else:
        print("ng")
        
    del m1
    
    value = status[1] + 1;
    
    m2=memory_ops.memory_ops(ut)
    status=m2.write_reg(0x7200000, value)
    if status[0]:
        print("write ok")
    else:
        print("write ng")
    del m2
    
    m3=memory_ops.memory_ops(ut)
    status=m3.read_reg(0x7200000)
    if status[0]:
        print("ok, 0x%x"%status[1])
    else:
        print("ng")
        
        
    cnt = 10    
    result = m3.read_bulk(0x7200000, cnt)
    print(result)
    for index in range(cnt):
        print(hex(result[index]))

    print("send data:")
    send = []
    for index in range(cnt):
        send.append(result[index]+1)
        print(hex(send[index]))
        
    res=m3.write_bulk(0x7200000, send)
    print(res)
        
    del m3
    
    ut.udp_close()
    print('main end')

if __name__ == '__main__':
    main()
