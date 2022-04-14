import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.3

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    property variant places: ["Italian","Mexican","Asian","American"];
    MouseArea{
        id: area
        anchors.fill: parent

        onClicked:{
            aniStart.stop()
            aniFadeOut.stop()
            lblPlace.font.pixelSize = 45
            lblPlace.rotation = 0.0
            aniFadeOut.start()
        }

        Label{
            id: lblPlace
            anchors.centerIn: parent
            font.bold: true
            font.pixelSize: 25
            text: "Tap me"
        }
    }

    function pick(){
var i = Math.floor(Math.random() * places.length)
        lblPlace.text = places[i]
        aniSelection.start()
    }

    SequentialAnimation{
        id: aniStart
        running: true
        loops: Animation.Infinite
        NumberAnimation{target: lblPlace; property: "font.pixelSize"; to: 45; duration: 1000}
        NumberAnimation{target: lblPlace; property: "font.pixelSize"; to: 25; duration: 1000}

    }

    OpacityAnimator{
        id: aniFadeOut
        running: false
        target: lblPlace
        from: 1
        to: 0
        duration: 1000
        onFinished: pick()
    }

    //running more than one animation at once...
    ParallelAnimation{
        id: aniSelection
        running: false
            NumberAnimation{
                target: lblPlace
                property: "font.pixelSize"
                from: 1
                to: 45
                duration: 2000

            }

            OpacityAnimator{
                target: lblPlace
                from: 0
                to : 1
                duration: 2000
            }

            RotationAnimation{
                target: lblPlace
                from: 0
                to : 1
                duration: 2000
                direction: RotationAnimation.Counterclockwise
            }
    }
}
