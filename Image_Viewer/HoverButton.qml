import QtQuick 2.0

Item {
    id:root
    property color color: "red"
    property color hovercolor: "pink"
    property color textcolor: "white"
    property color texthover: "black"
    property color clickcolor: "orange"
    property alias title: display
    property alias area: mousearea

    Rectangle{
        height: root.height
        width: root.width
        color: root.color
        clip: true

        Text{
            id: display
            text: ""
            anchors.centerIn: parent
            color: root.textcolor
            font.bold: true
        }

        MouseArea{
            id: mousearea
            anchors.fill: parent
            hoverEnabled: true

            onEntered:{
                parent.color = root.hovercolor
                display.color = root.textcolor
            }
            onExited: {
                parent.color = root.color
                display.color = root.textcolor
            }
            onPressed: parent.color = root.clickcolor
            onReleased: parent.color = root.hovercolor
        }
    }
}
