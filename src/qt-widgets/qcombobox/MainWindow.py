# -*- coding: utf-8 -*-
"""."""

import sys

from PySide6 import QtCore, QtWidgets

APPLICATION_NAME = 'br.com.justcode.Qt'
ORGANIZATION_NAME = APPLICATION_NAME.split('.')[2]
ORGANIZATION_DOMAIN = '.'.join(APPLICATION_NAME.split('.')[0:3])


class MainWindow(QtWidgets.QMainWindow):
    def __init__(self, parent=None, **kwargs):
        super().__init__(parent=parent)
        self.application = kwargs.get('application')

        self.resize(640, 360)
        self.setMinimumSize(640, 360)
        self.setWindowTitle('Python - PySide6 - Qt')

        vbox = QtWidgets.QVBoxLayout()

        central_widget = QtWidgets.QWidget()
        central_widget.setLayout(vbox)
        self.setCentralWidget(central_widget)

        items = ['select', 'Item 01', 'Item 02', 'Item 03', 'Item 04']

        self.combo_box = QtWidgets.QComboBox()
        # combo_box.currentIndexChanged.connect(self.on_current_index_changed)
        self.combo_box.currentIndexChanged.connect(self.on_activated)
        self.combo_box.addItems(items)
        vbox.addWidget(self.combo_box)

    def on_activated(self, index):
        if index != 0:
            print(self.combo_box.currentIndex())
            print(self.combo_box.currentText())

    def on_current_index_changed(self, index):
        if index != 0:
            print(self.combo_box.currentIndex())
            print(self.combo_box.currentText())


def main() -> None:
    application = QtWidgets.QApplication(sys.argv)
    application.setApplicationDisplayName(APPLICATION_NAME)
    application.setApplicationName(APPLICATION_NAME)
    application.setDesktopFileName(APPLICATION_NAME)
    application.setOrganizationName(ORGANIZATION_NAME)
    application.setOrganizationDomain(ORGANIZATION_DOMAIN)

    if QtCore.QSysInfo.productType() == 'windows':
        from ctypes import windll

        windll.shell32.SetCurrentProcessExplicitAppUserModelID(
            APPLICATION_NAME,
        )

    window = MainWindow(application=application)
    window.show()

    sys.exit(application.exec())


if __name__ == '__main__':
    main()
