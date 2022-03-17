import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.3

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    BusyIndicator {
        id: busyIndicator
        x: 300
        y: 220
    }

    Label {
        id: label
        x: 306
        y: 189
        width: 58
        height: 25
        text: qsTr("Progress = ") + busyIndicator.running
        property string title: "none.none"


        MouseArea {
            id: mouseArea
            width: 100
            height: 100
            anchors.fill: parent
            onClicked: {
                if(busyIndicator.running){
                    console.log("Turning off")
                    busyIndicator.running = false
                }else{
                    console.log("Turning on")
                    busyIndicator.running = true
                }
            }
        }
    }
}

/*##^##
Designer {
    D{i:0;formeditorZoom:0.75}
}
##^##*/
