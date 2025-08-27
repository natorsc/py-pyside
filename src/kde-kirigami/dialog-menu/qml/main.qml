import QtQuick
import QtQuick.Layouts
import QtQuick.Controls as Controls
import org.kde.kirigami as Kirigami

Kirigami.ApplicationWindow {
    id: root

    height: minimumHeight
    minimumHeight: 640
    minimumWidth: 360
    title: qsTr("Python - PySide6 - Kirigami")
    visible: true
    width: minimumWidth

    pageStack.initialPage: Kirigami.Page {
        id: page

        actions: Kirigami.Action {
            icon.name: "list-add"
            text: menuDialog.title

            onTriggered: menuDialog.open()
        }

        Kirigami.MenuDialog {
            id: menuDialog

            showCloseButton: false
            title: qsTr("Track options")

            actions: [
                Kirigami.Action {
                    icon.name: "media-playback-start"
                    text: qsTr("Play")
                    tooltip: qsTr("Start playback of the selected track")

                    onTriggered: showPassiveNotification(`${this.text} triggered.`)
                },
                Kirigami.Action {
                    enabled: false
                    icon.name: "document-open-folder"
                    text: qsTr("Show in folder")
                    tooltip: qsTr("Show the file for this song in the file manager")

                    onTriggered: showPassiveNotification(`${this.text} triggered.`)
                },
                Kirigami.Action {
                    icon.name: "documentinfo"
                    text: qsTr("View details")
                    tooltip: qsTr("Show track metadata")

                    onTriggered: showPassiveNotification(`${this.text} triggered.`)
                },
                Kirigami.Action {
                    icon.name: "list-add"
                    text: qsTr("Play next")
                    tooltip: qsTr("Add the track to the queue, right after the current track")

                    onTriggered: showPassiveNotification(`${this.text} triggered.`)
                },
                Kirigami.Action {
                    icon.name: "list-add"
                    text: qsTr("Add to queue")
                    tooltip: qsTr("Enqueue current track")

                    onTriggered: showPassiveNotification(`${this.text} triggered.`)
                }
            ]
        }
    }
}
