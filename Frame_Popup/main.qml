import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.3

Window {
    id: window
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Popup{
        id: popup
        anchors.centerIn: parent
        width: 200
        height: 200
        modal: true //When this pops up, you cannot interact with anything else...
        focus: true
        closePolicy: Popup.CloseOnEscape | Popup.CloseOnPressOutside

        Column {

            anchors.fill: parent
            spacing: 25
            anchors.rightMargin: -5
            anchors.bottomMargin: -5
            anchors.leftMargin: 5
            anchors.topMargin: 5

           Label{
               id: lblbutter
               text: "Butter = " + chkButter.checked
           }

           Label{
               id: lblSyrup
               text: "Syrup = " + chkSyrup.checked
           }
           Label{
               id: lblFruit
               text: "Fruit = " + chkFruit.checked
           }
           Button{
               id:closeButton
               text: "Close"
               onClicked: popup.visible = false
           }
        }

    }

    Frame {
        id: frame
        width: 138
        height: 206
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter

        Column {
            id: column
            anchors.fill: parent
            spacing: 25
            anchors.rightMargin: -5
            anchors.bottomMargin: -5
            anchors.leftMargin: 5
            anchors.topMargin: 5

            CheckBox {
                id: chkButter
                text: qsTr("Butter")
            }

            CheckBox {
                id: chkSyrup
                text: qsTr("Syrup")
            }

            CheckBox {
                id: chkFruit
                text: qsTr("Fruit")
            }

            Button {
                id: button
                text: qsTr("Save")
                 onClicked: popup.visible = true
            }
        }
    }


}
