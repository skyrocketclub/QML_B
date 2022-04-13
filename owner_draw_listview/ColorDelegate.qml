import QtQuick 2.0

//Delegate controls how each item in the model is rendered...

Component {
    id:colorDelegate
    Item{
        id: item
        width: 100
        height: 40
        Row{
            spacing: 5

            Rectangle{
                id: colorBox
                width: 10
                height: 10
                color: code //from the model... the code will be obtained fromt the model
                border.color: "black"
                border.width: 1
            }
            Text{
                id: colorName
                text: '<b>Name: </b>' + name //from the model... name is from the model
            }
        }
    }
}
