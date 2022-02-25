import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Text {
        //An Id has to be unique for each component
        id: element
        text: qsTr("Hello World") //QString Translate
        anchors.centerIn:parent
        font.bold: true
        font.pixelSize: 25
    }
}

/*##^##
Designer {
    D{i:0;formeditorColor:"#ffffff";formeditorZoom:0.9}
}
##^##*/
