import QtQuick
import QtQuick.Controls
import backend 1.0

ApplicationWindow {
    id: root

    height: minimumHeight
    minimumHeight: 360
    minimumWidth: 640
    title: "Python - PySide6 - Qt Bridge"
    visible: true
    width: minimumWidth

    Column {
        anchors.fill: parent
        spacing: 5
        padding: 12

        Repeater {
            model: Fruits

            Rectangle {
                width: 200
                height: 30
                color: "lightblue"

                Text {
                    anchors.centerIn: parent
                    text: `Item number: ${index} - ${modelData}`
                }
            }
        }
    }
}
