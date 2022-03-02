import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    property var midx: width/2
    property var midy: height/2

    MyShape{
        color:"red"
        x:midx - (width/2)
        y: midy - (height/2) - 30
    }
    MyShape{
        color:"green"
        x:midx - (width/2) - 55
        y: midy - (height/2) + 30
    }
    MyShape{
        color:"blue"
        x:midx - (width/2) +55
        y: midy - (height/2) +30
    }

}
