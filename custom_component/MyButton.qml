import QtQuick 2.0
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
Item {
    //Item is not visible in itself
    id:root
    width: 100
    height: 100
    property color color: "grey"
    property color colorClicked: "green"
    property string title: "Click Me"

    Rectangle{
        id:myRec
        anchors.fill: parent
        color: root.color //The rectangle adopts the properties of the parent here...

        Text{
            id:display
            text: root.title
            anchors.centerIn: parent
        }

        MouseArea{
            id: mousearea
            anchors.fill: parent
            onPressed: parent.color = root.colorClicked
            onReleased: parent.color = root.color
        }
    }
}
