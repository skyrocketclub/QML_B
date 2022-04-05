import QtQuick
import QtQuick.Controls
import Passing_Variables_3

Window {
    width: Constants.width
    height: Constants.height

    visible: true
    id: root

    property string name: "Bryan"

    property var page1: ({})
    property var page2: ({})
    SwipeView {
        id: swipeView
        anchors.top: tabBar.bottom
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        anchors.left: parent.left
        currentIndex: tabBar.currentIndex

//        Screen01 {
//        }

//        Screen02 {
//        }
        //This means the following should take place once the swipeView is loaded
        Component.onCompleted: {
            var component1 = Qt.createComponent("Screen01.ui.qml")  //The page 1 is loaded here once the swipeview is done loading
            page1 = component1.createObject(swipeView,{name: root.name})

            var component2 = Qt.createComponent("Screen02.ui.qml")  //The page 1 is loaded here once the swipeview is done loading
            page2 = component2.createObject(swipeView,{name: root.name})

            addItem(page1)
            addItem(page2)

        }
        onCurrentIndexChanged: {
            console.log(currentIndex)

            if(currentIndex === 0){
                root.name= page2.name
                page1.name = root.name


            if(currentIndex === 1){
                root.name= page1.name
                page2.name = root.name
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
