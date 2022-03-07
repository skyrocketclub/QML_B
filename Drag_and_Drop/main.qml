import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    property string thekey: "special key here"
    property color goalOn: "green"
    property color goalOff: "red"
    property color ballOn: "yellow"
    property color ballOff: "orange"

    //Defining the drop area
    DropArea{
        id: dropZone
        anchors.top: parent.top
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        width: 300
        Drag.keys: [thekey]
        onDropped: {
            console.log("dropped")
            goal.color = goalOn
        }
        Rectangle{
            id: goal
            anchors.fill:parent
            color: goalOff
            border.color: "black"
            border.width: 5
        }
    }

}
