import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.3
import "code.js" as Code

Window {
    id: window
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    property int min: 0
    property int max: 100

    Column {
        id: column
        width: 216
        height: 134
        anchors.verticalCenter: parent.verticalCenter
        spacing: 10
        anchors.horizontalCenter: parent.horizontalCenter


        Row {
            id: row
            width: 200
            height: 20
            spacing: 10
            anchors.horizontalCenter: parent.horizontalCenter

            Label {
                id: lblmin
                text: qsTr("0")
            }

            RangeSlider {
                id: rangeSlider
                first.value: 0.25
                second.value: 0.75

                Connections {
                    target: rangeSlider.first
                    onValueChanged: {
                        min = Math.round(rangeSlider.first.value * 100 )
                        lblmin.text= min
                    }
                }
                Connections {
                    target: rangeSlider.second
                    onValueChanged: {
                       max =  Math.round(rangeSlider.second.value*100)
                       lblmax.text= max
                    }
                }

            }

            Label {
                id: lblmax
                text: qsTr("Label")
            }

        }
        Button {
            id: button
            text: qsTr("Generate")
            anchors.horizontalCenter: parent.horizontalCenter
            onClicked: {
                label.text = Code.random(min,max)
            }
        }

        Label {
            id: label
            text: qsTr("0")
            font.pointSize: 15
            font.bold: true
            anchors.horizontalCenter: parent.horizontalCenter
        }
    }

}
