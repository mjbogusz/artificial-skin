import sys
import glob
import serial
import time
from PyQt5 import QtCore

class SerialReader(QtCore.QThread):
	statusString = QtCore.pyqtSignal(str)
	serialPortsUpdated = QtCore.pyqtSignal(list)
	pressureMapUpdated = QtCore.pyqtSignal(int, int, list)

	def __init__(self, parent, baudrate = 115200, exchangeRowsColumns = False):
		super().__init__(parent)

		self.baudrate = baudrate
		self.exchangeRowsColumns = exchangeRowsColumns

		self.exitFlag = False
		self.serial = None
		self.serialName = None

	def start(self):
		self.statusString.emit('Disconnected')
		return super().start()

	def connectSerial(self):
		if not self.serialName:
			return

		if self.serial:
			return

		self.serial = serial.Serial(self.serialName, self.baudrate)
		self.statusString.emit('Connected: ' + self.serialName)

	def disconnectSerial(self):
		if self.serial:
			self.serial.close()
		self.serial = None

		if self.serialName:
			self.statusString.emit('Disconnected: ' + self.serialName)
		else:
			self.statusString.emit('Disconnected')

	def setSerialName(self, name):
		if name == self.serialName:
			return

		self.disconnectSerial()
		self.serialName = name
		self.statusString.emit('Disconnected: ' + self.serialName)

	def stopExecution(self):
		self.exitFlag = True
		self.disconnectSerial()

	def listSerialPorts(self):
		""" Lists serial port names
			Source: https://stackoverflow.com/a/14224477
			:raises EnvironmentError:
				On unsupported or unknown platforms
			:returns:
				A list of the serial ports available on the system
		"""
		if sys.platform.startswith('win'):
			ports = ['COM%s' % (i + 1) for i in range(256)]
		elif sys.platform.startswith('linux') or sys.platform.startswith('cygwin'):
			# this excludes your current terminal "/dev/tty"
			ports = glob.glob('/dev/tty[A-Za-z]*')
		elif sys.platform.startswith('darwin'):
			ports = glob.glob('/dev/tty.*')
		else:
			raise EnvironmentError('Unsupported platform')

		result = []
		for port in ports:
			try:
				s = serial.Serial(port)
				s.close()
				result.append(port)
			except (OSError, serial.SerialException):
				pass

		self.serialPortsUpdated.emit(result)

	def parseLine(self, line):
		rowData = line.strip().split(';')
		rows = len(rowData) - 1

		pressureMap = []
		for r in rowData:
			if not len(r):
				continue

			fieldData = r.strip().split(',')
			columns = len(fieldData)

			rowValues = []
			for rawValue in fieldData:
				if not len(rawValue):
					continue
				rowValues.append(int(rawValue))

			pressureMap.append(rowValues)

		if self.exchangeRowsColumns:
			pressureMap2 = []
			for i in range(columns):
				columnValues = []
				for j in range(rows):
					columnValues.append(pressureMap[j][i])
				pressureMap2.append(columnValues)

			pressureMap = pressureMap2
			t = rows
			rows = columns
			columns = t

		self.pressureMapUpdated.emit(rows, columns, pressureMap)

	def run(self):
		dataBuffer = ''

		while not self.exitFlag:
			if self.serial:
				dataSize = self.serial.in_waiting
				if dataSize == 0:
					time.sleep(0.01)
					continue

				dataBuffer = dataBuffer + self.serial.read(dataSize).decode()
				dataParts = dataBuffer.split('\n')
				if len(dataParts) > 1:
					self.parseLine(dataParts[-2])
					dataBuffer = dataParts[-1]
			time.sleep(0.01)

		self.disconnectSerial()
