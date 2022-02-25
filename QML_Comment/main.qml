import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    //This is a comment!!!
    Image {
        //Every Identifier must be unique...
        id: myimage
        source: "https://upload.wikimedia.org/wikipedia/commons/0/0b/Qt_logo_2016.svg"
        anchors.centerIn: parent
    }
}
