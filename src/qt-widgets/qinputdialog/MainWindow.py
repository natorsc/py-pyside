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

        self.button_group = QtWidgets.QButtonGroup()

        items = [
            'getText',
            'getMultiLineText',
            'getInt',
            'getDouble',
            'getItem',
        ]
        for index, item in enumerate(items):
            radio_button = QtWidgets.QRadioButton()
            radio_button.setText(item)
            if index == 0:
                radio_button.setChecked(True)
            self.button_group.addButton(radio_button)
            vbox.addWidget(radio_button)

        button = QtWidgets.QPushButton()
        button.setText('Open dialog')
        button.clicked.connect(self.on_button_clicked)
        vbox.addWidget(button)

    def on_button_clicked(self):
        dialog = QtWidgets.QInputDialog

        match self.button_group.checkedButton().text():
            case 'getText':
                data, status = dialog.getText(
                    self,
                    'Title',
                    'Text.',
                )
            case 'getMultiLineText':
                data, status = dialog.getMultiLineText(
                    self,
                    'Title',
                    'Text.',
                )
            case 'getInt':
                data, status = dialog.getInt(
                    self,
                    'Title',
                    'Text.',
                )
            case 'getDouble':
                data, status = dialog.getDouble(
                    self,
                    'Title',
                    'Text.',
                )
            case _:
                data, status = dialog.getItem(
                    self,
                    'Title',
                    'Text.',
                    ['Item 1', 'Item 2'],
                )
        if status:
            print(data)


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
