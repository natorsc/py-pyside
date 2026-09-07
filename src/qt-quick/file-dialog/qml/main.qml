import QtCore
import QtQuick
import QtQuick.Controls

import QtQuick.Dialogs
import QtQuick.Layouts

ApplicationWindow {
    id: root

    height: minimumHeight
    minimumHeight: 360
    minimumWidth: 640
    title: "Python - PySide6 - Qt"
    visible: true
    width: minimumWidth

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
