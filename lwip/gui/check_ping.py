#!/usr/bin/env python3
# -*- coding: utf-8 -*-
import os
import socket

def check_ping(host_ip='192.168.1.10'):
    # hostname = "google.com"
    errorStr = 'Unreachable'
    p = os.popen("ping -c 2 -r " + host_ip)
    line = p.read()
    if errorStr in line:
        status = False
    else:
        status = True
      
    return status
