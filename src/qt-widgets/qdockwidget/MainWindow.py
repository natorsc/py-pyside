# -*- coding: utf-8 -*-
"""."""

import sys

from PySide6 import QtCore, QtWidgets

APPLICATION_NAME = "br.com.justcode.Qt"
ORGANIZATION_NAME = APPLICATION_NAME.split(".")[2]
ORGANIZATION_DOMAIN = ".".join(APPLICATION_NAME.split(".")[0:3])


class CustoWidget(QtWidgets.QWidget):
    def __init__(self, parent=None, **kwargs):
        super().__init__(parent=parent)

        custom_widget_layout = QtWidgets.QVBoxLayout()
        self.setLayout(custom_widget_layout)

        custom_widget_label = QtWidgets.QLabel()
        custom_widget_label.setText("Lorem Ipsum is simply dummy text of...")
        custom_widget_label.setAlignment(QtCore.Qt.AlignmentFlag.AlignCenter)
        custom_widget_layout.addWidget(custom_widget_label)


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

        dock_widget = QtWidgets.QDockWidget(self)
        dock_widget.setWindowTitle("Python - PySide6 - Qt")
        dock_widget.setWidget(CustoWidget(self))
        self.addDockWidget(QtCore.Qt.TopDockWidgetArea, dock_widget)


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
