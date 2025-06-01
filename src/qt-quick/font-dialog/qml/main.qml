import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
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
            id: label

            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            text: "Selected:"
        }

        Button {
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            text: "Open"

            onClicked: {
                fontDialog.open();
            }
        }

        FontDialog {
            id: fontDialog

            onAccepted: label.text = `Selected: ${selectedFont}`
        }
    }
}
