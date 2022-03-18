import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.3

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Column {
        id: column
        x: 162
        y: 40
        width: 316
        height: 400
        spacing: 50

        Label {
            id: label
            text: qsTr("Value")
            font.pointSize: 50
            anchors.horizontalCenter: parent.horizontalCenter

        }

        Dial {
            id: dial
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter

            Connections {
                target: dial
                onMoved: label.text = Math.round(dial.value * 100)
            }
        }
    }


}
