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

        frame = QtWidgets.QFrame()
        frame.setFrameStyle(
            QtWidgets.QFrame.Panel
        )  # | QtWidgets.QFrame.Raised
        frame.setLineWidth(2)
        frame.setContentsMargins(10, 10, 10, 10)
        vbox.addWidget(frame)

        frame_vbox = QtWidgets.QVBoxLayout()
        frame.setLayout(frame_vbox)

        label = QtWidgets.QLabel(
            'Lorem Ipsum is simply dummy text of the printing and typesetting industry.'
        )
        label.setAlignment(QtCore.Qt.AlignCenter)  # Centraliza o texto
        frame_vbox.addWidget(label)

        self.action_button = QtWidgets.QPushButton('Button')
        frame_vbox.addWidget(self.action_button)


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
