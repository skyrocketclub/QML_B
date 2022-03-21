import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.3

Window {
    id: window
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    property string strDrink: ""// This is available in all editors.
    property string strFood: ""

    Popup{
        id: popup
        anchors.centerIn: parent
        width: 200
        height: 200
        modal: true  //Prevents all other activities from happening
        focus: true //for the keypad input
        closePolicy: Popup.CloseOnEscape| Popup.CloseOnPressOutside

        Column{
            anchors.fill: parent
            spacing: 35
            Label{
                id: lblDetails
                text: strFood + " with " + strDrink
            }
            Button{
                id: closeButton
                text: "CLose"
                onClicked: popup.close()
            }
        }
    }

    Row {
        id: row
        x: 0
        y: 0
        width: 557
        height: 420
        anchors.verticalCenter: parent.verticalCenter
        spacing: 10
        anchors.horizontalCenter: parent.horizontalCenter

        GroupBox {
            id: groupBox
            width: 200
            height: 150
            title: qsTr("Food")

            Column {
                id: colFood
                width: 200
                height: 400
                anchors.fill: parent
                spacing: 10

                RadioButton {
                    id: rdoFish
                    text: qsTr("Fish")
                }

                RadioButton {
                    id: rdoSteak
                    text: qsTr("Steak")
                }

                RadioButton {
                    id: rdoVegan
                    text: qsTr("Vegan")
                }
            }
        }

        GroupBox {
            id: groupBox1
            width: 200
            height: 150
            title: qsTr("Drinks")
            Column {
                id: colDrink
                width: 200
                height: 400
                anchors.fill: parent
                spacing: 10
                RadioButton {
                    id: rdoWater
                    text: qsTr("Water")
                }

                RadioButton {
                    id: rdoWine
                    text: qsTr("Wine")
                }

                RadioButton {
                    id: rdoSoda
                    text: qsTr("Soda")
                }
            }
        }
    }

    Button {
        id: button
        x: 234
        y: 228
        text: qsTr("Click Me")
    }

Connections{
    target: button
    onClicked:{
        //get the food
        for(var i = 0; i<colFood.children.length; i++){
            var rdo = colFood.children[i]
            if(rdo.checked)strFood = rdo.text
}
        for(var i = 0; i<colDrink.children.length; i++){
            var rdo = colDrink.children[i]
            if(rdo.checked)strDrink = rdo.text
}

        popup.open()
}
}
}

/*##^##
Designer {
    D{i:0;formeditorZoom:0.75}
}
##^##*/
