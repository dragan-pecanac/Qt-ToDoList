/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/

import QtQuick 6.4
import QtQuick.Controls 6.4
import ToDoList
import QtQuick.Layouts 1.0

Rectangle {
    id: rectangle
    width: Constants.width
    height: Constants.height

    color: Constants.backgroundColor

    Button {
        id: addToDoButton
        y: 506
        text: qsTr("Add ToDo")
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        anchors.rightMargin: 10
        anchors.leftMargin: 10
        anchors.bottomMargin: 10
    }

    Rectangle {
        id: addToDoDialog
        x: 8
        y: 536
        width: 382
        height: 200
        color: "#d6d7d7"
        radius: 20

        TextField {
            id: toDoTextInput
            height: 60
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.rightMargin: 25
            anchors.leftMargin: 25
            anchors.topMargin: 25
            placeholderText: qsTr("Text Field")
        }

        RowLayout {
            y: 144
            height: 48
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.rightMargin: 25
            anchors.leftMargin: 25
            spacing: 50
            Button {
                id: cancelButton
                text: qsTr("Cancel")
                Layout.fillWidth: true
            }

            Button {
                id: addButton
                text: qsTr("Add")
                Layout.fillWidth: true
            }
        }
    }
    states: [
        State {
            name: "clicked"
            when: cancelButton.checked
        }
    ]
}
