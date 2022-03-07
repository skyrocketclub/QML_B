import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")
    id: root

    Rectangle{
        id: myShape
        color: "red"
        width: 100
        height: 100
        x: 0
        y: (parent.height/2) - (height/2)

        PropertyAnimation{
            id: animationright
            target: myShape //object to be animated
            property: "x" //property to be animated
            to: root.width - myShape.width
            duration:50
        }
        PropertyAnimation{
            id: animationleft
            target: myShape //object to be animated
            property: "x" //property to be animated
            to: 0
            duration: 2000
        }

        MouseArea{
            anchors.fill: myShape
            onClicked: {
                if(myShape.x === 0){
                    animationright.start()
                }
                else{
                    animationleft.start()
                }
            }
        }
    }

}
