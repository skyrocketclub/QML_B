import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")
    id: root

    Item {
        id: code
        function performClick(){
            print("Javascrpt in a signal handler")
            var max = root.width - box.width
            box.x = (box.x == 0)? max:0
        }
    }

    Rectangle{
        id: box
        color: swapcolor()
        width: 100
        height: 100
        x: 0
        y: (parent.height/2) - (height/2)

        //function
        function swapcolor(){
            return area.pressed ? "orange" : "gray"
        }

        MouseArea{
            anchors.fill: parent
            id: area
            onClicked: code.performClick()
        }
    }
}
