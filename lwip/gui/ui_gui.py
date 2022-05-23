# -*- coding: utf-8 -*-

# Form implementation generated from reading ui file 'gui.ui'
#
# Created by: PyQt5 UI code generator 5.15.4
#
# WARNING: Any manual changes made to this file will be lost when pyuic5 is
# run again.  Do not edit this file unless you know what you are doing.


from PyQt5 import QtCore, QtGui, QtWidgets


class Ui_Form(object):
    def setupUi(self, Form):
        Form.setObjectName("Form")
        Form.resize(1482, 917)
        Form.setMinimumSize(QtCore.QSize(0, 0))
        Form.setMaximumSize(QtCore.QSize(16777215, 16777215))
        self.tabWidget = QtWidgets.QTabWidget(Form)
        self.tabWidget.setGeometry(QtCore.QRect(0, 60, 1401, 819))
        self.tabWidget.setObjectName("tabWidget")
        self.tab_7 = QtWidgets.QWidget()
        self.tab_7.setObjectName("tab_7")
        self.groupBox = QtWidgets.QGroupBox(self.tab_7)
        self.groupBox.setGeometry(QtCore.QRect(20, 40, 201, 171))
        self.groupBox.setObjectName("groupBox")
        self.ll_mm_value_lineEdit = QtWidgets.QLineEdit(self.groupBox)
        self.ll_mm_value_lineEdit.setGeometry(QtCore.QRect(70, 70, 111, 23))
        self.ll_mm_value_lineEdit.setObjectName("ll_mm_value_lineEdit")
        self.ll_mm_read_btn = QtWidgets.QPushButton(self.groupBox)
        self.ll_mm_read_btn.setGeometry(QtCore.QRect(20, 100, 161, 27))
        self.ll_mm_read_btn.setObjectName("ll_mm_read_btn")
        self.label_addr = QtWidgets.QLabel(self.groupBox)
        self.label_addr.setGeometry(QtCore.QRect(20, 40, 41, 16))
        self.label_addr.setObjectName("label_addr")
        self.ll_mm_write_btn = QtWidgets.QPushButton(self.groupBox)
        self.ll_mm_write_btn.setGeometry(QtCore.QRect(20, 130, 161, 27))
        self.ll_mm_write_btn.setObjectName("ll_mm_write_btn")
        self.label_value = QtWidgets.QLabel(self.groupBox)
        self.label_value.setGeometry(QtCore.QRect(20, 70, 41, 16))
        self.label_value.setObjectName("label_value")
        self.ll_mm_addr_lineEdit = QtWidgets.QLineEdit(self.groupBox)
        self.ll_mm_addr_lineEdit.setGeometry(QtCore.QRect(70, 40, 111, 23))
        self.ll_mm_addr_lineEdit.setObjectName("ll_mm_addr_lineEdit")
        self.groupBox_3 = QtWidgets.QGroupBox(self.tab_7)
        self.groupBox_3.setGeometry(QtCore.QRect(260, 40, 221, 221))
        self.groupBox_3.setObjectName("groupBox_3")
        self.ll_spi_recv_lineEdit = QtWidgets.QLineEdit(self.groupBox_3)
        self.ll_spi_recv_lineEdit.setGeometry(QtCore.QRect(90, 140, 111, 23))
        self.ll_spi_recv_lineEdit.setObjectName("ll_spi_recv_lineEdit")
        self.ll_spi_send_btn = QtWidgets.QPushButton(self.groupBox_3)
        self.ll_spi_send_btn.setGeometry(QtCore.QRect(30, 170, 171, 27))
        self.ll_spi_send_btn.setObjectName("ll_spi_send_btn")
        self.label_addr_2 = QtWidgets.QLabel(self.groupBox_3)
        self.label_addr_2.setGeometry(QtCore.QRect(30, 110, 41, 16))
        self.label_addr_2.setObjectName("label_addr_2")
        self.label_value_2 = QtWidgets.QLabel(self.groupBox_3)
        self.label_value_2.setGeometry(QtCore.QRect(30, 140, 51, 16))
        self.label_value_2.setObjectName("label_value_2")
        self.ll_spi_send_lineEdit = QtWidgets.QLineEdit(self.groupBox_3)
        self.ll_spi_send_lineEdit.setGeometry(QtCore.QRect(90, 110, 111, 23))
        self.ll_spi_send_lineEdit.setObjectName("ll_spi_send_lineEdit")
        self.ll_spi_ch_combobox = QtWidgets.QComboBox(self.groupBox_3)
        self.ll_spi_ch_combobox.setGeometry(QtCore.QRect(90, 30, 111, 27))
        self.ll_spi_ch_combobox.setCurrentText("")
        self.ll_spi_ch_combobox.setObjectName("ll_spi_ch_combobox")
        self.ll_spi_cs_combobox = QtWidgets.QComboBox(self.groupBox_3)
        self.ll_spi_cs_combobox.setGeometry(QtCore.QRect(90, 70, 111, 27))
        self.ll_spi_cs_combobox.setCurrentText("")
        self.ll_spi_cs_combobox.setObjectName("ll_spi_cs_combobox")
        self.label_addr_4 = QtWidgets.QLabel(self.groupBox_3)
        self.label_addr_4.setGeometry(QtCore.QRect(30, 70, 41, 31))
        self.label_addr_4.setObjectName("label_addr_4")
        self.label_addr_5 = QtWidgets.QLabel(self.groupBox_3)
        self.label_addr_5.setGeometry(QtCore.QRect(30, 30, 41, 31))
        self.label_addr_5.setObjectName("label_addr_5")
        self.groupBox_4 = QtWidgets.QGroupBox(self.tab_7)
        self.groupBox_4.setGeometry(QtCore.QRect(520, 40, 221, 301))
        self.groupBox_4.setObjectName("groupBox_4")
        self.ll_iic_recv_lineEdit = QtWidgets.QLineEdit(self.groupBox_4)
        self.ll_iic_recv_lineEdit.setGeometry(QtCore.QRect(90, 150, 111, 23))
        self.ll_iic_recv_lineEdit.setObjectName("ll_iic_recv_lineEdit")
        self.ll_iic_read_btn = QtWidgets.QPushButton(self.groupBox_4)
        self.ll_iic_read_btn.setGeometry(QtCore.QRect(30, 220, 171, 27))
        self.ll_iic_read_btn.setObjectName("ll_iic_read_btn")
        self.label_addr_3 = QtWidgets.QLabel(self.groupBox_4)
        self.label_addr_3.setGeometry(QtCore.QRect(30, 70, 41, 21))
        self.label_addr_3.setObjectName("label_addr_3")
        self.label_value_3 = QtWidgets.QLabel(self.groupBox_4)
        self.label_value_3.setGeometry(QtCore.QRect(30, 150, 51, 21))
        self.label_value_3.setObjectName("label_value_3")
        self.ll_iic_addr_lineEdit = QtWidgets.QLineEdit(self.groupBox_4)
        self.ll_iic_addr_lineEdit.setGeometry(QtCore.QRect(90, 70, 111, 23))
        self.ll_iic_addr_lineEdit.setObjectName("ll_iic_addr_lineEdit")
        self.ll_iic_ch_combobox = QtWidgets.QComboBox(self.groupBox_4)
        self.ll_iic_ch_combobox.setGeometry(QtCore.QRect(90, 30, 111, 27))
        self.ll_iic_ch_combobox.setCurrentText("")
        self.ll_iic_ch_combobox.setObjectName("ll_iic_ch_combobox")
        self.label_addr_6 = QtWidgets.QLabel(self.groupBox_4)
        self.label_addr_6.setGeometry(QtCore.QRect(30, 30, 41, 31))
        self.label_addr_6.setObjectName("label_addr_6")
        self.label_addr_7 = QtWidgets.QLabel(self.groupBox_4)
        self.label_addr_7.setGeometry(QtCore.QRect(30, 105, 41, 31))
        self.label_addr_7.setObjectName("label_addr_7")
        self.ll_iic_send_lineEdit = QtWidgets.QLineEdit(self.groupBox_4)
        self.ll_iic_send_lineEdit.setGeometry(QtCore.QRect(90, 110, 111, 23))
        self.ll_iic_send_lineEdit.setObjectName("ll_iic_send_lineEdit")
        self.label_30 = QtWidgets.QLabel(self.groupBox_4)
        self.label_30.setGeometry(QtCore.QRect(30, 190, 41, 16))
        self.label_30.setObjectName("label_30")
        self.ll_iic_status_label = QtWidgets.QLabel(self.groupBox_4)
        self.ll_iic_status_label.setGeometry(QtCore.QRect(90, 190, 41, 16))
        self.ll_iic_status_label.setObjectName("ll_iic_status_label")
        self.ll_iic_write_btn = QtWidgets.QPushButton(self.groupBox_4)
        self.ll_iic_write_btn.setGeometry(QtCore.QRect(30, 260, 171, 27))
        self.ll_iic_write_btn.setObjectName("ll_iic_write_btn")
        self.groupBox_6 = QtWidgets.QGroupBox(self.tab_7)
        self.groupBox_6.setGeometry(QtCore.QRect(770, 40, 201, 241))
        self.groupBox_6.setObjectName("groupBox_6")
        self.ll_gpio_read_btn = QtWidgets.QPushButton(self.groupBox_6)
        self.ll_gpio_read_btn.setGeometry(QtCore.QRect(20, 160, 161, 27))
        self.ll_gpio_read_btn.setObjectName("ll_gpio_read_btn")
        self.label_addr_8 = QtWidgets.QLabel(self.groupBox_6)
        self.label_addr_8.setGeometry(QtCore.QRect(20, 50, 41, 31))
        self.label_addr_8.setObjectName("label_addr_8")
        self.ll_gpio_write_btn = QtWidgets.QPushButton(self.groupBox_6)
        self.ll_gpio_write_btn.setGeometry(QtCore.QRect(20, 200, 161, 27))
        self.ll_gpio_write_btn.setObjectName("ll_gpio_write_btn")
        self.label_value_4 = QtWidgets.QLabel(self.groupBox_6)
        self.label_value_4.setGeometry(QtCore.QRect(20, 80, 41, 31))
        self.label_value_4.setObjectName("label_value_4")
        self.ll_gpio_dir_combobox = QtWidgets.QComboBox(self.groupBox_6)
        self.ll_gpio_dir_combobox.setGeometry(QtCore.QRect(70, 80, 111, 27))
        self.ll_gpio_dir_combobox.setCurrentText("")
        self.ll_gpio_dir_combobox.setObjectName("ll_gpio_dir_combobox")
        self.label_32 = QtWidgets.QLabel(self.groupBox_6)
        self.label_32.setGeometry(QtCore.QRect(20, 120, 41, 16))
        self.label_32.setObjectName("label_32")
        self.ll_gpio_globalno_combobox = QtWidgets.QComboBox(self.groupBox_6)
        self.ll_gpio_globalno_combobox.setGeometry(QtCore.QRect(70, 50, 111, 27))
        self.ll_gpio_globalno_combobox.setCurrentText("")
        self.ll_gpio_globalno_combobox.setObjectName("ll_gpio_globalno_combobox")
        self.ll_gpio_lineEdit = QtWidgets.QLineEdit(self.groupBox_6)
        self.ll_gpio_lineEdit.setGeometry(QtCore.QRect(70, 120, 111, 23))
        self.ll_gpio_lineEdit.setObjectName("ll_gpio_lineEdit")
        self.label_57 = QtWidgets.QLabel(self.groupBox_6)
        self.label_57.setGeometry(QtCore.QRect(10, 30, 201, 16))
        self.label_57.setObjectName("label_57")
        self.label_31 = QtWidgets.QLabel(self.tab_7)
        self.label_31.setGeometry(QtCore.QRect(260, 260, 131, 16))
        self.label_31.setObjectName("label_31")
        self.label_33 = QtWidgets.QLabel(self.tab_7)
        self.label_33.setGeometry(QtCore.QRect(260, 280, 221, 16))
        self.label_33.setObjectName("label_33")
        self.label_34 = QtWidgets.QLabel(self.tab_7)
        self.label_34.setGeometry(QtCore.QRect(520, 350, 251, 16))
        self.label_34.setObjectName("label_34")
        self.tabWidget.addTab(self.tab_7, "")
        self.tab_6 = QtWidgets.QWidget()
        self.tab_6.setObjectName("tab_6")
        self.groupBox_21 = QtWidgets.QGroupBox(self.tab_6)
        self.groupBox_21.setGeometry(QtCore.QRect(20, 40, 451, 261))
        self.groupBox_21.setObjectName("groupBox_21")
        self.hardware_ver_label = QtWidgets.QLabel(self.groupBox_21)
        self.hardware_ver_label.setGeometry(QtCore.QRect(260, 30, 131, 21))
        self.hardware_ver_label.setObjectName("hardware_ver_label")
        self.firmware_ver_label = QtWidgets.QLabel(self.groupBox_21)
        self.firmware_ver_label.setGeometry(QtCore.QRect(260, 70, 151, 21))
        self.firmware_ver_label.setObjectName("firmware_ver_label")
        self.modem_ver_label = QtWidgets.QLabel(self.groupBox_21)
        self.modem_ver_label.setGeometry(QtCore.QRect(260, 120, 161, 21))
        self.modem_ver_label.setObjectName("modem_ver_label")
        self.software_ver_label = QtWidgets.QLabel(self.groupBox_21)
        self.software_ver_label.setGeometry(QtCore.QRect(260, 170, 131, 21))
        self.software_ver_label.setObjectName("software_ver_label")
        self.label_35 = QtWidgets.QLabel(self.groupBox_21)
        self.label_35.setGeometry(QtCore.QRect(10, 30, 131, 21))
        self.label_35.setObjectName("label_35")
        self.label_38 = QtWidgets.QLabel(self.groupBox_21)
        self.label_38.setGeometry(QtCore.QRect(10, 70, 131, 21))
        self.label_38.setObjectName("label_38")
        self.label_43 = QtWidgets.QLabel(self.groupBox_21)
        self.label_43.setGeometry(QtCore.QRect(10, 120, 131, 21))
        self.label_43.setObjectName("label_43")
        self.label_36 = QtWidgets.QLabel(self.groupBox_21)
        self.label_36.setGeometry(QtCore.QRect(10, 170, 131, 21))
        self.label_36.setObjectName("label_36")
        self.label_82 = QtWidgets.QLabel(self.groupBox_21)
        self.label_82.setGeometry(QtCore.QRect(10, 210, 131, 21))
        self.label_82.setObjectName("label_82")
        self.boot_region_label = QtWidgets.QLabel(self.groupBox_21)
        self.boot_region_label.setGeometry(QtCore.QRect(260, 210, 141, 21))
        self.boot_region_label.setObjectName("boot_region_label")
        self.groupBox_22 = QtWidgets.QGroupBox(self.tab_6)
        self.groupBox_22.setGeometry(QtCore.QRect(10, 340, 1071, 291))
        self.groupBox_22.setObjectName("groupBox_22")
        self.label_44 = QtWidgets.QLabel(self.groupBox_22)
        self.label_44.setGeometry(QtCore.QRect(20, 20, 111, 21))
        self.label_44.setObjectName("label_44")
        self.upgrade_file_button = QtWidgets.QPushButton(self.groupBox_22)
        self.upgrade_file_button.setGeometry(QtCore.QRect(690, 20, 111, 31))
        self.upgrade_file_button.setObjectName("upgrade_file_button")
        self.upgrade_button = QtWidgets.QPushButton(self.groupBox_22)
        self.upgrade_button.setGeometry(QtCore.QRect(830, 20, 121, 31))
        self.upgrade_button.setObjectName("upgrade_button")
        self.textEdit_upgradeFile_out_put = QtWidgets.QTextEdit(self.groupBox_22)
        self.textEdit_upgradeFile_out_put.setGeometry(QtCore.QRect(10, 60, 791, 201))
        self.textEdit_upgradeFile_out_put.setObjectName("textEdit_upgradeFile_out_put")
        self.textEdit_upgradeFile = QtWidgets.QLineEdit(self.groupBox_22)
        self.textEdit_upgradeFile.setGeometry(QtCore.QRect(140, 20, 511, 31))
        self.textEdit_upgradeFile.setObjectName("textEdit_upgradeFile")
        self.upgrade_button_fpga = QtWidgets.QPushButton(self.groupBox_22)
        self.upgrade_button_fpga.setGeometry(QtCore.QRect(830, 100, 121, 31))
        self.upgrade_button_fpga.setObjectName("upgrade_button_fpga")
        self.upgrade_button_sw = QtWidgets.QPushButton(self.groupBox_22)
        self.upgrade_button_sw.setGeometry(QtCore.QRect(830, 140, 121, 31))
        self.upgrade_button_sw.setObjectName("upgrade_button_sw")
        self.upgrade_file_extract_btn = QtWidgets.QPushButton(self.groupBox_22)
        self.upgrade_file_extract_btn.setGeometry(QtCore.QRect(830, 60, 121, 31))
        self.upgrade_file_extract_btn.setObjectName("upgrade_file_extract_btn")
        self.tabWidget.addTab(self.tab_6, "")
        self.label_37 = QtWidgets.QLabel(Form)
        self.label_37.setGeometry(QtCore.QRect(10, 30, 71, 21))
        self.label_37.setObjectName("label_37")
        self.ipaddr_lineEdit = QtWidgets.QLineEdit(Form)
        self.ipaddr_lineEdit.setGeometry(QtCore.QRect(100, 30, 181, 21))
        self.ipaddr_lineEdit.setObjectName("ipaddr_lineEdit")
        self.ipaddr_connect_btn = QtWidgets.QPushButton(Form)
        self.ipaddr_connect_btn.setGeometry(QtCore.QRect(300, 20, 101, 41))
        self.ipaddr_connect_btn.setObjectName("ipaddr_connect_btn")
        self.ipaddr_disconnect_btn = QtWidgets.QPushButton(Form)
        self.ipaddr_disconnect_btn.setGeometry(QtCore.QRect(440, 20, 131, 41))
        self.ipaddr_disconnect_btn.setObjectName("ipaddr_disconnect_btn")

        self.retranslateUi(Form)
        self.tabWidget.setCurrentIndex(1)
        self.ll_spi_ch_combobox.setCurrentIndex(-1)
        self.ll_spi_cs_combobox.setCurrentIndex(-1)
        self.ll_iic_ch_combobox.setCurrentIndex(-1)
        self.ll_gpio_dir_combobox.setCurrentIndex(-1)
        self.ll_gpio_globalno_combobox.setCurrentIndex(-1)
        QtCore.QMetaObject.connectSlotsByName(Form)

    def retranslateUi(self, Form):
        _translate = QtCore.QCoreApplication.translate
        Form.setWindowTitle(_translate("Form", "Form"))
        self.groupBox.setTitle(_translate("Form", "Memory Access"))
        self.ll_mm_read_btn.setText(_translate("Form", "Read"))
        self.label_addr.setText(_translate("Form", "ADDR"))
        self.ll_mm_write_btn.setText(_translate("Form", "Write"))
        self.label_value.setText(_translate("Form", "VALUE"))
        self.groupBox_3.setTitle(_translate("Form", "SPI Access"))
        self.ll_spi_send_btn.setText(_translate("Form", "Send"))
        self.label_addr_2.setText(_translate("Form", "Send"))
        self.label_value_2.setText(_translate("Form", "Recieve"))
        self.label_addr_4.setText(_translate("Form", "CS"))
        self.label_addr_5.setText(_translate("Form", "CH"))
        self.groupBox_4.setTitle(_translate("Form", "IIC Access"))
        self.ll_iic_read_btn.setText(_translate("Form", "Read"))
        self.label_addr_3.setText(_translate("Form", "ADDR"))
        self.label_value_3.setText(_translate("Form", "Recieve"))
        self.label_addr_6.setText(_translate("Form", "CH"))
        self.label_addr_7.setText(_translate("Form", "Send"))
        self.label_30.setText(_translate("Form", "Status"))
        self.ll_iic_status_label.setText(_translate("Form", "Busy"))
        self.ll_iic_write_btn.setText(_translate("Form", "Write"))
        self.groupBox_6.setTitle(_translate("Form", "GPIO"))
        self.ll_gpio_read_btn.setText(_translate("Form", "Read"))
        self.label_addr_8.setText(_translate("Form", "PIN"))
        self.ll_gpio_write_btn.setText(_translate("Form", "Write"))
        self.label_value_4.setText(_translate("Form", "DIR"))
        self.label_32.setText(_translate("Form", "Value"))
        self.label_57.setText(_translate("Form", "EMIO: PIN=EMIO+OFFSET(78)"))
        self.label_31.setText(_translate("Form", "eg. ch1cs0 send "))
        self.label_33.setText(_translate("Form", "\"0,1\", \"0x40,0\", \"0,3\", \"0x80,0\""))
        self.label_34.setText(_translate("Form", "eg. ch1 addr 0x74, send 0, and read"))
        self.tabWidget.setTabText(self.tabWidget.indexOf(self.tab_7), _translate("Form", "Low Level Access"))
        self.groupBox_21.setTitle(_translate("Form", "version infor"))
        self.hardware_ver_label.setText(_translate("Form", "?"))
        self.firmware_ver_label.setText(_translate("Form", "?"))
        self.modem_ver_label.setText(_translate("Form", "?"))
        self.software_ver_label.setText(_translate("Form", "0x0000B055"))
        self.label_35.setText(_translate("Form", "Hardware Version:"))
        self.label_38.setText(_translate("Form", "Software Version:"))
        self.label_43.setText(_translate("Form", "Modem Version:"))
        self.label_36.setText(_translate("Form", "GUI Version:"))
        self.label_82.setText(_translate("Form", "Boot Region:"))
        self.boot_region_label.setText(_translate("Form", "?"))
        self.groupBox_22.setTitle(_translate("Form", "upgrade"))
        self.label_44.setText(_translate("Form", "<html><head/><body><p><span style=\" font-size:11pt;\">upgrade file:</span></p></body></html>"))
        self.upgrade_file_button.setText(_translate("Form", "select file"))
        self.upgrade_button.setText(_translate("Form", "upgrade-all"))
        self.upgrade_button_fpga.setText(_translate("Form", "upgrade-fpga"))
        self.upgrade_button_sw.setText(_translate("Form", "upgrade-sw"))
        self.upgrade_file_extract_btn.setText(_translate("Form", "extract_file"))
        self.tabWidget.setTabText(self.tabWidget.indexOf(self.tab_6), _translate("Form", "Version"))
        self.label_37.setText(_translate("Form", "Server IP"))
        self.ipaddr_connect_btn.setText(_translate("Form", "Connect"))
        self.ipaddr_disconnect_btn.setText(_translate("Form", "Disconnect"))
