import QtQuick

Window {
    id: root
    width: 640
    height: 480
    title: "Song player"
    visible: true

    property var colors : ["#132a13","#31572c","#4f772d","#90a955","#ecf39e"]

    Rectangle {
        id: topBar

        anchors {
            top: parent.top
            left: parent.left
            right: parent.right
        }

        height: 50
        color: root.colors[0]
    }
    Rectangle {
        id: mainContent
        anchors {
            top: topBar.bottom
            left: parent.left
            right: parent.right
            bottom: bottomBar.bottom
        }
        color: root.colors[3]
    }
    Rectangle {
        id: bottomBar
        anchors {
            bottom: parent.bottom
            left: parent.left
            right: parent.right
        }
        height: 50
        color: root.colors[0]
    }
}
