import QtQuick 2.0
import QtQuick.Controls 2.3


Item {
    id: root
    signal clicked(int value) //we are passing a signal with a value...

    Column{
        id: col
        Grid{
            id:grid
            spacing: 5
            rows: 4
            columns: 3
        }

    }

    //when we click any of the buttons, this function is called and the clicked number is emmitted
    function doClicked(value){
        console.log(value)
        clicked(value)
    }
    Component.onCompleted: {
        console.log("Creating Button")
        var num = 0
        for(var i =0; i< 10; i++){
            //First Row
            if(i === 0) num =7; //first row
            if(i === 3) num =4;  //second
            if(i === 6) num =1; //third
            if(i === 9) num =0; //bottom row

            //This is where we are dynamically creating the buttons...
            var btn = Qt.createQmlObject('import QtQuick 2.0;import QtQuick.Controls 2.3; Button{id: btn' + i + '; onClicked:doClicked('+ num +')}',grid,"DynamicallyLoaded")
            btn.text =num
            btn.width = 40
            btn.height = 40
            num++
        }
        //set the last button on the buttom
        var obj = grid.children[grid.children.length -1]
        obj.parent = col
        obj.width = (40 * grid.columns) + 10
    }
}
