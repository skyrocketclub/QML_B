import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.3

Window {
    id: window
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Grid {
        id: grid
        x: 1
        y: 2
        width: 421
        height: 104
        anchors.verticalCenter: parent.verticalCenter
        columns: 2
        anchors.horizontalCenter: parent.horizontalCenter

        Slider {
            id: slider
            width: 200
            value: 0.5
        }
    }

}
