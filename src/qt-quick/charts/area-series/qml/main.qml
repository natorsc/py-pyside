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
        title: "Area Chart"

        ValueAxis {
            id: valueAxis

            labelFormat: "%.0f"
            max: 2011
            min: 2000
            tickCount: 12
        }

        AreaSeries {
            axisX: valueAxis
            name: "Brazil"

            upperSeries: LineSeries {
                XYPoint {
                    x: 2000
                    y: 1
                }

                XYPoint {
                    x: 2001
                    y: 1
                }

                XYPoint {
                    x: 2002
                    y: 1
                }

                XYPoint {
                    x: 2003
                    y: 1
                }

                XYPoint {
                    x: 2004
                    y: 1
                }

                XYPoint {
                    x: 2005
                    y: 0
                }

                XYPoint {
                    x: 2006
                    y: 1
                }

                XYPoint {
                    x: 2007
                    y: 1
                }

                XYPoint {
                    x: 2008
                    y: 4
                }

                XYPoint {
                    x: 2009
                    y: 3
                }

                XYPoint {
                    x: 2010
                    y: 2
                }

                XYPoint {
                    x: 2011
                    y: 1
                }
            }
        }
    }
}
