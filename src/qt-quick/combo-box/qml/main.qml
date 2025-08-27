import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

ApplicationWindow {
    id: root

    height: minimumHeight
    minimumHeight: 360
    minimumWidth: 640
    title: "Python - PySide6 - Qt"
    visible: true
    width: minimumWidth

    Column {
        anchors.fill: parent
        anchors.margins: 12
        spacing: 6

        ComboBox {
            model: ["First", "Second", "Third"]
        }

        ComboBox {
            editable: true

            model: ListModel {
                id: model

                ListElement {
                    text: "Banana"
                }

                ListElement {
                    text: "Apple"
                }

                ListElement {
                    text: "Coconut"
                }
            }

            onAccepted: {
                if (find(editText) === -1)
                    model.append({
                        text: editText
                    });
            }
        }
    }
}
