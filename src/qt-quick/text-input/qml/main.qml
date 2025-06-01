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

    ColumnLayout {
        anchors.fill: parent
        anchors.margins: 12
        spacing: 6

        Rectangle {
            id: rectangle

            border.color: "#cccccc"
            border.width: 1
            color: "#ffffff"
            height: 40
            radius: 8
            width: 300

            states: State {
                name: "focus"
                when: input.focus

                PropertyChanges {
                    border.color: "#448aff"
                    target: rectangle
                }
            }

            TextInput {
                id: input

                anchors.fill: parent
                anchors.margins: 8
                color: "black"
                echoMode: TextInput.Password
                font.pixelSize: 16
                text: "Hello World!"
            }
        }
    }
}
