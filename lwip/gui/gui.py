import sys
from PyQt5 import QtCore, QtGui, QtWidgets, uic
from PyQt5.QtCore import *
from PyQt5.QtGui import *
from PyQt5.QtWidgets import *
import math
import struct
import socket
import random
# from ui_gui import Ui_Form
import udp_logic
import memory_ops
import gpio_ops
import csv
import check_ip_addr
import check_ping
import xgpio_ops
import xaxis_switch_ops
import var_msg_ops


GPIO_OFFSET = 78
PA_EN1 = GPIO_OFFSET + 91
PA_EN2 = GPIO_OFFSET + 90
C0_1 = GPIO_OFFSET + 89
C0_2 = GPIO_OFFSET + 88
C1_1 = GPIO_OFFSET + 87
C1_2 = GPIO_OFFSET + 86
RST_SI_1 = GPIO_OFFSET + 85
RST_SI_2 = GPIO_OFFSET + 84
SI_1_PASSBY = GPIO_OFFSET + 83
SI_2_PASSBY = GPIO_OFFSET + 82


STANDBY = 0
TRANSMIT = 1
LNA_ON = 2
BYPASS =3

MODEM_BASE = 0x98000000

HARD_VER_ADDR = 0x80016000
SOFT_VER_IDX = 1

def hex_to_signed(source):
    """Convert a string hex value to a signed hexidecimal value.

    This assumes that source is the proper length, and the sign bit
    is the first bit in the first byte of the correct length.

    hex_to_signed("F") should return -1.
    hex_to_signed("0F") should return 15.
    """
    if not isinstance(source, str):
        raise ValueError("string type required")
    if 0 == len(source):
        raise valueError("string is empty")
    sign_bit_mask = 1 << (len(source)*4-1)
    other_bits_mask = sign_bit_mask - 1
    value = int(source, 16)
    return -(value & sign_bit_mask) | (value & other_bits_mask)

