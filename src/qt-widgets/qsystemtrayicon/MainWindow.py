# -*- coding: utf-8 -*-
"""."""

import pathlib
import sys

from PySide6 import QtCore, QtGui, QtWidgets

BASE_DIR = pathlib.Path(__file__).resolve().parent
ICON = BASE_DIR.parent.parent / 'data' / 'icons' / 'br.com.justcode.Qt.png'

APPLICATION_NAME = 'br.com.justcode.Qt'
ORGANIZATION_NAME = APPLICATION_NAME.split('.')[2]
ORGANIZATION_DOMAIN = '.'.join(APPLICATION_NAME.split('.')[0:3])


class SystemTrayIcon(QtWidgets.QSystemTrayIcon):
    def __init__(self, parent=None, **kwargs):
        super().__init__(parent=parent)
        self.application = kwargs.get('application')

        self.setObjectName('SystemTrayIcon')
        self.setToolTip('System Tray Icon')
        self.setIcon(QtGui.QIcon(str(ICON)))
        self.setVisible(True)

        menu = QtWidgets.QMenu()
        self.setContextMenu(menu)

        action_name = QtGui.QAction('Action name', self)
        action_name.setStatusTip('Action name.')
        action_name.triggered.connect(self.on_action_name_triggered)
        menu.addAction(action_name)

        action_exit = QtGui.QAction('Exit', self)
        action_exit.setStatusTip('Exit app.')
        action_exit.triggered.connect(self.application.exit)
        menu.addAction(action_exit)

    def on_action_name_triggered(self):
        self.showMessage('title', 'message')


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

    system_tray_icon = SystemTrayIcon(application=application)
    system_tray_icon.show()

    sys.exit(application.exec())


if __name__ == '__main__':
    main()
