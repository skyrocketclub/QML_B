import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.3

Window {
    id: window
    width: 640
    height: 480
    visible: true
    color: "#534e4e"
    title: qsTr("Hello World")

    Row {
        id: row
        x: 9
        y: 0
        width: 640
        height: 45
        spacing: 5

        Button {
            id: button
            width: 50
            height: 30
            text: qsTr("One")

            Connections {
                target: button
                onClicked: image.source = "qrc:/one.jpg"
            }
        }

        Button {
            id: button1
            width: button.width
            height: button.height
            text: qsTr("Two")

            Connections {
                target: button1
                onClicked: image.source= "qrc:/two.jpg"
            }
        }

        Button {
            id: button2
            width: button.width
            height: button.height
            text: qsTr("Three")

            Connections {
                target: button2
                onClicked: image.source ="qrc:/three.jpg"
            }
        }
    }

    Image {
        id: image
        x: 270
        y: 190
        width: 482
        height: 399
        anchors.verticalCenter: parent.verticalCenter
        source: "qrc:/qtquickplugin/images/template_image.png"
        anchors.verticalCenterOffset: 17
        anchors.horizontalCenterOffset: 15
        anchors.horizontalCenter: parent.horizontalCenter
        fillMode: Image.PreserveAspectFit
    }
}

/*##^##
Designer {
    D{i:0;formeditorZoom:0.66}
}
##^##*/
