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

    ColumnLayout {
        anchors.centerIn: parent
        spacing: 20

        Text {
            Layout.alignment: Qt.AlignHCenter
            text: "Click the button below to open the Popup."
        }

        Button {
            id: button

            Layout.alignment: Qt.AlignHCenter
            text: "Open Popup"

            onClicked: {
                popup.open();
            }
        }
    }

    Popup {
        id: popup

        height: 300
        parent: Overlay.overlay
        width: 600
        x: Math.round((parent.width - width) / 2)
        y: Math.round((parent.height - height) / 2)

        background: Rectangle {
            border.color: "#cccccc"
            border.width: 1
            color: "white"
            radius: 8
        }

        ColumnLayout {
            anchors.fill: parent
            anchors.margins: 20
            spacing: 15

            Text {
                Layout.alignment: Qt.AlignHCenter
                font.pixelSize: 16
                horizontalAlignment: Text.AlignHCenter
                text: "Lorem Ipsum"
                wrapMode: Text.WordWrap
            }

            Text {
                Layout.fillWidth: true
                horizontalAlignment: Text.AlignHCenter
                text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit."
                wrapMode: Text.WordWrap
            }

            Button {
                Layout.alignment: Qt.AlignHCenter
                text: "Close Popup"

                onClicked: {
                    popup.close();
                }
            }
        }
    }
}
