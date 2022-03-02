import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")


    MyShape{
        id: shareCentral
        anchors.centerIn: parent

        Text {
            id: name
            text: qsTr("Hello")// This is available in all editors.
            anchors.centerIn: parent
        }

        Rectangle{
            width: 25
            color: "white"
            height: 25
            anchors.right: parent.right
            anchors.bottom: parent.bottom
        }
    }

    MyShape{
        color:"pink"
        id:shapeTop
            anchors.bottom: shareCentral.top
            anchors.left: shareCentral.left

            Text {
                id: name_2
                text: qsTr("Top")// This is available in all editors.
                anchors.centerIn: parent
            }

        }

    MyShape{
        color:"green"
        id:shapebottom
            anchors.top: shareCentral.bottom
            anchors.left: shareCentral.left

            Text {
//                id: name_2
                text: qsTr("shapebottom")// This is available in all editors.
                anchors.centerIn: parent
            }

        }
    MyShape{
        color:"red"
        id:shapeleft
            anchors.top: shareCentral.top
            anchors.right: shareCentral.left

            Text {
//                id: name_2
                text: qsTr("shapeleft")// This is available in all editors.
                anchors.centerIn: parent
            }

        }

    MyShape{
        color:"yellow"
        id:shaperight
            anchors.bottom: shareCentral.bottom
            anchors.left: shareCentral.right

            Text {
//                id: name_2
                text: qsTr("shaperight")// This is available in all editors.
                anchors.centerIn: parent
            }

        }

 }

