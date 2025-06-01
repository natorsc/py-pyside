import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import QtCore

import QtQuick.Dialogs

ApplicationWindow {
    id: root

    height: 360
    minimumHeight: 360
    minimumWidth: 640
    title: "Python - PySide6 - Qt"
    visible: true
    width: 640

    ColumnLayout {
        anchors.fill: parent
        anchors.margins: 12
        spacing: 6

        Label {
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            text: `Selected: ${fileDialog.selectedFile}`
        }

        Button {
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            text: "Open"

            onClicked: {
                fileDialog.open();
            }
        }

        FileDialog {
            id: fileDialog

            currentFolder: StandardPaths.writableLocation(StandardPaths.HomeLocation)
            nameFilters: ["Text files (*.txt)", "HTML files (*.html *.htm)", "All (*.*)"]
        }
    }
}
