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
        width: 468
        height: 272
        anchors.verticalCenter: parent.verticalCenter
        spacing: 20
        anchors.horizontalCenter: parent.horizontalCenter

        Label {
            id: label
            color: "#2237ce"
            text: qsTr("WELCOME TO THE VOCAB CHALLENGE 1.0")
            font.family: "Courier"
            font.bold: true
            font.pointSize: 20
            anchors.horizontalCenter: parent.horizontalCenter
        }

        Button {
            id: button
            text: qsTr("NEW GAME")
            font.styleName: "Bold Italic"
            font.bold: true
            font.pointSize: 30
            highlighted: true
            anchors.horizontalCenter: parent.horizontalCenter
        }
    }
}
