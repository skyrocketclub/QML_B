import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.3

Window {
    id: window
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    BusyIndicator {
        id: busyIndicator
        x: 300
        y: 220
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter
    }

    Dial {
        id: dial
        x: 55
        y: 274
    }

    CheckBox {
        id: checkBox
        x: 456
        y: 145
        text: qsTr("Check Box")
    }

    DelayButton {
        id: delayButton
        x: 52
        y: 246
        text: qsTr("Delay Button")
    }

    DelayButton {
        id: delayButton1
        x: 456
        y: 220
        text: qsTr("Delay Button")
    }

    Label {
        id: label
        x: 63
        y: 86
        text: qsTr("This is a Label")
    }

    Label {
        id: label1
        x: 63
        y: 194
        width: 79
        height: 36
        color: "#f01919"
        text: qsTr("THis Is a very long label")
        wrapMode: Text.WordWrap
        font.underline: "true"
        font.italic: "true"
        font.bold: "true"
        styleColor: "#e42222"
    }

}
