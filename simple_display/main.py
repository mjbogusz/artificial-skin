#!/usr/bin/env python3

import sys
from PyQt5 import QtWidgets, QtCore

from Serial import SerialReader
from UI import MainWindow

serialReader = None

def main(args = None):
	if args is None:
		args = sys.argv

	app = QtWidgets.QApplication(args)

	mainWindow = MainWindow(None)
	serialReader = SerialReader(None, exchangeRowsColumns = True)

	serialReader.statusString.connect(mainWindow.updateStatus)
	serialReader.serialPortsUpdated.connect(mainWindow.updateSerialPorts)
	serialReader.pressureMapUpdated.connect(mainWindow.updateMap)
	mainWindow.serialPortSelected.connect(serialReader.setSerialName)
	mainWindow.serialConnectReq.connect(serialReader.connectSerial)
	mainWindow.serialDisconnectReq.connect(serialReader.disconnectSerial)

	ports = serialReader.listSerialPorts()
	mainWindow.updateSerialPorts(ports)

	app.aboutToQuit.connect(quitEventHandler)

	serialReader.start()
	mainWindow.show()
	sys.exit(app.exec_())

def quitEventHandler():
	if serialReader and serialReader.isRunning():
		loop = QtCore.QEventLoop()
		serialReader.finished.connect(loop.quit)
		serialReader.stopExecution()
		loop.exec_()

if __name__ == '__main__':
	main()
