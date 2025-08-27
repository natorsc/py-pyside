import QtCharts
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

    ChartView {
        id: chart

        property variant othersSlice: 0

        anchors.fill: parent
        antialiasing: true
        legend.alignment: Qt.AlignBottom
        title: "PieSeries"

        Component.onCompleted: {
            othersSlice = pieSeries.append("Others", 52.0);
            // pieSeries.find("Volkswagen").exploded = true;
        }

        PieSeries {
            id: pieSeries

            property var last: ""

            function explodeSlice(pieSlice) {
                let previousSlice = pieSeries.find(pieSeries.last);
                if (previousSlice) {
                    previousSlice.exploded = false;
                    previousSlice.labelVisible = false;
                }
                let currentSlice = pieSeries.find(pieSlice.label);
                currentSlice.exploded = true;
                currentSlice.labelVisible = true;
                pieSeries.last = pieSlice.label;
            }

            PieSlice {
                label: "Volkswagen"
                value: 13.5

                onClicked: pieSeries.explodeSlice(this)
            }

            PieSlice {
                label: "Toyota"
                value: 10.9

                onClicked: pieSeries.explodeSlice(this)
            }

            PieSlice {
                label: "Ford"
                value: 8.6

                onClicked: pieSeries.explodeSlice(this)
            }

            PieSlice {
                label: "Skoda"
                value: 8.2

                onClicked: pieSeries.explodeSlice(this)
            }

            PieSlice {
                label: "Volvo"
                value: 6.8

                onClicked: pieSeries.explodeSlice(this)
            }
        }
    }
}