class MyDialog(QtWidgets.QMainWindow):
    def __init__(self,parent=None):
        super(MyDialog, self).__init__()
        # self.setupUi()
        uic.loadUi('gui.ui', self)
        self.setupUi()
        self.show() # Show the GUI
    #初始化窗口
    def setupUi(self):
        self.connection_status = False
        # ll_mmemory_access
        self.hex_ep2=QRegExp("^[0-9A-Fa-f]{1,2}$")
        self.onlyHex2 = QRegExpValidator(self.hex_ep2)
        self.hex_ep4=QRegExp("^[0-9A-Fa-f]{1,4}$")
        self.onlyHex4 = QRegExpValidator(self.hex_ep4)
        self.hex_ep8=QRegExp("^[0-9A-Fa-f]{1,8}$")
        self.onlyHex8 = QRegExpValidator(self.hex_ep8)
        self.hex_ep12=QRegExp("^[0-9A-Fa-f]{1,12}$")
        self.onlyHex12 = QRegExpValidator(self.hex_ep12)
        
        self.ll_mm_addr_lineEdit.setValidator(self.onlyHex8)
        self.ll_mm_value_lineEdit.setValidator(self.onlyHex8)

        # ll_gpio_access
        self.ll_gpio_dir_combobox.addItem('IN')
        self.ll_gpio_dir_combobox.addItem('OUT')
        self.ll_gpio_dir= self.ll_gpio_dir_combobox.currentIndex()
        
        for index in range(174):
            self.ll_gpio_globalno_combobox.addItem('%d' % index)
        self.ll_gpio_globalno_combobox.setCurrentIndex(0+78)
        self.ll_gpio_globalno = self.ll_gpio_globalno_combobox.currentIndex()
        
        self.gpio_ep=QRegExp("^[0-1]{1,1}$")
        self.onlyOnOff = QRegExpValidator(self.gpio_ep)
        self.ll_gpio_lineEdit.setValidator(self.onlyOnOff)
        
        self.ll_gpio_input_value=0

        # connection
        self.ipaddr = "192.168.1.10"
        self.ipaddr_lineEdit.setText(self.ipaddr)
        self.ipaddr_disconnect_btn.setDisabled(True)

        self.timer = QTimer(self)

        self.ipaddr_connect_btn.clicked.connect(self.ipaddr_connect_btn_handler)
        self.ipaddr_disconnect_btn.clicked.connect(self.ipaddr_disconnect_btn_handler)

    def ll_gpio_lineEdit_handler(self):
        self.ll_gpio_input_value=int(self.ll_gpio_lineEdit.text())

    def ll_gpio_read_btn_handler(self):
        if self.ll_gpio_dir == 0:
            self.g1.gpio_direction_input(self.ll_gpio_globalno)
            result = self.g1.gpio_read_input(self.ll_gpio_globalno)
        else:
            result = self.g1.gpio_get_output_status(self.ll_gpio_globalno)
        
        disp ='%d'% (result)
        self.ll_gpio_lineEdit.setText(disp)

    def ll_gpio_write_btn_handler(self):
        if self.ll_gpio_dir == 0:
            self.g1.gpio_direction_input(self.ll_gpio_globalno)
            self.input_value=1
        else:
            self.g1.gpio_direction_output(self.ll_gpio_globalno, self.ll_gpio_input_value)

    def ll_gpio_dir_combobox_handler(self, index):
        self.ll_gpio_dir = index
    
    def ll_gpio_globalno_combobox_handler(self, index):
        self.ll_gpio_globalno = index

    def mm_readOnCmd(self):
        #print("opps!")
        
        if self.ll_mm_addr_lineEdit.text() == "" :
            QMessageBox.information(self,"Error!", "address Unacceptable!")  
            return
            
        addr =  str(self.ll_mm_addr_lineEdit.text()).upper()
        print('0x%08x'%int(addr, 16))
        
        status=self.m1.read_reg(int(addr,16))
        if status[0]:
            print("ok, 0x%x"%status[1])
        else:
            print("ng")
            QMessageBox.information(self,"Error!", "read failed! 请检查网络或端口号") 
            return
        
        self.ll_mm_value_lineEdit.setText(("%08x"%status[1]).upper())

    def mm_writeOnCmd(self):
        
        if self.ll_mm_addr_lineEdit.text() == "" :
            QMessageBox.information(self,"Error!", "address Unacceptable!")  
            return
            
        if self.ll_mm_value_lineEdit.text() == "" :
            QMessageBox.information(self,"Error!", "value Unacceptable!")  
            return
        
        addr = str(self.ll_mm_addr_lineEdit.text()).upper()
        value = str(self.ll_mm_value_lineEdit.text()).upper()
        
        status=self.m1.write_reg(int(addr,16), int(value,16))
        if status[0]:
            print("write ok")
        else:
            print("write ng")
            QMessageBox.information(self,"Error!", "write failed! 请检查网络或端口号")  
            return

    def ConnectSignalSlot(self):
        # ll_mmemory_access
        self.ll_mm_read_btn.clicked.connect(self.mm_readOnCmd)
        self.ll_mm_write_btn.clicked.connect(self.mm_writeOnCmd)
        
        # ll_gpio_access
        self.ll_gpio_read_btn.clicked.connect(self.ll_gpio_read_btn_handler)
        self.ll_gpio_write_btn.clicked.connect(self.ll_gpio_write_btn_handler)
        self.ll_gpio_dir_combobox.currentIndexChanged.connect(self.ll_gpio_dir_combobox_handler)
        self.ll_gpio_globalno_combobox.currentIndexChanged.connect(self.ll_gpio_globalno_combobox_handler)
        self.ll_gpio_lineEdit.editingFinished.connect(self.ll_gpio_lineEdit_handler)
        
        # # ll_spi_access
        # self.connect(self.ll_spi_send_lineEdit, SIGNAL('editingFinished()'), self.ll_spi_check_spi_send)
        # self.connect(self.ll_spi_send_btn, SIGNAL('clicked()'), self.ll_spi_send_btn_handler)
        # self.connect(self.ll_spi_ch_combobox, SIGNAL('currentIndexChanged(int)'), self.ll_spi_ch_combobox_handler)
        # self.connect(self.ll_spi_cs_combobox, SIGNAL('currentIndexChanged(int)'), self.ll_spi_cs_combobox_handler)
        
        # # ll_iic_access
        # self.connect(self.ll_iic_addr_lineEdit, SIGNAL('editingFinished()'), self.ll_iic_check_addr)
        # self.connect(self.ll_iic_send_lineEdit, SIGNAL('editingFinished()'), self.ll_iic_check_send)
        # self.connect(self.ll_iic_ch_combobox, SIGNAL('currentIndexChanged(int)'), self.ll_iic_ch_combobox_handler)
        # self.connect(self._filter, SIGNAL('focusOut()'), self.ll_iic_check_addr)
        # self.connect(self.ll_iic_write_btn, SIGNAL('clicked()'), self.ll_iic_write_btn_handler)
        # self.connect(self.ll_iic_read_btn, SIGNAL('clicked()'), self.ll_iic_read_btn_handler)
        
        
        
        # timer
        self.timer.timeout.connect(self.check_connection_alive)
        
        pass
    def ipaddr_connect_btn_handler(self):
        status = check_ip_addr.is_valid_ipv4_address(self.ipaddr_lineEdit.text())
        if status is False:
            QMessageBox.information(self,"Error!", "ip address errrrror!") 
        else:
            self.ipaddr = self.ipaddr_lineEdit.text()
            try:
                self.check_connection(self.ipaddr)
                #self.timer.start(1000)
                try:
                    self.ut = udp_logic.udp_logic(server_host=self.ipaddr)
                    #self.ut = udp_logic.udp_logic(server_host='192.168.1.10')
                    self.m1=memory_ops.memory_ops(self.ut)
                    self.g1 = gpio_ops.gpio_ops(self.ut)
                    self.xg1 = xgpio_ops.xgpio_ops(self.ut)
                    self.xsw1 = xaxis_switch_ops.xaxis_switch_ops(self.ut)
                    self.vm1 = var_msg_ops.var_msg_ops(self.ut)
                    self.connection_status = True
                    self.ipaddr_disconnect_btn.setDisabled(False)
                    self.ipaddr_connect_btn.setDisabled(True)
                except Exception as ret:
                    print(ret)
                    QMessageBox.information(self,"Error!", "connection failed!")
                    self.ut.udp_close()
                    del self.ut
                
            except Exception as ret:
                QMessageBox.information(self,"Error!", "target address not alive!") 

            if(self.connection_status == True):
                # if(self.i1.iic_query(self.ll_iic_ch) != 0x00):
                #     self.ll_iic_status_label.setText('Busy')
                # else:
                #     self.ll_iic_status_label.setText('Ready')

                status=self.m1.read_reg(HARD_VER_ADDR)
                if status[0]:
                    print("ok, 0x%x"%status[1])
                    self.hardware_ver_label.setText("0x"+("%08x"%status[1]).upper())
                else:
                    QMessageBox.information(self,"Error!", "communication status err") 
                    print("ng")
                
                status=self.vm1.read_var(SOFT_VER_IDX)
                if status[0]:
                    print("ok, 0x%x"%status[1])
                    self.firmware_ver_label.setText("0x"+("%08x"%status[1]).upper())
                else:
                    QMessageBox.information(self,"Error!", "communication status err") 
                    print("ng")

                self.ConnectSignalSlot()
            pass
        pass

    def clear_display(self):
        self.textEdit_upgradeFile.setText("")
        self.ll_mm_addr_lineEdit.setText("")
        self.ll_mm_value_lineEdit.setText("")
        self.ll_spi_send_lineEdit.setText("")
        self.ll_spi_recv_lineEdit.setText("")
        self.ll_iic_addr_lineEdit.setText("")
        self.ll_iic_send_lineEdit.setText("")
        self.ll_iic_recv_lineEdit.setText("")
        self.ll_gpio_lineEdit.setText("")
        
        # self.ipaddr_lineEdit_2.setText("")
        # self.ipaddr_lineEdit_3.setText("")
        # self.ipaddr_lineEdit_4.setText("")
        # self.ipaddr_lineEdit_5.setText("")
       
              
        self.ll_spi_ch_combobox.setCurrentIndex(0)
        self.ll_spi_cs_combobox.setCurrentIndex(0)
        self.ll_iic_ch_combobox.setCurrentIndex(0)
        self.ll_gpio_globalno_combobox.setCurrentIndex(0+78)
        self.ll_gpio_dir_combobox.setCurrentIndex(0)

        self.hardware_ver_label.setText("?")
        self.firmware_ver_label.setText("?")

    def DisconnectSignalSlot(self):      
        pass

    def ipaddr_disconnect_btn_handler(self):
        self.DisconnectSignalSlot()
        self.ipaddr_disconnect_btn.setDisabled(True)
        self.ipaddr_connect_btn.setDisabled(False)
        self.connection_status = False
        self.ll_iic_status_label.setText('?')
       
        '''
        self.native_loopback_on_radioButton.setChecked(False)
        self.modem_connect_radioButton.setChecked(False)
        self.native_test_pattern_radioButton.setChecked(False)
        self.stream_loopback_on_radioButton.setChecked(False)
        '''
                
        self.q_selecta= STANDBY
        self.q_selectb= STANDBY
        
        del self.m1
        del self.g1
        del self.xg1
        del self.xsw1
        
        self.ut.udp_close()
        del self.ut
        
        self.clear_display()

    def check_connection(self, ip_addr):
        status = check_ping.check_ping(ip_addr)
        if(status is True):
            print("1")
        else:
            print("2")
    
    def check_connection_alive(self):
        self.check_connection(self.ipaddr)

def main():
    app = QtWidgets.QApplication(sys.argv)
    form = MyDialog()
    sys.exit(app.exec_())

if __name__ == '__main__':
    main()
