/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/

import QtQuick
import QtQuick.Controls
import Random_number_jsds
import "code.js" as Code

Rectangle {
    width: Constants.width
    height: Constants.height

    color: Constants.backgroundColor

    Button {
        id: button
        x: 910
        y: 520
        text: qsTr("Click Me")
        Connections {
            target: button
            onClicked: label.text = Code.random()
        }
    }

    Label {
        id: label
        x: 946
        y: 477
        text: qsTr("0")
        property string property0: "none.none"
        font.bold: true
        font.pointSize: 15
    }
}
