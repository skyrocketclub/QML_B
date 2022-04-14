import QtQuick 2.0
import QtQuick.Controls 2.3

Component {
    id: diceDelegate
    Item{
        id: item
        anchors.leftMargin: 10
        width: parent.width
        height: 100

        Row{
            spacing: 10

            Label{
                width: 50
                font.bold: true
                font.pixelSize: 25
                text: name //from the dicemodel
            }

            SpinBox{
                id: sbNumber
                from: 0
                to: 100
                value: model.value //From the DiceModel
                onValueChanged: {
                   model.value = sbNumber.value
                    console.log(model.value)
                }
            }
        }
    }
}
