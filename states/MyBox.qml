import QtQuick 2.0

Item {
    id: element
    property color offColor: "\"red\""
    property color onColor: "\"green\""
    property color defaultColor: "\"gray\""

    Connections {
        target: element
        onClicked: console.log("clicked")
    }

    Rectangle {
        id: rectangle
        color: "#ffffff"
        anchors.fill: parent
        property color property0: defaultColor
        radius: width
    }

}
