import QtQuick
import QtQuick.Window

Window {
    id: root
    width: 640
    height: 480
    title: "intro"
    color: "black"

    Rectangle {
        id: rectangle
        anchors.centerIn: parent
        width: 200
        height: 200
        color:"magenta"

        rotation:50
        radius: 10
    }
}
