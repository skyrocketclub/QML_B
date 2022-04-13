import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.3

Window {
    id: window
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    function calc(){
        var num = sbWidth.value * sbHeight.value
        label.text = num + "sqft"
    }

    Column {
        id: column
        width: 200
        height: 273
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter
        spacing: 10

        Label {
            id: label
            text: qsTr("0 sqft")
            anchors.horizontalCenter: parent.horizontalCenter
            font.bold: true
            font.pointSize: 25
        }

        Grid {
            id: grid
            width: 400
            height: 400
            spacing: 10
            columns: 2
            rows: 2

            Label {
                id: label1
                text: qsTr("width")
            }

            SpinBox {
                id: sbWidth

                Connections {
                    target: sbWidth
                    onValueModified: calc()
                }
            }

            Label {
                id: label2
                text: qsTr("height")
            }

            SpinBox {
                id: sbHeight

                Connections {
                    target: sbHeight
                    onValueModified: calc()
                }
            }

        }
    }

}
