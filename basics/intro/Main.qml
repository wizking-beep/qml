import QtQuick
import QtQuick.Window

Window {
    id: root
    width: 640
    height: 480
    visible: true
    title: "intro"
    color: "black"

    Rectangle {
        id: topButton
        property color rectangleColor: "magenta"

        anchors {
            bottom: parent.verticalCenter
            horizontalCenter: parent.horizontalCenter
            bottomMargin: 20
        }
        width: 200
        height: 50
        color: if(buttonMouseArea.containsPress) {
            return Qt.darker(rectangleColor, 1.5)
        }
        else if(buttonMouseArea.containsMouse) {
            return Qt.lighter(rectangleColor, 1.5)
        }
        else {
            return rectangleColor
        }
        radius: 10

        Text {
            id: buttonText
            text: "Click me"
            anchors.centerIn: parent
        }

        MouseArea {
            id: buttonMouseArea

            anchors.fill: parent
            hoverEnabled: true
            onClicked: {
                console.log("I was clicked")
            }
        }
    }
    Rectangle {
        id: bottomButton
        property color rectangleColor: "red"

        anchors {
            top: parent.verticalCenter
            horizontalCenter: parent.horizontalCenter
            bottomMargin: 20
        }
        width: 200
        height: 50
        color: if(bottomButtonMouseArea.containsPress) {
            return Qt.darker(rectangleColor, 1.5)
        }
        else if(bottomButtonMouseArea.containsMouse) {
            return Qt.lighter(rectangleColor, 1.5)
        }
        else {
            return rectangleColor
        }
        radius: 10

        Text {
            id: bottomButtonText
            text: "Close window"
            anchors.centerIn: parent
        }

        MouseArea {
            id: bottomButtonMouseArea

            anchors.fill: parent
            hoverEnabled: true
            onClicked: {
               Qt.quit()
            }
        }
    }

    Connections {
        target: bottomButtonMouseArea
        function onClicked() {
            console.log("You clicked the bottom button, the window was closed")
        }
    }
}
