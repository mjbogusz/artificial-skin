from PyQt5 import QtWidgets, QtCore, QtGui
from UI.Layouts import Ui_MainWindow
import pyqtgraph as pg

class MainWindow(QtWidgets.QMainWindow):
	serialPortSelected = QtCore.pyqtSignal(str)
	serialConnectReq = QtCore.pyqtSignal()
	serialDisconnectReq = QtCore.pyqtSignal()

	def __init__(self, parent):
		super(MainWindow, self).__init__(parent)

		self.rows = 1
		self.columns = 1
		self.mapData = [[0]]
		self.selectedCell = (0, 0)
		self.cellData = []

		self.serialActionGroup = QtWidgets.QActionGroup(self, exclusive = True)

		self.ui = Ui_MainWindow()
		self.ui.setupUi(self)

		self.mainScene = QtWidgets.QGraphicsScene(self)
		self.ui.mainView.scale(1, -1)
		self.ui.mainView.setScene(self.mainScene)
		self.ui.mainView.fitInView(self.mainScene.sceneRect(), QtCore.Qt.KeepAspectRatio)

		self.serialActionGroup.triggered.connect(self.selectSerialPort)
		self.ui.actionConnect.triggered.connect(self.serialConnect)
		self.ui.actionDisconnect.triggered.connect(self.serialDisconnect)
		self.ui.columnSpinBox.valueChanged.connect(self.selectedColumnChanged)
		self.ui.rowSpinBox.valueChanged.connect(self.selectedRowChanged)

		self.statusbarTextLabel = QtWidgets.QLabel(self.ui.statusbar)
		self.ui.statusbar.addPermanentWidget(self.statusbarTextLabel)
		self.statusbarTextLabel.setText('Disconnected')

	def close(self):
		self.serialDisconnect()
		super(MainWindow, self).close()

	def resizeEvent(self, event):
		self.repaintMap()

	def updateStatus(self, message):
		self.statusbarTextLabel.setText(message)

	def updateSerialPorts(self, ports):
		if not ports:
			return

		self.ui.menuSerial.clear()

		for a in self.serialActionGroup.actions():
			self.serialActionGroup.removeAction(a)

		if len(ports) == 0:
			action = self.ui.menuSerial.addAction('actionNoSerials')
			action.setEnabled(False)
			self.ui.actionConnect.setEnabled(False)
			self.ui.actionDisconnect.setEnabled(False)
			return

		for p in ports:
			action = self.ui.menuSerial.addAction(p)
			action.setCheckable(True)
			self.serialActionGroup.addAction(action)

	def selectSerialPort(self, port):
		self.serialPortSelected.emit(port.text())

	def serialConnect(self):
		self.serialConnectReq.emit()

	def serialDisconnect(self):
		self.serialDisconnectReq.emit()

	def selectedColumnChanged(self, column):
		self.selectedCell = (column, self.selectedCell[1])

	def selectedRowChanged(self, row):
		self.selectedCell = (self.selectedCell[0], row)

	def updateMap(self, rows, columns, mapData, mapRawData):
		self.rows = rows
		self.columns = columns
		self.mapData = mapData

		self.cellData.append(mapRawData[self.selectedCell[0]][self.selectedCell[1]])

		self.repaintMap()

	def repaintMap(self):
		height = self.ui.mainView.size().height()
		width = self.ui.mainView.size().width()
		self.mainScene.clear()
		self.mainScene.setSceneRect(0.0, 0.0, width, height)

		fieldWidth = width / self.columns
		fieldHeight = height / self.rows

		for i in range(self.columns):
			x0 = i * fieldWidth
			x1 = x0 + fieldWidth

			for j in range(self.rows):
				y0 = j * fieldHeight
				y1 = y0 + fieldHeight

				value = self.mapData[i][j] * 255
				brush = QtGui.QBrush(QtGui.QColor(value, value, value), QtCore.Qt.SolidPattern)
				pen = QtGui.QPen(brush, 1.0)

				self.mainScene.addRect(x0, y0, x1, y1, pen, brush)

		cellDataLen = len(self.cellData)
		if cellDataLen > 100:
			cellDataLen = 100
		self.ui.plotWidget.clear()
		self.ui.plotWidget.plot(range(cellDataLen), self.cellData[-100:], pen = (0, 1))
