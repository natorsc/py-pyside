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
            Layout.fillHeight: true
            Layout.fillWidth: true
            color: "dodgerblue"
        }

        Rectangle {
            Layout.fillHeight: true
            Layout.fillWidth: true
            color: "navajowhite"
        }

        Rectangle {
            Layout.fillHeight: true
            Layout.fillWidth: true
            color: "darkseagreen"
        }
    }
}
