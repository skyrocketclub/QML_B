import QtQuick 2.15
import QtQuick.Window 2.15

/*
  Make the QT,
    centered in the image, set the width and the height
    activate hover, change colour
    then activate upon clicking image for redirection to occur

  */
Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Rectangle{
        id : main_item
        anchors.centerIn: parent


        Image {
            id: sauce
            anchors.centerIn: parent
            source: "/image/download.png"

            Rectangle{
                id : hide
                anchors.fill: parent
                visible: false
                color: "orange"
                opacity: 0.5
        }

            MouseArea{

                anchors.fill: parent
                hoverEnabled: true
                onEntered:{
                    main_item.color= "orange"
                    console.log("Rectangle color: " + main_item.color)
                    hide.visible = true
                }
                onExited: {
                     hide.visible = false
                }
//
                onClicked: {
                    Qt.openUrlExternally('https://www.qt.io/?hsLang=en')
                }
            }
        }
    }

}
