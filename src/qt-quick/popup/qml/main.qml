import QtQuick
import QtQuick.Window
import QtQuick.Controls

ApplicationWindow {
    id: root

    height: minimumHeight
    minimumHeight: 360
    minimumWidth: 640
    title: "Python - PySide6 - Qt"
    visible: true
    width: minimumWidth

    Button {
        id: openButton

        anchors.centerIn: parent
        text: "Open popup"

        onClicked: popup.open()
    }

    Popup {
        id: popup

        anchors.centerIn: parent
        focus: true
        height: 300
        modal: true
        width: 600

        Rectangle {
            anchors.fill: parent
            color: "#ffffff"
            radius: 4

            Column {
                anchors.centerIn: parent
                spacing: 20
                width: parent.width - 10

                Label {
                    color: "#333333"
                    font.pixelSize: 18
                    horizontalAlignment: Text.AlignHCenter
                    text: "Lorem Ipsum"
                    width: parent.width - 10
                }

                Label {
                    color: "#666666"
                    font.pixelSize: 14
                    horizontalAlignment: Text.AlignHCenter
                    text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit."
                    width: parent.width - 10
                    wrapMode: Text.WordWrap
                }

                Button {
                    anchors.horizontalCenter: parent.horizontalCenter
                    text: "Close"

                    onClicked: popup.close()
                }
            }
        }
    }
}
