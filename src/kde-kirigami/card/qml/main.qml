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

        Kirigami.Card {
            anchors.left: parent.left
            anchors.margins: 12
            anchors.top: parent.top
            id: "card"

            actions: [
                Kirigami.Action {
                    icon.name: "add-placemark"
                    text: qsTr("Action1")

                    onTriggered: showPassiveNotification("Action 1 clicked")
                },
                Kirigami.Action {
                    icon.name: "address-book-new-symbolic"
                    text: qsTr("Action2")

                    onTriggered: showPassiveNotification("Action 2 clicked")
                }
            ]
            contentItem: Controls.Label {
                id: label

                text: "Lorem Ipsum is simply..."
                wrapMode: Text.WordWrap
            }

            banner {
                source: "file:./src/kde-kirigami/card/banner.jpg"
                title: "Title Alignment"
                titleAlignment: Qt.AlignLeft | Qt.AlignBottom
            }
        }
    }
}
