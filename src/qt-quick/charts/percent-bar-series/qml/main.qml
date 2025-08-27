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

        anchors.fill: parent
        antialiasing: true
        legend.alignment: Qt.AlignBottom
        title: "Percent Bar Chart"

        PercentBarSeries {
            axisX: BarCategoryAxis {
                categories: ["2007", "2008", "2009", "2010", "2011", "2012"]
            }

            BarSet {
                label: "Bob"
                values: [2, 2, 3, 4, 5, 6]
            }

            BarSet {
                label: "Susan"
                values: [5, 1, 2, 4, 1, 7]
            }

            BarSet {
                label: "James"
                values: [3, 5, 8, 13, 5, 8]
            }
        }
    }
}
