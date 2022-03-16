import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Rectangle {
        id: rectangle
        x: 107
        y: 126
        width: 200
        height: 200
        color: "#332dd7"

        MouseArea {
            id: mouseArea
            anchors.fill: parent

            Connections {
                target: mouseArea
                onClicked: rectangle1.property0 = "Hello"
            }
        }
    }

    Rectangle {
        id: rectangle1
        x: 375
        y: 126
        width: 200
        height: 200
        color: "#28d71f"
        property string property0: "Title"

        Text {
            id: text1
            x: 82
            y: 76
            color: "#edf4f0"
            text: parent.property0
            anchors.verticalCenter: parent.verticalCenter
            font.pixelSize: 35
            font.bold: true
            anchors.horizontalCenter: parent.horizontalCenter
        }
    }
}
