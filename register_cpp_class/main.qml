import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.3

//Importing our class/type
import com.company.test

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    //We can call Our class live in QML and that is very nice...
    Test{
        id: test
        //it sees our signal status
        onStatus:label.text = data
    }

Column{
    spacing: 15
    id: column
    width: 200
    height: 168
    anchors.centerIn: parent

    Label {
        id: label1
        text: qsTr("Register a C++ Class")
        anchors.left: label.left
        anchors.bottom: label.top
    }

    Label {
        id: label
        text: qsTr("Status")
        anchors.verticalCenter: parent.verticalCenter
        font.bold: true
        font.pointSize: 21
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.margins: 10
    }

    Row{
        spacing: 20
        id:row
        anchors.top: label.bottom

        anchors.left: label.left
        anchors.margins: 15

        Button {
            id: button
            text: qsTr("Click Me")
            onClicked: {
                //the class test has been registered and is now available in the context of the QML root object...
                var num = Math.round(Math.random()*100)
                test.work(num)
            }
        }


    }

}

 }


