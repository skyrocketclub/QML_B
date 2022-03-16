import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Rectangle {
        id: rectangle
        x: 115
        y: 86
        width: 100
        height: 100
        color: "#f0180f"



        MouseArea {
            id: mouseArea
            anchors.fill: parent

            Connections {
                target: mouseArea
                onClicked:{
                    rectangle.width = 50
                    rectangle.height = 200
                }
            }
        }
    }

    Rectangle {
        id: rectangle1
        x: 240
        y: 86
        width: rectangle.width
        height: rectangle.height
        color: "#37e323"

        Connections {
            target: rectangle1
            onClicked: console.log("clicked")
        }

        MouseArea {
            id: mouseArea1
            anchors.fill: parent

            Connections {
                target: mouseArea1
                onClicked: console.log("clicked")
            }
        }
    }

    Rectangle {
        id: rectangle2
        x: 369
        y: 86
        width: 100
        height: 100
        color: "#332bca"
    }

    MouseArea {
        id: mouseArea2
        anchors.fill: parent

        Connections {
            target: mouseArea2
            onClicked: console.log("clicked")
        }

        Connections {
            target: mouseArea2
            onClicked: {
                print("clicked")
                rectangle.width = 50
                rectangle.height= 150
            }
        }
    }
}
