

/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/
import QtQuick
import QtQuick.Controls
import Passing_Variables_3

Rectangle {
    id: rectangle
    width: Constants.width
    height: Constants.height

    color: Constants.backgroundColor

    property alias name: label.text
    Text {
        text: "You are on Page 2"
        anchors.verticalCenter: parent.verticalCenter
        font.family: Constants.largeFont.family
        font.pixelSize: Constants.largeFont.pixelSize
        anchors.verticalCenterOffset: -285
        anchors.horizontalCenterOffset: 1
        anchors.horizontalCenter: parent.horizontalCenter
    }

    Column {
        id: column
        width: 638
        height: 192
        anchors.verticalCenter: parent.verticalCenter
        spacing: 10
        anchors.horizontalCenter: parent.horizontalCenter

        Label {
            id: label
            text: qsTr("Title")
            anchors.horizontalCenter: parent.horizontalCenter
        }

        Button {
            id: button
            text: qsTr("Click Me")
            anchors.horizontalCenter: parent.horizontalCenter
            onClicked: name = "Hello World!!!"
        }
    }
}
