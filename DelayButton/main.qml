import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.3

Window {
    id: window
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Row {
        id: row
        x: 0
        y: 17
        width: 579
        height: 63
        anchors.verticalCenter: parent.verticalCenter
        spacing: 25
        anchors.horizontalCenter: parent.horizontalCenter

        DelayButton {
            id: delayButton
            text: qsTr("Delete Everything")
            delay: 3000
            onProgressChanged:{
                 label.text = Math.round(progress*100) + " % "
                if(progress === 0){
                    text = "Delete Everything"
                    label.text = "Status"
                }
            }







            onActivated: text = "BOOOOM"
            Connections {
                target: delayButton
                onActivated: {
                    label.text = "Done"

                }
            }

//            Connections {
//                target: delayButton
//                onProgressChanged: label.text = progress
//            }
        }

        Label {
            id: label
            text: qsTr("Status")
            font.bold: true
            font.pointSize: 25
        }
    }
}
