import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Rectangle{
        anchors.fill: parent
        color: "black"
        focus: true //when you hit the key on the key board, this component is the focus

        Rectangle{

            width: 60
            height: 60
            color: "yellow"
            radius: width


            //We are defining a behaviour on a property here
            //A behavior is an abstract term, defining what will happen on a specific property antialiasingChanged:
            x: rect1.x - 5 //This is a property binding here
            y: rect1.y - 5
            Behavior on x {SmoothedAnimation {velocity:100}}
            Behavior on y {SmoothedAnimation {velocity:100}}

        }

        Rectangle{
            id: rect1
            width: 50
            height: 50
            color: "red"
            radius: width
            x: (parent.width/2) - (width/2)
            y: (parent.height/2) - (height/2)
        }

        Keys.onRightPressed: rect1.x = rect1.x + 100
        Keys.onLeftPressed: rect1.x = rect1.x - 100
        Keys.onUpPressed: rect1.y = rect1.y - 100
        Keys.onDownPressed: rect1.y = rect1.y + 100
    }
}
