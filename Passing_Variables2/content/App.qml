import QtQuick
import QtQuick.Controls
import Passing_Variables2

Window {
    width: Constants.width
    height: Constants.height

    visible: true

    id: root
    property string name: ""

    SwipeView {
        id: swipeView
        anchors.top: tabBar.bottom
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        anchors.left: parent.left
        currentIndex: tabBar.currentIndex

        //Editor
        Screen01 {
            id: page1
            Component.onCompleted: {
              root.name = name
            }
        }

        //Display
        Screen02 {
            id: page2
        }

        onCurrentIndexChanged: {
            console.log(currentIndex)
            //0 -> page 1 & 1 -> page 2 and so on...
            if(currentIndex===1){
                root.name = page1.name
                page2.name = root.name
            }

            if(currentIndex===0){
                root.name = page2.name
                page1.name = root.name
            }
        }
    }

    TabBar {
        anchors.left: parent.left
        anchors.right: parent.right

        id: tabBar
        currentIndex: swipeView.currentIndex

        TabButton {
            text: qsTr("Page 1")
        }
        TabButton {
            text: qsTr("Page 2")
        }
    }
}
