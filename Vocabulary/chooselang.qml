import QtQuick 2.0
import QtQuick.Controls 2.3

Item {
    id: item1

    Rectangle {
        id: rectangle
        color: "#24d3d5"
        anchors.fill: parent

        Column {
            id: column
            x: 158
            y: 111
            width: 324
            height: 258
            anchors.verticalCenter: parent.verticalCenter
            spacing: 30
            anchors.horizontalCenter: parent.horizontalCenter

            Label {
                id: label
                text: qsTr("CHOOSE LANGUAGE")
                font.family: "Courier"
                font.pointSize: 30
                font.bold: true
                anchors.horizontalCenter: parent.horizontalCenter
            }

            ComboBox {
                id: comboBox
                anchors.horizontalCenter: parent.horizontalCenter
            }
            Label {
                id: label2
                text: qsTr("NUMBER OF WORDS")
                font.family: "Courier"
                font.pointSize: 30
                font.bold: true
                anchors.horizontalCenter: parent.horizontalCenter
            }

            SpinBox {
                id: spinBox
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.top: label2.bottom
                anchors.topMargin: 30
            }
        }
    }

}

/*##^##
Designer {
    D{i:0;autoSize:true;height:480;width:640}D{i:2}D{i:1}
}
##^##*/
