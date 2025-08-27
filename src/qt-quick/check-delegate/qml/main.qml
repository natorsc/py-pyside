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

    ListView {
        anchors.fill: parent
        anchors.margins: 12
        model: ["Option 1", "Option 2", "Option 3"]

        delegate: CheckDelegate {
            text: modelData
        }
    }
}
