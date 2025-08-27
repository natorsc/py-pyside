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
            text: promptDialog.title

            onTriggered: promptDialog.open()
        }

        Kirigami.PromptDialog {
            id: promptDialog

            standardButtons: Kirigami.Dialog.Ok | Kirigami.Dialog.Cancel
            subtitle: qsTr("Are you sure you"d like to delete this file?")
            title: qsTr("Delete file")

            onAccepted: console.info("File deleted")
            onRejected: console.info("Cancel")
        }
    }
}
