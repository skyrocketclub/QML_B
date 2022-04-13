import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.3

Window {
    id: cmbType
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    //Applying a javascript function
    function convert(){
        var value = txtFrom.text
        var ret = 0
        //applying a switch case in QML -----------------------
        switch(comboBox.currentIndex){
            //Inches to feet
        case 0:
            ret = inch_to_feet(value)
            break;

            //feets to inches
        case 1:
              ret = feet_to_inch(value)
        break;
        }
        lblResults.text = ret
    }


    function inch_to_feet(value){
        return value / 12
    }

    function feet_to_inch(value){
        return value * 12
    }

    Column {
        id: column
        x: 89
        y: 80
        width: 472
        height: 129

        Grid {
            id: grid
            width: 400
            height: 132
            columns: 2
            rows: 3
            spacing: 10

            Label {
                id: label
                text: qsTr("Type:")
            }

            ComboBox {
                id: comboBox
                model: ListModel{
                    id: cbItems
                    ListElement{text: "Inches to feet"}
                    ListElement{text: "Feet to Inches"}
                }
            }

            Label {
                id: label1
                text: qsTr("From:")
            }

            TextField {
                id: txtFrom
                placeholderText: qsTr("Text Field")
            }

            Label {
                id: label2
                text: qsTr("Result:")
            }

            Label {
                id: lblResults
                text: qsTr("Nothing")
                font.bold: true
                font.pointSize: 15
            }
        }

        Button {
            id: button
            text: qsTr("Convert")
            anchors.horizontalCenter: parent.horizontalCenter
            onClicked: convert()
        }
    }


}
