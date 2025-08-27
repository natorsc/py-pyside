import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

ApplicationWindow {
    id: root

    height: minimumHeight
    minimumHeight: 360
    minimumWidth: 640
    title: "Python - PySide6 - Qt"
    visible: true
    width: minimumWidth

    Dialog {
        id: dialog

        anchors.centerIn: parent
        modal: true
        standardButtons: Dialog.Ok | Dialog.Cancel
        title: "Title"

        onAccepted: console.log("Ok clicked")
        onRejected: console.log("Cancel clicked")

        Label {
            anchors.fill: parent
            text: "Lorem ipsum..."
        }
    }

    Button {
        anchors.centerIn: parent
        text: "Click"

        onClicked: dialog.open()
    }
}
