import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Rectangle{
        id: background
        color: "black"
        anchors.fill: parent

        //Since we want to get this to react to the keyboard
        focus: true

        Rectangle{
            id: rect1
            color: "red"
            anchors.centerIn: parent
            width: 100
            height: 100
        }

        Rectangle{
            id: outline
            color: "transparent"
            anchors.centerIn: parent
            width: 100
            height: 100
            border.color: "yellow"
            border.width: 5
        }

        Keys.onUpPressed: rect1.height +=10
        Keys.onDownPressed: rect1.height -=10
        Keys.onRightPressed: rect1.width +=10
        Keys.onLeftPressed: rect1.width -=10
    }
}
