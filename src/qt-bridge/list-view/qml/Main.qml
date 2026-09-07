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

    ListView {
        anchors.fill: parent
        model: Fruits

        delegate: Text {
            padding: 12
            text: display
        }
    }
}
