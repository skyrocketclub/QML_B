import QtQuick 2.15
import QtQuick.Window 2.15


Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Rectangle{
        id: myitem
        anchors.centerIn: parent
        color:"red"
        width:200
        height:200
        visible: true

        border.color: "black"
        border.width: 5
        radius:200 //to get a circle, set the radius of triangle to the larger number btw the width and the height

        gradient: Gradient{
            GradientStop {position: 0.0; color:"red"}
            GradientStop {position: 1.0; color:"green"}

        }
    }
}
