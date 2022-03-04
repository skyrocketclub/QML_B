import QtQuick 2.15
import QtQuick.Window 2.15


/*
  make a Grid
  in the centre of the grids, write the numbers
  put 0 beneath the grids

 the Item should consist of (Custom COmponent)

  {
  Special buttons
    These buttons should have
        Color green
        Hover / to change color
        upon clicking to change color
       The buttons should also have text to be displayed on them

  }

  Then in the main qml fle implement an item that has grid that has these special buttons
  let the text also belong to the item
  same with that 0 button there...
  */
Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Number Pad")

    Item{

        width: parent.width
        height: parent.height
        anchors.fill: parent

        Text {
            id: showing
            text: qsTr("0")
            font.bold: true
            font.pointSize: 20
            anchors.bottom: grid.top
            anchors.bottomMargin: 3
            anchors.left: grid.left
        }

        Grid{
              id:grid
              anchors.centerIn: parent
              rows: 3
              columns: 3
              spacing: 3

              SpecialKey {
                  title.text: "9"
                  mousearea.onPressed: showing.text = present.text
              }
              SpecialKey {
                  title.text: "8"
                  mousearea.onPressed: showing.text = present.text
              }
              SpecialKey {
                  title.text: "7"
                  mousearea.onPressed: showing.text = present.text
              }
              SpecialKey {
                  title.text: "6"
                  mousearea.onPressed: showing.text = present.text
              }
              SpecialKey {
                  title.text: "5"
                  mousearea.onPressed: showing.text = present.text
              }
              SpecialKey {
                  title.text: "4"
                  mousearea.onPressed: showing.text = present.text
              }
              SpecialKey {
                  title.text: "3"
                  mousearea.onPressed: showing.text = present.text
              }
              SpecialKey {
                  title.text: "2"
                  mousearea.onPressed: showing.text = present.text
              }
              SpecialKey {
                  title.text: "1"
                  mousearea.onPressed: showing.text = present.text
              }

          }
        SpecialKey{
            title.text: "0"
            anchors.left: grid.left
            anchors.leftMargin: 53
            anchors.top: grid.bottom
            anchors.topMargin: 3
            mousearea.onPressed: showing.text = present.text
        }

    }


}
