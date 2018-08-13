# -*- coding: utf-8 -*-

# Form implementation generated from reading ui file 'Ui_MainWindow.ui'
#
# Created by: PyQt5 UI code generator 5.11.2
#
# WARNING! All changes made in this file will be lost!

from PyQt5 import QtCore, QtGui, QtWidgets
from pyqtgraph import PlotWidget

class Ui_MainWindow(object):
    def setupUi(self, MainWindow):
        MainWindow.setObjectName("MainWindow")
        MainWindow.resize(883, 483)
        self.centralwidget = QtWidgets.QWidget(MainWindow)
        self.centralwidget.setObjectName("centralwidget")
        self.horizontalLayout = QtWidgets.QHBoxLayout(self.centralwidget)
        self.horizontalLayout.setObjectName("horizontalLayout")
        self.mainView = QtWidgets.QGraphicsView(self.centralwidget)
        self.mainView.setObjectName("mainView")
        self.horizontalLayout.addWidget(self.mainView)
        self.verticalLayout = QtWidgets.QVBoxLayout()
        self.verticalLayout.setObjectName("verticalLayout")
        self.horizontalLayout_2 = QtWidgets.QHBoxLayout()
        self.horizontalLayout_2.setObjectName("horizontalLayout_2")
        self.columnSpinBox = QtWidgets.QSpinBox(self.centralwidget)
        self.columnSpinBox.setObjectName("columnSpinBox")
        self.horizontalLayout_2.addWidget(self.columnSpinBox)
        self.rowSpinBox = QtWidgets.QSpinBox(self.centralwidget)
        self.rowSpinBox.setObjectName("rowSpinBox")
        self.horizontalLayout_2.addWidget(self.rowSpinBox)
        self.verticalLayout.addLayout(self.horizontalLayout_2)
        self.plotWidget = PlotWidget(self.centralwidget)
        self.plotWidget.setObjectName("plotWidget")
        self.verticalLayout.addWidget(self.plotWidget)
        self.horizontalLayout.addLayout(self.verticalLayout)
        MainWindow.setCentralWidget(self.centralwidget)
        self.menubar = QtWidgets.QMenuBar(MainWindow)
        self.menubar.setGeometry(QtCore.QRect(0, 0, 883, 22))
        self.menubar.setObjectName("menubar")
        self.menuMenu = QtWidgets.QMenu(self.menubar)
        self.menuMenu.setObjectName("menuMenu")
        self.menuSerial = QtWidgets.QMenu(self.menubar)
        self.menuSerial.setObjectName("menuSerial")
        MainWindow.setMenuBar(self.menubar)
        self.statusbar = QtWidgets.QStatusBar(MainWindow)
        self.statusbar.setObjectName("statusbar")
        MainWindow.setStatusBar(self.statusbar)
        self.actionConnect = QtWidgets.QAction(MainWindow)
        self.actionConnect.setEnabled(True)
        self.actionConnect.setObjectName("actionConnect")
        self.actionDisconnect = QtWidgets.QAction(MainWindow)
        self.actionDisconnect.setEnabled(True)
        self.actionDisconnect.setObjectName("actionDisconnect")
        self.actionQuit = QtWidgets.QAction(MainWindow)
        self.actionQuit.setObjectName("actionQuit")
        self.actionNoSerials = QtWidgets.QAction(MainWindow)
        self.actionNoSerials.setEnabled(False)
        self.actionNoSerials.setObjectName("actionNoSerials")
        self.menuMenu.addAction(self.actionConnect)
        self.menuMenu.addAction(self.actionDisconnect)
        self.menuMenu.addAction(self.actionQuit)
        self.menuSerial.addAction(self.actionNoSerials)
        self.menubar.addAction(self.menuMenu.menuAction())
        self.menubar.addAction(self.menuSerial.menuAction())

        self.retranslateUi(MainWindow)
        self.actionQuit.triggered.connect(MainWindow.close)
        QtCore.QMetaObject.connectSlotsByName(MainWindow)

    def retranslateUi(self, MainWindow):
        _translate = QtCore.QCoreApplication.translate
        MainWindow.setWindowTitle(_translate("MainWindow", "MainWindow"))
        self.menuMenu.setTitle(_translate("MainWindow", "Menu"))
        self.menuSerial.setTitle(_translate("MainWindow", "Serial"))
        self.actionConnect.setText(_translate("MainWindow", "Connect"))
        self.actionDisconnect.setText(_translate("MainWindow", "Disconnect"))
        self.actionQuit.setText(_translate("MainWindow", "Quit"))
        self.actionNoSerials.setText(_translate("MainWindow", "No serial connections"))
