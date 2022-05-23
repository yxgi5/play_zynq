import sys
from PyQt5 import QtCore, QtGui, QtWidgets, uic
# from ui_gui import Ui_Form
import udp_logic
import memory_ops
import gpio_ops
import csv
import check_ip_addr
import check_ping
import xgpio_ops
import xaxis_switch_ops
import math
import struct
import socket
import random

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
        self.show() # Show the GUI
    #初始化窗口
    def setupUi(self, Form):
        pass

def main():
    app = QtWidgets.QApplication(sys.argv)
    form = MyDialog()
    sys.exit(app.exec_())

if __name__ == '__main__':
    main()
