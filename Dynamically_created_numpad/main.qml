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
        width: 236
        height: 362
        anchors.verticalCenter: parent.verticalCenter
        spacing: 25
        anchors.horizontalCenter: parent.horizontalCenter

        Label {
            id: label
            text: qsTr("Status")
            font.pointSize: 25
            anchors.horizontalCenter: parent.horizontalCenter
        }

        NumberPad {
            id: numberPad
            width: 100
            height: 100
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter
            onClicked: label.text = value  //Emmitted from the buttons
        }
    }


}
