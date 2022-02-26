import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Rectangle{
//        anchors.centerIn: parent
        width:100
        height: 100
        x:390
        y:190
        //The color belongs to the rectangle because tap handler has no color strictly speaking
        color:inputhandler.pressed? "red":"blue"

        TapHandler{
            id: inputhandler
        }
    }

    Rectangle{
//        anchors.centerIn: parent - 100
        id:rect1
        width:100
        height: 100
        x:270
        y:190
        color:inputhandler_2.pressed?"red":"blue"
        TapHandler{
            id:inputhandler_2
        }
    }
}
