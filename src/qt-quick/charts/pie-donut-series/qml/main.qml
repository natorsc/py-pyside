import QtCharts
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

    ChartView {
        id: chart

        anchors.fill: parent
        antialiasing: true
        legend.alignment: Qt.AlignBottom
        legend.visible: false
        title: "Pie Donut Series"

        Component.onCompleted: {
            // Set the common slice properties dynamically for convenience.
            for (var i = 0; i < pieOuter.count; i++) {
                pieOuter.at(i).labelPosition = PieSlice.LabelOutside;
                pieOuter.at(i).labelVisible = true;
                pieOuter.at(i).borderWidth = 3;
            }
            for (var i = 0; i < pieInner.count; i++) {
                pieInner.at(i).labelPosition = PieSlice.LabelInsideNormal;
                pieInner.at(i).labelVisible = true;
                pieInner.at(i).borderWidth = 2;
            }
        }

        PieSeries {
            id: pieOuter

            holeSize: 0.7
            size: 0.96

            PieSlice {
                id: slice

                color: "#99CA53"
                label: "Alpha"
                value: 19511
            }

            PieSlice {
                color: "#209FDF"
                label: "Epsilon"
                value: 11105
            }

            PieSlice {
                color: "#F6A625"
                label: "Psi"
                value: 9352
            }
        }

        PieSeries {
            id: pieInner

            holeSize: 0.25
            size: 0.7

            PieSlice {
                color: "#B9DB8A"
                label: "Materials"
                value: 10334
            }

            PieSlice {
                color: "#DCEDC4"
                label: "Employee"
                value: 3066
            }

            PieSlice {
                color: "#F3F9EB"
                label: "Logistics"
                value: 6111
            }

            PieSlice {
                color: "#63BCE9"
                label: "Materials"
                value: 7371
            }

            PieSlice {
                color: "#A6D9F2"
                label: "Employee"
                value: 2443
            }

            PieSlice {
                color: "#E9F5FC"
                label: "Logistics"
                value: 1291
            }

            PieSlice {
                color: "#F9C36C"
                label: "Materials"
                value: 4022
            }

            PieSlice {
                color: "#FCE1B6"
                label: "Employee"
                value: 3998
            }

            PieSlice {
                color: "#FEF5E7"
                label: "Logistics"
                value: 1332
            }
        }
    }
}
