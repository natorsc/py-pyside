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

    Button {
        anchors.centerIn: parent
        text: "Click"

        onClicked: console.log("Clicked.")
    }
}
