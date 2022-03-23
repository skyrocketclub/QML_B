import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.3

Window {
    id: window
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    property var lockcode: "529" //tumbler gives us string... var does a type conversion
    property string status: "locked"

    Popup{
        id: statusPopup
        closePolicy: Popup.CloseOnEscape | Popup.CloseOnPressOutside
        width: 200
        height: 300
        modal: true
        focus: true
        anchors.centerIn: parent

        Label{
            id: statusLabel
            anchors.centerIn: parent
            text: status
            font.bold: true
        }
    }

    Column {
        id: column
        width: 202
        height: 368
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter

        Label {
            id: label
            text: qsTr("000")
            anchors.horizontalCenter: parent.horizontalCenter
            font.pointSize: 25
        }

        Row {
            id: row
            width: 190
            height: 210
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter

            Tumbler {
                id: tumbler
                model: 10
                onCurrentIndexChanged: label.text = tumbler.currentIndex + " " + tumbler1.currentIndex + " " + tumbler2.currentIndex
            }

            Tumbler {
                id: tumbler1
                model: 10
                onCurrentIndexChanged: label.text = tumbler.currentIndex + " " + tumbler1.currentIndex + " " + tumbler2.currentIndex
            }

            Tumbler {
                id: tumbler2
                model: 10
                onCurrentIndexChanged: label.text = tumbler.currentIndex + " " + tumbler1.currentIndex + " " + tumbler2.currentIndex
            }
        }

        Button {
            id: button
            text: qsTr("Check")
            anchors.bottom: parent.bottom
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.bottomMargin: 50

            onClicked: {
                var tempcode = tumbler.currentIndex + "" + tumbler1.currentIndex + "" + tumbler2.currentIndex
                if(tempcode===lockcode)status = "Unlocked"
                statusPopup.open()
            }


        }
    }


}
