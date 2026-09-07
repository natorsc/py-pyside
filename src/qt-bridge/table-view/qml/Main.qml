import QtQuick
import QtQuick.Controls
import Qt.labs.qmlmodels
import backend 1.0

ApplicationWindow {
    id: root

    height: minimumHeight
    minimumHeight: 360
    minimumWidth: 640
    title: "Python - PySide6 - Qt Bridge"
    visible: true
    width: minimumWidth

    TableView {
        anchors.fill: parent
        model: Users
        delegate: Text {
            text: display
        }
    }
}
