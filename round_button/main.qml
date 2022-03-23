import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.3

Window {
    id: window
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    property var value: 0

    Row {
        id: row
        x: 68
        y: 171
        width: 295
        height: 60
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter
        spacing: 10

        RoundButton {
            id: roundButton
            radius: 19
            text: "+"
            font.pointSize: 15
             onClicked: value++
        }

        RoundButton {
            id: roundButton1
            radius: 19
            text: "-"
            font.pointSize: 15
            onClicked: value --
        }

        Label {
            id: label
            text: "Value: " + value
            font.pointSize: 25
        }
    }
}
