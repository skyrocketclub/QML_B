import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")
    id: root

    property color bgcolor: "#5A6263"
    property color buttoncolor: "green"
    property color hovercolor: "limegreen"
    property color clickcolor: "yellow"
    property var size: 100

    Rectangle{
        id: background
        color: root.buttoncolor
        width: 100
        height: root.height

        Column{
            id: column
            anchors.fill: parent


            HoverButton{
                width: 100
                height: 50
                title.text: "Cat"
                color: root.buttoncolor
                hovercolor: root.hovercolor
                clickcolor: root.clickcolor
                area.onPressed: image.source = "qrc:/Images/two.jpg"
            }
            HoverButton{
                width: 100
                height: 50
                y:50
                title.text: "Dog"
                color: root.buttoncolor
                hovercolor: root.hovercolor
                clickcolor: root.clickcolor
                area.onPressed: image.source = "qrc:/Images/one.jpg"
            }
            HoverButton{
                width: 100
                height: 50
                y:100
                title.text: "Fish"
                color: root.buttoncolor
                hovercolor: root.hovercolor
                clickcolor: root.clickcolor
                area.onPressed: image.source = "qrc:/Images/three.jpg"
            }
        }
    }
    Rectangle{
        id: rectangle
        color: root.bgcolor
       x:100
       y:0
       width: parent.width -x
       height: parent.height

       Image {
           id: image
           anchors.margins: 25
           anchors.fill: parent
           fillMode: Image.PreserveAspectFit
           source: "qrc:/Images/QT.png"
       }



    }
}
