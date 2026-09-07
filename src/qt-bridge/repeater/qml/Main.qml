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
        padding: 12
        spacing: 5

        Repeater {
            model: Fruits

            Rectangle {
                color: "lightblue"
                height: 30
                width: 200

                Text {
                    anchors.centerIn: parent
                    text: `Item number: ${index} - ${modelData}`
                }
            }
        }
    }
}
