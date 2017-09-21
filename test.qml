import QtQuick 2.3
import QtMultimedia 5.6

import QRCode 1.0

Rectangle {
    width: 680
    height: 680
    color: "white"

    Camera {
        id: camera
        viewfinder {
            resolution: "640x480"
        }
    }

    QRCodeVideoFilter {
        id: videoFilter
        onDetected: {
            codeText.text = code
        }
    }

    Column {
        width: parent.width
        anchors.centerIn: parent

        VideoOutput {
            source: camera
            anchors.horizontalCenter: parent.horizontalCenter
            filters: [ videoFilter ]
        }

        Text {
            id: codeText
            width: parent.width
            font.pointSize: 20
            horizontalAlignment: Text.AlignHCenter
        }
    }
}
