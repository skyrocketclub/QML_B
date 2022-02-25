import QtQuick 2.15
import QtQuick.Window 2.15

//Top level object / Root Object
Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")


    Image {
        id: root
        source: "data:image/png;base64,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"
        width: 150
        height: 100
        anchors.centerIn: parent

        Rectangle{
            color: "red"
            width: parent.width
//            height: parent.height
            height: 50
            opacity: 0.2 //50%
        }
    }
}