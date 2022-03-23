import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.3

Window {
    id: window
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    property string username: "ugo"
    property string password: "ugo"
    property string status: "Failed"

    Popup{
        id: statusPopup
        closePolicy: Popup.CloseOnEscape | Popup.CloseOnPressOutside
        anchors.centerIn: parent
        width: 200
        height: 300
        modal: true
        focus: true

        Label{
            id: statusLabel
            anchors.centerIn: parent
            text: status
            font.bold: true
        }
    }

    Column {
        id: column
        x: 0
        y: 0
        width: 214
        height: 142
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter

        Grid {
            id: grid
            width: 300
            height: 100
            spacing: 10
            columns: 2

            Label {
                id: label
                text: qsTr("Username")
            }

            TextField {
                id: txtUsername
                placeholderText: ""

            }

            Label {
                id: label1
                text: qsTr("Password")
            }

            TextField {
                id: txtPassword
                placeholderText: qsTr("")
                echoMode: TextInput.Password
            }

        }

        Button {
            id: button
            text: qsTr("Login")
            onClicked: {
                if(username === txtUsername.text && password === txtPassword.text)status = "Welcome " + username
                statusPopup.open()
            }
        }
    }
}
