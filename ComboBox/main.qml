import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.3

Window {
    id: window
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Column {
        id: column
        x: 21
        y: 48
        width: 118
        height: 162
        anchors.verticalCenter: parent.verticalCenter
        spacing: 20
        anchors.horizontalCenter: parent.horizontalCenter

        Label {
            id: lblFood
            color: "#f50808"
            text: qsTr("Selected Item")
            font.bold: true
            font.pointSize: 10
        }

        ComboBox {
            id: cmbFood
            model: ['Pizza','Steak','Pasta']
            onCurrentTextChanged: lblFood.text = cmbFood.currentText
        }

        Label {
            id: lblPeople
            color: "#f50808"
            text: qsTr("Selected Item")
            font.bold: true
            font.pointSize: 10
        }

        ComboBox {
            id: cmbPeople
            editable: true
            textRole: "text" //you highlight the name of the property to be picked up
            //We made a custom list model here

            model: ListModel{
                id: listmodel
                ListElement{text : "Bryan"; age: "45"}
                ListElement{text : "Tammy"; age: "49"}
                ListElement{text : "Rango"; age: "15"}
            }
            onCurrentIndexChanged: lblPeople.text = model.get(currentIndex).text + " = " +  model.get(currentIndex).age
            onAccepted: {
                if(find(editText)=== -1){
                    model.append({"text" : editText, "age": "0"})
                    currentIndex = find(editText)
                }
            }
        }

    }


}
