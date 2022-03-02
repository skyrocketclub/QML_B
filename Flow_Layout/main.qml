import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Rectangle{
        color: "pink"
        anchors.centerIn: parent
        width: 300
        height: 400

        clip:true
        Flow{
            anchors.centerIn: parent


            //modifyng the flow proper
//            flow: Flow.TopToBottom
            flow: FLow.LeftToRight
            spacing:5


            MyShape{color: "red"}
            MyShape{color: "yellow"}
            MyShape{color: "green"}
            MyShape{color: "blue"}
            MyShape{color: "black"}
            MyShape{color: "grey"}
            MyShape{color: "teal"}
            MyShape{color: "brown"}
            MyShape{color: "orange"}
        }
    }
}
