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
            id: label

            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            text: "Selected:"
        }

        Button {
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            text: "Open"

            onClicked: {
                folderDialog.open();
            }
        }

        FolderDialog {
            id: folderDialog

            currentFolder: StandardPaths.standardLocations(StandardPaths.PicturesLocation)[0]

            onAccepted: label.text = `Selected: ${selectedFolder}`
        }
    }
}
