import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")
    id: root

    Rectangle{
        id: box
        color: area.pressed? "orange" : "gray" //If the area is pressed, let orange be the color, else let gray be the color
        width: 100
        height: 100
        x:0
        y: (parent.height/2)-(height/2)

        MouseArea{
            id: area
            anchors.fill: parent

            onClicked: {
                print("Javascript in signal handler!")
                var max = root.width - box.width
                box.x = (box.x == 0)? max : 0
            }
        }
    }
}
