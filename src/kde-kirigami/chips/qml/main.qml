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

        title: "Chips"

        Kirigami.FormLayout {
            anchors.fill: parent

            Controls.TextField {
                id: textField

                placeholderText: qsTr("New chip.")

                Keys.onReturnPressed: {
                    let text = textField.text;
                    if (text.len === 0 || text.trim() === "") {
                        showPassiveNotification(qsTr("textField is empty."));
                    } else {
                        chips.append({
                            "text": text
                        });
                    }
                }
            }

            Repeater {
                Layout.fillWidth: true
                model: chips

                Kirigami.Chip {
                    id: chip

                    text: modelData

                    onClicked: showPassiveNotification(`${modelData} clicked`)
                    onRemoved: chips.remove(index)
                }
            }
        }
    }

    ListModel {
        id: chips

        ListElement {
            text: "Chip 1"
        }

        ListElement {
            text: "Chip 2"
        }

        ListElement {
            text: "Chip 3"
        }
    }
}
