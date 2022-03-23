import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.3

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Column {
        id: column
        anchors.fill: parent

        Image {
            id: image
            width: 300
            height: 300
            anchors.verticalCenter: parent.verticalCenter
            source: "qrc:/images/sad.png"
            sourceSize.height: 300
            sourceSize.width: 300
            anchors.horizontalCenter: parent.horizontalCenter
            fillMode: Image.PreserveAspectFit
        }

        Switch {
            id: switch1
            text: qsTr("Sad")
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 25
            anchors.horizontalCenter: parent.horizontalCenter

            onToggled: {
                if(checked){
                   text = "happy"
                    image.source = "qrc:/images/happy.jpg"
                }
                else{
                    text = "sad"
                     image.source = "qrc:/images/sad.png"
                }
            }
        }
    }


}
