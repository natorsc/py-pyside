# -*- coding: utf-8 -*-
"""."""

import sys

from PySide6 import QtCore, QtGui, QtWidgets

from app import resources_rc
from app.ui.MainWindow import MainWindow

RESOURCES_RC = resources_rc

APP_NAME = 'br.com.justcode.Qt'
ORGANIZATION_NAME = APP_NAME.split('.')[2]
ORGANIZATION_DOMAIN = '.'.join(APP_NAME.split('.')[0:3])


def main() -> None:
    application = QtWidgets.QApplication(sys.argv)
    application.setApplicationDisplayName(APP_NAME)
    application.setApplicationName(APP_NAME)
    application.setDesktopFileName(APP_NAME)
    application.setOrganizationName(ORGANIZATION_NAME)
    application.setOrganizationDomain(ORGANIZATION_DOMAIN)
    application.setWindowIcon(QtGui.QIcon('qrc://icons/app'))

    loc = QtCore.QLocale.system()
    translator = QtCore.QTranslator(application)
    if translator.load(QtCore.QLocale(loc), APP_NAME, '.', ':/locales'):
        application.installTranslator(translator)

    if QtCore.QSysInfo.productType() == 'windows':
        from ctypes import windll

        windll.shell32.SetCurrentProcessExplicitAppUserModelID(APP_NAME)

    window = MainWindow(application=application)
    window.show()

    sys.exit(application.exec())


if __name__ == '__main__':
    main()
