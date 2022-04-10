import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.3

Window {
    id: window
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Column {
        id: column
        width: 128
        height: 182
        anchors.verticalCenter: parent.verticalCenter
        spacing: 10
        anchors.horizontalCenter: parent.horizontalCenter

        Label {
            id: label
            text: qsTr("Name")
        }

        TextField {
            id: textField
            placeholderText: qsTr("Text Field")
        }

        Button {
            id: button
            width: 55
            text: qsTr("Button")
        }

        Button {
            id: button1
            text: qsTr("Button")
        }
    }
}
