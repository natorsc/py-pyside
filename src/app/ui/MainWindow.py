# -*- coding: utf-8 -*-
"""."""

from PySide6 import QtCore, QtWidgets


class MainWindow(QtWidgets.QMainWindow):
    def __init__(self, parent=None, **kwargs):
        super().__init__(parent=parent)
        self.application = kwargs.get('application')

        window_size = QtCore.QSize(960, 540)
        self.resize(window_size)
        self.setMinimumSize(window_size)
        self.setWindowTitle('Python - PySide - Qt')

        vbox = QtWidgets.QVBoxLayout()

        central_widget = QtWidgets.QWidget()
        central_widget.setLayout(vbox)
        self.setCentralWidget(central_widget)

        self.label = QtWidgets.QLabel()
        self.label.setText(self.tr('Type something in the text field.'))
        self.label.setAlignment(QtCore.Qt.AlignmentFlag.AlignCenter)
        vbox.addWidget(self.label)

        self.line_edit = QtWidgets.QLineEdit()
        self.line_edit.setPlaceholderText(self.tr('Type something.'))
        vbox.addWidget(self.line_edit)

        button = QtWidgets.QPushButton()
        button.setText(self.tr('Click here'))
        button.clicked.connect(self.on_button_clicked)
        vbox.addWidget(button)

    def on_button_clicked(self) -> None:
        text = self.line_edit.text()
        if text.strip():
            self.label.setText(text)
        else:
            self.label.setText(self.tr('The text field is empty.'))


if __name__ == '__main__':
    raise Exception('[!] Run the main.py file [!]')
