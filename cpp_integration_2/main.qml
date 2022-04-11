import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.3
import com.company.cat

Window {
    id: window
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")
    /*
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
      */

    Popup{
        id:pop1
        anchors.centerIn: parent
        width: 150
        height: 150
        modal: true
        focus: true
        closePolicy: Popup.CloseOnPressOutside |Popup.CloseOnEscape

        Label{
            id: yell
            anchors.centerIn: parent
            text: "MEOW"
            font.pointSize: 5
        }
    }

    Popup{
        id:pop2
        anchors.centerIn: parent
        width: 150
        height: 150
        modal: true
        focus: true
        closePolicy: Popup.CloseOnPressOutside |Popup.CloseOnEscape

        Label{
            id: namechange
            anchors.centerIn: parent
            text: "NAME: " + textField.text
            font.pointSize: 5
        }
    }




    Cat{
        id: cat

        onMeow: {
            pop1.visible = true
        }
        onNameChanged: {
            pop2.visible = true
        }
    }

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
            text: qsTr("Change")
            anchors.horizontalCenter: parent.horizontalCenter
            onClicked: {
                 cat.name = textField.text
            }

        }

        Button {
            id: button1
            width: button.width
            height: button.height
            text: qsTr("Call")
            anchors.horizontalCenter: parent.horizontalCenter
            onClicked: cat.call()
        }
    }
}
