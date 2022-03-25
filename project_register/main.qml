import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.3

Window {
    id: window
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    property string f_name: ""
    property string l_name: ""
    property string sex: ""
    property int age: 0

    Popup{
        id:details
        closePolicy: CloseOnPressOutside | CloseOnEscape
        anchors.centerIn: parent
        width: column.width
        height: column.height

        Column{
            anchors.fill: parent
            Row{
                id: rfname
                Label{
                    id: f_name_sign
                    text: "First Name: "
                }
                Label{
                    id: f_name
                    text: textField.text
                }
            }
            Row{
                id: rlname
                anchors.top: rfname.bottom+5
                Label{
                    id: l_name_sign
                    text: "Last Name: "
                }
                Label{
                    id: l_name
                    text: textField1.text
                }
            }
            Row{
                id: sex
                anchors.top: rlname.bottom+5
                Label{
                    id: sex_label
                    text: "Sex      : "
                }
                Label{
                    id: sex_ans
                    text: comboBox.currentText
                }
            }
            Row{
                id: age
                anchors.top: sex.bottom+5
                Label{
                    id: age_label
                    text: "Age        : "
                }
                Label{
                    id: age_ans
                    text: spinBox.value
                }
            }
        }
    }



    Column {
        id: column
        width: 298
        height: 232
        anchors.left: parent.left
        anchors.leftMargin: 171
        spacing: 5
        anchors.horizontalCenter: parent.horizontalCenter

        Row {
            id: row
            width: column.width
            height: 30
            spacing: 10

            Label {
                id: label
                text: qsTr("First Name")
            }

            TextField {
                id: textField
                placeholderText: qsTr("First Name")

            }
        }

        Row {
            id: row1
            width: column.width
            height: row.height
            anchors.top: row.bottom
            spacing: 10

            Label {
                id: label1
                text: qsTr("Last Name")
            }

            TextField {
                id: textField1
                placeholderText: qsTr("Last Name")
            }
        }

        Row {
            id: row2
            width: row.width
            height: row.height
            anchors.top: row1.bottom
            spacing: 28

            Label {
                id: label2
                text: qsTr("Gender")
            }

            ComboBox {
                id: comboBox
                model: ["Male","Female"]

            }
        }

        Row {
            id: row3
            width: row.width
            height: row.height
            anchors.top: row2.bottom
            spacing: 38

            Label {
                id: label3
                text: qsTr("Age  ")
            }

            SpinBox {
                id: spinBox
                visible: true
            }
        }

        Button {
            id: button
            text: qsTr("Click Me")
            x: parent.width/2 - 38
            y: row3.y + row3.height + 3

            onClicked: details.open()

        }
    }
}
