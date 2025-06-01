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
        title: "Line Chart"

        LineSeries {
            name: "Line"

            XYPoint {
                x: 0
                y: 0
            }

            XYPoint {
                x: 1.1
                y: 2.1
            }

            XYPoint {
                x: 1.9
                y: 3.3
            }

            XYPoint {
                x: 2.1
                y: 2.1
            }

            XYPoint {
                x: 2.9
                y: 4.9
            }

            XYPoint {
                x: 3.4
                y: 3.0
            }

            XYPoint {
                x: 4.1
                y: 3.3
            }
        }
    }
}
