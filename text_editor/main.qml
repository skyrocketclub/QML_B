import QtQuick 2.15
import QtQuick.Window 2.3
import QtQuick.Controls 2.12
import QtQuick.Dialogs
import com.company.backend 1.0

ApplicationWindow {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Backend{
        id: backend
        onPathChanged: console.log("Path: ",path)
        onDataChanged: console.log("Path: ",path)
    }

    FileDialog{
        id: openDialog
        title: "Please choose a file"
//        folder: shortcuts.home
//        selectMultiple: false
//        selectExisting: true

        onAccepted: {
            backend.path = openDialog.fileUrl
            //Update the editor
            editor.text = backend.data
        }
    }
    FileDialog{
        id: saveDialog
        title: "Please choose a file"
//        folder: shortcuts.home
//        selectMultiple: false
//        selectExisting: false

        onAccepted: {
            backend.path = saveDialog.fileUrl
            //Update the backend
            backend.data = editor.text
        }
    }

    Action{
        id: actionNew
        text: qsTr("New")
        icon.color: "transparent"
        icon.source:"qrc:/flate/outlines/oNew.png"
        onTriggered: editor.clear()
    }

    Action{
        id: actionOpen
        text: qsTr("Open")
        icon.color: "transparent"
        icon.source:"qrc:/flate/outlines/oOpen.png"
        onTriggered: openDialog.open()
    }

    Action{
        id: actionSave
        text: qsTr("Save")
        icon.color: "transparent"
        icon.source:"qrc:/flate/outlines/oSave.png"
        onTriggered: saveDialog.open()
    }
    Action{
        id: actionCopy
        text: qsTr("Copy")
        icon.color: "transparent"
        icon.source:"qrc:/flate/outlines/oCopy.png"
        onTriggered: editor.copy()
    }

    Action{
        id: actionCut
        text: qsTr("Cut")
        icon.color: "transparent"
        icon.source:"qrc:/flate/outlines/oCut.png"
        onTriggered: editor.cut()
    }
    Action{
        id: actionPaste
        text: qsTr("Paste")
        icon.color: "transparent"
        icon.source:"qrc:/flate/outlines/oPaste.png"
        onTriggered: editor.paste()
    }
  //To - do --- add actions
    //This is what makes the application window different from a normal window

    menuBar:MenuBar{
        Menu{
            id: menuFile
            title: qsTr("File")
            MenuItem{
                action:actionNew
            }
            MenuItem{
                action:actionOpen
            }
            MenuItem{
                action:actionSave
            }
        }
        Menu{
            id: menuEdit
            title: qsTr("Edit")
            MenuItem{
                action:actionNew
            }
            MenuItem{
                action:actionCopy
            }
            MenuItem{
                action:actionCut
            }
            MenuItem{
                action:actionPaste
            }
        }

    }

    header: ToolBar{
        Row{
            ToolButton{display: AbstractButton.IconOnly; action:actionNew}
            ToolButton{display: AbstractButton.IconOnly; action:actionOpen}
            ToolButton{display: AbstractButton.IconOnly; action:actionSave}
            ToolButton{display: AbstractButton.IconOnly; action:actionCopy}
            ToolButton{display: AbstractButton.IconOnly; action:actionCut}
            ToolButton{display: AbstractButton.IconOnly; action:actionPaste}
        }
    }

    ScrollView{
        anchors.fill: parent
        TextArea{
            id: editor
            focus: true
            text: "HELLO WORLD"
            selectByMouse: true
            persistentSelection: true // to enable copy and paste
        }
    }

}
