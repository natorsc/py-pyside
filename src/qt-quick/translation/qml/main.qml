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

    ColumnLayout {
        anchors.fill: parent
        anchors.margins: 12
        spacing: 6

        Label {
            Layout.fillHeight: true
            Layout.fillWidth: true
            horizontalAlignment: Label.AlignHCenter
            text: qsTr("Hellow World!")
            verticalAlignment: Label.AlignVCenter
        }

        TextField {
            Layout.fillWidth: true
            placeholderText: qsTr("Type something.")
        }

        Button {
            Layout.fillWidth: true
            text: qsTr("Click here")

            onClicked: console.log("Clicked")
        }
    }
}
