import QtQuick
import QtQuick.Layouts
import QtQuick.Controls as Controls
import org.kde.kirigami as Kirigami

Kirigami.ApplicationWindow {
    id: root

    height: minimumHeight
    minimumHeight: 640
    minimumWidth: 360
    pageStack.initialPage: [emptyPage, contextDrawerPage]
    title: qsTr("Python - PySide6 - Kirigami")
    visible: true
    width: minimumWidth

    contextDrawer: Kirigami.ContextDrawer {
    }
    globalDrawer: Kirigami.GlobalDrawer {
    }

    Kirigami.Page {
        id: emptyPage

        title: "Empty page"
    }

    Kirigami.Page {
        id: contextDrawerPage

        title: "Context Drawer page"

        actions: [
            Kirigami.Action {
                icon.name: "media-record"
            },
            Kirigami.Action {
                icon.name: "arrow-left"
            },
            Kirigami.Action {
                icon.name: "arrow-right"
            },
            Kirigami.Action {
                icon.name: "media-playback-start"
                text: "Contextual Action 1"
            },
            Kirigami.Action {
                icon.name: "media-playback-stop"
                text: "Contextual Action 2"
            }
        ]
    }
}
