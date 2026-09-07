# -*- coding: utf-8 -*-
"""."""

import sys

from PySide6 import QtCore, QtWidgets

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

        grid_layout = QtWidgets.QGridLayout()
        vbox.addLayout(grid_layout)

        button_1 = QtWidgets.QPushButton("Button 1")
        # widget, row, column.
        grid_layout.addWidget(button_1, 0, 0)

        # widget, row, column, rowSpan, columnSpan, alignment.
        button_2 = QtWidgets.QPushButton("Button 2")
        grid_layout.addWidget(button_2, 0, 1, 1, 2)

        button_3 = QtWidgets.QPushButton("Button 3")
        button_3.setSizePolicy(
            QtWidgets.QSizePolicy.Preferred,
            QtWidgets.QSizePolicy.Preferred,
        )
        grid_layout.addWidget(button_3, 1, 0, 2, 1)

        button_4 = QtWidgets.QPushButton("Button 4")
        grid_layout.addWidget(button_4, 1, 1, 1, 2)

        button_5 = QtWidgets.QPushButton("Button 5")
        grid_layout.addWidget(button_5, 2, 1)

        button_6 = QtWidgets.QPushButton("Button 6")
        grid_layout.addWidget(button_6, 2, 2)


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
