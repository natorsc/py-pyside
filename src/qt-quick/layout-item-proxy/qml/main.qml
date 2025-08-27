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

    onWidthChanged: {
        if (width < 700) {
            gridLayout1.visible = true;
            gridLayout2.visible = false;
        } else {
            gridLayout1.visible = false;
            gridLayout2.visible = true;
        }
    }

    Rectangle {
        id: rectangle1

        Layout.fillHeight: true
        Layout.fillWidth: true
        color: "lightpink"
    }

    Rectangle {
        id: rectangle2

        Layout.fillHeight: true
        Layout.fillWidth: true
        color: "navajowhite"
    }

    GridLayout {
        id: gridLayout1

        anchors.fill: parent
        columns: 1
        visible: false

        LayoutItemProxy {
            target: rectangle1
        }

        LayoutItemProxy {
            target: rectangle2
        }
    }

    GridLayout {
        id: gridLayout2

        anchors.fill: parent
        columns: 2
        visible: true

        LayoutItemProxy {
            target: rectangle1
        }

        LayoutItemProxy {
            target: rectangle2
        }
    }
}
