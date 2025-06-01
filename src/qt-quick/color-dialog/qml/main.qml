import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
// import Qt.labs.platform as Labs
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
            text: `Selected: ${colorDialog.selectedColor}`
        }

        Button {
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            text: "Open"

            onClicked: {
                colorDialog.open();
            }
        }

        ColorDialog {
            id: colorDialog

            onAccepted: {
                console.log("onAccepted");
                root.color = selectedColor;
            }
        }
    }
}
