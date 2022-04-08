import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.3

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Column{
        id: column
        width: 200
        height: 168
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter
        spacing: 25

        Label{
            id: label
            text:qsTr("Call a C++ Slot")
            anchors.horizontalCenter: parent.horizontalCenter
        }

        Button{
            id: button
            text: qsTr("Click Me")
            anchors.horizontalCenter: parent.horizontalCenter
            onClicked:{
                //Call a slot
                testing.bark()

                //Cannot call a non slot - must be a property type name: value
                //JavaScript works inside QML or as a separate file
                var num = testing.number()
                print(num)
            }
        }
    }
}
