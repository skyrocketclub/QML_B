import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")// This is available in all editors.

    Image {
        id: name
        source: "qrc:/three.jpg"
        anchors.fill: parent
    }


}
