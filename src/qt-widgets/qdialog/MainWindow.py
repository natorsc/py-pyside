# -*- coding: utf-8 -*-
"""."""

import sys

from PySide6 import QtCore, QtWidgets

APPLICATION_NAME = "br.com.justcode.Qt"
ORGANIZATION_NAME = APPLICATION_NAME.split(".")[2]
ORGANIZATION_DOMAIN = ".".join(APPLICATION_NAME.split(".")[0:3])


class CustomDialog(QtWidgets.QDialog):
    def __init__(self, parent=None, **kwargs):
        super().__init__(parent=parent)
        self.setFixedSize(600, 300)
        self.setModal(True)
        self.setWindowTitle("Lorem Ipsum")

        vbox = QtWidgets.QVBoxLayout(self)

        text_label = QtWidgets.QLabel("Lorem Ipsum is simply dummy text of the printing and typesetting industry.")
        text_label.setWordWrap(True)
        text_label.setAlignment(QtCore.Qt.AlignCenter)
        vbox.addWidget(text_label)

        button_box = QtWidgets.QDialogButtonBox(
            QtWidgets.QDialogButtonBox.Ok | QtWidgets.QDialogButtonBox.Cancel,
        )

        button_box.accepted.connect(self.accept)
        button_box.rejected.connect(self.reject)
        vbox.addWidget(button_box)


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

        button = QtWidgets.QPushButton()
        button.setText("Open dialog")
        button.clicked.connect(self.on_button_clicked)
        vbox.addWidget(button)

    def on_button_clicked(self):
        dialog = CustomDialog(self)
        result = dialog.exec()

        if result == QtWidgets.QDialog.Accepted:
            print("Button OK")
        else:
            print("Button Cancel")


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
