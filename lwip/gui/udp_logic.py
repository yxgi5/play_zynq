#!/usr/bin/env python3
# -*- coding: utf-8 -*-

from socket import *
from threading import *

import time
import struct

import stopThreading

BUFSIZ = 1024

class Singleton(object):
    def __init__(self, cls):
        self._cls = cls
        self._instance = {}
    def __call__(self):
        if self._cls not in self._instance:
            self._instance[self._cls] = self._cls()
        return self._instance[self._cls]

#@Singleton
class udp_logic():
    
    def __init__(self, server_host='192.168.1.10', server_port=5555, client_host='192.168.1.100', client_port=5556):
        self.server_host = server_host
        self.server_port = server_port
        self.client_host = client_host
        self.client_port = client_port
        
        self.target_addr = ("%s"%(self.server_host),  self.server_port)
        self.self_addr = ("%s"%(self.client_host),  self.client_port)
        
        self.sever_th = None
        self.link=False
        
        self.recieved_even = Event()
        self.recieved_even.clear()    # 设置为False
        self.stop_running = Event() 
        self.stop_running.clear()      # 将running设置为False
        
        try:
            self.udp_logic_start()
        except Exception as ret:
            raise Exception(ret)
        
    def udp_logic_start(self):
        """
        开启UDP服务端方法
        :return:
        """
        '''
        port_number = [30338, 30339, 30340, 30341, 30342, 30343]
        for index in port_number:
            sock_test = socket(AF_INET, SOCK_DGRAM)
            result = sock_test.connect_ex(('0.0.0.0', index))
            if result == 0:
                print("Port %d is open" % index)
            else:
                print("Port %d is not open" % index)
                use_port = index
                break;
            sock_test.close()
        '''
        self.udpPCSock = socket(AF_INET, SOCK_DGRAM)
        #try:
         #self.udpPCSock.bind((self.client_host,  self.client_host))

        try:
            self.udpPCSock.bind(('0.0.0.0', self.client_port))
            # self.udpPCSock.bind(('0.0.0.0', 30338))
            #self.udpPCSock.bind(self.self_addr)
            self.link=True
        except Exception as ret:
            self.link=False
            print('请检查网络或端口号\n')
            raise Exception(ret)
        else:
            self.sever_th = Thread(target=self.udp_logic_concurrency)
            self.sever_th.start()
            
    def udp_logic_concurrency(self):
        """
        用于创建一个线程持续监听UDP通信
        :return:
        """
        """
        #test thread
        while True:
            time.sleep(1)
            print("xxx")  
        """
        
        while not self.stop_running.is_set():
            #print ('waiting for message...')
            try:
                self.recv_msg, self.recv_addr = self.udpPCSock.recvfrom(BUFSIZ)
            except Exception as ret:
                pass
            if self.recv_msg == "off".encode() :
                self.udpPCSock.close()
                self.stop_running.set()
            else:
                self.recieved_even.set()

        self.stop_running.set()
        self.udpPCSock.close()
        
    def udp_send(self, send_msg):
        """
        功能函数，用于UDP客户端发送消息
        :return: None
        """
        if self.link is False:
            try:
                self.udp_logic_start()
            except Exception as ret:
                raise Exception(ret)
        else:
            try:
                self.udpPCSock.sendto(send_msg, self.target_addr)
            except Exception as ret:
                print('发送失败\n')
                raise Exception(ret)

    def udp_close(self):
        """
        功能函数，关闭网络连接的方法
        :return:
        """
        try:
            self.udpPCSock.shutdown(SHUT_RD)
        except OSError as ret:
            pass
        
        try:
            
            self.udpPCSock.close()
            stopThreading.stop_thread(self.sever_th)
            #self.udpPCSock.sendto("off".encode(), self.self_addr)
        except Exception as ret:
            print(ret)
            print('关闭网络连接失败\n')
            pass    
        
