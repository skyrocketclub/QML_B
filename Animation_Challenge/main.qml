import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Rectangle{
        id: rect1
        x: (parent.width/2) - (width/2)
        y: (parent.height/2) - (height/2)
        width: 50
        height: 50
        color: "red"
        focus: true

        Keys.onUpPressed:rect1.y = rect1.y - 10
        Keys.onDownPressed:rect1.y = rect1.y + 10
        Keys.onLeftPressed:rect1.x = rect1.x - 10
        Keys.onRightPressed:rect1.x = rect1.x + 10
    }


}
