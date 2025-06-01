import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

ApplicationWindow {
    id: root

    property var listModel: []

    height: 540
    minimumHeight: 360
    minimumWidth: 640
    title: qsTr("Python - PySide6 - Qt")
    visible: true
    width: 960

    ListView {
        anchors.centerIn: parent
        height: parent.height
        model: listModel
        width: parent.width

        delegate: Text {
            padding: 12
            text: display
        }
    }
}
