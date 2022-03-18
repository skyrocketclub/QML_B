import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.3

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Row {
        id: row
        anchors.fill: parent

        Column {
            id: column
            width: 150
            height: 400
            spacing: 10

            CheckBox {
                id: checkBox
                text: qsTr("Normal")

                Connections {
                    target: checkBox
                    onClicked: label.text = checkBox.text
                }
            }

            CheckBox {
                id: checkBox2
                text: qsTr("Not Checkable")
                checkable: false

                Connections {
                    target: checkBox2
                    onClicked: label.text = checkBox2.text
                }
            }


            CheckBox {
                id: checkBox3
                text: qsTr("Tristate")
                tristate: true

                Connections {
                    target: checkBox3
                    onClicked: label.text = checkBox3.text
                }
            }

            CheckBox {
                id: checkBox1
                text: qsTr("Exclusive")
                tristate: false
                autoExclusive: true
            }

            CheckBox {
                id: checkBox4
                text: qsTr("Repeat")
                autoRepeat: true

                Connections {
                    target: checkBox4
                    onClicked: label.text = checkBox4.text
                }
            }

            Button {
                id: button
                text: qsTr("Reset")

                Connections {
                    target: button
                    onClicked:{
                        checkBox.checkState = Qt.Unchecked
                         checkBox1.checkState = Qt.Unchecked
                         checkBox2.checkState = Qt.Unchecked
                         checkBox3.checkState = Qt.Unchecked
                        checkBox4.checkState = Qt.Unchecked
                    }
                }


            }
        }

        Column {
            id: column1
            width: parent.width - x
            height: parent.height

            Label {
                id: label
                text: qsTr("Status Here")
                anchors.verticalCenter: parent.verticalCenter
                font.pointSize: 34
                anchors.horizontalCenter: parent.horizontalCenter
            }
        }
    }



}

/*##^##
Designer {
    D{i:0;formeditorZoom:0.75}D{i:1}
}
##^##*/
