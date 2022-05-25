#!/usr/bin/env python3
# -*- coding: utf-8 -*-
import sys
import time
import struct
import udp_logic
import var_msg_ops

def main():
    ut = udp_logic.udp_logic()
    time.sleep(0.1)
    vm1 = var_msg_ops.var_msg_ops(ut)
    
    result = vm1.read_var(1)
    print(result)

    print("0x%08x" % result[1])
    
    del vm1
    ut.udp_close()
    print('main end')

if __name__ == '__main__':
    main()
