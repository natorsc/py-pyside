Item {
    id: itemName

    anchors.fill: parent

    Rectangle {
        anchors.fill: parent
        color: "steelblue"
        height: 128
        width: 128
    }

    Label {
        id: label

        anchors.centerIn: parent
        color: "white"
        font.pixelSize: 24
        text: "ItemName.qml"
    }
}
