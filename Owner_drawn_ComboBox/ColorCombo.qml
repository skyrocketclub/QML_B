import QtQuick 2.0
import QtQuick.Controls 2.3

//Owner Drawing the Como Box
ComboBox{
    id: root
    model: ["red", "green","blue","yellow","orange"]

    //This enables us to determine how each item in our model is going to be drawn...
    delegate: ItemDelegate{
        width: root.width
        highlighted: highlightedIndex === index

        //The content Item is part of the Item delegate...
        //The content Item is what we are actually drawing...
        contentItem: Row{
            spacing: 5
            width: root.width

//            Draw the color rectangle
            Rectangle{
                anchors.verticalCenter: parent.verticalCenter
                width: 10
                height: 10
                border.width: 1
                border.color: "black"
                color: modelData //the model data refers to the actual data for each item in the model of the combobox...
            }

            //Add the Text {

                Text{
                    id: name
                    text: modelData
                    color: "black"
                    elide: Text.ElideRight
                    verticalAlignment: Text.AlignVCenter
            }
        }
        //we need to also draw the background based on the selected index...
        background: Rectangle{
            width: root.width
            implicitHeight: 40
            implicitWidth: 100
            border.color: currentIndex === index? "green" : "white"
            color: currentIndex === index? "lightgreen" : "white"
        }
    }
}
