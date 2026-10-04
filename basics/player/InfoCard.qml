import QtQuick

Item {
    id: rootItem

    required property int songId
    property alias title: songName.text
    property alias artist: artistName.text
    property alias imageColor: infoCard.color


    property var cardColor: "#FFFFF"
    property var songNameColor: "#000000"
    property var artistNameColor: "#000000"

    Rectangle {
        id:infoCard
        color: rootItem.cardColor
        anchors {
            verticalCenter: parent.verticalCenter
            horizontalCenter: parent.horizontalCenter
        }
        width: Math.min(parent.width, parent.height)/2
        height: width
    }

    Text {
        id: songName

        anchors {
            top: parent.top
            left: parent.left
            right: parent.right
            margins: 20
        }

        font {
            pixelSize: 20
            bold: true
        }

        wrapMode: Text.WrapAtWordBoundaryOrAnywhere
        color: rootItem.songNameColor
    }

    Text {
        id: artistName

        anchors {
            top: songName.bottom
            left: parent.left
            right: parent.right
            margins: 20
        }

        font {
            pixelSize: 16
        }

        wrapMode: Text.WrapAtWordBoundaryOrAnywhere
        color: rootItem.artistNameColor
    }

}
