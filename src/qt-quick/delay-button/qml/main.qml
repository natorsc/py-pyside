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

    DelayButton {
        anchors.centerIn: parent
        text: "Keep the button pressed"

        onActivated: console.log("Pressed.")
    }
}
