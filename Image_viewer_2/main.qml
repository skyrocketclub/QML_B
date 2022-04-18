import QtQuick 2.6 //Slideview works here... perhaps the others work here as well...
import QtQuick.Window 2.15
import QtQuick.Controls 2.3
import com.company.dirhelp 1.0


Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    DirHelp{
        id: dirhelp
        path: "/pics"
    }

    SwipeView{
        id: view
        anchors.fill: parent
        currentIndex: 0

        Component.onCompleted: {
            var files= dirhelp.files

            for(var i = 0; i<files.length; i++){

                console.log("loading: ", files[i])

                //a new page is being created for each of the files
                var compoent = Qt.createComponent("ImagePage.qml")

                //create object(parent,
                var page = compoent.createObject(view,{"width": 640, "height":480})

                page.source = "file://" + files[i]
            }
        }


        }
        PageIndicator{
            id: indicator
            count: view.count
            currentIndex: view.currentIndex
            anchors.bottom: view.bottom
            anchors.horizontalCenter: parent.horizontalCenter
        }

}
