import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Grid{
        anchors.centerIn: parent
        spacing: 5
        rows:3
        columns: 3

        MyShape {color: "red"}
        MyShape {color: "orange"}
        MyShape {color: "yellow"}
        MyShape {color: "green"}
        MyShape {color: "blue"}
        MyShape {color: "indigo"}
        MyShape {color: "violet"}
        MyShape {color: "black"}
        MyShape {color: "pink"}
    }
}
