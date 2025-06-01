import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

ApplicationWindow {
    id: root

    height: 360
    minimumHeight: 360
    minimumWidth: 640
    title: "Python - PySide6 - Qt"
    visible: true
    width: 640

    ButtonGroup {
        id: radioGroup

    }

    Column {
        anchors.fill: parent
        anchors.margins: 12
        spacing: 6

        Label {
            text: qsTr("Radio:")
        }

        RadioButton {
            ButtonGroup.group: radioGroup
            checked: true
            text: qsTr("A")
        }

        RadioButton {
            ButtonGroup.group: radioGroup
            text: qsTr("B")
        }

        RadioButton {
            ButtonGroup.group: radioGroup
            text: qsTr("C")
        }
    }
}
