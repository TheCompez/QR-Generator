import QtQuick 2.0
import QtQuick.Controls 1.3
import QtWebView 1.0

Rectangle {
    id: rectangle1
    anchors.centerIn: parent
    anchors.fill: parent
    width: 900
    height: 600
    anchors.topMargin: 10
    anchors.bottomMargin: 10
    anchors.leftMargin: 10
    anchors.rightMargin: 10

    Text {
        id: text1
        x: 209
        y: 15
        color: "#7e1a82"
        text: qsTr("Product name : QR Code Generator")
        anchors.horizontalCenter: parent.horizontalCenter
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        font.pixelSize: 18
    }

    Image {
        id: image2
        x: 300
        y: 50
        width: 200
        height: 200
        anchors.horizontalCenter: parent.horizontalCenter
        sourceSize.height: 512
        sourceSize.width: 512
        fillMode: Image.PreserveAspectCrop
        source: "qrc:/logo/image/contact-qr.png"
    }

    GroupBox {
        id: groupBox2
        x: 232
        y: 246
        width: 436
        height: 80
        anchors.horizontalCenter: parent.horizontalCenter
        title: qsTr("Prgrammer and Developer")

        Text {
            id: text3

            text: qsTr("<br>
            Kambiz Asadzadeh <br>
            Mail : kambiz@nanosoftco.com<br>")
            anchors.leftMargin: 133
            anchors.fill: parent
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignLeft
            font.pixelSize: 12
        }

    }



}

