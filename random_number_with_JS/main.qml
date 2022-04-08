import QtQuick 2.15
import QtQuick.Window 2.15
import "codejs.js" as Code

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Text{
        id: textb
        anchors.bottom: button.top
        anchors.margins: 5
        anchors.left: button.left
        text: "0"
        font.pointSize: 35
        font.bold: true
    }

    Rectangle{
        id: button
        width: 50
        height: 50
        anchors.centerIn: parent
        color: "gray"

        Text {
            id: text
            text: qsTr("Click me")
            anchors.centerIn: parent
        }

        MouseArea{
            id: area
            anchors.fill: parent
            onClicked: {
                textb.text = Code.random()
            }
        }
    }
}
