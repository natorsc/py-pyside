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

    DelayButton {
        anchors.centerIn: parent
        text: "Keep the button pressed"

        onActivated: console.log("Pressed.")
    }
}
