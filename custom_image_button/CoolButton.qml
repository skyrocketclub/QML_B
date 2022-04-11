import QtQuick 2.0

Item {
    id: root
    property color colorBorder: "darkred"
    property color colorNormal: "red"
    property color colorPressed: "yellow"
    property color colorHover: "orange"
    property string source: ""

    signal clicked()

    Rectangle{
        id: body
        radius: width
        color: root.colorNormal
        border.width: 2
        border.color: root.colorBorder
        anchors.fill: parent

        MouseArea{
            id: area
            anchors.fill: parent
            hoverEnabled: true
            onPressed: {
                body.color = root.colorPressed
                root.clicked()  //the signal is emitted
            }
            onReleased: {
                body.color = root.colorHover
            }
            onEntered: {
                body.color = root.colorHover
            }
            onExited: {
                body.color = root.colorNormal
            }
        }

        Image{
            id: image
            anchors.fill: parent
            fillMode: Image.PreserveAspectFit //so that we can be able to stretch the image without distorting it
            source: root.source
        }
    }
}
