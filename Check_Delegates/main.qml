import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.3

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Column{
        id: column
        width: 200
        height: 400
        anchors.centerIn: parent

        Label{
            id: label
            text: qsTr("Selected Here")
            font.bold:true
            font.pointSize: 25
        }

        //We have a View, We have a model which is the data to be viewed, and a delegate to determine how we will
        //view it...
        ListView{
            width: 200
            height: 200
            model: ["Option A", "Option B", "Option C"]
            delegate: CheckDelegate {
                text: modelData
                onCheckStateChanged: label.text = index + " - " + modelData + " = " + checked
            }
        }

    }
}
