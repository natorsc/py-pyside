import QtQuick
import QtQuick.Controls as Controls
import QtQuick.Layouts
import org.kde.kirigami as Kirigami

Kirigami.ApplicationWindow {
    id: root

    height: minimumHeight
    minimumHeight: 640
    minimumWidth: 360
    title: qsTr("Python - PySide6 - Kirigami")
    visible: true
    width: minimumWidth

    globalDrawer: Kirigami.GlobalDrawer {
        title: "Global Drawer"
        titleIcon: "applications-graphics"

        actions: [
            Kirigami.Action {
                icon.name: "user-home-symbolic"
                text: "Kirigami Action 1"

                onTriggered: showPassiveNotification("Action 1 clicked")
            },
            Kirigami.Action {
                icon.name: "settings-configure-symbolic"
                text: "Kirigami Action 2"

                onTriggered: showPassiveNotification("Action 2 clicked")
            },
            Kirigami.Action {
                icon.name: "application-exit-symbolic"
                shortcut: StandardKey.Quit
                text: qsTr("Quit")

                onTriggered: Qt.quit()
            }
        ]
    }
    pageStack.initialPage: Kirigami.Page {
        id: page

        Text {
            text: "Hello World."
        }
    }
}
