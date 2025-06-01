import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

ApplicationWindow {
    id: root

    height: 360
    minimumHeight: 360
    minimumWidth: 640
    title: "Python - PySide6 - Qt"
    visible: true
    width: 640

    TreeView {
        id: treeView

        anchors.fill: parent
        anchors.margins: 10
        clip: true

        // The model needs to be a QAbstractItemModel.
        model: file_system_model

        delegate: Item {
            required property int column
            required property bool current
            required property int depth
            required property bool expanded
            required property int hasChildren
            readonly property real indentation: 20

            // Rotate indicator when expanded by the user
            // (requires TreeView to have a selectionModel).
            property Animation indicatorAnimation: NumberAnimation {
                duration: 100
                easing.type: Easing.OutQuart
                from: expanded ? 0 : 90
                property: "rotation"
                target: indicator
                to: expanded ? 90 : 0
            }
            required property bool isTreeNode
            readonly property real padding: 5
            required property int row

            // Assigned to by TreeView:
            required property TreeView treeView

            implicitHeight: label.implicitHeight * 1.5
            implicitWidth: padding + label.x + label.implicitWidth + padding

            TableView.onPooled: indicatorAnimation.complete()
            TableView.onReused: if (current)
                indicatorAnimation.start()
            onExpandedChanged: indicator.rotation = expanded ? 90 : 0

            Rectangle {
                id: background

                anchors.fill: parent
                color: row === treeView.currentRow ? palette.highlight : "black"
                opacity: (treeView.alternatingRows && row % 2 !== 0) ? 0.3 : 0.1
            }

            Label {
                id: indicator

                anchors.verticalCenter: parent.verticalCenter
                text: "▶"
                visible: isTreeNode && hasChildren
                x: padding + (depth * indentation)

                TapHandler {
                    onSingleTapped: {
                        let index = treeView.index(row, column);
                        treeView.selectionModel.setCurrentIndex(index, ItemSelectionModel.NoUpdate);
                        treeView.toggleExpanded(row);
                    }
                }
            }

            Label {
                id: label

                anchors.verticalCenter: parent.verticalCenter
                clip: true
                text: model.display
                width: parent.width - padding - x
                x: padding + (isTreeNode ? (depth + 1) * indentation : 0)
            }
        }
        selectionModel: ItemSelectionModel {
        }
    }
}
