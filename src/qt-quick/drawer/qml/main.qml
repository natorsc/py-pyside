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

    header: ToolBar {
        RowLayout {
            anchors.fill: parent

            ToolButton {
                id: toolButton

                icon.name: "sidebar-expand-symbolic"

                // text: "⋮"

                onClicked: {
                    let activated = drawer.position == 1 ? false : true;
                    drawer.visible = activated;
                    toolButton.highlighted = activated;
                    toolButton.icon.name = activated ? "sidebar-collapse-symbolic" : "sidebar-expand-symbolic";
                }
            }
        }
    }

    Drawer {
        id: drawer

        height: root.height - header.height
        width: root.width * 0.6
        y: header.height
    }

    Label {
        id: label

        anchors.fill: parent
        font.pixelSize: 96
        horizontalAlignment: Label.AlignHCenter
        text: "Aa"
        verticalAlignment: Label.AlignVCenter

        transform: Translate {
            x: drawer.position * label.width * 0.33
        }
    }
}
