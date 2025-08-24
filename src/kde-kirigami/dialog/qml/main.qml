import QtQuick
import QtQuick.Layouts
import QtQuick.Controls as Controls
import org.kde.kirigami as Kirigami

Kirigami.ApplicationWindow {
    id: root

    height: 360
    minimumHeight: 640
    minimumWidth: 360
    title: qsTr("Python - PySide6 - Kirigami")
    visible: true
    width: 640

    pageStack.initialPage: Kirigami.Page {
        id: page

        actions: Kirigami.Action {
            icon.name: "list-add"
            text: "Show dialog"

            onTriggered: dialog.open()
        }

        Kirigami.Dialog {
            id: dialog

            flatFooterButtons: false
            padding: Kirigami.Units.largeSpacing
            showCloseButton: false
            standardButtons: Kirigami.Dialog.NoButton
            title: "A simple dialog"

            customFooterActions: Kirigami.Action {
                icon.name: "clipboard"
                text: "Copy"
            }

            Controls.Label {
                text: "A generic, easy to make dialog!"
            }
        }
    }
}
