import QtQuick
import QtQuick.Window
import QtQuick.Layouts

Window {
    id: root
    width: 640
    height: 480
    visible: true
    color: "black"

    GridLayout {
        anchors.fill: parent

        rows: 2
        columns: 2
        rowSpacing: 10
        columnSpacing: 10

        Item {
            Layout.fillHeight: true
            Layout.fillWidth: true

            Rectangle {
                width: 70
                height: 70
                color: "teal"

                x: 55
                y: 55
            }
        }
        Item {
            Layout.fillHeight: true
            Layout.fillWidth: true

            Rectangle {
                anchors {
                    top: parent.verticalCenter
                    left: parent.horizontalCenter
                }

                width: 70
                height: 70
                color: "purple"
            }
        }
        Item {
            Layout.fillHeight: true
            Layout.fillWidth: true

            Flow {
                anchors.fill: parent
                spacing: 10

                Repeater {
                    model: 5

                    Rectangle {
                        width: 70
                        height: 70
                        color: "yellow"
                    }
                }
            }
        }
        Item {
            Layout.fillHeight: true
            Layout.fillWidth: true

            GridLayout {
                anchors.fill: parent
                rows: 2
                columns: 2
                rowSpacing: 10
                columnSpacing: 10

                Rectangle {
                    Layout.fillHeight: true
                    Layout.fillWidth: true
                    color: "blue"
                }
                Rectangle {
                    Layout.fillHeight: true
                    Layout.fillWidth: true
                    color: "red"
                }
                Rectangle {
                    Layout.fillHeight: true
                    Layout.fillWidth: true
                    Layout.columnSpan: 2
                    color: "magenta"
                }
            }
        }
    }

}
