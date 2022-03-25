import QtQuick 2.12
import QtQuick.Controls 2.5

Page {

    width: 600
    height: 400

    title: qsTr("Page 3")

    Grid {
        id: grid
        x: 0
        y: 0
        width: 265
        height: 183
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.centerIn: parent
        spacing: 10
        columns: 2

        Label {
            text: "First Name"
        }
        TextField {
            id: txtFirstName
            text: ""
        }
        Label {
            text: "last Name"
        }
        TextField {
            id: txtLastName
            text: ""
        }
    }

    Button {
        id: button
        x: 234
        y: 216
        text: qsTr("Button")
    }
}
