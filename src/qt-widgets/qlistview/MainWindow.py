# -*- coding: utf-8 -*-
"""."""

import sys

from PySide6 import QtCore, QtGui, QtWidgets

APPLICATION_NAME = "br.com.justcode.Qt"
ORGANIZATION_NAME = APPLICATION_NAME.split(".")[2]
ORGANIZATION_DOMAIN = ".".join(APPLICATION_NAME.split(".")[0:3])


class MainWindow(QtWidgets.QMainWindow):
    def __init__(self, parent=None, **kwargs):
        super().__init__(parent=parent)
        self.application = kwargs.get("application")

        self.resize(640, 360)
        self.setMinimumSize(640, 360)
        self.setWindowTitle("Python - PySide6 - Qt")

        vbox = QtWidgets.QVBoxLayout()

        central_widget = QtWidgets.QWidget()
        central_widget.setLayout(vbox)
        self.setCentralWidget(central_widget)

        items = [
            QtGui.QStandardItem("Item 01"),
            QtGui.QStandardItem("Item 02"),
            QtGui.QStandardItem("Item 03"),
            QtGui.QStandardItem("Item 04"),
        ]

        standard_item_model = QtGui.QStandardItemModel()
        for item in items:
            standard_item_model.appendRow(item)

        list_view = QtWidgets.QListView()
        list_view.setModel(standard_item_model)
        vbox.addWidget(list_view)


def main() -> None:
    application = QtWidgets.QApplication(sys.argv)
    application.setApplicationDisplayName(APPLICATION_NAME)
    application.setApplicationName(APPLICATION_NAME)
    application.setDesktopFileName(APPLICATION_NAME)
    application.setOrganizationName(ORGANIZATION_NAME)
    application.setOrganizationDomain(ORGANIZATION_DOMAIN)

    if QtCore.QSysInfo.productType() == "windows":
        from ctypes import windll

        windll.shell32.SetCurrentProcessExplicitAppUserModelID(
            APPLICATION_NAME,
        )

    window = MainWindow(application=application)
    window.show()

    sys.exit(application.exec())


if __name__ == "__main__":
    main()
