import QtQuick 2.0

Rectangle {
    id:root
    property color body: "blue"
    property color hovercolor: "skyblue"
    property color clickcolor: "yellow"
    property color textcolor: "black"
    property alias mousearea: drags
    property alias title: number
    property alias present: hidden

    height: 50
    width: 50
    color: root.body


        Text {
            id: number
            text: ""
            font.bold: true
            anchors.centerIn: parent
        }

        Text{
            id: hidden
            text: ""
            visible: false
        }

        MouseArea{
            id: drags
            hoverEnabled: true
            anchors.fill: parent
//            drag.target: parent

            onEntered: parent.color = root.hovercolor
            onExited: parent.color = root.body
            onPressed:{

                parent.color = root.clickcolor
                hidden.text = title.text
            }
            onReleased: parent.color = root.hovercolor
        }



}
