# -*- coding: utf-8 -*-
"""."""

import sys

from PySide6 import QtCore, QtGui, QtQml

BASE_DIR = QtCore.QDir(QtCore.QFileInfo(__file__).absolutePath())
QML_DIR = BASE_DIR.filePath("qml")
QML_FILE = QtCore.QDir(QML_DIR).filePath("main.qml")
LOCALES = BASE_DIR.filePath("locales")

APPLICATION_NAME = "br.com.justcode.Qt"
ORGANIZATION_NAME = APPLICATION_NAME.split(".")[2]
ORGANIZATION_DOMAIN = ".".join(APPLICATION_NAME.split(".")[0:3])


def main() -> None:
    application = QtGui.QGuiApplication(sys.argv)
    application.setApplicationDisplayName(APPLICATION_NAME)
    application.setApplicationName(APPLICATION_NAME)
    application.setDesktopFileName(APPLICATION_NAME)
    application.setOrganizationName(ORGANIZATION_NAME)
    application.setOrganizationDomain(ORGANIZATION_DOMAIN)

    loc = QtCore.QLocale.system()
    # loc = QtCore.QLocale(QtCore.QLocale.Portuguese, QtCore.QLocale.Brazil)
    # loc = QtCore.QLocale(QtCore.QLocale.English, QtCore.QLocale.UnitedStates)
    translator = QtCore.QTranslator(application)
    if translator.load(QtCore.QLocale(loc), APPLICATION_NAME, ".", str(LOCALES)):
        application.installTranslator(translator)

    if QtCore.QSysInfo.productType() == "windows":
        from ctypes import windll

        windll.shell32.SetCurrentProcessExplicitAppUserModelID(
            APPLICATION_NAME,
        )

    engine = QtQml.QQmlApplicationEngine()
    engine.addImportPath(QML_DIR)
    engine.load(QtCore.QUrl.fromLocalFile(QML_FILE))

    if not engine.rootObjects():
        sys.exit(-1)

    sys.exit(application.exec())


if __name__ == "__main__":
    main()
