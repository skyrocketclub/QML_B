import QtQuick 2.15
import QtQuick.Window 2.1
import QtQuick.Controls 2.3

Window {
    id: window
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Grid {
        id: grid
        x: 0
        y: 0
        width: 427
        height: 195
        anchors.verticalCenter: parent.verticalCenter
        spacing: 25
        columns: 2
        anchors.horizontalCenter: parent.horizontalCenter

        Slider {
            id: slider
            stepSize: 0.01
            value: 0
        }

        Label {
            id: label
            font.pointSize: 25

            Connections {
                target: slider
                onMoved: label.text = Math.round(slider.value*100)
            }
        }
    }
}
