import QtQuick 2.7
import QtQuick.Controls 1.4
import QtWebEngine 1.3


Rectangle {
    id: recAdvanced
    anchors.centerIn: parent
    anchors.fill: parent
    width: 1000
    height: 450
    anchors.topMargin: 10
    anchors.bottomMargin: 10
    anchors.leftMargin: 10
    anchors.rightMargin: 10

    Flow {
        id: flow1
        x: 39
        y: -47
        width: 500
        height: 29
        opacity: 0
        visible: false
        anchors.horizontalCenterOffset: 0
        anchors.horizontalCenter: parent.horizontalCenter
        spacing: 5

        Text {
            id: text1
            height: 30
            text: qsTr("Width:")
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignRight
            font.pixelSize: 12

        }

        TextField {
            id: textFielWidth
            width: 100
            height: 30
            placeholderText: qsTr("512")
            horizontalAlignment: Text.AlignHCenter
            text:"512"
            readOnly: true

        }

        Text {
            id: text2
            height: 30
            text: qsTr("Height:")
            font.pixelSize: 12
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignRight
        }

        TextField {
            id: textFieldHeight
            width: 100
            height: 30
            placeholderText: qsTr("512")
            horizontalAlignment: Text.AlignHCenter
            text:"512"
            readOnly: true

        }

        Text {
            id: text_error_correct_level
            height: 30
            text: qsTr("Error correction level:")
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignRight
            font.pixelSize: 12
        }

        ComboBox {
            id: comboBox_error_correct_level
            width: 85
            height: 30
            opacity: 0
            visible: false
            model: ListModel {
                id: error_correct_level_items
                ListElement { text: "L"; }
                ListElement { text: "M"; }
                ListElement { text: "Q"; }
                ListElement { text: "H"; }
            }
        }

    }

    Rectangle {
        id:largresult
        x: 67
        y: 338
        width: 550
        height: 550
        color:"#ffffff"
        border.color: "#8b8b8b"
        border.width: 2
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.centerIn: recAdvanced
        anchors.fill: recAdvanced
        visible: false
        opacity: 0

        WebEngineView{
            id: result_view_larg
            anchors.fill: parent
            enabled: false
            antialiasing: true

            onLoadProgressChanged: {

                if(result_view_larg.loadProgress === 100) {
                    pwait.visible = false
                }



            }

            Text {
                id: pwait
                text: qsTr("Please wait...")
                anchors.fill: parent
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                font.pixelSize: 16
            }

            onLoadingChanged: {

                if(result_view_larg.LoadSucceededStatus === true) {
                    pwait.visible = false
                }



            }

        }

        Rectangle {
            id: button_close
            color: "#00000000"
            visible: true
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 393
            anchors.right: parent.right
            anchors.rightMargin: 47
            anchors.left: parent.left
            anchors.leftMargin: 924
            anchors.top: result_view_larg.bottom
            anchors.topMargin: -429
            Text {
                id: button_close_icon
                width: 24
                height: 24
                color: "#4e3dd4"
                text:"X"
                visible: true
                font.pointSize: 19
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                anchors.centerIn: parent

                Behavior on opacity { NumberAnimation { duration: 55 } }

                MouseArea {
                    id: button_close_mouse_area
                    visible: true
                    hoverEnabled: true
                    anchors.fill: parent
                    onHoveredChanged: {if(button_close_mouse_area.containsMouse) {
                            button_close_icon.opacity = 0.5
                        } else { button_close_icon.opacity = 1.0 }

                    }
                    onClicked: { largresult.opacity = 0
                        largresult.visible = false
                    }
                }
            }
        }


        Button {
            id: button_print
            x: 886
            y: 63
            width: 41
            height: 34
            text: qsTr("Print")
            onClicked: {

                var stat = result_view_larg.grabToImage(function(result) {
                    //result.saveToFile("/home/user/someimage.png"); //saves to a file
                    ACTION.print(result.image); //result.image holds the QVariant
                });
                //console.log("Success: ", stat);

            }
        }


        Behavior on opacity{ NumberAnimation {} }

    }

    Text {
        id: text3
        x: 488
        y: 145
        text: qsTr("To scan generated code by this application use below links.")
        anchors.horizontalCenterOffset: 0
        anchors.horizontalCenter: parent.horizontalCenter
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
        font.pixelSize: 12


    }

    Flow {
        id: flow2
        x: 156
        y: 95
        width: 670
        height: 66
        anchors.verticalCenterOffset: 0
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenterOffset: -17
        anchors.horizontalCenter: parent.horizontalCenter
        spacing: 10

        Image {
            id: image2
            width: 216
            height: 67
            fillMode: Image.PreserveAspectFit
            sourceSize.height: 67
            sourceSize.width: 216
            source: "qrc:/logo/image/gplay.png"

            MouseArea {
                id: mouseArea1
                anchors.fill: parent
                cursorShape: containsMouse ? Qt.PointingHandCursor : Qt.ArrowCursor

                onClicked: {
                    Qt.openUrlExternally("https://play.google.com/store/apps/details?id=la.droid.qr")
                }
            }

        }

        Image {
            id: image1
            width: 216
            height: 67
            fillMode: Image.PreserveAspectFit
            sourceSize.height: 67
            sourceSize.width: 216
            source: "qrc:/logo/image/apst.png"

            MouseArea {
                id: mouseArea2
                anchors.fill: parent
                cursorShape: containsMouse ? Qt.PointingHandCursor : Qt.ArrowCursor
                onClicked: {
                    Qt.openUrlExternally("https://itunes.apple.com/us/app/qrafter-qr-code-barcode-reader/id416098700?mt=8")
                }
            }
        }

        Image {
            id: image3
            width: 216
            height: 67
            MouseArea {
                id: mouseArea3
                anchors.fill: parent
                cursorShape: containsMouse ? Qt.PointingHandCursor : Qt.ArrowCursor
                onClicked: {
                    Qt.openUrlExternally("https://www.microsoft.com/en-us/store/apps/qr-code-reader/9wzdncrfj1s9")
                }
            }
            sourceSize.height: 67
            source: "qrc:/logo/image/wstr.png"
            fillMode: Image.PreserveAspectFit
            sourceSize.width: 216
        }

            }





}
