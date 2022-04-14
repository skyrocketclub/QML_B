import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.3

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    function calc(){
        //go through each of the items in the list view...
        var model = listView.model
        var total = 0

        for(var i = 0; i<model.count; i++){

            //getting each of the models nd defining them as vars...
            var item = model.get(i)
            if(item.value>0){
                console.log("Name: ",item.name)
                console.log("Number: ",item.number)
                console.log("Value: ",item.value)

                //rolling each dice
                for(var roll = 0; roll<item.value; roll++){
                    var min = 1
                    var max = item.number

                    //JS code for finding random number between a range..............
                    var subtotal = Math.floor(Math.random() * (max - min + 1) + min);
                    console.log("Roll: ",subtotal)
                    total = total + subtotal
                }
                console.log("Total: ", total)
            }
            lblTotal.text = "Total: " + total
        }
    }

    Column {
        id: column
        anchors.fill: parent
        spacing: 10

        ListView {
            id: listView
            width: parent.width
            focus: true
            anchors.left: parent.left
            anchors.leftMargin: 10
            anchors.top: parent.top
            anchors.topMargin: 10
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 100
            model:  DiceModel{}
            delegate: Dice_Delegate {}
        }
       Row{
           id: row
           width: parent.width
           height: 50
           anchors.bottom: parent.bottom
           anchors.bottomMargin: 0

           Rectangle{
               anchors.fill: parent
               color: "gray"

               Label{
                   id: lblTotal
                   color: "white"
                   text: "Total: 0"
                   font.pointSize: 25
                   font.bold: true
                   anchors.verticalCenter: parent.verticalCenter
                   anchors.left: parent.left
                   anchors.leftMargin: 10
               }
               Button{
                   id: button
                   text: "Calculate"
                   anchors.verticalCenter: parent.verticalCenter
                   anchors.right: parent.right
                   anchors.rightMargin: 10
                   onClicked: calc()
               }
           }
       }
    }

}
