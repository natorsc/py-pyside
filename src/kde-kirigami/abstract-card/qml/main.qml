import QtQuick
import QtQuick.Layouts
import QtQuick.Controls as Controls
import org.kde.kirigami as Kirigami

Kirigami.ApplicationWindow {
    id: root

    height: minimumHeight
    minimumHeight: 360
    minimumWidth: 640
    title: qsTr("Python - PySide6 - Kirigami")
    visible: true
    width: minimumWidth


    pageStack.initialPage: initPage
    
    Component {
        id: initPage
    
    Kirigami.Page {
        id: page

        Kirigami.AbstractCard {
            anchors.left: parent.left
            anchors.margins: 12
            anchors.top: parent.top

            contentItem: Controls.Label {
                text: "Lorem Ipsum is simply..."
                wrapMode: Text.WordWrap
            }
            header: Kirigami.Heading {
                level: 2
                text: qsTr("AbstractCard")
            }
        }
    }
}
}