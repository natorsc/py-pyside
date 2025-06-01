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
        title: "Scatter Chart"

        ScatterSeries {
            id: scatter1

            name: "Scatter A"

            XYPoint {
                x: 1.5
                y: 1.5
            }

            XYPoint {
                x: 1.5
                y: 1.6
            }

            XYPoint {
                x: 1.57
                y: 1.55
            }

            XYPoint {
                x: 1.8
                y: 1.8
            }

            XYPoint {
                x: 1.9
                y: 1.6
            }

            XYPoint {
                x: 2.1
                y: 1.3
            }

            XYPoint {
                x: 2.5
                y: 2.1
            }
        }

        ScatterSeries {
            name: "Scatter B"

            XYPoint {
                x: 2.0
                y: 2.0
            }

            XYPoint {
                x: 2.0
                y: 2.1
            }

            XYPoint {
                x: 2.07
                y: 2.05
            }

            XYPoint {
                x: 2.2
                y: 2.9
            }

            XYPoint {
                x: 2.4
                y: 2.7
            }

            XYPoint {
                x: 2.67
                y: 2.65
            }
        }
    }
}
