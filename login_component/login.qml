import QtQuick 2.0
import QtQuick.Controls 2.3

Item {
    signal login(string username, string password)
    property alias column: column
    width: 250
    height: 200

    Column {
        id: column
        anchors.fill: parent
        spacing: 10

        TextField {
            id: txtUsername
            width: parent.width
            placeholderText: qsTr("Username")
        }

        Label {
            id: label1
            text: qsTr("Username")
        }

        TextField {
            id: txtPassword
            width: parent.width
            placeholderText: qsTr("Password")
        }

        Label {
            id: label2
            text: qsTr("Password")
            echoMode: TextInput.Password  //This will prevent the password from showing up...
        }
        Button{
            id: button
            width: 200
            anchors.horizontalCenter: parent.horizontalCenter
            text: qsTr("submit")

            Connections {
                target: button
                onClicked: login(txtUsername.text,txtPassword.text)
            }
        }
    }
}
