import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.3

//The text class is available in the root context...
Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Connections{
        target: testing //the c++ object on the toot context. we can connect to it because it is a QObject with signals and slots...
        onNotices:{
            console.log("Slot called from c++")
            label.text = data //this is obtained from the signal
        }
    }

Column{
    spacing: 15
    id: column
    width: 200
    height: 168
    anchors.centerIn: parent

    Label {
        id: label1
        text: qsTr("Connecting to Signals")
        anchors.left: label.left
        anchors.bottom: label.top
    }

    Label {
        id: label
        text: qsTr("Status")
        anchors.verticalCenter: parent.verticalCenter
        font.bold: true
        font.pointSize: 21
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.margins: 10
    }

    Row{
        spacing: 20
        id:row
        anchors.top: label.bottom

        anchors.left: label.left

        Button {
            id: button
            text: qsTr("Start")
            onClicked: testing.start()
        }

        Button {
            id: button1
            text: qsTr("Stop")
            onClicked: testing.stop()
        }

    }

}



    }


