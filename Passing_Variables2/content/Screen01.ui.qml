/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/

import QtQuick
import QtQuick.Controls
import Passing_Variables2

Rectangle {
    id: rectangle
    property alias name: textField.text
    width: Constants.width
    height: Constants.height

    color: Constants.backgroundColor

    Text {
        text: "You are on Page 1"
        anchors.centerIn: parent
        font.family: Constants.largeFont.family
        font.pixelSize: Constants.largeFont.pixelSize
        anchors.verticalCenterOffset: -209
        anchors.horizontalCenterOffset: -52
    }

    Column {
        id: column
        width: 464
        height: 196
        anchors.verticalCenter: parent.verticalCenter
        spacing: 10
        anchors.horizontalCenter: parent.horizontalCenter

        Label {
            id: label
            text: qsTr("Enter your name")
        }

        TextField {
            id: textField
            placeholderText: qsTr("")
        }
    }
}
