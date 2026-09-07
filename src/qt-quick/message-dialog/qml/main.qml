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

        Button {
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            text: "Open"

            onClicked: {
                messageDialog.open();
            }
        }

        MessageDialog {
            id: messageDialog

            buttons: MessageDialog.Ok | MessageDialog.Cancel
            informativeText: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
            text: "Lorem Ipsum"

            onAccepted: console.log("Accepted")
        }
    }
}
