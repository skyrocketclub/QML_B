import QtQuick 2.0

ListModel{
    id: colorModel

    //Refers to the individual items of the list
    ListElement{
        name: "Black"
        code: "#000000"
    }
    ListElement{
        name: "White"
        code: "#FFFFFF"
    }
    ListElement{
        name: "Red"
        code: "red"
    }
    ListElement{
        name: "Blue"
        code: "blue"
    }
    ListElement{
        name: "Green"
        code: "green"
    }
    ListElement{
        name: "Yellow"
        code: "yellow"
    }
}
