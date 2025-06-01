# -*- coding: utf-8 -*-
"""."""

import sys

from PySide6 import QtCore, QtWidgets

APPLICATION_NAME = 'br.com.justcode.Qt'
ORGANIZATION_NAME = APPLICATION_NAME.split('.')[2]
ORGANIZATION_DOMAIN = '.'.join(APPLICATION_NAME.split('.')[0:3])


class CustomDialog(QtWidgets.QDialog):
    def __init__(self, parent=None, **kwargs):
        super().__init__(parent=parent)
        self.setModal(True)

        dialog_vbox = QtWidgets.QVBoxLayout()
        self.setLayout(dialog_vbox)

        dialog_label = QtWidgets.QLabel()
        dialog_label.setText('Lorem Ipsum is simply dummy text of the...')
        dialog_vbox.addWidget(dialog_label)

        buttons = (
            QtWidgets.QDialogButtonBox.Ok | QtWidgets.QDialogButtonBox.Cancel
        )
        dialog_button_box = QtWidgets.QDialogButtonBox()
        dialog_button_box.setStandardButtons(buttons)
        dialog_button_box.accepted.connect(self.accept)
        dialog_button_box.rejected.connect(self.reject)
        dialog_vbox.addWidget(dialog_button_box)


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

        button = QtWidgets.QPushButton()
        button.setText('Open dialog')
        button.clicked.connect(self.on_button_clicked)
        vbox.addWidget(button)

    def on_button_clicked(self):
        dialog = CustomDialog(self)

        response = dialog.exec()
        if response:
            print('Button OK')


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
