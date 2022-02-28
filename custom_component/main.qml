import QtQuick 2.15
import QtQuick.Window 2.15
/*
    Text {
        id: myText
        text: qsTr("<html><b>Hello</b> <i> <font color ='green'>World</font></i> </html><br>
<font color='#C0C0C0'>this is a text</font><br>
<a href='http://www.google.com'> my link</a")
        anchors.centerIn: parent
        font.pointSize: 35
        font.bold: true
        font.italic: true

        color: "red"
        linkColor: "green"

        onLinkHovered: {
            console.log("Hover: "+ link)
            if(link){
                myText.font.bold = true
            }
            else{
                myText.font.bold = false
            }
        }

        onLinkActivated: Qt.openUrlExternally(link)
    }
  */
Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

   property var middle: (height/2) - 50

  Rectangle{
        id: button1
        x : 100
        y: middle
        height: 100
        width: 100
        color: "red"



        MouseArea{
            anchors.fill: parent
            acceptedButtons: Qt.RightButton | Qt.LeftButton
            onClicked: {
                if(mouse.button === Qt.RightButton | mouse.button === Qt.LeftButton)parent.color= "orange"
            }
            onDoubleClicked: {
                 if(mouse.button === Qt.RightButton | mouse.button === Qt.LeftButton)parent.color= parent.color = "red"
            }
        }

        Text {
            id: link
            text: qsTr("<a href='http://www.instagram.com'>instagram</a>")
             onLinkActivated: Qt.openUrlExternally(link)
             linkColor: black
             anchors.centerIn: parent
             font.bold: true
        }

    }


    MyButton{
        id: button2
        x : (parent.width/2) -(width/2)
        y: middle
        color: "blue"
        colorClicked: "orange"
        title: "Facebook"
    }

    MyButton{
        id: button3
        x : parent.width - 200
        y: middle
        color: "green"
        colorClicked: "orange"
        title: "Google"
    }

    MyButton{
        id: button4
        x : (parent.width/2) - (width/2)
        y: middle + 120
        width: 500
        height: 35
        color: "lightblue"
        colorClicked: "orange"
        title: "<b>Manchester </b><i>United </i> <u> website</u>"
    }
}
