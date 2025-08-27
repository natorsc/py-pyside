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

    Frame {
        anchors.fill: parent
        anchors.margins: 12

        Column {
            anchors.fill: parent
            anchors.margins: 12
            spacing: 6

            CheckBox {
                text: qsTr("E-mail")
            }

            CheckBox {
                text: qsTr("Calendar")
            }

            CheckBox {
                text: qsTr("Contacts")
            }
        }
    }
}
