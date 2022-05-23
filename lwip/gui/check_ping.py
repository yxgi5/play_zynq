#!/usr/bin/env python3
# -*- coding: utf-8 -*-
import os
import socket

def check_ping(host_ip='192.168.1.10'):
    # hostname = "google.com"
    try:
        response = os.system("ping -c 1 " + host_ip)
        status = True
    except Exception as ret:
        #print(ret)
        status = False
    
    '''
    # and then check the response...
    if response == 0:
        status = True
    else:
        status = False
    '''
    
    '''
    try:
        socket.gethostbyaddr(host_ip)
        status = True
    except socket.herror:
        status = False
    '''
    
    return status
