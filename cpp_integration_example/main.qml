import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.3
import com.company.machine

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Component.onCompleted: {
        progressBar.value = machine.workload //by calling the virtual function, the READ function is being called
        button.enabled = true
        buttonstop.enabled = false
        buttonpause.enabled = false
        buttonresume.enabled = false
    }

    Machine{
        id: machine
        onStarted:{
            button.enabled = false
            buttonstop.enabled = true
            buttonpause.enabled= true
            buttonresume.enabled = false
            label.text = "Started"
        }
        onStopped:{
            button.enabled = true
            buttonstop.enabled = false
            buttonresume.enabled = true
            buttonpause.enabled = false
            label.text = "Stopped"
            progressBar.value = 0.0
        }
        onPaused:{
            button.enabled = true
            buttonstop.enabled = false
            buttonresume.enabled = true
            buttonpause.enabled = false
            label.text = "Paused"
        }
        onResumed: {
            button.enabled = false
            buttonstop.enabled = true
            buttonpause.enabled= true
            buttonresume.enabled = false
            label.text = "Resumed"
        }
        onProgress:{
            label.text = "Progress: " + machine.workload + "%"
            progressBar.value = (machine.workload * 0.01)
        }
    }

    ProgressBar {
        id: progressBar
        x: 60
        y: 228
        width: 528
        height: 24
        value: 0.5
    }

    Row {
        id: row
        x: 335
        y: 258
        width: 528
        height: 78
        spacing: 30
        anchors.left: progressBar.left

        Button {
            id: button
            width: 100
            height: row.height
            text: qsTr("Start")
            onClicked: machine.start()
        }

        Button {
            id: buttonpause
            width: button.width
            height: button.height
            text: qsTr("Pause")
            onClicked: machine.pause()
        }

        Button {
            id: buttonresume
            width: button.width
            height: button.height
            text: qsTr("Resume")
            onClicked: machine.resume()
        }

        Button {
            id: buttonstop
            width: button.width
            height: button.height
            text: qsTr("Stop")
            onClicked: machine.stop()
        }
    }

    Label {
        id: label
        x: 60
        y: 193
        text: qsTr("Status")
    }
}
