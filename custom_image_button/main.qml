import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.3

Window {
    id: window
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Column {
        id: column
        width: 200
        height: 400
        anchors.verticalCenter: parent.verticalCenter
        spacing: 25
        anchors.horizontalCenter: parent.horizontalCenter

        CoolButton {
            id: coolButton
            width: 100
            height: 100
            source: "qrc:/files/up.png"
            onClicked: console.log("upclicked")
        }

        CoolButton {
            id: coolButton1
            width: 100
            height: 100
            source: "qrc:/files/down.png"
             onClicked: console.log("down clicked")
        }
    }


}
