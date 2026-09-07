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

        form_layout = QtWidgets.QFormLayout()
        vbox.addLayout(form_layout)

        label_user = QtWidgets.QLabel()
        label_user.setText("User")
        form_layout.addWidget(label_user)

        line_edit_user = QtWidgets.QLineEdit()
        line_edit_user.setPlaceholderText("User")
        form_layout.addWidget(line_edit_user)

        label_password = QtWidgets.QLabel()
        label_password.setText("Password")
        form_layout.addWidget(label_password)

        line_edit_password = QtWidgets.QLineEdit()
        line_edit_password.setPlaceholderText("Password")
        line_edit_password.setEchoMode(QtWidgets.QLineEdit.Password)
        form_layout.addWidget(line_edit_password)


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
