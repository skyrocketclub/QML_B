import QtQuick 2.0
import QtQuick.Controls 2.3
Item {
    Rectangle{
        id: rectangle
        color: "#797d7d"
        anchors.fill: parent

        Row {
            id: row
            width: 596
            height: 108
            anchors.verticalCenter: parent.verticalCenter
            spacing: 10
            anchors.horizontalCenter: parent.horizontalCenter

            Rectangle {
                id: rectangle1
                width: 200
                height: row.height
                color: "#20e2df"

                Label {
                    id: label1
                    text: qsTr("Word")
                    anchors.verticalCenter: parent.verticalCenter
                    font.pointSize: 30
                    anchors.horizontalCenter: parent.horizontalCenter
                }
            }

            TextField {
                id: textField
                placeholderText: qsTr("Text Field")
                anchors.verticalCenter: parent.verticalCenter
            }

            Rectangle {
                id: rectangle2
                width: 200
                height: row.height
                color: "#ffffff"

                Label {
                    id: label
                    text: qsTr("Status")
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.horizontalCenter: parent.horizontalCenter
                }
            }
        }

        Row {
            id: row1
            width: row.width
            height: row.height
            anchors.top: row.bottom
            spacing: 50
            anchors.topMargin: 10
            anchors.left: row.left

            Label {
                id: label2
                width: row1.width /3
                height: row1.height
                text: qsTr("Label")
            }

           Button {
               id: button
               width: rectangle2.width
               height: row1.height
               text: qsTr("QUIT")
               font.family: "Courier"
               font.pointSize: 30
           }

        }
    }
}

/*##^##
Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
##^##*/
