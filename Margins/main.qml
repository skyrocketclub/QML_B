import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Rectangle{
        width: 300
        height: 400
        color: "red"
        anchors.centerIn: parent

        Rectangle{
            width: 100
            height: 100
            color: "yellow"

            anchors.margins: 50 //All MArgins
            anchors.left: parent.left
            anchors.bottom: parent.bottom
            anchors.leftMargin: 15
        }
    }
}
